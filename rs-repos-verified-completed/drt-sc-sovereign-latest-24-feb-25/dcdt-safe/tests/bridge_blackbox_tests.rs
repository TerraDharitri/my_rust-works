use bls_signature::BlsSignature;
use dcdt_safe::dcdt_safe_proxy::{self};
use fee_market::fee_market_proxy::{self, FeeStruct, FeeType};
use header_verifier::header_verifier_proxy;
use dharitri_sc::codec::TopEncode;
use dharitri_sc::types::{
    Address, DcdtTokenData, ManagedByteArray, MultiValueEncoded, TestTokenIdentifier,
    TokenIdentifier,
};
use dharitri_sc::{
    imports::{MultiValue3, OptionalValue},
    types::{BigUint, DcdtTokenPayment, ManagedBuffer, ManagedVec, TestAddress, TestSCAddress},
};
use dharitri_sc_scenario::managed_address;
use dharitri_sc_scenario::dharitri_chain_vm::crypto_functions::sha256;
use dharitri_sc_scenario::{
    api::StaticApi, imports::DrtscPath, ExpectError, ScenarioTxRun, ScenarioWorld,
};
use transaction::{Operation, OperationData, OperationDcdtPayment};

const BRIDGE_ADDRESS: TestSCAddress = TestSCAddress::new("bridge");
const BRIDGE_CODE_PATH: DrtscPath = DrtscPath::new("output/dcdt-safe.drtsc.json");
const BRIDGE_OWNER_ADDRESS: TestAddress = TestAddress::new("bridge_owner");

const FEE_MARKET_ADDRESS: TestSCAddress = TestSCAddress::new("fee_market");
const FEE_MARKET_CODE_PATH: DrtscPath = DrtscPath::new("../fee-market/output/fee-market.drtsc.json");

const HEADER_VERIFIER_ADDRESS: TestSCAddress = TestSCAddress::new("header_verifier");
const HEADER_VERIFIER_CODE_PATH: DrtscPath =
    DrtscPath::new("../header-verifier/output/header-verifier.drtsc.json");

const USER_ADDRESS: TestAddress = TestAddress::new("user");
const RECEIVER_ADDRESS: TestAddress = TestAddress::new("receiver");

const BRIDGE_OWNER_BALANCE: u64 = 100_000_000;
const USER_REWA_BALANCE: u64 = 100_000_000;

const NFT_TOKEN_ID: TestTokenIdentifier = TestTokenIdentifier::new("NFT-123456");
const FUNGIBLE_TOKEN_ID: TestTokenIdentifier = TestTokenIdentifier::new("CROWD-123456");

fn world() -> ScenarioWorld {
    let mut blockchain = ScenarioWorld::new();

    blockchain.register_contract(BRIDGE_CODE_PATH, dcdt_safe::ContractBuilder);
    blockchain.register_contract(FEE_MARKET_CODE_PATH, fee_market::ContractBuilder);
    blockchain.register_contract(HEADER_VERIFIER_CODE_PATH, header_verifier::ContractBuilder);

    blockchain
}

struct BridgeTestState {
    world: ScenarioWorld,
}

impl BridgeTestState {
    fn new() -> Self {
        let mut world = world();

        world
            .account(BRIDGE_OWNER_ADDRESS)
            .dcdt_nft_balance(NFT_TOKEN_ID, 1, 100_000, ManagedBuffer::new())
            .dcdt_balance(FUNGIBLE_TOKEN_ID, 100_000)
            .nonce(1)
            .balance(BRIDGE_OWNER_BALANCE);

        world
            .account(USER_ADDRESS)
            .dcdt_nft_balance(NFT_TOKEN_ID, 1, 100_000, ManagedBuffer::new())
            .dcdt_balance(FUNGIBLE_TOKEN_ID, 100_000)
            .balance(USER_REWA_BALANCE)
            .nonce(1);

        world.account(RECEIVER_ADDRESS).nonce(1);

        Self { world }
    }

