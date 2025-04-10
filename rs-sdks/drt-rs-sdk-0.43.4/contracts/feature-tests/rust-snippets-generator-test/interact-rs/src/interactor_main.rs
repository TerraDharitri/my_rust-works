#![allow(non_snake_case)]

use rust_snippets_generator_test::{ProxyTrait as _, *};

use dharitri_sc_snippets::{
    env_logger,
    drtrs::wallet::Wallet,
    dharitri_sc::{codec::multi_types::*, types::*},
    dharitri_sc_scenario::{
        api::StaticApi,
        bech32,
        scenario_format::interpret_trait::{InterpretableFrom, InterpreterContext},
        scenario_model::*,
        ContractInfo,
    },
    sdk, tokio, Interactor,
};

const GATEWAY: &str = sdk::blockchain::DEVNET_GATEWAY;
const PEM: &str = "alice.pem";
const SC_ADDRESS: &str = "";

const SYSTEM_SC_BECH32: &str = "drt1yvesqqqqqqqqqqqqqqqqqqqqqqqqyvesqqqqqqqqqqqqqqqzlllsd5j0s2";
const DEFAULT_ADDRESS_EXPR: &str =
    "0x0000000000000000000000000000000000000000000000000000000000000000";
const TOKEN_ISSUE_COST: u64 = 50_000_000_000_000_000;

type ContractType = ContractInfo<rust_snippets_generator_test::Proxy<StaticApi>>;

#[tokio::main]
async fn main() {
    env_logger::init();

    let mut args = std::env::args();
    let _ = args.next();
    let cmd = args.next().expect("at least one argument required");
    let mut state = State::new().await;
    match cmd.as_str() {
        "deploy" => state.deploy().await,
        "no_arg_no_result_endpoint" => state.no_arg_no_result_endpoint().await,
        "no_arg_one_result_endpoint" => state.no_arg_one_result_endpoint().await,
        "one_arg_no_result_endpoint" => state.one_arg_no_result_endpoint().await,
        "one_arg_one_result_endpoint" => state.one_arg_one_result_endpoint().await,
        "multi_result" => state.multi_result().await,
        "nested_result" => state.nested_result().await,
        "custom_struct" => state.custom_struct().await,
        "optional_type" => state.optional_type().await,
        "option_type" => state.option_type().await,
        "dcdt_token_payment" => state.dcdt_token_payment().await,
        "rewa_or_dcdt_payment" => state.rewa_or_dcdt_payment().await,
        "payable_endpoint" => state.payable_endpoint().await,
        "managed_buffer" => state.managed_buffer().await,
        "multi_value_2" => state.multi_value_2().await,
        "multi_value_4" => state.multi_value_4().await,
        "complex_multi_values" => state.complex_multi_values().await,
        _ => panic!("unknown command: {}", &cmd),
    }
}

struct State {
    interactor: Interactor,
    wallet_address: Address,
    contract_code: BytesValue,
    contract: ContractType,
}

impl State {
    async fn new() -> Self {
        let mut interactor = Interactor::new(GATEWAY).await;
        let wallet_address = interactor.register_wallet(Wallet::from_pem_file(PEM).unwrap());
        let sc_addr_expr = if SC_ADDRESS == "" {
            DEFAULT_ADDRESS_EXPR.to_string()
        } else {
            "bech32:".to_string() + SC_ADDRESS
        };
        let contract_code = BytesValue::interpret_from(
            "file:../output/rust-snippets-generator-test.wasm",
            &InterpreterContext::default(),
        );
        let contract = ContractType::new(sc_addr_expr);

        State {
            interactor,
            wallet_address,
            contract_code,
            contract,
        }
    }

    async fn deploy(&mut self) {
        let (new_address, _) = self
            .interactor
            .sc_deploy_get_result::<_, ()>(
                ScDeployStep::new()
                    .call(self.contract.init())
                    .from(&self.wallet_address)
                    .code(&self.contract_code)
                    .expect(TxExpect::ok().additional_error_message("deploy failed: ")),
            )
            .await;

        let new_address_bech32 = bech32::encode(&new_address);
        println!("new address: {new_address_bech32}");
    }

    async fn no_arg_no_result_endpoint(&mut self) {
        let response: TypedResponse<()> = self
            .interactor
            .sc_call_use_result(
                ScCallStep::new()
                    .call(self.contract.no_arg_no_result_endpoint())
                    .from(&self.wallet_address)
                    .expect(TxExpect::ok().additional_error_message("SC call failed: ")),
            )
            .await;

        let result = response.result.unwrap();
        println!("Result: {result:?}");
    }

