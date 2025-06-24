#![allow(deprecated)]

pub mod farm_staking_setup;
use farm_staking::{
    claim_stake_farm_rewards::ClaimStakeFarmRewardsModule,
    stake_farm::StakeFarmModule,
    token_attributes::{StakingFarmTokenAttributes, UnbondSftAttributes},
    unstake_farm::UnstakeFarmModule,
    FarmStaking,
};
use farm_staking_setup::*;
use dharitri_sc::codec::multi_types::OptionalValue;
use dharitri_sc_scenario::{
    managed_address, managed_biguint, rust_biguint, testing_framework::TxTokenTransfer, DebugApi,
};

#[test]
fn farm_staking_with_energy_setup_test() {
    let mut fs_setup =
        FarmStakingSetup::new(farm_staking::contract_obj, energy_factory::contract_obj);

    fs_setup.set_boosted_yields_factors();
    fs_setup.set_boosted_yields_rewards_percentage(BOOSTED_YIELDS_PERCENTAGE);
}

#[test]
fn farm_staking_boosted_rewards_no_energy_test() {
    DebugApi::dummy();
    let mut fs_setup =
        FarmStakingSetup::new(farm_staking::contract_obj, energy_factory::contract_obj);

    let user_address = fs_setup.user_address.clone();

    fs_setup.set_boosted_yields_factors();
    fs_setup.set_boosted_yields_rewards_percentage(BOOSTED_YIELDS_PERCENTAGE);

    let farm_in_amount = 100_000_000;
    let expected_farm_token_nonce = 1;
    fs_setup.stake_farm(
        &user_address,
        farm_in_amount,
        &[],
        expected_farm_token_nonce,
        0,
        0,
    );
    fs_setup.check_farm_token_supply(farm_in_amount);

    fs_setup.set_block_epoch(5);
    fs_setup.set_block_nonce(10);

    // value taken from the "test_unstake_farm" test
    // originally, it was 40, but since 25% of the rewards go to boosted yields
    // rewards are now only 3/4 * 40 = 30
    let expected_reward_token_out = 30;
    let expected_farming_token_balance =
        rust_biguint!(USER_TOTAL_RIDE_TOKENS - farm_in_amount + expected_reward_token_out);
    let expected_reward_per_share = 300_000; // from 400_000 -> 300_000
    fs_setup.claim_rewards(
        &user_address,
        farm_in_amount,
        expected_farm_token_nonce,
        expected_reward_token_out,
        &expected_farming_token_balance,
        &expected_farming_token_balance,
        expected_farm_token_nonce + 1,
        expected_reward_per_share,
    );
    fs_setup.check_farm_token_supply(farm_in_amount);
}

#[test]
fn farm_staking_other_user_enter_negative_test() {
    DebugApi::dummy();
    let mut fs_setup =
        FarmStakingSetup::new(farm_staking::contract_obj, energy_factory::contract_obj);

    let user_address = fs_setup.user_address.clone();
    let rand_user = fs_setup.b_mock.create_user_account(&rust_biguint!(0));

    fs_setup.set_boosted_yields_factors();
    fs_setup.set_boosted_yields_rewards_percentage(BOOSTED_YIELDS_PERCENTAGE);

    let farm_in_amount = 100_000_000;
    fs_setup
        .stake_farm_for_other_user(&rand_user, &user_address, farm_in_amount, &[])
        .assert_error(4, "Item not whitelisted");

    let expected_farm_token_nonce = 1;
    fs_setup.stake_farm(
        &user_address,
        farm_in_amount,
        &[],
        expected_farm_token_nonce,
        0,
        0,
    );

    fs_setup
        .claim_farm_for_other_user(
            &rand_user,
            &user_address,
            expected_farm_token_nonce,
            farm_in_amount,
        )
        .assert_error(4, "Item not whitelisted");

    fs_setup
        .unstake_farm_for_other_user(
            &rand_user,
            &user_address,
            expected_farm_token_nonce,
            farm_in_amount,
        )
        .assert_error(4, "Item not whitelisted");
}

