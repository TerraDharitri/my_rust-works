#![allow(non_snake_case)]

mod config;
mod proxy;

use config::Config;
use dharitri_sc_snippets::imports::*;
use serde::{Deserialize, Serialize};
use std::{
    io::{Read, Write},
    path::Path,
};

const STATE_FILE: &str = "state.toml";

pub async fn auction_mock_cli() {
    env_logger::init();

    let mut args = std::env::args();
    let _ = args.next();
    let cmd = args.next().expect("at least one argument required");
    let mut interact = ContractInteract::new().await;
    match cmd.as_str() {
        "deploy" => interact.deploy().await,
        "stake" => interact.stake().await,
        "unStake" => interact.unstake_endpoint().await,
        "unStakeNodes" => interact.unstake_nodes_endpoint().await,
        "unBond" => interact.unbond_endpoint().await,
        "unBondNodes" => interact.unbond_nodes_endpoint().await,
        "unStakeTokens" => interact.unstake_tokens().await,
        "unBondTokens" => interact.unbond_tokens().await,
        "claim" => interact.claim().await,
        "unJail" => interact.unjail_endpoint().await,
        "setBlsDeliberateError" => interact.set_bls_deliberate_error().await,
        "getBlsDeliberateError" => interact.get_bls_deliberate_error().await,
        _ => panic!("unknown command: {}", &cmd),
    }
}

#[derive(Debug, Default, Serialize, Deserialize)]
pub struct State {
    contract_address: Option<Bech32Address>
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
    state: State
}

impl ContractInteract {
    pub async fn new() -> Self {
        let config = Config::new();
        let mut interactor = Interactor::new(config.gateway_uri())
            .await
            .use_chain_simulator(config.use_chain_simulator());

        interactor.set_current_dir_from_workspace("auction_mock");
        let wallet_address = interactor.register_wallet(test_wallets::alice()).await;

        // Useful in the chain simulator setting
        // generate blocks until DCDTSystemSCAddress is enabled
        interactor.generate_blocks_until_epoch(1).await.unwrap();
        
        let contract_code = BytesValue::interpret_from(
            "drtsc:../output/auction_mock.drtsc.json",
            &InterpreterContext::default(),
        );

        ContractInteract {
            interactor,
            wallet_address,
            contract_code,
            state: State::load_state()
        }
    }

    pub async fn deploy(&mut self) {
        let new_address = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .gas(30_000_000u64)
            .typed(proxy::AuctionMockProxy)
            .init()
            .code(&self.contract_code)
            .returns(ReturnsNewAddress)
            .run()
            .await;
        let new_address_bech32 = bech32::encode(&new_address);
        self.state
            .set_address(Bech32Address::from_bech32_string(new_address_bech32.clone()));

        println!("new address: {new_address_bech32}");
    }

    pub async fn stake(&mut self) {
        let rewa_amount = BigUint::<StaticApi>::from(0u128);

        let num_nodes = 0u32;
        let bls_keys_signatures = MultiValueVec::from(vec![MultiValue2::<ManagedBuffer<StaticApi>, ManagedBuffer<StaticApi>>::from((ManagedBuffer::new_from_bytes(&b""[..]), ManagedBuffer::new_from_bytes(&b""[..])))]);

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::AuctionMockProxy)
            .stake(num_nodes, bls_keys_signatures)
            .rewa(rewa_amount)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn unstake_endpoint(&mut self) {
        let bls_keys = MultiValueVec::from(vec![ManagedBuffer::new_from_bytes(&b""[..])]);

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::AuctionMockProxy)
            .unstake_endpoint(bls_keys)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn unstake_nodes_endpoint(&mut self) {
        let bls_keys = MultiValueVec::from(vec![ManagedBuffer::new_from_bytes(&b""[..])]);

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::AuctionMockProxy)
            .unstake_nodes_endpoint(bls_keys)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn unbond_endpoint(&mut self) {
        let bls_keys = MultiValueVec::from(vec![ManagedBuffer::new_from_bytes(&b""[..])]);

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::AuctionMockProxy)
            .unbond_endpoint(bls_keys)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn unbond_nodes_endpoint(&mut self) {
        let bls_keys = MultiValueVec::from(vec![ManagedBuffer::new_from_bytes(&b""[..])]);

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::AuctionMockProxy)
            .unbond_nodes_endpoint(bls_keys)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn unstake_tokens(&mut self) {
        let _amount = BigUint::<StaticApi>::from(0u128);

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::AuctionMockProxy)
            .unstake_tokens(_amount)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn unbond_tokens(&mut self) {
        let amount = BigUint::<StaticApi>::from(0u128);

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::AuctionMockProxy)
            .unbond_tokens(amount)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn claim(&mut self) {
        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::AuctionMockProxy)
            .claim()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn unjail_endpoint(&mut self) {
        let rewa_amount = BigUint::<StaticApi>::from(0u128);

        let bls_keys = MultiValueVec::<BLSKey<StaticApi>>::new();

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::AuctionMockProxy)
            .unjail_endpoint(bls_keys)
            .rewa(rewa_amount)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn set_bls_deliberate_error(&mut self) {
        let bls_key = ManagedBuffer::new_from_bytes(&b""[..]);
        let err_code = 0u8;

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::AuctionMockProxy)
            .set_bls_deliberate_error(bls_key, err_code)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn get_bls_deliberate_error(&mut self) {
        let bls_key = ManagedBuffer::new_from_bytes(&b""[..]);

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::AuctionMockProxy)
            .get_bls_deliberate_error(bls_key)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

}
