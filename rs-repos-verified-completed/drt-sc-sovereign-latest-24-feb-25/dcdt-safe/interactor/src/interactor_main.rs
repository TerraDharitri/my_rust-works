#![allow(non_snake_case)]
// TODO: Remove this when interactor setup is complete
#![allow(dead_code)]

pub mod proxies;

use fee_market_proxy::{FeeStruct, FeeType};
use header_verifier_proxy::HeaderverifierProxy;
use dharitri_sc_scenario::meta::tools::find_current_workspace;
use dharitri_sc_scenario::dharitri_chain_vm::crypto_functions::{sha256, SHA256_RESULT_LEN};
use dharitri_sc_scenario::scenario_model::TxResponseStatus;
use dharitri_sc_snippets::imports::*;
use dharitri_sc_snippets::sdk::{self};
use proxies::*;
use serde::{Deserialize, Serialize};
use std::{
    io::{Read, Write},
    path::Path,
};
use testing_sc_proxy::TestingScProxy;
use transaction::{GasLimit, Operation, OperationData, PaymentsVec};
use transaction::{OperationDcdtPayment, TransferData};
const GATEWAY: &str = sdk::gateway::DEVNET_GATEWAY;
const STATE_FILE: &str = "state.toml";
const TOKEN_ID: &[u8] = b"SOV-101252";
const TOKEN_ID_FOR_EXECUTE: &[u8] = b"x-SOV-101252";
const WHITELISTED_TOKEN_ID: &[u8] = b"CHOCOLATE-daf625";
const INTERACTOR_SCENARIO_TRACE_PATH: &str = "interactor_trace.scen.json";

type OptionalTransferData<M> =
    OptionalValue<MultiValue3<GasLimit, ManagedBuffer<M>, ManagedVec<M, ManagedBuffer<M>>>>;

#[tokio::main]
async fn main() {
    env_logger::init();

    let mut args = std::env::args();
    let _ = args.next();
    let cmd = args.next().expect("at least one argument required");
    let mut interact = ContractInteract::new().await;
    match cmd.as_str() {
        "deploy" => interact.deploy(false).await,
        "upgrade" => interact.upgrade().await,
        "setFeeMarketAddress" => interact.set_fee_market_address().await,
        "setHeaderVerifierAddress" => interact.set_header_verifier_address().await,
        "deposit" => interact.deposit(OptionalTransferData::None, None).await,
        "setMinValidSigners" => interact.set_min_valid_signers().await,
        "addSigners" => interact.add_signers().await,
        "removeSigners" => interact.remove_signers().await,
        "registerToken" => interact.register_token().await,
        // "executeBridgeOps" => interact.execute_operations().await,
        "setMaxTxBatchSize" => interact.set_max_tx_batch_size().await,
        "setMaxTxBatchBlockDuration" => interact.set_max_tx_batch_block_duration().await,
        "getCurrentTxBatch" => interact.get_current_tx_batch().await,
        "getFirstBatchAnyStatus" => interact.get_first_batch_any_status().await,
        "getBatch" => interact.get_batch().await,
        "getBatchStatus" => interact.get_batch_status().await,
        "getFirstBatchId" => interact.first_batch_id().await,
        "getLastBatchId" => interact.last_batch_id().await,
        "setMaxBridgedAmount" => interact.set_max_bridged_amount().await,
        "getMaxBridgedAmount" => interact.max_bridged_amount().await,
        "endSetupPhase" => interact.end_setup_phase().await,
        "addTokensToWhitelist" => interact.add_tokens_to_whitelist(b"").await,
        "removeTokensFromWhitelist" => interact.remove_tokens_from_whitelist().await,
        "addTokensToBlacklist" => interact.add_tokens_to_blacklist(b"").await,
        "removeTokensFromBlacklist" => interact.remove_tokens_from_blacklist().await,
        "getTokenWhitelist" => interact.token_whitelist().await,
        "getTokenBlacklist" => interact.token_blacklist().await,
        "pause" => interact.pause_endpoint().await,
        "unpause" => interact.unpause_endpoint().await,
        "isPaused" => interact.paused_status().await,
        _ => panic!("unknown command: {}", &cmd),
    }
}

