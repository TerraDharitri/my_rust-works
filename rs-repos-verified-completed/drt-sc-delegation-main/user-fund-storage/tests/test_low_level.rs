use dharitri_sc::types::BigUint;
use dharitri_sc_scenario::DebugApi;
use user_fund_storage::fund_module::*;
use user_fund_storage::types::{AffectedUserIdVec, FundDescription, FundType};

mod fund_module_check;

const WAITING_CREATED: u64 = 1234;

#[test]
fn test_fund_inc_dec_1() {
    let _ = DebugApi::dummy();
    let fund_module = user_fund_storage::fund_module::contract_obj::<DebugApi>();
    let user_id = 2;

    fund_module.increase_fund_balance(
        user_id,
        FundDescription::Waiting {
            created: WAITING_CREATED,
        },
        1234u32.into(),
    );

    fund_module_check::check_consistency(&fund_module, 3);
    assert_eq!(
        BigUint::from(1234u32),
        fund_module.query_sum_funds_by_type(FundType::Waiting, |_, _| true)
    );
    assert_eq!(
        1,
        fund_module.count_fund_items_by_type(FundType::Waiting, |_| true)
    );
    assert_eq!(
        BigUint::from(1234u32),
        fund_module.query_sum_funds_by_user_type(user_id, FundType::Waiting, |_| true)
    );
    assert_eq!(
        1,
        fund_module.count_fund_items_by_user_type(user_id, FundType::Waiting, |_| true)
    );

    let destroyed = fund_module.destroy_all_for_user(user_id, FundType::Waiting, || false);
    assert_eq!(destroyed, BigUint::from(1234u32));

    fund_module_check::check_consistency(&fund_module, 3);
    assert_eq!(
        BigUint::zero(),
        fund_module.query_sum_funds_by_type(FundType::Waiting, |_, _| true)
    );
    assert_eq!(
        0,
        fund_module.count_fund_items_by_type(FundType::Waiting, |_| true)
    );
    assert_eq!(
        BigUint::zero(),
        fund_module.query_sum_funds_by_user_type(user_id, FundType::Waiting, |_| true)
    );
    assert_eq!(
        0,
        fund_module.count_fund_items_by_user_type(user_id, FundType::Waiting, |_| true)
    );
}

#[test]
fn test_fund_inc_dec_2() {
    let _ = DebugApi::dummy();
    let fund_module = user_fund_storage::fund_module::contract_obj::<DebugApi>();
    let user_id = 1;

    fund_module.increase_fund_balance(
        user_id,
        FundDescription::Waiting {
            created: WAITING_CREATED,
        },
        1200u32.into(),
    );
    fund_module.increase_fund_balance(
        user_id,
        FundDescription::Waiting {
            created: WAITING_CREATED,
        },
        34u32.into(),
    );

    fund_module_check::check_consistency(&fund_module, 3);
    assert_eq!(
        BigUint::from(1234u32),
        fund_module.query_sum_funds_by_type(FundType::Waiting, |_, _| true)
    );
    assert_eq!(
        2,
        fund_module.count_fund_items_by_type(FundType::Waiting, |_| true)
    );
    assert_eq!(
        BigUint::from(1234u32),
        fund_module.query_sum_funds_by_user_type(user_id, FundType::Waiting, |_| true)
    );
    assert_eq!(
        2,
        fund_module.count_fund_items_by_user_type(user_id, FundType::Waiting, |_| true)
    );

    let destroyed = fund_module.destroy_all_for_user(user_id, FundType::Waiting, || false);
    assert_eq!(destroyed, BigUint::from(1234u32));

    fund_module_check::check_consistency(&fund_module, 3);
    assert_eq!(
        BigUint::from(0u32),
        fund_module.query_sum_funds_by_type(FundType::Waiting, |_, _| true)
    );
    assert_eq!(
        0,
        fund_module.count_fund_items_by_type(FundType::Waiting, |_| true)
    );
    assert_eq!(
        BigUint::from(0u32),
        fund_module.query_sum_funds_by_user_type(user_id, FundType::Waiting, |_| true)
    );
    assert_eq!(
        0,
        fund_module.count_fund_items_by_user_type(user_id, FundType::Waiting, |_| true)
    );

    let destroyed = fund_module.destroy_all_for_user(user_id, FundType::Waiting, || false);
    assert_eq!(destroyed, BigUint::from(0u32));

    fund_module_check::check_consistency(&fund_module, 3);

    assert_eq!(
        BigUint::zero(),
        fund_module.query_sum_funds_by_type(FundType::Waiting, |_, _| true)
    );
    assert_eq!(
        0,
        fund_module.count_fund_items_by_type(FundType::Waiting, |_| true)
    );
    assert_eq!(
        BigUint::zero(),
        fund_module.query_sum_funds_by_user_type(user_id, FundType::Waiting, |_| true)
    );
    assert_eq!(
        0,
        fund_module.count_fund_items_by_user_type(user_id, FundType::Waiting, |_| true)
    );
}

