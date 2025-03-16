use joinstr as rust_joinstr;
use std::str::FromStr;

use flutter_rust_bridge::frb;
use rust_joinstr::{
    bip39, interface,
    miniscript::bitcoin::{self, address::NetworkUnchecked},
    nostr::{self, Fee},
    signer,
};

pub enum DNetwork {
    Regtest,
    Signet,
    Testnet,
    Bitcoin,
}

impl From<DNetwork> for bitcoin::Network {
    fn from(value: DNetwork) -> Self {
        match value {
            DNetwork::Regtest => bitcoin::Network::Regtest,
            DNetwork::Signet => bitcoin::Network::Signet,
            DNetwork::Testnet => bitcoin::Network::Testnet,
            DNetwork::Bitcoin => bitcoin::Network::Bitcoin,
        }
    }
}
#[frb(opaque)]
#[derive(Clone)]
pub struct DCoin {
    #[frb(ignore)]
    inner: signer::Coin,
}

impl DCoin {
    pub fn amount_sat(&self) -> u64 {
        self.inner.txout.value.to_sat()
    }

    pub fn amount_btc(&self) -> f64 {
        self.inner.txout.value.to_btc()
    }

    pub fn outpoint(&self) -> String {
        self.inner.outpoint.to_string()
    }
}

impl From<signer::Coin> for DCoin {
    fn from(value: signer::Coin) -> Self {
        DCoin { inner: value }
    }
}

impl From<DCoin> for signer::Coin {
    fn from(value: DCoin) -> Self {
        value.inner
    }
}

pub struct DPoolConfig {
    pub denomination: f64,
    pub fee: u32,
    pub max_duration: u64,
    pub peers: usize,
    pub network: DNetwork,
}

impl From<DPoolConfig> for interface::PoolConfig {
    fn from(value: DPoolConfig) -> Self {
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
pub struct DMnemonic {
    #[frb(ignore)]
    inner: bip39::Mnemonic,
}

impl DMnemonic {
    pub fn from_string(value: String) -> Option<Self> {
        let inner = bip39::Mnemonic::from_str(&value).ok()?;
        Some(Self { inner })
    }
}

impl From<DMnemonic> for bip39::Mnemonic {
    fn from(value: DMnemonic) -> Self {
        value.inner
    }
}

pub struct DPeerConfig {
    pub mnemonics: DMnemonic,
    pub electrum_url: String,
    pub electrum_port: u16,
    pub input: DCoin,
    pub output: DAddress,
    pub relay: String,
}

impl From<DPeerConfig> for interface::PeerConfig {
    fn from(value: DPeerConfig) -> Self {
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
pub struct DAddress {
    #[frb(ignore)]
    inner: bitcoin::Address<NetworkUnchecked>,
}

impl DAddress {
    pub fn from_string(value: String) -> Option<Self> {
        let inner = bitcoin::Address::<NetworkUnchecked>::from_str(&value).ok()?;
        Some(Self { inner })
    }
}

impl From<DAddress> for bitcoin::Address<NetworkUnchecked> {
    fn from(value: DAddress) -> Self {
        value.inner
    }
}

pub struct ListCoinsResult {
    pub coins: Vec<DCoin>,
    pub error: String,
}

#[frb(sync)]
pub fn list_coins(
    mnemonics: String,
    electrum_url: String,
    electrum_port: u16,
    range: (u32, u32),
    network: DNetwork,
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
    pub fn is_ok(&self) -> bool {
        !self.txid.is_empty() && self.error.is_empty()
    }

    pub fn is_error(&self) -> bool {
        self.txid.is_empty() && !self.error.is_empty()
    }
}

#[frb(sync)]
pub fn initiate_coinjoin(config: DPoolConfig, peer: DPeerConfig) -> CoinjoinResult {
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
pub struct DPool {
    #[frb(ignore)]
    inner: nostr::Pool,
}

impl DPool {
    pub fn denomination_sat(&self) -> Option<u64> {
        self.inner
            .payload
            .as_ref()
            .map(|p| p.denomination.clone().to_sat())
    }

    pub fn denomination_btc(&self) -> Option<f64> {
        self.inner
            .payload
            .as_ref()
            .map(|p| p.denomination.clone().to_btc())
    }

    pub fn peers(&self) -> Option<usize> {
        self.inner.payload.as_ref().map(|p| p.peers)
    }

    pub fn relay(&self) -> Option<String> {
        self.inner
            .payload
            .as_ref()
            .map(|p| p.relays.first().cloned())
            .flatten()
    }

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

impl From<nostr::Pool> for DPool {
    fn from(value: nostr::Pool) -> Self {
        Self { inner: value }
    }
}

impl From<DPool> for nostr::Pool {
    fn from(value: DPool) -> Self {
        value.inner
    }
}

pub struct ListPoolsResult {
    pub pools: Vec<DPool>,
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
pub fn join_coinjoin(pool: DPool, peer: DPeerConfig) -> CoinjoinResult {
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
