dharitri_sc::imports!();

use crate::{energy::Energy, token_unstake_proxy};

#[dharitri_sc::module]
pub trait UnstakeModule:
    simple_lock::basic_lock_unlock::BasicLockUnlock
    + simple_lock::locked_token::LockedTokenModule
    + simple_lock::token_attributes::TokenAttributesModule
    + dharitri_sc_modules::default_issue_callbacks::DefaultIssueCallbacksModule
    + crate::token_merging::TokenMergingModule
    + dharitri_sc_modules::pause::PauseModule
    + crate::penalty::LocalPenaltyModule
    + crate::energy::EnergyModule
    + crate::events::EventsModule
    + crate::lock_options::LockOptionsModule
    + utils::UtilsModule
    + sc_whitelist_module::SCWhitelistModule
    + crate::token_whitelist::TokenWhitelistModule
{
    /// - token_unstake_address - The address of the SC that will handle the unbond logic
    ///     By default, all tokens go through an unbond period after unlock
    #[only_owner]
    #[endpoint(setTokenUnstakeAddress)]
    fn set_token_unstake_address(&self, sc_address: ManagedAddress) {
        self.require_sc_address(&sc_address);
        self.token_unstake_sc_address().set(&sc_address);
    }

    #[payable("*")]
    #[endpoint(revertUnstake)]
    fn revert_unstake(&self, user: ManagedAddress, new_energy: Energy<Self::Api>) {
        self.require_not_paused();
        self.require_caller_unstake_sc();

        self.set_energy_entry(&user, new_energy);
    }

    fn unstake_tokens(
        &self,
        caller: ManagedAddress,
        locked_tokens: DcdtTokenPayment,
        unlocked_tokens: DcdtTokenPayment,
    ) {
        let locking_sc_address = self.token_unstake_sc_address().get();
        let mut payments = ManagedVec::new();
        payments.push(locked_tokens);
        payments.push(unlocked_tokens);

        self.tx()
            .to(&locking_sc_address)
            .typed(token_unstake_proxy::TokenUnstakeProxy)
            .deposit_user_tokens(&caller)
            .payment(payments)
            .sync_call();
    }

    fn send_fees_to_unstake_sc(&self, fees: DcdtTokenPayment) {
        let locking_sc_address = self.token_unstake_sc_address().get();
        self.tx()
            .to(&locking_sc_address)
            .typed(token_unstake_proxy::TokenUnstakeProxy)
            .deposit_fees()
            .payment(fees)
            .sync_call();
    }

    fn require_caller_unstake_sc(&self) {
        let caller = self.blockchain().get_caller();
        let sc_address = self.token_unstake_sc_address().get();
        require!(
            caller == sc_address,
            "Only the unstake SC may call this endpoint"
        );
    }

    #[view(getTokenUnstakeScAddress)]
    #[storage_mapper("tokenUnstakeScAddress")]
    fn token_unstake_sc_address(&self) -> SingleValueMapper<ManagedAddress>;
}
