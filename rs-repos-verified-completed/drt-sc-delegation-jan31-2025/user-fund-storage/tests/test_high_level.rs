use dharitri_sc::types::BigUint;
use dharitri_sc_scenario::DebugApi;
use user_fund_storage::fund_module::FundModule;
use user_fund_storage::fund_transf_module::FundTransformationsModule;
use user_fund_storage::types::FundType;

mod fund_module_check;

#[test]
fn test_create_destroy() {
    let _ = DebugApi::dummy();
    let module = user_fund_storage::fund_transf_module::contract_obj::<DebugApi>();

    let user_id = 2;

    module.create_waiting(user_id, 5000u32.into());

    fund_module_check::check_consistency(&module, 3);
    assert_eq!(
        BigUint::from(5000u32),
        module.query_sum_funds_by_type(FundType::Waiting, |_, _| true)
    );
    assert_eq!(
        1,
        module.count_fund_items_by_type(FundType::Waiting, |_| true)
    );
    assert_eq!(
        BigUint::from(5000u32),
        module.query_sum_funds_by_user_type(user_id, FundType::Waiting, |_| true)
    );
    assert_eq!(
        1,
        module.count_fund_items_by_user_type(user_id, FundType::Waiting, |_| true)
    );

    let mut amount = BigUint::from(5000u32);
    module.swap_user_waiting_to_withdraw_only(user_id, &mut amount);
    assert_eq!(amount, BigUint::zero());

    let liquidated = module.liquidate_all_withdraw_only(user_id, || false);
    assert_eq!(liquidated, BigUint::from(5000u32));

    fund_module_check::check_consistency(&module, 3);

    assert_eq!(
        BigUint::from(0u32),
        module.query_sum_funds_by_type(FundType::Waiting, |_, _| true)
    );
    assert_eq!(
        0,
        module.count_fund_items_by_type(FundType::Waiting, |_| true)
    );
    assert_eq!(
        BigUint::from(0u32),
        module.query_sum_funds_by_user_type(user_id, FundType::Waiting, |_| true)
    );
    assert_eq!(
        0,
        module.count_fund_items_by_user_type(user_id, FundType::Waiting, |_| true)
    );
}

