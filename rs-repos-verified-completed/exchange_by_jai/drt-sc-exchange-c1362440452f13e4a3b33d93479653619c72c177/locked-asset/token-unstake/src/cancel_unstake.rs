dharitri_sc::imports!();

use simple_lock::locked_token::LockedTokenAttributes;

use crate::{energy_factory_unstake_proxy, events};

#[dharitri_sc::module]
pub trait CancelUnstakeModule:
    crate::tokens_per_user::TokensPerUserModule
    + energy_query::EnergyQueryModule
    + utils::UtilsModule
    + events::EventsModule
{
    #[endpoint(cancelUnbond)]
    fn cancel_unbond(&self) -> MultiValueEncoded<DcdtTokenPayment> {
        let caller = self.blockchain().get_caller();
        let current_epoch = self.blockchain().get_block_epoch();

        let mut output_payments = ManagedVec::new();
        let mut energy = self.get_energy_entry(&caller);

        let entries_mapper = self.unlocked_tokens_for_user(&caller);
        let user_entries = entries_mapper.get();
        require!(!user_entries.is_empty(), "No tokens to unbond");

        for entry in &user_entries {
            let locked_tokens = entry.locked_tokens;
            let attributes: LockedTokenAttributes<Self::Api> = self
                .blockchain()
                .get_token_attributes(&locked_tokens.token_identifier, locked_tokens.token_nonce);
            if attributes.unlock_epoch >= current_epoch {
                energy.add_after_token_lock(
                    &locked_tokens.amount,
                    attributes.unlock_epoch,
                    current_epoch,
                );
            } else {
                // account for energy refund on unlock
                let epoch_diff = current_epoch - attributes.unlock_epoch;
                let energy_to_reduce = &locked_tokens.amount * epoch_diff;
                energy.add_energy_raw(locked_tokens.amount.clone(), BigInt::zero());
                energy.remove_energy_raw(BigUint::zero(), energy_to_reduce);
            }

            output_payments.push(locked_tokens);

            self.send().dcdt_local_burn(
                &entry.unlocked_tokens.token_identifier,
                0,
                &entry.unlocked_tokens.amount,
            );
        }

        entries_mapper.clear();

        self.tx().to(&caller).payment(&output_payments).transfer();

        let sc_address = self.energy_factory_address().get();
        self.tx()
            .to(&sc_address)
            .typed(energy_factory_unstake_proxy::SimpleLockEnergyProxy)
            .revert_unstake(caller.clone(), energy)
            .sync_call();

        self.emit_unlocked_tokens_event(&caller, ManagedVec::new());
        output_payments.into()
    }
}
