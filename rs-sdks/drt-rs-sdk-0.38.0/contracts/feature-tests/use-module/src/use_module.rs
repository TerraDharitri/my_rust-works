#![no_std]

mod contract_base_full_path_mod;
mod contract_base_mod;
mod internal_mod_a;
mod internal_mod_b;
mod internal_mod_c;
mod internal_mod_d;
mod internal_mod_init;
mod ongoing_operation_mod_example;
mod only_admin_derived_mod;
mod only_admin_mod;
mod only_owner_derived_mod;
mod only_owner_mod;
pub mod token_merge_mod_impl;

numbat_wasm::imports!();

/// Contract that tests that using modules works correctly.
/// Also provides testing for the most common modules:
/// - DnsModule
/// - FeaturesModule
/// - DcdtModule
/// - GovernanceModule
/// - PauseModule
#[numbat_wasm::contract]
pub trait UseModule:
    ContractBase
    + contract_base_full_path_mod::ContractBaseFullPathTestModule
    + contract_base_mod::ContractBaseTestModule
    + internal_mod_a::InternalModuleA
    + internal_mod_b::InternalModuleB
    + internal_mod_c::InternalModuleC
    + internal_mod_init::InternalModuleInit
    + only_owner_mod::OnlyOwnerTestModule
    + only_owner_derived_mod::OnlyOwnerDerivedTestModule
    + only_admin_mod::OnlyAdminTestModule
    + only_admin_derived_mod::OnlyAdminDerivedTestModule
    + ongoing_operation_mod_example::OngoingOperationModExample
    + token_merge_mod_impl::TokenMergeModImpl
    + numbat_wasm_modules::claim_developer_rewards::ClaimDeveloperRewardsModule
    + numbat_wasm_modules::dns::DnsModule
    + numbat_wasm_modules::dcdt::DcdtModule
    + numbat_wasm_modules::features::FeaturesModule
    + numbat_wasm_modules::governance::GovernanceModule
    + numbat_wasm_modules::governance::governance_configurable::GovernanceConfigurablePropertiesModule
    + numbat_wasm_modules::governance::governance_events::GovernanceEventsModule
    + numbat_wasm_modules::pause::PauseModule
    + numbat_wasm_modules::staking::StakingModule
    + numbat_wasm_modules::token_merge::TokenMergeModule
    + numbat_wasm_modules::token_merge::merged_token_setup::MergedTokenSetupModule
    + numbat_wasm_modules::default_issue_callbacks::DefaultIssueCallbacksModule
    + numbat_wasm_modules::only_admin::OnlyAdminModule
    + numbat_wasm_modules::ongoing_operation::OngoingOperationModule
{
    /// Validates that the "featureName" feature is on.
    /// Uses the `feature_guard!` macro.
    #[endpoint(checkFeatureGuard)]
    fn check_feature_guard(&self) {
        self.check_feature_on(b"featureName", true);
    }

    #[endpoint(checkPause)]
    fn check_pause(&self) -> SCResult<bool> {
        Ok(self.is_paused())
    }
}