#[test]
fn test_full_cycle_1() {
    let _ = DebugApi::dummy();
    let module = user_fund_storage::fund_transf_module::contract_obj::<DebugApi>();

    let user_id = 2;

    // create -> Waiting
    module.create_waiting(user_id, 5000u32.into());

    fund_module_check::check_consistency(&module, 3);
    assert_eq!(
        BigUint::from(5000u32),
        module.query_sum_funds_by_type(FundType::Waiting, |_, _| true)
    );
    assert_eq!(
        1,
        module.count_fund_items_by_type(FundType::Waiting, |_| true)
    );
    assert_eq!(
        BigUint::from(5000u32),
        module.query_sum_funds_by_user_type(user_id, FundType::Waiting, |_| true)
    );
    assert_eq!(
        1,
        module.count_fund_items_by_user_type(user_id, FundType::Waiting, |_| true)
    );

    // Waiting -> Active
    let mut amount = BigUint::from(5000u32);
    let affected_users = module.swap_waiting_to_active(&mut amount, || false);
    assert_eq!(affected_users.as_slice(), [user_id]);
    assert_eq!(amount, BigUint::zero());

    fund_module_check::check_consistency(&module, 3);
    assert_eq!(
        BigUint::from(0u32),
        module.query_sum_funds_by_type(FundType::Waiting, |_, _| true)
    );
    assert_eq!(
        0,
        module.count_fund_items_by_type(FundType::Waiting, |_| true)
    );
    assert_eq!(
        BigUint::from(0u32),
        module.query_sum_funds_by_user_type(user_id, FundType::Waiting, |_| true)
    );
    assert_eq!(
        0,
        module.count_fund_items_by_user_type(user_id, FundType::Waiting, |_| true)
    );

    assert_eq!(
        BigUint::from(5000u32),
        module.query_sum_funds_by_type(FundType::Active, |_, _| true)
    );
    assert_eq!(
        1,
        module.count_fund_items_by_type(FundType::Active, |_| true)
    );
    assert_eq!(
        BigUint::from(5000u32),
        module.query_sum_funds_by_user_type(user_id, FundType::Active, |_| true)
    );
    assert_eq!(
        1,
        module.count_fund_items_by_user_type(user_id, FundType::Active, |_| true)
    );

    // Active -> Unstaked
    let mut amount = BigUint::from(5000u32);
    module.swap_user_active_to_unstaked(user_id, &mut amount);
    assert_eq!(amount, BigUint::zero());

    fund_module_check::check_consistency(&module, 3);
    assert_eq!(
        BigUint::from(5000u32),
        module.query_sum_funds_by_type(FundType::UnStaked, |_, _| true)
    );
    assert_eq!(
        1,
        module.count_fund_items_by_type(FundType::UnStaked, |_| true)
    );
    assert_eq!(
        BigUint::from(5000u32),
        module.query_sum_funds_by_user_type(user_id, FundType::UnStaked, |_| true)
    );
    assert_eq!(
        1,
        module.count_fund_items_by_user_type(user_id, FundType::UnStaked, |_| true)
    );

    // Unstaked -> DeferredPayment
    let mut amount = BigUint::from(5000u32);
    module.swap_unstaked_to_deferred_payment(&mut amount, || false);
    assert_eq!(amount, BigUint::zero());

    fund_module_check::check_consistency(&module, 3);
    assert_eq!(
        BigUint::from(5000u32),
        module.query_sum_funds_by_type(FundType::DeferredPayment, |_, _| true)
    );
    assert_eq!(
        1,
        module.count_fund_items_by_type(FundType::DeferredPayment, |_| true)
    );
    assert_eq!(
        BigUint::from(5000u32),
        module.query_sum_funds_by_user_type(user_id, FundType::DeferredPayment, |_| true)
    );
    assert_eq!(
        1,
        module.count_fund_items_by_user_type(user_id, FundType::DeferredPayment, |_| true)
    );

    // DeferredPayment -> WithdrawOnly
    let claimed_amount = module.swap_eligible_deferred_to_withdraw(user_id, 0, || false);
    assert_eq!(claimed_amount, BigUint::from(5000u32));

    fund_module_check::check_consistency(&module, 3);
    assert_eq!(
        BigUint::from(5000u32),
        module.query_sum_funds_by_type(FundType::WithdrawOnly, |_, _| true)
    );
    assert_eq!(
        1,
        module.count_fund_items_by_type(FundType::WithdrawOnly, |_| true)
    );
    assert_eq!(
        BigUint::from(5000u32),
        module.query_sum_funds_by_user_type(user_id, FundType::WithdrawOnly, |_| true)
    );
    assert_eq!(
        1,
        module.count_fund_items_by_user_type(user_id, FundType::WithdrawOnly, |_| true)
    );

    // WithdrawOnly -> liquidate
    let liquidated = module.liquidate_all_withdraw_only(user_id, || false);
    assert_eq!(liquidated, BigUint::from(5000u32));

    fund_module_check::check_consistency(&module, 3);

    assert_eq!(
        BigUint::from(0u32),
        module.query_sum_funds_by_type(FundType::WithdrawOnly, |_, _| true)
    );
    assert_eq!(
        0,
        module.count_fund_items_by_type(FundType::WithdrawOnly, |_| true)
    );
    assert_eq!(
        BigUint::from(0u32),
        module.query_sum_funds_by_user_type(user_id, FundType::WithdrawOnly, |_| true)
    );
    assert_eq!(
        0,
        module.count_fund_items_by_user_type(user_id, FundType::WithdrawOnly, |_| true)
    );
}