    async fn no_arg_one_result_endpoint(&mut self) {
        let response: TypedResponse<u64> = self
            .interactor
            .sc_call_use_result(
                ScCallStep::new()
                    .call(self.contract.no_arg_one_result_endpoint())
                    .from(&self.wallet_address)
                    .expect(TxExpect::ok().additional_error_message("SC call failed: ")),
            )
            .await;

        let result = response.result.unwrap();
        println!("Result: {result:?}");
    }

    async fn one_arg_no_result_endpoint(&mut self) {
        let _arg = 0u64;

        let response: TypedResponse<()> = self
            .interactor
            .sc_call_use_result(
                ScCallStep::new()
                    .call(self.contract.one_arg_no_result_endpoint(_arg))
                    .from(&self.wallet_address)
                    .expect(TxExpect::ok().additional_error_message("SC call failed: ")),
            )
            .await;

        let result = response.result.unwrap();
        println!("Result: {result:?}");
    }

    async fn one_arg_one_result_endpoint(&mut self) {
        let _arg = 0u64;

        let response: TypedResponse<BigUint<StaticApi>> = self
            .interactor
            .sc_call_use_result(
                ScCallStep::new()
                    .call(self.contract.one_arg_one_result_endpoint(_arg))
                    .from(&self.wallet_address)
                    .expect(TxExpect::ok().additional_error_message("SC call failed: ")),
            )
            .await;

        let result = response.result.unwrap();
        println!("Result: {result:?}");
    }

    async fn multi_result(&mut self) {
        let _arg = TokenIdentifier::from_dcdt_bytes(&b""[..]);

        let response: TypedResponse<MultiValueVec<BigUint<StaticApi>>> = self
            .interactor
            .sc_call_use_result(
                ScCallStep::new()
                    .call(self.contract.multi_result(_arg))
                    .from(&self.wallet_address)
                    .expect(TxExpect::ok().additional_error_message("SC call failed: ")),
            )
            .await;

        let result = response.result.unwrap();
        println!("Result: {result:?}");
    }

    async fn nested_result(&mut self) {
        let _arg = TokenIdentifier::from_dcdt_bytes(&b""[..]);

        let response: TypedResponse<
            ManagedVec<StaticApi, ManagedVec<StaticApi, BigUint<StaticApi>>>,
        > = self
            .interactor
            .sc_call_use_result(
                ScCallStep::new()
                    .call(self.contract.nested_result(_arg))
                    .from(&self.wallet_address)
                    .expect(TxExpect::ok().additional_error_message("SC call failed: ")),
            )
            .await;

        let result = response.result.unwrap();
        println!("Result: {result:?}");
    }

    async fn custom_struct(&mut self) {
        let _arg = PlaceholderInput;

        let response: TypedResponse<MyCoolStruct<StaticApi>> = self
            .interactor
            .sc_call_use_result(
                ScCallStep::new()
                    .call(self.contract.custom_struct(_arg))
                    .from(&self.wallet_address)
                    .expect(TxExpect::ok().additional_error_message("SC call failed: ")),
            )
            .await;

        let result = response.result.unwrap();
        println!("Result: {result:?}");
    }

    async fn optional_type(&mut self) {
        let _arg = OptionalValue::Some(BigUint::<StaticApi>::from(0u128));

        let response: TypedResponse<OptionalValue<TokenIdentifier<StaticApi>>> = self
            .interactor
            .sc_call_use_result(
                ScCallStep::new()
                    .call(self.contract.optional_type(_arg))
                    .from(&self.wallet_address)
                    .expect(TxExpect::ok().additional_error_message("SC call failed: ")),
            )
            .await;

        let result = response.result.unwrap();
        println!("Result: {result:?}");
    }

    async fn option_type(&mut self) {
        let _arg = Option::Some(ManagedVec::from_single_item(
            TokenIdentifier::from_dcdt_bytes(&b""[..]),
        ));

        let response: TypedResponse<Option<u64>> = self
            .interactor
            .sc_call_use_result(
                ScCallStep::new()
                    .call(self.contract.option_type(_arg))
                    .from(&self.wallet_address)
                    .expect(TxExpect::ok().additional_error_message("SC call failed: ")),
            )
            .await;

        let result = response.result.unwrap();
        println!("Result: {result:?}");
    }