#[test]
fn farm_staking_boosted_rewards_with_energy_test() {
    DebugApi::dummy();
    let mut fs_setup =
        FarmStakingSetup::new(farm_staking::contract_obj, energy_factory::contract_obj);

    let user_address = fs_setup.user_address.clone();
    let user_address2 = fs_setup.user_address2.clone();

    fs_setup.set_boosted_yields_factors();
    fs_setup.set_boosted_yields_rewards_percentage(BOOSTED_YIELDS_PERCENTAGE);

    fs_setup.set_user_energy(&user_address, 10_000, 0, 10);
    fs_setup.set_user_energy(&user_address2, 5_000, 0, 10);

    let farm_in_amount = 100_000_000;
    fs_setup.stake_farm(&user_address, farm_in_amount, &[], 1, 0, 0);
    fs_setup.stake_farm(&user_address2, farm_in_amount, &[], 2, 0, 0);
    fs_setup.check_farm_token_supply(farm_in_amount * 2);

    // claim to get energy registered
    fs_setup
        .b_mock
        .execute_dcdt_transfer(
            &user_address,
            &fs_setup.farm_wrapper,
            FARM_TOKEN_ID,
            1,
            &rust_biguint!(farm_in_amount),
            |sc| {
                let _ = sc.claim_rewards(OptionalValue::None);
            },
        )
        .assert_ok();

    fs_setup
        .b_mock
        .execute_dcdt_transfer(
            &user_address2,
            &fs_setup.farm_wrapper,
            FARM_TOKEN_ID,
            2,
            &rust_biguint!(farm_in_amount),
            |sc| {
                let _ = sc.claim_rewards(OptionalValue::None);
            },
        )
        .assert_ok();

    fs_setup.set_block_nonce(10);

    // random user tx to collect rewards

    let rand_user = fs_setup.b_mock.create_user_account(&rust_biguint!(0));
    fs_setup.b_mock.set_dcdt_balance(
        &rand_user,
        FARMING_TOKEN_ID,
        &rust_biguint!(USER_TOTAL_RIDE_TOKENS),
    );

    fs_setup.set_user_energy(&rand_user, 1, 5, 1);
    fs_setup.set_block_epoch(5);

    fs_setup
        .b_mock
        .execute_dcdt_transfer(
            &rand_user,
            &fs_setup.farm_wrapper,
            FARMING_TOKEN_ID,
            0,
            &rust_biguint!(10),
            |sc| {
                let _ = sc.stake_farm_endpoint(OptionalValue::None);
            },
        )
        .assert_ok();

    fs_setup
        .b_mock
        .execute_dcdt_transfer(
            &rand_user,
            &fs_setup.farm_wrapper,
            FARM_TOKEN_ID,
            5,
            &rust_biguint!(10),
            |sc| {
                let _ = sc.unstake_farm(OptionalValue::None);
            },
        )
        .assert_ok();

    fs_setup.set_block_epoch(8);

    fs_setup.set_user_energy(&user_address, 10_000, 8, 10);
    fs_setup.set_user_energy(&user_address2, 5_000, 8, 10);

    let base_rewards = 34;
    let boosted_rewards_user = 13;
    let boosted_rewards_user2 = 8;
    let expected_reward_token_out_user = base_rewards + boosted_rewards_user;
    let expected_reward_token_out_user2 = base_rewards + boosted_rewards_user2;
    let expected_farming_token_balance_user =
        rust_biguint!(USER_TOTAL_RIDE_TOKENS - farm_in_amount + expected_reward_token_out_user);
    let expected_farming_token_balance_user2 =
        rust_biguint!(USER_TOTAL_RIDE_TOKENS - farm_in_amount + expected_reward_token_out_user2);
    let expected_reward_per_share = 340_000;
    fs_setup.claim_rewards(
        &user_address,
        farm_in_amount,
        3,
        expected_reward_token_out_user,
        &expected_farming_token_balance_user,
        &expected_farming_token_balance_user,
        7,
        expected_reward_per_share,
    );
    fs_setup.claim_rewards(
        &user_address2,
        farm_in_amount,
        4,
        expected_reward_token_out_user2,
        &expected_farming_token_balance_user2,
        &expected_farming_token_balance_user2,
        8,
        expected_reward_per_share,
    );
    fs_setup.check_farm_token_supply(farm_in_amount * 2);
}