    fn deploy_bridge_contract(&mut self, is_sovereign_chain: bool) -> &mut Self {
        self.world
            .tx()
            .from(BRIDGE_OWNER_ADDRESS)
            .typed(dcdt_safe_proxy::DcdtSafeProxy)
            .init(is_sovereign_chain)
            .code(BRIDGE_CODE_PATH)
            .new_address(BRIDGE_ADDRESS)
            .run();

        self.deploy_fee_market_contract();
        self.propose_set_fee_market_address();
        self.propose_set_unpaused();

        self
    }

    fn deploy_fee_market_contract(&mut self) -> &mut Self {
        let fee_struct: Option<FeeStruct<StaticApi>> = None;

        self.world
            .tx()
            .from(BRIDGE_OWNER_ADDRESS)
            .typed(fee_market_proxy::FeeMarketProxy)
            .init(BRIDGE_ADDRESS, fee_struct)
            .code(FEE_MARKET_CODE_PATH)
            .new_address(FEE_MARKET_ADDRESS)
            .run();

        self
    }

    fn deploy_header_verifier_contract(&mut self) -> &mut Self {
        let bls_pub_key: ManagedBuffer<StaticApi> = ManagedBuffer::new();
        let mut bls_pub_keys = MultiValueEncoded::new();
        bls_pub_keys.push(bls_pub_key);

        self.world
            .tx()
            .from(BRIDGE_OWNER_ADDRESS)
            .typed(header_verifier_proxy::HeaderverifierProxy)
            .init(bls_pub_keys)
            .code(HEADER_VERIFIER_CODE_PATH)
            .new_address(HEADER_VERIFIER_ADDRESS)
            .run();

        self
    }

    fn propose_set_fee_market_address(&mut self) {
        self.world
            .tx()
            .from(BRIDGE_OWNER_ADDRESS)
            .to(BRIDGE_ADDRESS)
            .typed(dcdt_safe_proxy::DcdtSafeProxy)
            .set_fee_market_address(FEE_MARKET_ADDRESS)
            .run();
    }

    fn propose_set_header_verifier_address(&mut self) {
        self.world
            .tx()
            .from(BRIDGE_OWNER_ADDRESS)
            .to(BRIDGE_ADDRESS)
            .typed(dcdt_safe_proxy::DcdtSafeProxy)
            .set_header_verifier_address(HEADER_VERIFIER_ADDRESS)
            .run();
    }

    fn propose_rewa_deposit_and_expect_err(&mut self, err_message: &str) {
        let transfer_data = OptionalValue::<
            MultiValue3<
                u64,
                ManagedBuffer<StaticApi>,
                ManagedVec<StaticApi, ManagedBuffer<StaticApi>>,
            >,
        >::None;

        self.world
            .tx()
            .from(USER_ADDRESS)
            .to(BRIDGE_ADDRESS)
            .typed(dcdt_safe_proxy::DcdtSafeProxy)
            .deposit(RECEIVER_ADDRESS, transfer_data)
            .rewa(10)
            .with_result(ExpectError(4, err_message))
            .run();
    }

    fn _propose_set_fee_token(&mut self, token_identifier: TestTokenIdentifier) {
        let fee_type = FeeType::AnyToken {
            base_fee_token: token_identifier.into(),
            per_transfer: BigUint::from(10u64),
            per_gas: BigUint::from(10u64),
        };
        let fee_token_identifier: TokenIdentifier<StaticApi> =
            TokenIdentifier::from(token_identifier);

        let fee_struct = FeeStruct {
            base_token: fee_token_identifier,
            fee_type,
        };

        self.world
            .tx()
            .from(BRIDGE_OWNER_ADDRESS)
            .to(FEE_MARKET_ADDRESS)
            .typed(fee_market_proxy::FeeMarketProxy)
            .set_fee(fee_struct)
            .run();
    }