    async fn dcdt_token_payment(&mut self) {
        let _arg = OptionalValue::Some(DcdtTokenPayment::new(
            TokenIdentifier::from_dcdt_bytes(&b""[..]),
            0u64,
            BigUint::from(0u128),
        ));

        let response: TypedResponse<DcdtTokenPayment<StaticApi>> = self
            .interactor
            .sc_call_use_result(
                ScCallStep::new()
                    .call(self.contract.dcdt_token_payment(_arg))
                    .from(&self.wallet_address)
                    .expect(TxExpect::ok().additional_error_message("SC call failed: ")),
            )
            .await;

        let result = response.result.unwrap();
        println!("Result: {result:?}");
    }

    async fn rewa_or_dcdt_payment(&mut self) {
        let arg = RewaOrDcdtTokenPayment::new(
            RewaOrDcdtTokenIdentifier::dcdt(&b""[..]),
            0u64,
            BigUint::from(0u128),
        );

        let response: TypedResponse<RewaOrDcdtTokenIdentifier<StaticApi>> = self
            .interactor
            .sc_call_use_result(
                ScCallStep::new()
                    .call(self.contract.rewa_or_dcdt_payment(arg))
                    .from(&self.wallet_address)
                    .expect(TxExpect::ok().additional_error_message("SC call failed: ")),
            )
            .await;

        let result = response.result.unwrap();
        println!("Result: {result:?}");
    }

    async fn payable_endpoint(&mut self) {
        let token_id = b"";
        let token_nonce = 0u64;
        let token_amount = BigUint::<StaticApi>::from(0u128);

        let response: TypedResponse<()> = self
            .interactor
            .sc_call_use_result(
                ScCallStep::new()
                    .call(self.contract.payable_endpoint())
                    .from(&self.wallet_address)
                    .dcdt_transfer(token_id.to_vec(), token_nonce, token_amount)
                    .expect(TxExpect::ok().additional_error_message("SC call failed: ")),
            )
            .await;

        let result = response.result.unwrap();
        println!("Result: {result:?}");
    }

    async fn managed_buffer(&mut self) {
        let _arg = Option::Some(ManagedBuffer::new_from_bytes(&b""[..]));

        let response: TypedResponse<MultiValueVec<ManagedVec<StaticApi, MyCoolStruct<StaticApi>>>> =
            self.interactor
                .sc_call_use_result(
                    ScCallStep::new()
                        .call(self.contract.managed_buffer(_arg))
                        .from(&self.wallet_address)
                        .expect(TxExpect::ok().additional_error_message("SC call failed: ")),
                )
                .await;

        let result = response.result.unwrap();
        println!("Result: {result:?}");
    }

    async fn multi_value_2(&mut self) {
        let arg = MultiValue2::from((0u64, BigUint::<StaticApi>::from(0u128)));

        let response: TypedResponse<MultiValue2<u64, BigUint<StaticApi>>> = self
            .interactor
            .sc_call_use_result(
                ScCallStep::new()
                    .call(self.contract.multi_value_2(arg))
                    .from(&self.wallet_address)
                    .expect(TxExpect::ok().additional_error_message("SC call failed: ")),
            )
            .await;

        let result = response.result.unwrap();
        println!("Result: {result:?}");
    }

    async fn multi_value_4(&mut self) {
        let arg = PlaceholderInput;

        let response: TypedResponse<
            MultiValue4<
                u64,
                BigUint<StaticApi>,
                MyCoolStruct<StaticApi>,
                TokenIdentifier<StaticApi>,
            >,
        > = self
            .interactor
            .sc_call_use_result(
                ScCallStep::new()
                    .call(self.contract.multi_value_4(arg))
                    .from(&self.wallet_address)
                    .expect(TxExpect::ok().additional_error_message("SC call failed: ")),
            )
            .await;

        let result = response.result.unwrap();
        println!("Result: {result:?}");
    }

    async fn complex_multi_values(&mut self) {
        let arg = MultiValueVec::from(vec![MultiValue3::from((
            TokenIdentifier::from_dcdt_bytes(&b""[..]),
            0u64,
            BigUint::<StaticApi>::from(0u128),
        ))]);

        let response: TypedResponse<
            MultiValueVec<MultiValue3<TokenIdentifier<StaticApi>, u64, BigUint<StaticApi>>>,
        > = self
            .interactor
            .sc_call_use_result(
                ScCallStep::new()
                    .call(self.contract.complex_multi_values(arg))
                    .from(&self.wallet_address)
                    .expect(TxExpect::ok().additional_error_message("SC call failed: ")),
            )
            .await;

        let result = response.result.unwrap();
        println!("Result: {result:?}");
    }
}
