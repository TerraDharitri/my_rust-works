use crate::custom_callbacks::{CallbackProxy, CustomCallbacks};
use crate::ISSUE_COST;
use paint_the_moon_sc::Color;

use dharitri_sc::imports::*;

#[dharitri_sc::module]
pub trait OwnerModule:
    crate::storage::StorageModule + crate::custom_callbacks::CustomCallbacks
{
    #[only_owner]
    #[endpoint]
    fn open_contract(&self) {
        self.is_open().set(true)
    }

    #[only_owner]
    #[endpoint]
    fn close_contract(&self) {
        self.is_open().clear()
    }

    #[only_owner]
    #[endpoint]
    fn change_color_harvest_duration(&self, color: Color, new_duration: u64) {
        self.harvest_duration(&color).set(new_duration)
    }

    /// issue - color as SFT
    #[only_owner]
    #[payable("REWA")]
    #[endpoint]
    fn issue_semi_fungible(&self, token_display_name: ManagedBuffer, token_ticker: ManagedBuffer) {
        require!(self.paint_token_id().is_empty(), "Token already issued");

        let payment_amount = self.call_value().rewa_value().clone_value();
        require!(
            payment_amount == ISSUE_COST,
            "Issue cost (0,05 rewa) should be sent to this endpoint"
        );

        self.tx()
            .to(DCDTSystemSCAddress)
            .typed(DCDTSystemSCProxy)
            .issue_semi_fungible(
                BigUint::from(ISSUE_COST),
                &token_display_name,
                &token_ticker,
                SemiFungibleTokenProperties {
                    can_freeze: true,
                    can_wipe: false,
                    can_pause: true,
                    can_transfer_create_role: true,
                    can_change_owner: true,
                    can_upgrade: true,
                    can_add_special_roles: true,
                },
            )
            .callback(<Self as CustomCallbacks>::callbacks(self).issue_callback())
            .async_call_and_exit();
    }

    // set special roles (addQty, mint, burn, upgradeAttributes, ...)
    #[only_owner]
    #[endpoint]
    fn set_special_roles(&self) {
        self.tx()
            .to(DCDTSystemSCAddress)
            .typed(DCDTSystemSCProxy)
            .set_special_roles(
                self.blockchain().get_sc_address(),
                self.paint_token_id().get(),
                [
                    DcdtLocalRole::Mint,
                    DcdtLocalRole::NftCreate,
                    DcdtLocalRole::NftAddQuantity,
                    DcdtLocalRole::NftUpdateAttributes,
                    DcdtLocalRole::Burn,
                    DcdtLocalRole::Transfer,
                ]
                .into_iter(),
            )
            .async_call_and_exit();
    }

    // mint at least 1 of each and leave them on the SC for addQty
    #[only_owner]
    #[endpoint]
    fn create_sft(
        &self,
        color: ManagedBuffer, // enum index is nonce
        attributes: ManagedBuffer,
        uris: ManagedVec<ManagedBuffer>,
    ) {
        self.tx()
            .to(ToSelf)
            .typed(UserBuiltinProxy)
            .dcdt_nft_create(
                self.paint_token_id().get(),
                BigUint::from(1u64),
                &color,
                BigUint::zero(),
                ManagedBuffer::new(),
                &attributes,
                &uris,
            )
            .async_call_and_exit()
    }

    #[only_owner]
    #[endpoint]
    fn add_quantity(&self, color_nonce: u64, amount: &BigUint) {
        self.tx()
            .to(ToSelf)
            .typed(UserBuiltinProxy)
            .dcdt_local_mint(self.paint_token_id().get(), color_nonce, amount)
            .async_call_and_exit()
    }
}