#[derive(Debug, Default, Serialize, Deserialize)]
struct State {
    contract_address: Option<Bech32Address>,
    fee_market_address: Option<Bech32Address>,
    price_aggregator_address: Option<Bech32Address>,
    header_verifier_address: Option<Bech32Address>,
    testing_sc_address: Option<Bech32Address>,
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

    pub fn set_fee_market_address(&mut self, address: Bech32Address) {
        self.fee_market_address = Some(address);
    }

    pub fn set_price_aggregator_address(&mut self, address: Bech32Address) {
        self.price_aggregator_address = Some(address);
    }

    pub fn set_header_verifier_address(&mut self, address: Bech32Address) {
        self.header_verifier_address = Some(address);
    }

    pub fn set_testing_sc_address(&mut self, address: Bech32Address) {
        self.testing_sc_address = Some(address);
    }

    /// Returns the contract address
    pub fn current_address(&self) -> &Bech32Address {
        self.contract_address
            .as_ref()
            .expect("no known contract, deploy first")
    }

    pub fn get_header_verifier_address(&self) -> Address {
        self.header_verifier_address.clone().unwrap().to_address()
    }

    pub fn get_fee_market_address(&self) -> Address {
        self.fee_market_address.clone().unwrap().to_address()
    }

    pub fn get_testing_sc_address(&self) -> Address {
        self.testing_sc_address.clone().unwrap().to_address()
    }

