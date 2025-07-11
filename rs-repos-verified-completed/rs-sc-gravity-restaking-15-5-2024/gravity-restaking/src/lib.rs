#![no_std]

use user_actions::sovereign::Epoch;

dharitri_sc::imports!();

pub mod events;
pub mod token_whitelist;
pub mod unique_payments;
pub mod user_actions;

#[dharitri_sc::contract]
pub trait GravityRestaking:
    user_actions::call_delegation::CallDelegationModule
    + token_whitelist::TokenWhitelistModule
    + user_actions::user::UserModule
    + user_actions::validator::ValidatorModule
    + user_actions::sovereign::SovereignModule
    + user_actions::common_actions::CommonActionsModule
    + user_actions::common_storage::CommonStorageModule
    + user_actions::unbond::UnbondModule
    + events::user_events::UserEventsModule
    + events::validator_events::ValidatorEventsModule
    + events::sov_events::SovEventsModule
    + utils::UtilsModule
{
    #[init]
    fn init(&self, unbond_epochs: Epoch) {
        self.set_unbond_epochs(unbond_epochs);
    }

    #[upgrade]
    fn upgrade(&self) {}
}