    fn _propose_dcdt_deposit_and_expect_err(&mut self, err_message: &str) {
        let transfer_data = OptionalValue::<
            MultiValue3<
                u64,
                ManagedBuffer<StaticApi>,
                ManagedVec<StaticApi, ManagedBuffer<StaticApi>>,
            >,
        >::None;

        let mut payments = ManagedVec::new();
        let nft_payment = DcdtTokenPayment::new(NFT_TOKEN_ID.into(), 1, BigUint::from(10u64));
        let fungible_payment: DcdtTokenPayment<StaticApi> =
            DcdtTokenPayment::new(FUNGIBLE_TOKEN_ID.into(), 0, BigUint::from(10u64));

        payments.push(nft_payment);
        payments.push(fungible_payment);

        self.world
            .tx()
            .from(USER_ADDRESS)
            .to(BRIDGE_ADDRESS)
            .typed(dcdt_safe_proxy::DcdtSafeProxy)
            .deposit(RECEIVER_ADDRESS, transfer_data)
            .payment(payments)
            .returns(ExpectError(4, err_message))
            .run();
    }

    fn propose_dcdt_deposit(&mut self) {
        let transfer_data = OptionalValue::<
            MultiValue3<
                u64,
                ManagedBuffer<StaticApi>,
                ManagedVec<StaticApi, ManagedBuffer<StaticApi>>,
            >,
        >::None;

        let mut payments = ManagedVec::new();
        let nft_payment = DcdtTokenPayment::new(NFT_TOKEN_ID.into(), 1, BigUint::from(10u64));
        let fungible_payment: DcdtTokenPayment<StaticApi> =
            DcdtTokenPayment::new(FUNGIBLE_TOKEN_ID.into(), 0, BigUint::from(10u64));

        payments.push(fungible_payment);
        payments.push(nft_payment);

        self.world
            .tx()
            .from(USER_ADDRESS)
            .to(BRIDGE_ADDRESS)
            .typed(dcdt_safe_proxy::DcdtSafeProxy)
            .deposit(RECEIVER_ADDRESS, transfer_data)
            .payment(payments)
            .run();
    }

    fn propose_execute_operation_and_expect_err(&mut self, err_message: &str) {
        let (tokens, data) = self.setup_payments(vec![NFT_TOKEN_ID, FUNGIBLE_TOKEN_ID]);
        let to = managed_address!(&Address::from(&RECEIVER_ADDRESS.eval_to_array()));
        let operation = Operation { to, tokens, data };
        let operation_hash = self.get_operation_hash(&operation);

        self.world
            .tx()
            .from(USER_ADDRESS)
            .to(BRIDGE_ADDRESS)
            .typed(dcdt_safe_proxy::DcdtSafeProxy)
            .execute_operations(operation_hash, operation)
            .returns(ExpectError(4, err_message))
            .run();
    }

    fn propose_execute_operation(&mut self) {
        let (tokens, data) = self.setup_payments(vec![NFT_TOKEN_ID, FUNGIBLE_TOKEN_ID]);
        let to = managed_address!(&Address::from(&RECEIVER_ADDRESS.eval_to_array()));
        let operation = Operation { to, tokens, data };
        let operation_hash = self.get_operation_hash(&operation);
        let hash_of_hashes: ManagedBuffer<StaticApi> =
            ManagedBuffer::from(&sha256(&operation_hash.to_vec()));

        self.world
            .tx()
            .from(USER_ADDRESS)
            .to(BRIDGE_ADDRESS)
            .typed(dcdt_safe_proxy::DcdtSafeProxy)
            .execute_operations(hash_of_hashes, operation)
            .run();
    }

    fn propose_set_unpaused(&mut self) {
        self.world
            .tx()
            .from(BRIDGE_OWNER_ADDRESS)
            .to(BRIDGE_ADDRESS)
            .typed(dcdt_safe_proxy::DcdtSafeProxy)
            .unpause_endpoint()
            .run();
    }

    fn propose_set_dcdt_safe_address(&mut self) {
        self.world
            .tx()
            .from(BRIDGE_OWNER_ADDRESS)
            .to(HEADER_VERIFIER_ADDRESS)
            .typed(header_verifier_proxy::HeaderverifierProxy)
            .set_dcdt_safe_address(BRIDGE_ADDRESS)
            .run();
    }

