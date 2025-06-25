#![allow(deprecated)]

use composable_tasks::ProxyTrait;
use dharitri_sc::{
    imports::OptionalValue,
    types::{Address, MultiValueEncoded},
};
use dharitri_sc_scenario::{
    api::StaticApi,
    scenario_model::{Account, AddressValue, ScDeployStep, SetStateStep},
    ContractInfo, ScenarioWorld,
};
use dharitri_sc_wrewa_swap::ProxyTrait as _;
use pair::ProxyTrait as _;
use router::ProxyTrait as _;

const COMPOSABLE_TASKS_ADDRESS_EXPR: &str = "sc:composable_tasks";
const WREWA_ADDRESS_EXPR: &str = "sc:wrewa";
const ROUTER_ADDRESS_EXPR: &str = "sc:router";
const PAIR1_ADDRESS_EXPR: &str = "sc:pair1";
const PAIR2_ADDRESS_EXPR: &str = "sc:pair2";

const OWNER_ADDRESS_EXPR: &str = "address:owner";
const USER_ADDRESS_EXPR: &str = "address:user";
const BALANCE: &str = "100,000,000";
const FIRST_TOKEN_ID_EXPR: &str = "str:FIRST-123456";
const FIRST_TOKEN_ID: &[u8] = b"FIST-123456";
const SECOND_TOKEN_ID_EXPR: &str = "str:SECOND-123456";
const SECOND_TOKEN_ID: &[u8] = b"SECOND-123456";
const WREWA_TOKEN_ID_EXPR: &str = "str:WREWA-123456";
const WREWA_TOKEN_ID: &[u8] = b"WREWA-123456";

const COMPOSABLE_TASKS_PATH_EXPR: &str = "file:output/composable-tasks.wasm";
const WREWA_PATH_EXPR: &str = "file:tests/test_contracts/dharitri-wrewa-swap-sc.wasm";
const ROUTER_PATH_EXPR: &str = "file:tests/test_contracts/router.wasm";
const PAIR_PATH_EXPR: &str = "file:tests/test_contracts/pair.wasm";

type ComposableTasksContract = ContractInfo<composable_tasks::Proxy<StaticApi>>;
type WrewaContract = ContractInfo<dharitri_sc_wrewa_swap::Proxy<StaticApi>>;
type PairContract = ContractInfo<pair::Proxy<StaticApi>>;
type RouterContract = ContractInfo<router::Proxy<StaticApi>>;

fn world() -> ScenarioWorld {
    let mut blockchain = ScenarioWorld::new();

    blockchain.register_contract(
        COMPOSABLE_TASKS_PATH_EXPR,
        composable_tasks::ContractBuilder,
    );
    blockchain.register_contract(WREWA_PATH_EXPR, dharitri_sc_wrewa_swap::ContractBuilder);
    blockchain.register_contract(PAIR_PATH_EXPR, pair::ContractBuilder);
    blockchain.register_contract(ROUTER_PATH_EXPR, router::ContractBuilder);

    blockchain
}

struct ComposableTasksTestState {
    world: ScenarioWorld,
    owner: Address,
    _user: Address,
    composable_tasks_contract: ComposableTasksContract,
    wrewa_contract: WrewaContract,
    router_contract: RouterContract,
    pairs: Vec<PairContract>,
}

impl ComposableTasksTestState {
    fn new() -> Self {
        let mut world = world();
        world.start_trace().set_state_step(
            SetStateStep::new()
                .put_account(OWNER_ADDRESS_EXPR, Account::new().nonce(1))
                .put_account(
                    USER_ADDRESS_EXPR,
                    Account::new()
                        .nonce(1)
                        .balance(BALANCE)
                        .dcdt_balance(FIRST_TOKEN_ID_EXPR, BALANCE)
                        .dcdt_balance(WREWA_TOKEN_ID_EXPR, BALANCE)
                        .dcdt_balance(SECOND_TOKEN_ID_EXPR, BALANCE),
                ),
        );
        let owner = AddressValue::from(OWNER_ADDRESS_EXPR).to_address();
        let _user = AddressValue::from(USER_ADDRESS_EXPR).to_address();
        let composable_tasks_contract = ComposableTasksContract::new(COMPOSABLE_TASKS_ADDRESS_EXPR);
        let wrewa_contract = WrewaContract::new(WREWA_ADDRESS_EXPR);
        let router_contract = RouterContract::new(ROUTER_ADDRESS_EXPR);
        let pairs = vec![
            PairContract::new(PAIR1_ADDRESS_EXPR),
            PairContract::new(PAIR2_ADDRESS_EXPR),
        ];

        Self {
            world,
            owner,
            _user,
            composable_tasks_contract,
            wrewa_contract,
            router_contract,
            pairs,
        }
    }