#[test]
fn farm_staking_partial_position_handling_test() {
    DebugApi::dummy();
    let mut fs_setup =
        FarmStakingSetup::new(farm_staking::contract_obj, energy_factory::contract_obj);

    let user_address = fs_setup.user_address.clone();

    fs_setup.set_boosted_yields_factors();
    fs_setup.set_boosted_yields_rewards_percentage(BOOSTED_YIELDS_PERCENTAGE);

    fs_setup.set_user_energy(&user_address, 10_000, 0, 10);

    let farm_in_amount = 100_000_000;
    fs_setup.stake_farm(&user_address, farm_in_amount, &[], 1, 0, 0);
    fs_setup.check_farm_token_supply(farm_in_amount);

    // claim to get energy registered
    fs_setup
        .b_mock
        .execute_dcdt_transfer(
            &user_address,
            &fs_setup.farm_wrapper,
            FARM_TOKEN_ID,
            1,
            &rust_biguint!(farm_in_amount),
            |sc| {
                let _ = sc.claim_rewards(OptionalValue::None);
            },
        )
        .assert_ok();

    fs_setup.set_block_nonce(10);

    // random user tx to collect rewards

    let rand_user = fs_setup.b_mock.create_user_account(&rust_biguint!(0));
    fs_setup.b_mock.set_dcdt_balance(
        &rand_user,
        FARMING_TOKEN_ID,
        &rust_biguint!(USER_TOTAL_RIDE_TOKENS),
    );

    fs_setup.set_user_energy(&rand_user, 1, 5, 1);
    fs_setup.set_block_epoch(5);

    fs_setup
        .b_mock
        .execute_dcdt_transfer(
            &rand_user,
            &fs_setup.farm_wrapper,
            FARMING_TOKEN_ID,
            0,
            &rust_biguint!(10),
            |sc| {
                let _ = sc.stake_farm_endpoint(OptionalValue::None);
            },
        )
        .assert_ok();

    fs_setup
        .b_mock
        .execute_dcdt_transfer(
            &rand_user,
            &fs_setup.farm_wrapper,
            FARM_TOKEN_ID,
            3,
            &rust_biguint!(10),
            |sc| {
                let _ = sc.unstake_farm(OptionalValue::None);
            },
        )
        .assert_ok();

    fs_setup.set_block_epoch(8);

    fs_setup.set_user_energy(&user_address, 10_000, 8, 10);

    let full_position_base_rewards = 30;
    let boosted_rewards_user = 10;
    let half_position_expected_rewards = full_position_base_rewards / 2 + boosted_rewards_user;
    let expected_farming_token_balance_user =
        rust_biguint!(USER_TOTAL_RIDE_TOKENS - farm_in_amount + half_position_expected_rewards);

    fs_setup.unstake_farm(
        &user_address,
        farm_in_amount / 2,
        2,
        half_position_expected_rewards,
        &expected_farming_token_balance_user,
        &expected_farming_token_balance_user,
        5,
        farm_in_amount / 2,
        &UnbondSftAttributes {
            unlock_epoch: 8 + MIN_UNBOND_EPOCHS,
        },
    );

    fs_setup.set_block_nonce(20);

    // random user tx to collect rewards

    let rand_user = fs_setup.b_mock.create_user_account(&rust_biguint!(0));
    fs_setup.b_mock.set_dcdt_balance(
        &rand_user,
        FARMING_TOKEN_ID,
        &rust_biguint!(USER_TOTAL_RIDE_TOKENS),
    );

    fs_setup.set_user_energy(&rand_user, 1, 12, 1);
    fs_setup.set_block_epoch(12);

    fs_setup
        .b_mock
        .execute_dcdt_transfer(
            &rand_user,
            &fs_setup.farm_wrapper,
            FARMING_TOKEN_ID,
            0,
            &rust_biguint!(10),
            |sc| {
                let _ = sc.stake_farm_endpoint(OptionalValue::None);
            },
        )
        .assert_ok();

    fs_setup
        .b_mock
        .execute_dcdt_transfer(
            &rand_user,
            &fs_setup.farm_wrapper,
            FARM_TOKEN_ID,
            6,
            &rust_biguint!(10),
            |sc| {
                let _ = sc.unstake_farm(OptionalValue::None);
            },
        )
        .assert_ok();

    fs_setup.set_block_epoch(15);

    fs_setup.set_user_energy(&user_address, 10_000, 15, 10);

    let expected_rewards_amount = full_position_base_rewards / 2 * 2; // half remaining position * 2 times the 10 block period
    let half_position_boosted_rewards = boosted_rewards_user / 2;
    let remaining_expected_rewards = expected_rewards_amount + half_position_boosted_rewards;
    let final_expected_farming_token_balance_user =
        expected_farming_token_balance_user + rust_biguint!(remaining_expected_rewards);
    let expected_reward_per_share = 600_000;
    fs_setup.claim_rewards(
        &user_address,
        farm_in_amount / 2,
        2,
        remaining_expected_rewards,
        &final_expected_farming_token_balance_user,
        &final_expected_farming_token_balance_user,
        8,
        expected_reward_per_share,
    );
}