    pub fn get_price_aggregator_address(&self) -> Address {
        self.price_aggregator_address.clone().unwrap().to_address()
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

struct ContractInteract {
    interactor: Interactor,
    wallet_address: Address,
    frank_address: Address,
    alice_address: Address,
    mike_address: Address,
    judy_address: Address,
    dcdt_safe_code: String,
    fee_market_code: String,
    price_aggregator_code: String,
    header_verifier_code: String,
    testing_sc_code: String,
    state: State,
}

impl ContractInteract {
    async fn new() -> Self {
        let mut interactor = Interactor::new(GATEWAY, false).await;

        interactor.set_current_dir_from_workspace("dcdt-safe/interactor");

        let wallet_address = interactor.register_wallet(test_wallets::bob()).await;
        let frank_address = interactor.register_wallet(test_wallets::frank()).await;
        let alice_address = interactor.register_wallet(test_wallets::alice()).await;
        let mike_address = interactor.register_wallet(test_wallets::mike()).await;
        let judy_address = interactor.register_wallet(test_wallets::judy()).await;

        let current_dir = find_current_workspace().unwrap();
        println!("Current directory is: {}", current_dir.display());

        let repo_dir = current_dir
            .ancestors()
            .nth(2)
            .expect("Failed to go up 2 levels");
        println!("Repo directory is: {}", repo_dir.display());

        let fee_market_code = "../../fee-market/output/fee-market.drtsc.json".to_owned();

        let header_verifier_code =
            "../../header-verifier/output/header-verifier.drtsc.json".to_owned();

        let dcdt_safe_code = "../output/dcdt-safe.drtsc.json".to_owned();

        let price_aggregator_code =
            "contract-codes/dharitri-price-aggregator-sc.drtsc.json".to_owned();

        let testing_sc_code = "../../testing-sc/output/testing-sc.drtsc.json".to_owned();

        ContractInteract {
            interactor,
            wallet_address,
            frank_address,
            alice_address,
            mike_address,
            judy_address,
            dcdt_safe_code,
            fee_market_code,
            price_aggregator_code,
            header_verifier_code,
            testing_sc_code,
            state: State::load_state(),
        }
    }

    async fn deploy(&mut self, is_sov_chain: bool) {
        let code_path = DrtscPath::new(self.dcdt_safe_code.as_ref());

        let new_address = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .gas(110_000_000u64)
            .typed(proxy::DcdtSafeProxy)
            .init(is_sov_chain)
            .code(code_path)
            .returns(ReturnsNewAddress)
            .run()
            .await;

        let new_address_bech32 = bech32::encode(&new_address);
        self.state.set_address(Bech32Address::from_bech32_string(
            new_address_bech32.clone(),
        ));

        println!("new address: {new_address_bech32}");
    }

    async fn deploy_fee_market(&mut self) {
        let fee = FeeStruct {
            base_token: TokenIdentifier::from_dcdt_bytes(TOKEN_ID),
            fee_type: FeeType::Fixed {
                token: TokenIdentifier::from_dcdt_bytes(TOKEN_ID),
                per_transfer: BigUint::from(10u64),
                per_gas: BigUint::from(0u64),
            },
        };

        let fee_market_code_path = DrtscPath::new(&self.fee_market_code);
        let new_address = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .gas(100_000_000u64)
            .typed(fee_market_proxy::FeeMarketProxy)
            .init(self.state.current_address(), Option::Some(fee))
            .code(fee_market_code_path)
            .returns(ReturnsNewAddress)
            .run()
            .await;

        let new_address_bech32 = bech32::encode(&new_address);
        self.state
            .set_fee_market_address(Bech32Address::from_bech32_string(
                new_address_bech32.clone(),
            ));
        println!("new fee_market_address: {new_address_bech32}");
    }

    async fn deploy_price_aggregator(&mut self) {
        let price_agggregator_code_path = DrtscPath::new(&self.price_aggregator_code);
        let mut oracles = MultiValueEncoded::new();
        let first_oracle_adress = managed_address!(&self.frank_address.clone());
        let second_oracle_adress = managed_address!(&self.alice_address.clone());
        let third_oracle_adress = managed_address!(&self.mike_address.clone());
        let forth_oracle_address = managed_address!(&self.judy_address.clone());
        oracles.push(first_oracle_adress);
        oracles.push(second_oracle_adress);
        oracles.push(third_oracle_adress);
        oracles.push(forth_oracle_address);

        let new_address = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .gas(100_000_000u64)
            .typed(price_aggregator_proxy::PriceAggregatorProxy)
            .init(
                TokenIdentifier::from_dcdt_bytes(TOKEN_ID),
                BigUint::from(1u64),
                BigUint::from(1u64),
                3u8,
                3u8,
                oracles,
            )
            .code(price_agggregator_code_path)
            .returns(ReturnsNewAddress)
            .run()
            .await;

        let new_address_bech32 = bech32::encode(&new_address);
        self.state
            .set_price_aggregator_address(Bech32Address::from_bech32_string(
                new_address_bech32.clone(),
            ));
        println!("new token_handler_address: {new_address_bech32}");
    }

    async fn deploy_header_verifier_contract(&mut self) {
        let header_verifier_code_path = DrtscPath::new(&self.header_verifier_code);

        let new_address = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .gas(100_000_000u64)
            .typed(header_verifier_proxy::HeaderverifierProxy)
            .init(MultiValueEncoded::new())
            .code(header_verifier_code_path)
            .returns(ReturnsNewAddress)
            .run()
            .await;

        let new_address_bech32 = bech32::encode(&new_address);
        self.state
            .set_header_verifier_address(Bech32Address::from_bech32_string(
                new_address_bech32.clone(),
            ));

        println!("new header_verifier_address: {new_address_bech32}");
    }

    async fn deploy_testing_contract(&mut self) {
        let testing_sc_code_path = DrtscPath::new(&self.testing_sc_code);

        let new_address = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .gas(100_000_000u64)
            .typed(TestingScProxy)
            .init()
            .code(testing_sc_code_path)
            .returns(ReturnsNewAddress)
            .run()
            .await;

        let new_address_bech32 = bech32::encode(&new_address);
        self.state
            .set_testing_sc_address(Bech32Address::from_bech32_string(
                new_address_bech32.clone(),
            ));

        println!("new testing_sc_address: {new_address_bech32}");
    }

    async fn call_hello_endpoint(&mut self, value: u64) {
        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(&self.state.get_testing_sc_address())
            .gas(50_000_000u64)
            .typed(TestingScProxy)
            .hello(value)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    async fn upgrade(&mut self) {
        let code_path = DrtscPath::new(&self.dcdt_safe_code);

        let response = self
            .interactor
            .tx()
            .to(self.state.current_address())
            .from(&self.wallet_address)
            .gas(30_000_000u64)
            .typed(proxy::DcdtSafeProxy)
            .upgrade()
            .code(code_path)
            .code_metadata(CodeMetadata::UPGRADEABLE)
            .returns(ReturnsNewAddress)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    async fn set_fee_market_address(&mut self) {
        let fee_market_address = self.state.fee_market_address.clone().unwrap();
        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DcdtSafeProxy)
            .set_fee_market_address(fee_market_address)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    async fn set_header_verifier_address(&mut self) {
        let header_verifier_address = self.state.header_verifier_address.clone().unwrap();

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DcdtSafeProxy)
            .set_header_verifier_address(header_verifier_address)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    async fn deposit(
        &mut self,
        transfer_data: OptionalTransferData<StaticApi>,
        expect_error: Option<ExpectError<'_>>,
    ) {
        let token_id = TOKEN_ID;
        let token_nonce = 0u64;
        let token_amount = BigUint::<StaticApi>::from(20u64);

        let to = &self.frank_address;
        let mut payments = PaymentsVec::new();
        payments.push(DcdtTokenPayment::new(
            TokenIdentifier::from(token_id),
            token_nonce,
            token_amount,
        ));

        match expect_error {
            Some(error) => {
                self.interactor
                    .tx()
                    .from(&self.wallet_address)
                    .to(self.state.current_address())
                    .gas(90_000_000u64)
                    .typed(proxy::DcdtSafeProxy)
                    .deposit(to, transfer_data)
                    .payment(payments)
                    .returns(error)
                    .run()
                    .await;
            }
            None => {
                self.interactor
                    .tx()
                    .from(&self.wallet_address)
                    .to(self.state.current_address())
                    .gas(90_000_000u64)
                    .typed(proxy::DcdtSafeProxy)
                    .deposit(to, transfer_data)
                    .payment(payments)
                    .returns(ReturnsResultUnmanaged)
                    .run()
                    .await;
            }
        }
    }

    async fn set_min_valid_signers(&mut self) {
        let new_value = 0u32;

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DcdtSafeProxy)
            .set_min_valid_signers(new_value)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    async fn add_signers(&mut self) {
        let signers = MultiValueVec::from(vec![bech32::decode("")]);

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DcdtSafeProxy)
            .add_signers(signers)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    async fn remove_signers(&mut self) {
        let signers = MultiValueVec::from(vec![bech32::decode("")]);

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DcdtSafeProxy)
            .remove_signers(signers)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    async fn register_token(&mut self) {
        let rewa_amount = BigUint::<StaticApi>::from(50_000_000_000_000_000u64);

        let sov_token_id = TokenIdentifier::from_dcdt_bytes(b"x-SOV-101252");
        let token_type = DcdtTokenType::Fungible;
        let token_display_name = ManagedBuffer::new_from_bytes(b"TDCDT");
        let token_ticker = ManagedBuffer::new_from_bytes(b"TEST");
        let num_decimals = 18u32;

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(90_000_000u64)
            .typed(proxy::DcdtSafeProxy)
            .register_token(
                sov_token_id,
                token_type,
                token_display_name,
                token_ticker,
                num_decimals,
            )
            .rewa(rewa_amount)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    async fn execute_operations(
        &mut self,
        operation: &Operation<StaticApi>,
        expect_error: Option<TxResponseStatus>,
    ) {
        let hash_of_hashes = sha256(&self.get_operation_hash(operation));

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(70_000_000u64)
            .typed(proxy::DcdtSafeProxy)
            .execute_operations(&hash_of_hashes, operation)
            .returns(ReturnsHandledOrError::new().returns(ReturnsResultUnmanaged))
            .run()
            .await;

        if let Err(err) = response {
            assert!(err == expect_error.unwrap());
        }
    }

    async fn execute_operations_with_error(&mut self, error_msg: ExpectError<'_>) {
        let tokens = self.setup_payments().await;
        let operation_data = self.setup_operation_data(false).await;
        let to = managed_address!(&self.frank_address);
        let operation = Operation::new(to, tokens, operation_data);
        let operation_hash = self.get_operation_hash(&operation);

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DcdtSafeProxy)
            .execute_operations(&operation_hash, operation)
            .returns(error_msg)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    async fn set_max_tx_batch_size(&mut self) {
        let new_max_tx_batch_size = 0u32;

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DcdtSafeProxy)
            .set_max_tx_batch_size(new_max_tx_batch_size)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    async fn set_max_tx_batch_block_duration(&mut self) {
        let new_max_tx_batch_block_duration = 0u64;

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DcdtSafeProxy)
            .set_max_tx_batch_block_duration(new_max_tx_batch_block_duration)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    async fn get_current_tx_batch(&mut self) {
        let _ = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DcdtSafeProxy)
            .get_current_tx_batch()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;
    }

    async fn get_first_batch_any_status(&mut self) {
        let _ = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DcdtSafeProxy)
            .get_first_batch_any_status()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;
    }

    async fn get_batch(&mut self) {
        let batch_id = 0u64;

        let _ = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DcdtSafeProxy)
            .get_batch(batch_id)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;
    }

    async fn get_batch_status(&mut self) {
        let batch_id = 0u64;

        self.interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DcdtSafeProxy)
            .get_batch_status(batch_id)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;
    }

    async fn first_batch_id(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DcdtSafeProxy)
            .first_batch_id()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    async fn last_batch_id(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DcdtSafeProxy)
            .last_batch_id()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    async fn set_max_bridged_amount(&mut self) {
        let token_id = TokenIdentifier::from_dcdt_bytes(&b""[..]);
        let max_amount = BigUint::<StaticApi>::from(0u128);

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DcdtSafeProxy)
            .set_max_bridged_amount(token_id, max_amount)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    async fn max_bridged_amount(&mut self) {
        let token_id = TokenIdentifier::from_dcdt_bytes(&b""[..]);

        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DcdtSafeProxy)
            .max_bridged_amount(token_id)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    async fn end_setup_phase(&mut self) {
        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DcdtSafeProxy)
            .end_setup_phase()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    async fn add_tokens_to_whitelist(&mut self, token_id: &[u8]) {
        let tokens = MultiValueVec::from(vec![TokenIdentifier::from_dcdt_bytes(token_id)]);

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DcdtSafeProxy)
            .add_tokens_to_whitelist(tokens)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    async fn remove_tokens_from_whitelist(&mut self) {
        let tokens = MultiValueVec::from(vec![TokenIdentifier::from_dcdt_bytes(&b""[..])]);

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DcdtSafeProxy)
            .remove_tokens_from_whitelist(tokens)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    async fn add_tokens_to_blacklist(&mut self, token_id: &[u8]) {
        let tokens = MultiValueVec::from(vec![TokenIdentifier::from_dcdt_bytes(token_id)]);

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DcdtSafeProxy)
            .add_tokens_to_blacklist(tokens)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    async fn remove_tokens_from_blacklist(&mut self) {
        let tokens = MultiValueVec::from(vec![TokenIdentifier::from_dcdt_bytes(&b""[..])]);

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DcdtSafeProxy)
            .remove_tokens_from_blacklist(tokens)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    async fn token_whitelist(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DcdtSafeProxy)
            .token_whitelist()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    async fn token_blacklist(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DcdtSafeProxy)
            .token_blacklist()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    async fn pause_endpoint(&mut self) {
        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DcdtSafeProxy)
            .pause_endpoint()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    async fn unpause_endpoint(&mut self) {
        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DcdtSafeProxy)
            .unpause_endpoint()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    async fn paused_status(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DcdtSafeProxy)
            .paused_status()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    async fn remove_fee(&mut self) {
        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.get_fee_market_address())
            .gas(30_000_000u64)
            .typed(fee_market_proxy::FeeMarketProxy)
            .remove_fee(TOKEN_ID)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    async fn header_verifier_set_dcdt_address(&mut self) {
        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.get_header_verifier_address())
            .gas(30_000_000u64)
            .typed(HeaderverifierProxy)
            .set_dcdt_safe_address(self.state.current_address())
            .run()
            .await;

        println!("Result: {response:?}");
    }