    fn deploy_composable_tasks_contract(&mut self) -> &mut Self {
        let composable_tasks_code = self.world.code_expression(COMPOSABLE_TASKS_PATH_EXPR);

        self.world
            .set_state_step(SetStateStep::new().new_address(
                OWNER_ADDRESS_EXPR,
                1,
                COMPOSABLE_TASKS_ADDRESS_EXPR,
            ))
            .sc_deploy(
                ScDeployStep::new()
                    .from(OWNER_ADDRESS_EXPR)
                    .code(composable_tasks_code)
                    .call(self.composable_tasks_contract.init()),
            );

        self
    }

    fn deploy_wrewa_contract(&mut self) -> &mut Self {
        let wrewa_code = self.world.code_expression(WREWA_PATH_EXPR);

        self.world
            .set_state_step(SetStateStep::new().new_address(
                OWNER_ADDRESS_EXPR,
                2,
                WREWA_ADDRESS_EXPR,
            ))
            .sc_deploy(
                ScDeployStep::new()
                    .from(OWNER_ADDRESS_EXPR)
                    .code(wrewa_code)
                    .call(self.wrewa_contract.init(WREWA_TOKEN_ID)),
            );

        self
    }

    fn deploy_pair_contracts(&mut self) -> &mut Self {
        let pair1_code = self.world.code_expression(PAIR_PATH_EXPR);
        let pair2_code = self.world.code_expression(PAIR_PATH_EXPR);

        self.world
            .set_state_step(SetStateStep::new().new_address(
                OWNER_ADDRESS_EXPR,
                3,
                PAIR1_ADDRESS_EXPR,
            ))
            .sc_deploy(
                ScDeployStep::new()
                    .from(OWNER_ADDRESS_EXPR)
                    .code(pair1_code)
                    .call(self.pairs[0].init(
                        FIRST_TOKEN_ID,
                        WREWA_TOKEN_ID,
                        self.owner.clone(),
                        self.owner.clone(),
                        0u64,
                        0u64,
                        Address::zero(),
                        MultiValueEncoded::new(),
                    )),
            )
            .set_state_step(SetStateStep::new().new_address(
                OWNER_ADDRESS_EXPR,
                4,
                PAIR2_ADDRESS_EXPR,
            ))
            .sc_deploy(
                ScDeployStep::new()
                    .from(OWNER_ADDRESS_EXPR)
                    .code(pair2_code)
                    .call(self.pairs[1].init(
                        SECOND_TOKEN_ID,
                        WREWA_TOKEN_ID,
                        self.owner.clone(),
                        self.owner.clone(),
                        0u64,
                        0u64,
                        Address::zero(),
                        MultiValueEncoded::new(),
                    )),
            );

        self
    }

    fn deploy_router_contract(&mut self) -> &mut Self {
        let router_code = self.world.code_expression(ROUTER_PATH_EXPR);

        self.world
            .set_state_step(SetStateStep::new().new_address(
                OWNER_ADDRESS_EXPR,
                5,
                ROUTER_ADDRESS_EXPR,
            ))
            .sc_deploy(
                ScDeployStep::new()
                    .from(OWNER_ADDRESS_EXPR)
                    .code(router_code)
                    .call(
                        self.router_contract
                            .init(OptionalValue::Some(Address::zero())),
                    ),
            );

        self
    }
}

#[test]
fn test_deploy_composable_tasks() {
    let mut state = ComposableTasksTestState::new();
    state.deploy_composable_tasks_contract();
    state.deploy_wrewa_contract();
    state.deploy_pair_contracts();
    state.deploy_router_contract();
}
