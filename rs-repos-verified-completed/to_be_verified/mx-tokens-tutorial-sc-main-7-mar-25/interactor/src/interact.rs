#![allow(non_snake_case)]

mod config;
mod proxy;

use config::Config;
use dharitri_sc_snippets::imports::*;
pub use proxy::MockAttr;
use serde::{Deserialize, Serialize};
use std::{
    io::{Read, Write},
    path::Path,
};

const STATE_FILE: &str = "state.toml";

pub async fn my_token_contract_cli() {
    env_logger::init();

    let mut args = std::env::args();
    let _ = args.next();
    let cmd = args.next().expect("at least one argument required");
    let mut interact = ContractInteract::new().await;
    match cmd.as_str() {
        "deploy" => interact.deploy().await,
        "upgrade" => interact.upgrade().await,
        // "issue_token_id" => interact.issue_token_id().await,
        // "add_roles" => interact.add_roles().await,
        // "mint_nft" => interact.mint_nft().await,
        _ => panic!("unknown command: {}", &cmd),
    }
}

#[derive(Debug, Default, Serialize, Deserialize)]
pub struct State {
    contract_address: Option<Bech32Address>,
}

impl State {
    // Deserializes state from file
    pub fn load_state() -> Self {
        if Path::new(STATE_FILE).exists() {
            let mut file = std::fs::File::open(STATE_FILE).unwrap();
            let mut content = String::new();
            file.read_to_string(&mut content).unwrap();
            toml::from_str(&content).unwrap()
        } else {
            Self::default()
        }
    }

    /// Sets the contract address
    pub fn set_address(&mut self, address: Bech32Address) {
        self.contract_address = Some(address);
    }

    /// Returns the contract address
    pub fn current_address(&self) -> &Bech32Address {
        self.contract_address
            .as_ref()
            .expect("no known contract, deploy first")
    }
}

impl Drop for State {
    // Serializes state to file
    fn drop(&mut self) {
        let mut file = std::fs::File::create(STATE_FILE).unwrap();
        file.write_all(toml::to_string(self).unwrap().as_bytes())
            .unwrap();
    }
}

pub struct ContractInteract {
    interactor: Interactor,
    wallet_address: Address,
    contract_code: BytesValue,
    state: State,
}

impl ContractInteract {
    pub async fn new() -> Self {
        let config = Config::new();
        let mut interactor = Interactor::new(config.gateway_uri())
            .await
            .use_chain_simulator(config.use_chain_simulator());

        interactor.set_current_dir_from_workspace("my-token-contract");
        let wallet_address = interactor.register_wallet(test_wallets::alice()).await;

        // Useful in the chain simulator setting
        // generate blocks until DCDTSystemSCAddress is enabled
        interactor.generate_blocks_until_epoch(1).await.unwrap();

        let contract_code = BytesValue::interpret_from(
            "drtsc:../output/my-token-contract.drtsc.json",
            &InterpreterContext::default(),
        );

        ContractInteract {
            interactor,
            wallet_address,
            contract_code,
            state: State::load_state(),
        }
    }

    pub async fn deploy(&mut self) {
        let new_address = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .gas(100_000_000u64)
            .typed(proxy::MyTokenContractProxy)
            .init()
            .code(&self.contract_code)
            .returns(ReturnsNewAddress)
            .run()
            .await;
        let new_address_bech32 = bech32::encode(&new_address);
        self.state.set_address(Bech32Address::from_bech32_string(
            new_address_bech32.clone(),
        ));

        println!("new address: {new_address_bech32}");
    }

    pub async fn upgrade(&mut self) {
        let response = self
            .interactor
            .tx()
            .to(self.state.current_address())
            .from(&self.wallet_address)
            .gas(30_000_000u64)
            .typed(proxy::MyTokenContractProxy)
            .upgrade()
            .code(&self.contract_code)
            .code_metadata(CodeMetadata::UPGRADEABLE)
            .returns(ReturnsNewAddress)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn issue_nft_token_id(&mut self, token_display_name: &str, token_ticker: &str) {
        let rewa_amount = BigUint::<StaticApi>::from(50000000000000000u128);

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(100_000_000u64)
            .typed(proxy::MyTokenContractProxy)
            .issue_nft_token_id(token_display_name, token_ticker)
            .rewa(rewa_amount)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn issue_sft_token_id(&mut self, token_display_name: &str, token_ticker: &str) {
        let rewa_amount = BigUint::<StaticApi>::from(50000000000000000u128);

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(100_000_000u64)
            .typed(proxy::MyTokenContractProxy)
            .issue_sft_token_id(token_display_name, token_ticker)
            .rewa(rewa_amount)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn issue_fungible_token_id(
        &mut self,
        token_display_name: &str,
        token_ticker: &str,
        initial_supply: RustBigUint,
    ) {
        let rewa_amount = BigUint::<StaticApi>::from(50000000000000000u128);

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(100_000_000u64)
            .typed(proxy::MyTokenContractProxy)
            .issue_fungible_token_id(
                token_display_name,
                token_ticker,
                BigUint::from(initial_supply),
            )
            .rewa(rewa_amount)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn add_roles(&mut self, roles: Vec<DcdtLocalRole>) {
        let roles = roles
            .into_iter()
            .collect::<ManagedVec<StaticApi, DcdtLocalRole>>();

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(100_000_000u64)
            .typed(proxy::MyTokenContractProxy)
            .add_roles(roles)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn add_quantity(&mut self, nonce: u64, amount: RustBigUint) {
        self.interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(100_000_000u64)
            .typed(proxy::MyTokenContractProxy)
            .add_quantity(nonce, amount)
            .run()
            .await;

        println!("Result: quantity added successfully for nonce {nonce:?}");
    }

    pub async fn last_issued_token_id(&mut self) -> String {
        let response = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::MyTokenContractProxy)
            .last_issued_token_id()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");

        response.to_string()
    }

    pub async fn mint_nft(
        &mut self,
        amount: RustBigUint,
        name: String,
        royalties: RustBigUint,
        hash: String,
        attributes: MockAttr,
        uris: Vec<String>,
    ) -> u64 {
        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(100_000_000u64)
            .typed(proxy::MyTokenContractProxy)
            .mint_nft(amount, name, royalties, hash, attributes, uris)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Last nft nonce minted: {response:?}");

        response
    }
}