#[test]
fn farm_staking_claim_boosted_rewards_for_user_test() {
    DebugApi::dummy();
    let mut fs_setup =
        FarmStakingSetup::new(farm_staking::contract_obj, energy_factory::contract_obj);

    let user_address = fs_setup.user_address.clone();

    fs_setup.set_boosted_yields_factors();
    fs_setup.set_boosted_yields_rewards_percentage(BOOSTED_YIELDS_PERCENTAGE);

    fs_setup.set_user_energy(&fs_setup.user_address.clone(), 10_000, 0, 10);

    let farm_in_amount = 100_000_000;
    fs_setup.stake_farm(&user_address, farm_in_amount, &[], 1, 0, 0);
    fs_setup.check_farm_token_supply(farm_in_amount);

    // claim to get energy registered
    fs_setup
        .b_mock
        .execute_dcdt_transfer(
            &fs_setup.user_address,
            &fs_setup.farm_wrapper,
            FARM_TOKEN_ID,
            1,
            &rust_biguint!(farm_in_amount),
            |sc| {
                let _ = sc.claim_rewards(OptionalValue::None);
            },
        )
        .assert_ok();

    fs_setup.set_block_nonce(10);

    // random user tx to collect rewards
    let rand_user = fs_setup.b_mock.create_user_account(&rust_biguint!(0));
    let user_address = fs_setup.user_address.clone();
    fs_setup.b_mock.set_dcdt_balance(
        &rand_user,
        FARMING_TOKEN_ID,
        &rust_biguint!(USER_TOTAL_RIDE_TOKENS),
    );

    fs_setup.set_user_energy(&rand_user, 1, 5, 1);
    fs_setup.set_block_epoch(5);

    fs_setup
        .b_mock
        .execute_dcdt_transfer(
            &rand_user,
            &fs_setup.farm_wrapper,
            FARMING_TOKEN_ID,
            0,
            &rust_biguint!(10),
            |sc| {
                let _ = sc.stake_farm_endpoint(OptionalValue::None);
            },
        )
        .assert_ok();

    fs_setup
        .b_mock
        .execute_dcdt_transfer(
            &rand_user,
            &fs_setup.farm_wrapper,
            FARM_TOKEN_ID,
            3,
            &rust_biguint!(10),
            |sc| {
                let _ = sc.unstake_farm(OptionalValue::None);
            },
        )
        .assert_ok();

    fs_setup.set_block_epoch(8);

    fs_setup.set_user_energy(&user_address, 10_000, 8, 10);

    // value taken from the "test_unstake_farm" test
    // originally, it was 40, but since 25% of the rewards go to boosted yields
    // rewards are now only 3/4 * 40 = 30
    //
    // 10 reserved for boosted yields -> 30 + 10
    let expected_boosted_reward_token_out = 10;
    let expected_farming_token_balance =
        rust_biguint!(USER_TOTAL_RIDE_TOKENS - farm_in_amount + expected_boosted_reward_token_out);

    // Random_user claim boosted rewards for user
    let rand_user_reward_balance = 4_999_999_990u64;
    fs_setup.b_mock.check_dcdt_balance(
        &rand_user,
        REWARD_TOKEN_ID,
        &rust_biguint!(rand_user_reward_balance),
    );
    fs_setup.allow_external_claim_rewards(&user_address, true);
    fs_setup.claim_boosted_rewards_for_user(
        &user_address,
        &rand_user,
        expected_boosted_reward_token_out,
        &expected_farming_token_balance,
    );
    fs_setup.b_mock.check_dcdt_balance(
        &rand_user,
        REWARD_TOKEN_ID,
        &rust_biguint!(rand_user_reward_balance),
    );

    fs_setup.check_farm_token_supply(farm_in_amount);

    // User removes the allowance of claim boosted rewards
    fs_setup.allow_external_claim_rewards(&user_address, false);
    fs_setup.claim_boosted_rewards_for_user_expect_error(&user_address, &rand_user);
}