#[test]
fn test_fund_inc_dec_3() {
    let _ = DebugApi::dummy();
    let fund_module = user_fund_storage::fund_module::contract_obj::<DebugApi>();
    let user_id = 3;

    fund_module.increase_fund_balance(
        user_id,
        FundDescription::Waiting {
            created: WAITING_CREATED,
        },
        1200u32.into(),
    );
    fund_module.increase_fund_balance(
        user_id,
        FundDescription::Waiting {
            created: WAITING_CREATED,
        },
        34u32.into(),
    );

    fund_module_check::check_consistency(&fund_module, 3);
    assert_eq!(
        BigUint::from(1234u32),
        fund_module.query_sum_funds_by_type(FundType::Waiting, |_, _| true)
    );
    assert_eq!(
        2,
        fund_module.count_fund_items_by_type(FundType::Waiting, |_| true)
    );
    assert_eq!(
        BigUint::from(1234u32),
        fund_module.query_sum_funds_by_user_type(user_id, FundType::Waiting, |_| true)
    );
    assert_eq!(
        2,
        fund_module.count_fund_items_by_user_type(user_id, FundType::Waiting, |_| true)
    );

    let destroyed = fund_module.destroy_all_for_user(user_id, FundType::Waiting, || false);
    assert_eq!(destroyed, BigUint::from(1234u32));

    fund_module_check::check_consistency(&fund_module, 3);
    assert_eq!(
        BigUint::from(0u32),
        fund_module.query_sum_funds_by_type(FundType::Waiting, |_, _| true)
    );
    assert_eq!(
        0,
        fund_module.count_fund_items_by_type(FundType::Waiting, |_| true)
    );
    assert_eq!(
        BigUint::from(0u32),
        fund_module.query_sum_funds_by_user_type(user_id, FundType::Waiting, |_| true)
    );
    assert_eq!(
        0,
        fund_module.count_fund_items_by_user_type(user_id, FundType::Waiting, |_| true)
    );
}

#[test]
fn test_transfer_funds_1() {
    let _ = DebugApi::dummy();
    let fund_module = user_fund_storage::fund_module::contract_obj::<DebugApi>();
    let user_1 = 2;
    let user_2 = 3;

    fund_module.increase_fund_balance(
        user_1,
        FundDescription::Waiting {
            created: WAITING_CREATED,
        },
        1200u32.into(),
    );
    fund_module.increase_fund_balance(
        user_2,
        FundDescription::Waiting {
            created: WAITING_CREATED,
        },
        34u32.into(),
    );

    fund_module_check::check_consistency(&fund_module, 4);
    assert_eq!(
        BigUint::from(1234u32),
        fund_module.query_sum_all_funds_brute_force(|_, fund_desc| fund_desc
            == FundDescription::Waiting {
                created: WAITING_CREATED
            })
    );

    let _ = fund_module.split_convert_max_by_type(
        None,
        FundType::Waiting,
        SwapDirection::Forwards,
        |_| Some(FundDescription::Active),
        || false,
        false,
    );

    fund_module_check::check_consistency(&fund_module, 4);
    assert_eq!(
        BigUint::from(1234u32),
        fund_module
            .query_sum_all_funds_brute_force(|_, fund_desc| fund_desc == FundDescription::Active)
    );

    assert_eq!(
        BigUint::from(1234u32),
        fund_module.query_sum_funds_by_type(FundType::Active, |_, _| true)
    );
    assert_eq!(
        2,
        fund_module.count_fund_items_by_type(FundType::Active, |_| true)
    );

    assert_eq!(
        BigUint::from(1200u32),
        fund_module.query_sum_funds_by_user_type(user_1, FundType::Active, |_| true)
    );
    assert_eq!(
        1,
        fund_module.count_fund_items_by_user_type(user_1, FundType::Active, |_| true)
    );

    assert_eq!(
        BigUint::from(34u32),
        fund_module.query_sum_funds_by_user_type(user_2, FundType::Active, |_| true)
    );
    assert_eq!(
        1,
        fund_module.count_fund_items_by_user_type(user_2, FundType::Active, |_| true)
    );
}