    async fn setup_operation(&mut self, has_transfer_data: bool) -> Operation<StaticApi> {
        let to = managed_address!(&self.state.get_testing_sc_address());
        let payments = self.setup_payments().await;

        let operation_data = self.setup_operation_data(has_transfer_data).await;

        Operation::new(to, payments, operation_data)
    }

    async fn setup_operation_data(&mut self, has_transfer_data: bool) -> OperationData<StaticApi> {
        let op_sender = managed_address!(&self.wallet_address);

        let transfer_data = if has_transfer_data {
            let mut args = ManagedVec::new();
            let value = BigUint::<StaticApi>::from(0u64);
            args.push(ManagedBuffer::from(value.to_bytes_be()));

            Some(TransferData::new(
                30_000_000u64,
                ManagedBuffer::from("hello"),
                args,
            ))
        } else {
            None
        };

        let operation_data: OperationData<StaticApi> = OperationData {
            op_nonce: 1,
            op_sender,
            opt_transfer_data: transfer_data,
        };

        operation_data
    }

    async fn register_operations(&mut self, operation: &Operation<StaticApi>) {
        let bls_signature = ManagedByteArray::default();
        let operation_hash = self.get_operation_hash(operation);
        let hash_of_hashes = sha256(&operation_hash);

        let mut managed_operation_hashes =
            MultiValueEncoded::<StaticApi, ManagedBuffer<StaticApi>>::new();

        let managed_operation_hash = ManagedBuffer::<StaticApi>::from(&operation_hash);
        let managed_hash_of_hashes = ManagedBuffer::<StaticApi>::from(&hash_of_hashes);

        managed_operation_hashes.push(managed_operation_hash);

        let header_verifier_address = self.state.get_header_verifier_address();

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(header_verifier_address)
            .typed(header_verifier_proxy::HeaderverifierProxy)
            .register_bridge_operations(
                bls_signature,
                managed_hash_of_hashes,
                managed_operation_hashes,
            )
            .returns(ReturnsResult)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    async fn setup_payments(&mut self) -> ManagedVec<StaticApi, OperationDcdtPayment<StaticApi>> {
        let mut tokens: ManagedVec<StaticApi, OperationDcdtPayment<StaticApi>> = ManagedVec::new();
        let token_ids = vec![TOKEN_ID_FOR_EXECUTE];

        for token_id in token_ids {
            let payment: OperationDcdtPayment<StaticApi> = OperationDcdtPayment {
                token_identifier: token_id.into(),
                token_nonce: 0,
                token_data: DcdtTokenData {
                    token_type: DcdtTokenType::Fungible,
                    amount: BigUint::from(10_000u64),
                    frozen: false,
                    hash: ManagedBuffer::new(),
                    name: ManagedBuffer::from("SovToken"),
                    attributes: ManagedBuffer::new(),
                    creator: managed_address!(&self.frank_address),
                    royalties: BigUint::zero(),
                    uris: ManagedVec::new(),
                },
            };

            tokens.push(payment);
        }

        tokens
    }

    fn get_operation_hash(&mut self, operation: &Operation<StaticApi>) -> [u8; SHA256_RESULT_LEN] {
        let mut serialized_operation: ManagedBuffer<StaticApi> = ManagedBuffer::new();
        let _ = operation.top_encode(&mut serialized_operation);
        sha256(&serialized_operation.to_vec())
    }

    fn get_hash(&mut self, operation: &ManagedBuffer<StaticApi>) -> ManagedBuffer<StaticApi> {
        let mut array = [0; 1024];

        let len = {
            let byte_array = operation.load_to_byte_array(&mut array);
            byte_array.len()
        };

        let trimmed_slice = &array[..len];
        let hash = sha256(trimmed_slice);

        ManagedBuffer::from(&hash)
    }
}

// NOTE:
// All interactor tests should only be ignored when pushed to Github
// Those System Tests are intended to run locally since they won't work on Github Actions
#[tokio::test]
#[ignore]
async fn test_deploy_sov() {
    let mut interact = ContractInteract::new().await;
    interact.deploy(false).await;
    interact.deploy_fee_market().await;
    interact.set_fee_market_address().await;
    interact.remove_fee().await;
    interact.deploy_header_verifier_contract().await;
    interact.set_header_verifier_address().await;
    interact.unpause_endpoint().await;
    interact.header_verifier_set_dcdt_address().await;
    interact.deploy_testing_contract().await;
    interact.register_token().await;

    let operation = interact.setup_operation(true).await;
    interact.register_operations(&operation).await;
    interact
        .execute_operations(
            &operation,
            Some(TxResponseStatus::new(
                ReturnCode::UserError,
                "Value should be greater than 0",
            )),
        )
        .await;
}