#[test]
fn farm_staking_full_position_boosted_rewards_test() {
    DebugApi::dummy();
    let mut fs_setup =
        FarmStakingSetup::new(farm_staking::contract_obj, energy_factory::contract_obj);

    let user_address = fs_setup.user_address.clone();

    fs_setup.set_boosted_yields_factors();
    fs_setup.set_boosted_yields_rewards_percentage(BOOSTED_YIELDS_PERCENTAGE);

    fs_setup.set_user_energy(&fs_setup.user_address.clone(), 10_000, 0, 10);

    let farm_in_amount = 50_000_000;
    fs_setup.stake_farm(&user_address, farm_in_amount, &[], 1, 0, 0);
    fs_setup.stake_farm(&user_address, farm_in_amount, &[], 2, 0, 0);
    fs_setup.check_farm_token_supply(farm_in_amount * 2);

    // claim to get energy registered
    fs_setup
        .b_mock
        .execute_dcdt_transfer(
            &fs_setup.user_address,
            &fs_setup.farm_wrapper,
            FARM_TOKEN_ID,
            1,
            &rust_biguint!(farm_in_amount),
            |sc| {
                let _ = sc.claim_rewards(OptionalValue::None);
            },
        )
        .assert_ok();

    fs_setup.set_block_nonce(10);

    // random user tx to collect rewards

    let rand_user = fs_setup.b_mock.create_user_account(&rust_biguint!(0));
    fs_setup.b_mock.set_dcdt_balance(
        &rand_user,
        FARMING_TOKEN_ID,
        &rust_biguint!(USER_TOTAL_RIDE_TOKENS),
    );

    fs_setup.set_user_energy(&rand_user, 1, 5, 1);
    fs_setup.set_block_epoch(5);

    fs_setup
        .b_mock
        .execute_dcdt_transfer(
            &rand_user,
            &fs_setup.farm_wrapper,
            FARMING_TOKEN_ID,
            0,
            &rust_biguint!(10),
            |sc| {
                let _ = sc.stake_farm_endpoint(OptionalValue::None);
            },
        )
        .assert_ok();

    fs_setup
        .b_mock
        .execute_dcdt_transfer(
            &rand_user,
            &fs_setup.farm_wrapper,
            FARM_TOKEN_ID,
            4,
            &rust_biguint!(10),
            |sc| {
                let _ = sc.unstake_farm(OptionalValue::None);
            },
        )
        .assert_ok();

    fs_setup.set_block_epoch(8);

    fs_setup.set_user_energy(&fs_setup.user_address.clone(), 10_000, 8, 10);

    let expected_base_rewards = 15;
    let expected_boosted_rewards = 10;
    let mut expected_farming_token_balance = rust_biguint!(
        USER_TOTAL_RIDE_TOKENS - (farm_in_amount * 2)
            + expected_base_rewards
            + expected_boosted_rewards
    );
    let expected_reward_per_share = 300_000; // from 400_000 -> 300_000

    // Should receive half base rewards and full boosted rewards
    fs_setup.claim_rewards(
        &user_address,
        farm_in_amount,
        2,
        expected_base_rewards + expected_boosted_rewards,
        &expected_farming_token_balance,
        &expected_farming_token_balance,
        6,
        expected_reward_per_share,
    );

    // Should receive half base rewards and no boosted rewards
    expected_farming_token_balance += expected_base_rewards;
    fs_setup.claim_rewards(
        &user_address,
        farm_in_amount,
        3,
        expected_base_rewards,
        &expected_farming_token_balance,
        &expected_farming_token_balance,
        7,
        expected_reward_per_share,
    );
    fs_setup.check_farm_token_supply(farm_in_amount * 2);
}