#[test]
fn test_transfer_funds_2() {
    let _ = DebugApi::dummy();
    let fund_module = user_fund_storage::fund_module::contract_obj::<DebugApi>();
    let user_1 = 2;
    let user_2 = 3;
    let user_3 = 5;

    fund_module.increase_fund_balance(
        user_1,
        FundDescription::Waiting {
            created: WAITING_CREATED,
        },
        1200u32.into(),
    );
    fund_module.increase_fund_balance(
        user_2,
        FundDescription::Waiting {
            created: WAITING_CREATED,
        },
        34u32.into(),
    );
    fund_module.increase_fund_balance(
        user_3,
        FundDescription::Waiting {
            created: WAITING_CREATED,
        },
        11u32.into(),
    );

    let mut amount = BigUint::from(1000u32);
    let affected_users = fund_module.split_convert_max_by_type(
        Some(&mut amount),
        FundType::Waiting,
        SwapDirection::Forwards,
        |_| Some(FundDescription::Active),
        || false,
        false,
    );

    assert_eq!(affected_users.as_slice(), [user_1]);
    assert_eq!(amount, BigUint::zero());

    fund_module_check::check_consistency(&fund_module, 5);
    assert_eq!(
        BigUint::from(1000u32),
        fund_module
            .query_sum_all_funds_brute_force(|_, fund_desc| fund_desc == FundDescription::Active)
    );
    assert_eq!(
        BigUint::from(245u32),
        fund_module.query_sum_all_funds_brute_force(|_, fund_desc| fund_desc
            == FundDescription::Waiting {
                created: WAITING_CREATED
            })
    );
}

// Going backwards
#[test]
fn test_transfer_funds_3_backwards() {
    let _ = DebugApi::dummy();
    let fund_module = user_fund_storage::fund_module::contract_obj::<DebugApi>();
    let user_1 = 2;
    let user_2 = 3;
    let user_3 = 5;

    fund_module.increase_fund_balance(
        user_1,
        FundDescription::Waiting {
            created: WAITING_CREATED,
        },
        1200u32.into(),
    );
    fund_module.increase_fund_balance(
        user_2,
        FundDescription::Waiting {
            created: WAITING_CREATED,
        },
        34u32.into(),
    );
    fund_module.increase_fund_balance(
        user_3,
        FundDescription::Waiting {
            created: WAITING_CREATED,
        },
        11u32.into(),
    );

    let mut affected_users = AffectedUserIdVec::new();
    let mut amount = BigUint::from(40u32);
    let returned_affected_users = fund_module.split_convert_max_by_type(
        Some(&mut amount),
        FundType::Waiting,
        SwapDirection::Backwards,
        |fund_item| {
            affected_users.push(fund_item.user_id);
            Some(FundDescription::Active)
        },
        || false,
        false,
    );

    assert_eq!(returned_affected_users.as_slice(), [user_2, user_3]);
    affected_users.sort();
    assert_eq!(returned_affected_users, affected_users);
    assert_eq!(amount, BigUint::zero());

    fund_module_check::check_consistency(&fund_module, 5);
    assert_eq!(
        BigUint::from(40u32),
        fund_module
            .query_sum_all_funds_brute_force(|_, fund_desc| fund_desc == FundDescription::Active)
    );
    assert_eq!(
        BigUint::from(1205u32),
        fund_module.query_sum_all_funds_brute_force(|_, fund_desc| fund_desc
            == FundDescription::Waiting {
                created: WAITING_CREATED
            })
    );
}

