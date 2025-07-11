#![no_std]

dharitri_sc::imports!();

pub mod basic_lock_unlock;
pub mod error_messages;
pub mod farm_interactions;
pub mod farm_proxy;
pub mod locked_token;
pub mod lp_interactions;
pub mod lp_proxy;
pub mod proxy_farm;
pub mod proxy_lp;
pub mod token_attributes;

#[dharitri_sc::contract]
pub trait SimpleLock:
    basic_lock_unlock::BasicLockUnlock
    + locked_token::LockedTokenModule
    + dharitri_sc_modules::default_issue_callbacks::DefaultIssueCallbacksModule
    + proxy_lp::ProxyLpModule
    + proxy_farm::ProxyFarmModule
    + lp_interactions::LpInteractionsModule
    + farm_interactions::FarmInteractionsModule
    + token_attributes::TokenAttributesModule
{
    #[init]
    fn init(&self) {}

    #[upgrade]
    fn upgrade(&self) {}

    /// Locks any token (including REWA) until `unlock_epoch` and receive meta DCDT LOCKED tokens.
    /// on a 1:1 ratio. If unlock epoch has already passed, the original tokens are sent instead.
    ///
    /// Expected payment: Any token
    ///
    /// Arguments:
    /// - unlock epoch - the epoch from which the LOCKED token holder may call the unlock endpoint
    /// - opt_destination - OPTIONAL: destination address for the LOCKED tokens. Default is caller.
    ///
    /// Output payments: LOCKED tokens (or original payment if current_epoch >= unlock_epoch)
    #[payable("*")]
    #[endpoint(lockTokens)]
    fn lock_tokens_endpoint(
        &self,
        unlock_epoch: u64,
        opt_destination: OptionalValue<ManagedAddress>,
    ) -> RewaOrDcdtTokenPayment<Self::Api> {
        let payment = self.call_value().rewa_or_single_dcdt();
        let dest_address = self.dest_from_optional(opt_destination);
        self.lock_and_send(&dest_address, payment, unlock_epoch)
    }

    /// Unlock tokens, previously locked with the `lockTokens` endpoint
    ///
    /// Expected payment: LOCKED tokens
    ///
    /// Arguments:
    /// - opt_destination - OPTIONAL: destination address for the unlocked tokens
    ///
    /// Output payments: the originally locked tokens
    #[payable("*")]
    #[endpoint(unlockTokens)]
    fn unlock_tokens_endpoint(
        &self,
        opt_destination: OptionalValue<ManagedAddress>,
    ) -> RewaOrDcdtTokenPayment<Self::Api> {
        let payment = self.call_value().single_dcdt();
        let dest_address = self.dest_from_optional(opt_destination);
        self.unlock_and_send(&dest_address, payment)
    }

    fn dest_from_optional(&self, opt_destination: OptionalValue<ManagedAddress>) -> ManagedAddress {
        match opt_destination {
            OptionalValue::Some(dest) => dest,
            OptionalValue::None => self.blockchain().get_caller(),
        }
    }
}
