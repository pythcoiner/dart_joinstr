use joinstr as rust_joinstr;
use std::str::FromStr;

use flutter_rust_bridge::frb;
use rust_joinstr::{
    bip39, interface,
    miniscript::bitcoin::{self, address::NetworkUnchecked},
    nostr::{self, Fee},
    signer,
};

pub enum Network {
    Regtest,
    Signet,
    Testnet,
    Bitcoin,
}

impl From<Network> for bitcoin::Network {
    fn from(value: Network) -> Self {
        match value {
            Network::Regtest => bitcoin::Network::Regtest,
            Network::Signet => bitcoin::Network::Signet,
            Network::Testnet => bitcoin::Network::Testnet,
            Network::Bitcoin => bitcoin::Network::Bitcoin,
        }
    }
}
#[frb(opaque)]
#[derive(Clone)]
pub struct Coin {
    #[frb(ignore)]
    inner: signer::Coin,
}

impl Coin {
    #[frb(sync)]
    pub fn amount_sat(&self) -> u64 {
        self.inner.txout.value.to_sat()
    }

    #[frb(sync)]
    pub fn amount_btc(&self) -> f64 {
        self.inner.txout.value.to_btc()
    }

    #[frb(sync)]
    pub fn outpoint(&self) -> String {
        self.inner.outpoint.to_string()
    }
}

impl From<signer::Coin> for Coin {
    fn from(value: signer::Coin) -> Self {
        Coin { inner: value }
    }
}

impl From<Coin> for signer::Coin {
    fn from(value: Coin) -> Self {
        value.inner
    }
}

pub struct PoolConfig {
    pub denomination: f64,
    pub fee: u32,
    pub max_duration: u64,
    pub peers: usize,
    pub network: Network,
}

impl From<PoolConfig> for interface::PoolConfig {
    fn from(value: PoolConfig) -> Self {
        interface::PoolConfig {
            denomination: value.denomination,
            fee: value.fee,
            max_duration: value.max_duration,
            peers: value.peers,
            network: value.network.into(),
        }
    }
}

#[frb(opaque)]
#[derive(Clone)]
pub struct Mnemonic {
    #[frb(ignore)]
    inner: bip39::Mnemonic,
}

impl Mnemonic {
    #[frb(sync)]
    pub fn from_string(value: String) -> Option<Self> {
        let inner = bip39::Mnemonic::from_str(&value).ok()?;
        Some(Self { inner })
    }
}

impl From<Mnemonic> for bip39::Mnemonic {
    fn from(value: Mnemonic) -> Self {
        value.inner
    }
}

pub struct PeerConfig {
    pub mnemonics: Mnemonic,
    pub electrum_url: String,
    pub electrum_port: u16,
    pub input: Coin,
    pub output: Address,
    pub relay: String,
}

impl From<PeerConfig> for interface::PeerConfig {
    fn from(value: PeerConfig) -> Self {
        interface::PeerConfig {
            mnemonics: value.mnemonics.into(),
            electrum_address: value.electrum_url,
            electrum_port: value.electrum_port,
            input: value.input.into(),
            output: value.output.into(),
            relay: value.relay,
        }
    }
}

#[frb(opaque)]
#[derive(Clone)]
pub struct Address {
    #[frb(ignore)]
    inner: bitcoin::Address<NetworkUnchecked>,
}

impl Address {
    pub fn from_string(value: String) -> Option<Self> {
        let inner = bitcoin::Address::<NetworkUnchecked>::from_str(&value).ok()?;
        Some(Self { inner })
    }
}

impl From<Address> for bitcoin::Address<NetworkUnchecked> {
    fn from(value: Address) -> Self {
        value.inner
    }
}

pub struct ListCoinsResult {
    pub coins: Vec<Coin>,
    pub error: String,
}

#[frb(sync)]
pub fn list_coins(
    mnemonics: String,
    electrum_url: String,
    electrum_port: u16,
    range: (u32, u32),
    network: Network,
) -> ListCoinsResult {
    let mut res = ListCoinsResult {
        coins: Vec::new(),
        error: String::new(),
    };

    match interface::list_coins(
        mnemonics,
        electrum_url,
        electrum_port,
        range,
        network.into(),
    ) {
        Ok(r) => res.coins = r.into_iter().map(|c| c.into()).collect(),
        Err(e) => res.error = format!("{e}"),
    }

    res
}

pub struct CoinjoinResult {
    pub txid: String,
    pub error: String,
}

impl CoinjoinResult {
    #[frb(sync)]
    pub fn is_ok(&self) -> bool {
        !self.txid.is_empty() && self.error.is_empty()
    }

    #[frb(sync)]
    pub fn is_error(&self) -> bool {
        self.txid.is_empty() && !self.error.is_empty()
    }
}

#[frb(sync)]
pub fn initiate_coinjoin(config: PoolConfig, peer: PeerConfig) -> CoinjoinResult {
    let mut res = CoinjoinResult {
        txid: String::new(),
        error: String::new(),
    };
    match interface::initiate_coinjoin(config.into(), peer.into()) {
        Ok(txid) => res.txid = txid.to_string(),
        Err(e) => res.error = format!("{e}"),
    }

    res
}

#[frb(opaque)]
pub struct Pool {
    #[frb(ignore)]
    inner: nostr::Pool,
}

impl Pool {
    #[frb(sync)]
    pub fn denomination_sat(&self) -> Option<u64> {
        self.inner
            .payload
            .as_ref()
            .map(|p| p.denomination.clone().to_sat())
    }

    #[frb(sync)]
    pub fn denomination_btc(&self) -> Option<f64> {
        self.inner
            .payload
            .as_ref()
            .map(|p| p.denomination.clone().to_btc())
    }

    #[frb(sync)]
    pub fn peers(&self) -> Option<usize> {
        self.inner.payload.as_ref().map(|p| p.peers)
    }

    #[frb(sync)]
    pub fn relay(&self) -> Option<String> {
        self.inner
            .payload
            .as_ref()
            .map(|p| p.relays.first().cloned())
            .flatten()
    }

    #[frb(sync)]
    pub fn fee(&self) -> Option<u32> {
        self.inner.payload.as_ref().map(|p| {
            if let Fee::Fixed(fee) = p.fee {
                fee
            } else {
                unreachable!()
            }
        })
    }
}

impl From<nostr::Pool> for Pool {
    fn from(value: nostr::Pool) -> Self {
        Self { inner: value }
    }
}

impl From<Pool> for nostr::Pool {
    fn from(value: Pool) -> Self {
        value.inner
    }
}

pub struct ListPoolsResult {
    pub pools: Vec<Pool>,
    pub error: String,
}

#[frb(sync)]
pub fn list_pools(back: u64, timeout: u64, relay: String) -> ListPoolsResult {
    let mut res = ListPoolsResult {
        pools: Vec::new(),
        error: String::new(),
    };

    match interface::list_pools(back, timeout, relay) {
        Ok(pools) => res.pools = pools.into_iter().map(|p| p.into()).collect(),
        Err(e) => res.error = format!("{e}"),
    }

    res
}

#[frb(sync)]
pub fn join_coinjoin(pool: Pool, peer: PeerConfig) -> CoinjoinResult {
    let mut res = CoinjoinResult {
        txid: String::new(),
        error: String::new(),
    };
    match interface::join_coinjoin(pool.into(), peer.into()) {
        Ok(txid) => res.txid = txid.to_string(),
        Err(e) => res.error = format!("{e}"),
    }

    res
}

#[frb(init)]
pub fn init_app() {
    flutter_rust_bridge::setup_default_user_utils();
}
