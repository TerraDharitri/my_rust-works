use dharitri_sc_snippets::imports::*;
use num_bigint::BigUint;
use serde::Deserialize;
use std::{fmt::Debug, io::Read, str::FromStr};

use crate::forwarder_queue_proxy::QueuedCallType;

/// Config file
const CONFIG_FILE: &str = "config.toml";

/// Multisig Interact configuration
#[derive(Debug, Deserialize)]
pub struct Config {
    gateway: String,
    call_type: String,
    token_id: String,
    token_nonce: u64,
    amount: String,
}

impl Config {
    // Deserializes config from file
    pub fn load_config() -> Self {
        let mut file = std::fs::File::open(CONFIG_FILE).unwrap();
        let mut content = String::new();
        file.read_to_string(&mut content).unwrap();
        toml::from_str(&content).unwrap()
    }

    // Returns the gateway
    pub fn gateway(&self) -> &str {
        &self.gateway
    }

    pub fn call_type(&self) -> QueuedCallType {
        match self.call_type.as_str() {
            "Sync" => QueuedCallType::Sync,
            "LegacyAsync" => QueuedCallType::LegacyAsync,
            "TransferExecute" => QueuedCallType::TransferExecute,
            &_ => todo!(),
        }
    }

    pub fn token_id(&self) -> RewaOrDcdtTokenIdentifier<StaticApi> {
        match self.token_id.as_str() {
            "REWA" => RewaOrDcdtTokenIdentifier::rewa(),
            _ => RewaOrDcdtTokenIdentifier::dcdt(TokenIdentifier::from(self.token_id.as_str())),
        }
    }

    pub fn token_amount(&self) -> BigUint {
        match BigUint::from_str(&self.amount) {
            Ok(amount) => amount,
            Err(_) => BigUint::default(),
        }
    }

    pub fn token_nonce(&self) -> u64 {
        self.token_nonce
    }
}
