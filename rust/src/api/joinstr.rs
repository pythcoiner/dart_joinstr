use std::str::FromStr;

use flutter_rust_bridge::frb;
pub use joinstr::interface::{
    initiate_coinjoin as rust_initiate_coinjoin, join_coinjoin as rust_join_coinjoin,
    list_coins as rust_list_coins, list_pools as rust_list_pools, PeerConfig as RustPeerConfig,
    PoolConfig as RustPoolConfig,
};
use joinstr::{
    bip39::Mnemonic as RustMnemonic,
    miniscript::bitcoin::{self, address::NetworkUnchecked},
    nostr::{Fee, Pool as RustPool},
    signer::Coin as RustCoin,
};

pub type RustAddress = bitcoin::Address<NetworkUnchecked>;

#[frb]
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

#[frb]
#[derive(Clone)]
pub struct Coin {
    pub inner: RustCoin,
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

impl From<RustCoin> for Coin {
    fn from(value: RustCoin) -> Self {
        Coin { inner: value }
    }
}

impl From<Coin> for RustCoin {
    fn from(value: Coin) -> Self {
        value.inner
    }
}

#[frb]
pub struct PoolConfig {
    pub denomination: f64,
    pub fee: u32,
    pub max_duration: u64,
    pub peers: usize,
    pub network: Network,
}

impl From<PoolConfig> for RustPoolConfig {
    fn from(value: PoolConfig) -> Self {
        RustPoolConfig {
            denomination: value.denomination,
            fee: value.fee,
            max_duration: value.max_duration,
            peers: value.peers,
            network: value.network.into(),
        }
    }
}

#[frb]
#[derive(Clone)]
pub struct Mnemonic {
    pub inner: RustMnemonic,
}

impl Mnemonic {
    #[frb(sync)]
    pub fn from_string(value: String) -> Option<Self> {
        let inner = RustMnemonic::from_str(&value).ok()?;
        Some(Self { inner })
    }
}

impl From<Mnemonic> for RustMnemonic {
    fn from(value: Mnemonic) -> Self {
        value.inner
    }
}

#[frb]
pub struct PeerConfig {
    pub mnemonics: Mnemonic,
    pub electrum_url: String,
    pub electrum_port: u16,
    pub input: Coin,
    pub output: Address,
    pub relay: String,
}

impl From<PeerConfig> for RustPeerConfig {
    fn from(value: PeerConfig) -> Self {
        RustPeerConfig {
            mnemonics: value.mnemonics.into(),
            electrum_address: value.electrum_url,
            electrum_port: value.electrum_port,
            input: value.input.into(),
            output: value.output.into(),
            relay: value.relay,
        }
    }
}

#[frb]
#[derive(Clone)]
pub struct Address {
    pub inner: RustAddress,
}

impl Address {
    #[frb(sync)]
    pub fn from_string(value: String) -> Option<Self> {
        let inner = RustAddress::from_str(&value).ok()?;
        Some(Self { inner })
    }
}

impl From<Address> for RustAddress {
    fn from(value: Address) -> Self {
        value.inner
    }
}

#[frb]
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

    match rust_list_coins(
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

#[frb]
pub struct CoinjoinResult {
    txid: String,
    error: String,
}

impl CoinjoinResult {
    pub fn is_ok(&self) -> bool {
        !self.txid.is_empty() && self.error.is_empty()
    }

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
    match rust_initiate_coinjoin(config.into(), peer.into()) {
        Ok(txid) => res.txid = txid.to_string(),
        Err(e) => res.error = format!("{e}"),
    }

    res
}

#[frb]
pub struct Pool {
    pub inner: RustPool,
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

impl From<RustPool> for Pool {
    fn from(value: RustPool) -> Self {
        Self { inner: value }
    }
}

impl From<Pool> for RustPool {
    fn from(value: Pool) -> Self {
        value.inner
    }
}

#[frb]
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

    match rust_list_pools(back, timeout, relay) {
        Ok(pools) => res.pools = pools.into_iter().map(|p| p.into()).collect(),
        Err(e) => format!("{e}"),
    }

    res
}

#[frb(sync)]
pub fn join_coinjoin(pool: Pool, peer: PeerConfig) -> CoinjoinResult {
    let mut res = CoinjoinResult {
        txid: String::new(),
        error: String::new(),
    };
    match rust_join_coinjoin(pool.into(), peer.into()) {
        Ok(txid) => res.txid = txid.to_string(),
        Err(e) => res.error = format!("{e}"),
    }

    res
}

#[frb(init)]
pub fn init_app() {
    flutter_rust_bridge::setup_default_user_utils();
}
