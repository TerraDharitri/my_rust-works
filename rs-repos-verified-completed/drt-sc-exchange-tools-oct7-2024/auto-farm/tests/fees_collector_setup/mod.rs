#![allow(deprecated)]
#![allow(clippy::too_many_arguments)]
#![allow(dead_code)]

use energy_query::EnergyQueryModule;
use fees_collector::{
    config::ConfigModule, fees_accumulation::FeesAccumulationModule, FeesCollector,
};
use locking_module::lock_with_energy_module::LockWithEnergyModule;
use dharitri_sc::types::{Address, DcdtLocalRole, MultiValueEncoded};
use dharitri_sc_scenario::{
    managed_address, managed_token_id, managed_token_id_wrapped, rust_biguint,
    testing_framework::{BlockchainStateWrapper, ContractObjWrapper},
    DebugApi,
};
use simple_lock::locked_token::LockedTokenAttributes;

pub const USER_BALANCE: u64 = 1_000_000_000_000_000_000;

pub const EPOCHS_IN_YEAR: u64 = 365;
pub static LOCK_OPTIONS: &[u64] = &[EPOCHS_IN_YEAR, 2 * EPOCHS_IN_YEAR, 4 * EPOCHS_IN_YEAR];

pub static FIRST_TOKEN_ID: &[u8] = b"FIRST-123456";
pub static SECOND_TOKEN_ID: &[u8] = b"SECOND-123456";
pub static BASE_ASSET_TOKEN_ID: &[u8] = b"MOA-123456";
pub static LOCKED_TOKEN_ID: &[u8] = b"LOCKED-123456";

pub fn setup_fees_collector<FeesCollectorBuilder>(
    b_mock: &mut BlockchainStateWrapper,
    fees_collector_builder: FeesCollectorBuilder,
    energy_factory_address: &Address,
    first_user_address: &Address,
    second_user_address: &Address,
    third_user_address: &Address,
) -> ContractObjWrapper<fees_collector::ContractObj<DebugApi>, FeesCollectorBuilder>
where
    FeesCollectorBuilder: 'static + Copy + Fn() -> fees_collector::ContractObj<DebugApi>,
{
    let rust_zero = rust_biguint!(0u64);
    let owner_address = b_mock.create_user_account(&rust_zero);
    let depositor_address = b_mock.create_user_account(&rust_zero);
    let fc_wrapper = b_mock.create_sc_account(
        &rust_zero,
        Some(&owner_address),
        fees_collector_builder,
        "fees collector path",
    );

    // set fees collector roles
    b_mock.set_dcdt_local_roles(
        fc_wrapper.address_ref(),
        LOCKED_TOKEN_ID,
        &[DcdtLocalRole::NftBurn],
    );

    b_mock.set_dcdt_balance(
        &depositor_address,
        FIRST_TOKEN_ID,
        &rust_biguint!(USER_BALANCE * 2),
    );
    b_mock.set_dcdt_balance(
        &depositor_address,
        SECOND_TOKEN_ID,
        &rust_biguint!(USER_BALANCE * 2),
    );

    DebugApi::dummy();

    b_mock.set_nft_balance(
        &depositor_address,
        LOCKED_TOKEN_ID,
        1,
        &rust_biguint!(USER_BALANCE * 2),
        &LockedTokenAttributes::<DebugApi> {
            original_token_id: managed_token_id_wrapped!(BASE_ASSET_TOKEN_ID),
            original_token_nonce: 1,
            unlock_epoch: 100,
        },
    );

    b_mock
        .execute_tx(&owner_address, &fc_wrapper, &rust_zero, |sc| {
            sc.init(
                managed_token_id!(LOCKED_TOKEN_ID),
                managed_address!(energy_factory_address),
            );

            let _ = sc
                .known_contracts()
                .insert(managed_address!(&depositor_address));

            let mut tokens = MultiValueEncoded::new();
            tokens.push(managed_token_id!(FIRST_TOKEN_ID));
            tokens.push(managed_token_id!(SECOND_TOKEN_ID));
            tokens.push(managed_token_id!(LOCKED_TOKEN_ID));

            sc.add_known_tokens(tokens);

            sc.set_energy_factory_address(managed_address!(energy_factory_address));
            sc.set_locking_sc_address(managed_address!(energy_factory_address));
            sc.set_lock_epochs(LOCK_OPTIONS[2]);

            sc.allow_external_claim_rewards(&managed_address!(first_user_address))
                .set(true);
            sc.allow_external_claim_rewards(&managed_address!(second_user_address))
                .set(true);
            sc.allow_external_claim_rewards(&managed_address!(third_user_address))
                .set(true);
        })
        .assert_ok();

    b_mock
        .execute_dcdt_transfer(
            &depositor_address,
            &fc_wrapper,
            FIRST_TOKEN_ID,
            0,
            &rust_biguint!(USER_BALANCE),
            |sc| {
                sc.deposit_swap_fees();
            },
        )
        .assert_ok();

    b_mock
        .execute_dcdt_transfer(
            &depositor_address,
            &fc_wrapper,
            SECOND_TOKEN_ID,
            0,
            &rust_biguint!(USER_BALANCE / 2),
            |sc| {
                sc.deposit_swap_fees();
            },
        )
        .assert_ok();

    b_mock
        .execute_dcdt_transfer(
            &depositor_address,
            &fc_wrapper,
            LOCKED_TOKEN_ID,
            1,
            &rust_biguint!(USER_BALANCE / 100),
            |sc| {
                sc.deposit_swap_fees();
            },
        )
        .assert_ok();

    fc_wrapper
}
