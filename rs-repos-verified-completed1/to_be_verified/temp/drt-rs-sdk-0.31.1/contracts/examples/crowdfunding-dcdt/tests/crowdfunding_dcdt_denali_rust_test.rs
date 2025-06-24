use crowdfunding_dcdt::*;
use numbat_wasm_debug::{
    denali::{interpret_trait::InterpretableFrom, model::*},
    *,
};

fn world() -> BlockchainMock {
    let mut blockchain = BlockchainMock::new();
    blockchain.set_current_dir_from_workspace("contracts/examples/crowdfunding-dcdt");

    blockchain.register_contract_builder(
        "file:output/crowdfunding-dcdt.wasm",
        crowdfunding_dcdt::ContractBuilder,
    );
    blockchain
}

#[test]
fn crowdfunding_denali_rust_test() {
    let _ = DebugApi::dummy();
    let mut world = world();
    let ctx = world.interpreter_context();

    let owner_addr = AddressValue::interpret_from("address:owner", &ctx);
    let first_user_addr = AddressValue::interpret_from("address:user1", &ctx);
    let second_user_addr = AddressValue::interpret_from("address:user2", &ctx);

    let deadline: u64 = 7 * 24 * 60 * 60; // 1 week in seconds
    let cf_token_id = BytesKey::interpret_from("str:CROWD-123456", &ctx);
    let cf_address = AddressValue::interpret_from("sc:crowdfunding", &ctx);
    let mut cf_sc = ContractInfo::<crowdfunding_dcdt::Proxy<DebugApi>>::new(&cf_address, &ctx);

    // setup owner and crowdfunding SC
    world.denali_set_state(
        SetStateStep::new()
            .put_account(&owner_addr, Account::new())
            .new_address(&owner_addr, 0, &cf_sc),
    );
    let (_, ()) = world.denali_sc_deploy_get_result(
        cf_sc.init(2_000u32, deadline, cf_token_id.value.clone()),
        ScDeployStep::new()
            .from(&owner_addr)
            .contract_code("file:output/crowdfunding-dcdt.wasm", &ctx)
            .gas_limit("5,000,000")
            .expect(TxExpect::ok().no_result()),
    );

    // setup user accounts
    world
        .denali_set_state(SetStateStep::new().put_account(
            &first_user_addr,
            Account::new().dcdt_balance(&cf_token_id, 1_000u64),
        ))
        .denali_set_state(SetStateStep::new().put_account(
            &second_user_addr,
            Account::new().dcdt_balance(&cf_token_id, 1_000u64),
        ));

    // first user deposit
    world
        .denali_sc_call(
            ScCallStep::new()
                .from(&first_user_addr)
                .to(&cf_sc)
                .dcdt_transfer(&cf_token_id, 0u64, 1_000u64)
                .call(cf_sc.fund())
                .expect(TxExpect::ok().no_result()),
        )
        .denali_check_state(
            CheckStateStep::new()
                .put_account(
                    &first_user_addr,
                    CheckAccount::new().dcdt_balance(&cf_token_id, 0u64),
                )
                .put_account(
                    &cf_address,
                    CheckAccount::new().dcdt_balance(&cf_token_id, 1_000u64),
                ),
        );

    // second user deposit
    world
        .denali_sc_call(
            ScCallStep::new()
                .from(&second_user_addr)
                .to(&cf_sc)
                .dcdt_transfer(&cf_token_id, 0u64, 500u64)
                .call(cf_sc.fund())
                .expect(TxExpect::ok().no_result()),
        )
        .denali_check_state(
            CheckStateStep::new()
                .put_account(
                    &second_user_addr,
                    CheckAccount::new().dcdt_balance(&cf_token_id, 500u64),
                )
                .put_account(
                    &cf_address,
                    CheckAccount::new().dcdt_balance(&cf_token_id, 1_500u64),
                ),
        );

    // get status before
    let status: Status = world.denali_sc_query_expect_result(
        cf_sc.status(),
        ScQueryStep::new().expect(TxExpect::ok().result("")),
    );
    assert_eq!(status, Status::FundingPeriod);

    // deadline passed
    world.denali_set_state(SetStateStep::new().block_timestamp(deadline));

    // get status after deadline
    let status: Status = world.denali_sc_query_expect_result(
        cf_sc.status(),
        ScQueryStep::new().expect(TxExpect::ok().result("2")),
    );
    assert_eq!(status, Status::Failed);

    // test failed campaign

    // owner claim - failed campaign - nothing is transferred
    world
        .denali_sc_call(
            ScCallStep::new()
                .from(&owner_addr)
                .to(&cf_sc)
                .call(cf_sc.claim())
                .expect(TxExpect::ok().no_result()),
        )
        .denali_check_state(
            CheckStateStep::new()
                .put_account(
                    &owner_addr,
                    CheckAccount::new().dcdt_balance(&cf_token_id, 0u64),
                )
                .put_account(
                    &cf_address,
                    CheckAccount::new().dcdt_balance(&cf_token_id, 1_500u64),
                ),
        );

    // first user claim - failed campaign
    world
        .denali_sc_call(
            ScCallStep::new()
                .from(&first_user_addr)
                .to(&cf_sc)
                .call(cf_sc.claim())
                .expect(TxExpect::ok().no_result()),
        )
        .denali_check_state(
            CheckStateStep::new()
                .put_account(
                    &first_user_addr,
                    CheckAccount::new().dcdt_balance(&cf_token_id, 1_000u64),
                )
                .put_account(
                    &cf_address,
                    CheckAccount::new().dcdt_balance(&cf_token_id, 500u64),
                ),
        );

    // second user claim - failed campaign
    world
        .denali_sc_call(
            ScCallStep::new()
                .from(&second_user_addr)
                .to(&cf_sc)
                .call(cf_sc.claim())
                .expect(TxExpect::ok().no_result()),
        )
        .denali_check_state(
            CheckStateStep::new()
                .put_account(
                    &second_user_addr,
                    CheckAccount::new().dcdt_balance(&cf_token_id, 1_000u64),
                )
                .put_account(
                    &cf_address,
                    CheckAccount::new().dcdt_balance(&cf_token_id, 0u64),
                ),
        );

    // test successful campaign

    world.denali_set_state(SetStateStep::new().block_timestamp(deadline / 2));

    // first user deposit
    world.denali_sc_call(
        ScCallStep::new()
            .from(&first_user_addr)
            .to(&cf_sc)
            .dcdt_transfer(&cf_token_id, 0u64, 1_000u64)
            .call(cf_sc.fund())
            .expect(TxExpect::ok().no_result()),
    );

    // second user deposit
    world.denali_sc_call(
        ScCallStep::new()
            .from(&second_user_addr)
            .to(&cf_sc)
            .dcdt_transfer(&cf_token_id, 0u64, 1_000u64)
            .call(cf_sc.fund())
            .expect(TxExpect::ok().no_result()),
    );

    let status: Status = world.denali_sc_query_expect_result(
        cf_sc.status(),
        ScQueryStep::new().expect(TxExpect::ok().result("")),
    );
    assert_eq!(status, Status::FundingPeriod);

    world.denali_set_state(SetStateStep::new().block_timestamp(deadline));

    let status: Status = world.denali_sc_query_expect_result(
        cf_sc.status(),
        ScQueryStep::new().expect(TxExpect::ok().result("1")),
    );
    assert_eq!(status, Status::Successful);

    // first user try claim - successful campaign
    world.denali_sc_call(
        ScCallStep::new()
            .from(&first_user_addr)
            .to(&cf_sc)
            .call(cf_sc.claim())
            .expect(TxExpect::err(
                4,
                "str:only owner can claim successful funding",
            )),
    );

    // owner claim successful campaign
    world
        .denali_sc_call(
            ScCallStep::new()
                .from(&owner_addr)
                .to(&cf_sc)
                .call(cf_sc.claim())
                .expect(TxExpect::ok().no_result()),
        )
        .denali_check_state(
            CheckStateStep::new()
                .put_account(
                    &owner_addr,
                    CheckAccount::new().dcdt_balance(&cf_token_id, 2_000u64),
                )
                .put_account(
                    &cf_address,
                    CheckAccount::new().dcdt_balance(&cf_token_id, 0u64),
                ),
        );

    world.write_denali_trace("denali-gen/crowdfunding_rust.scen.json");
}