    fn propose_register_operation(&mut self) {
        let (tokens, data) = self.setup_payments(vec![NFT_TOKEN_ID, FUNGIBLE_TOKEN_ID]);
        let to = managed_address!(&Address::from(RECEIVER_ADDRESS.eval_to_array()));
        let operation = Operation { to, tokens, data };
        let operation_hash = self.get_operation_hash(&operation);
        let mut operations_hashes = MultiValueEncoded::new();

        operations_hashes.push(operation_hash.clone());

        let mock_signature = self.mock_bls_signature(&operation_hash);
        let hash_of_hashes = ManagedBuffer::new_from_bytes(&sha256(&operation_hash.to_vec()));

        self.world
            .tx()
            .from(BRIDGE_OWNER_ADDRESS)
            .to(HEADER_VERIFIER_ADDRESS)
            .typed(header_verifier_proxy::HeaderverifierProxy)
            .register_bridge_operations(
                mock_signature,
                hash_of_hashes.clone(),
                operations_hashes.clone(),
            )
            .run();
    }

    fn setup_payments(
        &mut self,
        token_ids: Vec<TestTokenIdentifier>,
    ) -> (
        ManagedVec<StaticApi, OperationDcdtPayment<StaticApi>>,
        OperationData<StaticApi>,
    ) {
        let mut tokens: ManagedVec<StaticApi, OperationDcdtPayment<StaticApi>> = ManagedVec::new();

        for token_id in token_ids {
            let payment: OperationDcdtPayment<StaticApi> = OperationDcdtPayment {
                token_identifier: token_id.into(),
                token_nonce: 1,
                token_data: DcdtTokenData::default(),
            };

            tokens.push(payment);
        }

        let op_sender = managed_address!(&Address::from(&USER_ADDRESS.eval_to_array()));
        let data: OperationData<StaticApi> = OperationData {
            op_nonce: 1,
            op_sender,
            opt_transfer_data: Option::None,
        };

        (tokens, data)
    }

    fn get_operation_hash(&mut self, operation: &Operation<StaticApi>) -> ManagedBuffer<StaticApi> {
        let mut serialized_operation: ManagedBuffer<StaticApi> = ManagedBuffer::new();
        let _ = operation.top_encode(&mut serialized_operation);
        let sha256 = sha256(&serialized_operation.to_vec());

        ManagedBuffer::new_from_bytes(&sha256)
    }

    fn mock_bls_signature(
        &mut self,
        operation_hash: &ManagedBuffer<StaticApi>,
    ) -> BlsSignature<StaticApi> {
        let byte_arr: &mut [u8; 48] = &mut [0; 48];
        operation_hash.load_to_byte_array(byte_arr);
        let mock_signature: BlsSignature<StaticApi> = ManagedByteArray::new_from_bytes(byte_arr);

        mock_signature
    }
}

#[test]
fn test_deploy() {
    let mut state = BridgeTestState::new();

    state.deploy_bridge_contract(false);
}

#[test]
fn test_main_to_sov_rewa_deposit_nothing_to_transfer() {
    let mut state = BridgeTestState::new();
    let err_message = "Nothing to transfer";

    state.deploy_bridge_contract(false);

    state.propose_rewa_deposit_and_expect_err(err_message);
}

#[test]
fn test_main_to_sov_deposit_ok() {
    let mut state = BridgeTestState::new();

    state.deploy_bridge_contract(false);

    state.propose_dcdt_deposit();
}

#[test]
fn test_execute_operation_not_registered() {
    let mut state = BridgeTestState::new();
    let err_message = "The current operation is not registered";

    state.deploy_bridge_contract(false);

    state.deploy_header_verifier_contract();

    state.propose_set_header_verifier_address();

    state.propose_set_dcdt_safe_address();

    state.propose_execute_operation_and_expect_err(err_message);
}

#[test]
fn test_register_operation() {
    let mut state = BridgeTestState::new();

    state.deploy_bridge_contract(false);

    state.deploy_header_verifier_contract();

    state.propose_set_header_verifier_address();

    state.propose_register_operation();
}

#[test]
fn test_execute_operation() {
    let mut state = BridgeTestState::new();

    state.deploy_bridge_contract(false);

    state.deploy_header_verifier_contract();

    state.propose_set_header_verifier_address();

    state.propose_set_dcdt_safe_address();

    state.propose_register_operation();

    state.propose_execute_operation();
}