// Dry run.
#[test]
fn test_transfer_funds_4_dry_run() {
    let _ = DebugApi::dummy();
    let fund_module = user_fund_storage::fund_module::contract_obj::<DebugApi>();
    let user_1 = 5;
    let user_2 = 7;
    let user_3 = 9;

    fund_module.increase_fund_balance(
        user_1,
        FundDescription::Waiting {
            created: WAITING_CREATED,
        },
        1200u32.into(),
    );
    fund_module.increase_fund_balance(
        user_2,
        FundDescription::Waiting {
            created: WAITING_CREATED,
        },
        34u32.into(),
    );
    fund_module.increase_fund_balance(
        user_3,
        FundDescription::Waiting {
            created: WAITING_CREATED,
        },
        11u32.into(),
    );

    let mut affected_users = AffectedUserIdVec::new();
    let mut amount = BigUint::from(40u32);
    let returned_affected_users = fund_module.split_convert_max_by_type(
        Some(&mut amount),
        FundType::Waiting,
        SwapDirection::Backwards,
        |fund_item| {
            affected_users.push(fund_item.user_id);
            Some(FundDescription::Active)
        },
        || false,
        true,
    );

    assert_eq!(affected_users.as_slice(), [user_3, user_2]);
    affected_users.sort();
    assert_eq!(returned_affected_users, affected_users);
    assert_eq!(amount, BigUint::zero());

    assert_eq!(
        BigUint::zero(),
        fund_module
            .query_sum_all_funds_brute_force(|_, fund_desc| fund_desc == FundDescription::Active)
    );
    assert_eq!(
        BigUint::from(1245u32),
        fund_module.query_sum_all_funds_brute_force(|_, fund_desc| fund_desc
            == FundDescription::Waiting {
                created: WAITING_CREATED
            })
    );
}

#[test]
fn test_transfer_funds_5_coalesce() {
    let _ = DebugApi::dummy();
    let fund_module = user_fund_storage::fund_module::contract_obj::<DebugApi>();
    let user_1 = 2;

    fund_module.increase_fund_balance(
        user_1,
        FundDescription::Waiting {
            created: WAITING_CREATED,
        },
        1000u32.into(),
    );
    fund_module.increase_fund_balance(
        user_1,
        FundDescription::Waiting {
            created: WAITING_CREATED,
        },
        1000u32.into(),
    );

    let mut amount = BigUint::from(2000u32);
    let affected_users = fund_module.split_convert_max_by_type(
        Some(&mut amount),
        FundType::Waiting,
        SwapDirection::Forwards,
        |_| Some(FundDescription::WithdrawOnly),
        || false,
        false,
    );

    assert_eq!(affected_users.as_slice(), [user_1]);
    assert_eq!(amount, BigUint::zero());

    fund_module_check::check_consistency(&fund_module, 5);
    assert_eq!(
        BigUint::from(2000u32),
        fund_module.query_sum_all_funds_brute_force(
            |_, fund_desc| fund_desc == FundDescription::WithdrawOnly
        )
    );
    assert_eq!(
        BigUint::zero(),
        fund_module.query_sum_all_funds_brute_force(|_, fund_desc| fund_desc
            == FundDescription::Waiting {
                created: WAITING_CREATED
            })
    );
}

#[test]
fn test_user_swap_forwards() {
    test_user_swap(SwapDirection::Forwards);
}

#[test]
fn test_user_swap_backwards() {
    test_user_swap(SwapDirection::Backwards);
}

fn test_user_swap(direction: SwapDirection) {
    let _ = DebugApi::dummy();
    let fund_module = user_fund_storage::fund_module::contract_obj::<DebugApi>();
    let user_id_1 = 1;
    let user_id_2 = 2;

    fund_module.increase_fund_balance(
        user_id_1,
        FundDescription::Waiting {
            created: WAITING_CREATED,
        },
        1200u32.into(),
    );
    fund_module.increase_fund_balance(
        user_id_2,
        FundDescription::Waiting {
            created: WAITING_CREATED,
        },
        34u32.into(),
    );
    fund_module.increase_fund_balance(
        user_id_1,
        FundDescription::Waiting {
            created: WAITING_CREATED,
        },
        50u32.into(),
    );

    fund_module_check::check_consistency(&fund_module, 3);

    let mut amount = BigUint::from(1250u32);
    let swapped = fund_module.split_convert_max_by_user(
        Some(&mut amount),
        user_id_1,
        FundType::Waiting,
        direction,
        |_| Some(FundDescription::WithdrawOnly),
        || false,
    );
    assert_eq!(amount, BigUint::from(0u32));
    assert_eq!(swapped, BigUint::from(1250u32));

    fund_module_check::check_consistency(&fund_module, 3);

    assert_eq!(
        BigUint::from(1250u32),
        fund_module.query_sum_funds_by_user_type(user_id_1, FundType::WithdrawOnly, |_| true)
    );
    assert_eq!(
        BigUint::from(34u32),
        fund_module.query_sum_funds_by_user_type(user_id_2, FundType::Waiting, |_| true)
    );
}