#[test]
fn position_owner_change_test() {
    DebugApi::dummy();
    let mut fs_setup =
        FarmStakingSetup::new(farm_staking::contract_obj, energy_factory::contract_obj);

    let first_user = fs_setup.user_address.clone();
    let second_user = fs_setup.user_address2.clone();

    fs_setup.set_boosted_yields_factors();
    fs_setup.set_boosted_yields_rewards_percentage(BOOSTED_YIELDS_PERCENTAGE);

    fs_setup.set_user_energy(&first_user, 10_000, 0, 10);
    fs_setup.set_user_energy(&second_user, 5_000, 0, 10);

    let farm_in_amount = 10_000_000;
    let half_farm_in_amount = farm_in_amount / 2;
    fs_setup.stake_farm(&first_user, farm_in_amount, &[], 1, 0, 0);
    fs_setup.stake_farm(&first_user, farm_in_amount, &[], 2, 0, 0);
    fs_setup.stake_farm(&first_user, farm_in_amount, &[], 3, 0, 0);
    fs_setup.stake_farm(&first_user, farm_in_amount, &[], 4, 0, 0);
    fs_setup.stake_farm(&first_user, farm_in_amount, &[], 5, 0, 0);

    fs_setup.check_farm_token_supply(farm_in_amount * 5);

    fs_setup.check_user_total_farm_position(&first_user, farm_in_amount * 5);
    fs_setup.check_user_total_farm_position(&second_user, 0);

    // First user transfers 5 position to second user
    fs_setup.send_position(&first_user, &second_user, 1, farm_in_amount, 0);
    fs_setup.send_position(&first_user, &second_user, 2, farm_in_amount, 0);
    fs_setup.send_position(&first_user, &second_user, 3, farm_in_amount, 0);
    fs_setup.send_position(&first_user, &second_user, 4, farm_in_amount, 0);
    fs_setup.send_position(&first_user, &second_user, 5, farm_in_amount, 0);

    // Total farm position unchanged as users only transfered the farm positions
    fs_setup.check_user_total_farm_position(&first_user, half_farm_in_amount * 10);
    fs_setup.check_user_total_farm_position(&second_user, 0);

    let additional_farm_tokens = [TxTokenTransfer {
        token_identifier: FARM_TOKEN_ID.to_vec(),
        nonce: 1,
        value: rust_biguint!(half_farm_in_amount),
    }];

    fs_setup.stake_farm(
        &second_user,
        farm_in_amount,
        &additional_farm_tokens,
        6,
        0,
        0,
    );

    fs_setup.check_user_total_farm_position(&first_user, half_farm_in_amount * 9);
    fs_setup.check_user_total_farm_position(&second_user, farm_in_amount + half_farm_in_amount);

    let rand_user = fs_setup.b_mock.create_user_account(&rust_biguint!(0));
    fs_setup.b_mock.set_dcdt_balance(
        &rand_user,
        FARMING_TOKEN_ID,
        &rust_biguint!(USER_TOTAL_RIDE_TOKENS),
    );

    // random user tx to collect rewards

    fs_setup.set_user_energy(&rand_user, 1, 5, 1);
    fs_setup.set_block_epoch(5);
    fs_setup.set_block_nonce(10);

    fs_setup
        .b_mock
        .execute_dcdt_transfer(
            &rand_user,
            &fs_setup.farm_wrapper,
            FARMING_TOKEN_ID,
            0,
            &rust_biguint!(10),
            |sc| {
                let _ = sc.stake_farm_endpoint(OptionalValue::None);
            },
        )
        .assert_ok();

    fs_setup
        .b_mock
        .execute_dcdt_transfer(
            &rand_user,
            &fs_setup.farm_wrapper,
            FARM_TOKEN_ID,
            7,
            &rust_biguint!(10),
            |sc| {
                let _ = sc.unstake_farm(OptionalValue::None);
            },
        )
        .assert_ok();

    fs_setup.set_block_epoch(8);

    fs_setup.set_user_energy(&first_user, 10_000, 8, 10);
    fs_setup.set_user_energy(&second_user, 5_000, 8, 10);

    // Second user claims with half position from first user
    let mut rewards = 2;
    let mut expected_farming_token_balance =
        rust_biguint!(USER_TOTAL_RIDE_TOKENS - farm_in_amount + rewards);
    fs_setup.claim_rewards(
        &second_user,
        half_farm_in_amount,
        2,
        rewards,
        &expected_farming_token_balance,
        &expected_farming_token_balance,
        9,
        250_000,
    );

    fs_setup.check_user_total_farm_position(&first_user, half_farm_in_amount * 8);
    fs_setup.check_user_total_farm_position(&second_user, farm_in_amount + half_farm_in_amount * 2);

    // random user tx to collect rewards
    fs_setup.set_user_energy(&rand_user, 1, 12, 1);
    fs_setup.set_block_epoch(12);
    fs_setup.set_block_nonce(20);

    fs_setup
        .b_mock
        .execute_dcdt_transfer(
            &rand_user,
            &fs_setup.farm_wrapper,
            FARMING_TOKEN_ID,
            0,
            &rust_biguint!(10),
            |sc| {
                let _ = sc.stake_farm_endpoint(OptionalValue::None);
            },
        )
        .assert_ok();

    fs_setup
        .b_mock
        .execute_dcdt_transfer(
            &rand_user,
            &fs_setup.farm_wrapper,
            FARM_TOKEN_ID,
            10,
            &rust_biguint!(10),
            |sc| {
                let _ = sc.unstake_farm(OptionalValue::None);
            },
        )
        .assert_ok();

    fs_setup.set_block_epoch(15);

    fs_setup.set_user_energy(&first_user, 10_000, 15, 10);
    fs_setup.set_user_energy(&second_user, 5_000, 15, 10);

    // Second user exits with half position from first user
    fs_setup
        .b_mock
        .execute_dcdt_transfer(
            &second_user,
            &fs_setup.farm_wrapper,
            FARM_TOKEN_ID,
            3,
            &rust_biguint!(half_farm_in_amount),
            |sc| {
                let _ = sc.unstake_farm(OptionalValue::None);
            },
        )
        .assert_ok();

    rewards += 3;
    expected_farming_token_balance =
        rust_biguint!(USER_TOTAL_RIDE_TOKENS - farm_in_amount + rewards);
    fs_setup.b_mock.check_dcdt_balance(
        &second_user,
        REWARD_TOKEN_ID,
        &expected_farming_token_balance,
    );

    fs_setup.check_user_total_farm_position(&first_user, half_farm_in_amount * 7);
    fs_setup.check_user_total_farm_position(&second_user, farm_in_amount + half_farm_in_amount * 2);

    // First user claim boosted rewards
    let first_user_expected_boosted_reward_token_out = 5;
    let first_user_expected_farming_token_balance = rust_biguint!(
        USER_TOTAL_RIDE_TOKENS - farm_in_amount * 5 + first_user_expected_boosted_reward_token_out
    );
    fs_setup.claim_boosted_rewards_for_user(
        &first_user,
        &first_user,
        first_user_expected_boosted_reward_token_out,
        &first_user_expected_farming_token_balance,
    );

    fs_setup.check_user_total_farm_position(&first_user, half_farm_in_amount * 7);
    fs_setup.check_user_total_farm_position(&second_user, farm_in_amount + half_farm_in_amount * 2);

    // random user tx to collect rewards
    fs_setup.set_user_energy(&rand_user, 1, 12, 1);
    fs_setup.set_block_epoch(20);
    fs_setup.set_block_nonce(30);

    fs_setup
        .b_mock
        .execute_dcdt_transfer(
            &rand_user,
            &fs_setup.farm_wrapper,
            FARMING_TOKEN_ID,
            0,
            &rust_biguint!(10),
            |sc| {
                let _ = sc.stake_farm_endpoint(OptionalValue::None);
            },
        )
        .assert_ok();

    fs_setup
        .b_mock
        .execute_dcdt_transfer(
            &rand_user,
            &fs_setup.farm_wrapper,
            FARM_TOKEN_ID,
            13,
            &rust_biguint!(10),
            |sc| {
                let _ = sc.unstake_farm(OptionalValue::None);
            },
        )
        .assert_ok();

    fs_setup.set_block_epoch(22);

    fs_setup.set_user_energy(&first_user, 10_000, 22, 10);
    fs_setup.set_user_energy(&second_user, 5_000, 22, 10);

    // Second user merges half own position with 2 x half position from first user
    // We send the payment from first user first,
    // to see that the original caller is correctly updated as second user
    let farm_tokens = [
        TxTokenTransfer {
            token_identifier: FARM_TOKEN_ID.to_vec(),
            nonce: 4,
            value: rust_biguint!(half_farm_in_amount),
        },
        TxTokenTransfer {
            token_identifier: FARM_TOKEN_ID.to_vec(),
            nonce: 6,
            value: rust_biguint!(half_farm_in_amount),
        },
        TxTokenTransfer {
            token_identifier: FARM_TOKEN_ID.to_vec(),
            nonce: 5,
            value: rust_biguint!(half_farm_in_amount),
        },
    ];
    fs_setup
        .b_mock
        .execute_dcdt_multi_transfer(&second_user, &fs_setup.farm_wrapper, &farm_tokens, |sc| {
            let _ = sc.merge_farm_tokens_endpoint();
        })
        .assert_ok();

    let expected_attributes = StakingFarmTokenAttributes::<DebugApi> {
        reward_per_share: managed_biguint!(0),
        compounded_reward: managed_biguint!(0),
        current_farm_amount: managed_biguint!(half_farm_in_amount * 3),
        original_owner: managed_address!(&second_user), // Check that second user is original owner
    };
    fs_setup.b_mock.check_nft_balance(
        &second_user,
        FARM_TOKEN_ID,
        15,
        &rust_biguint!(half_farm_in_amount * 3),
        Some(&expected_attributes),
    );
    rewards += 1;
    expected_farming_token_balance =
        rust_biguint!(USER_TOTAL_RIDE_TOKENS - farm_in_amount + rewards);
    fs_setup.b_mock.check_dcdt_balance(
        &second_user,
        REWARD_TOKEN_ID,
        &expected_farming_token_balance,
    );

    fs_setup.check_user_total_farm_position(&first_user, half_farm_in_amount * 5);
    fs_setup.check_user_total_farm_position(&second_user, farm_in_amount + half_farm_in_amount * 4);
}
