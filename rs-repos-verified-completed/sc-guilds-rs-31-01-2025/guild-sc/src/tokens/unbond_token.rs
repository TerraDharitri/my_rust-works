dharitri_sc::imports!();

static BASE_UNBOND_TOKEN_NAME: &[u8] = b"Unbond";

#[dharitri_sc::module]
pub trait UnbondTokenModule:
    permissions_module::PermissionsModule
    + crate::tiered_rewards::read_config::ReadConfigModule
    + super::request_id::RequestIdModule
    + dharitri_sc_modules::default_issue_callbacks::DefaultIssueCallbacksModule
{
    #[payable("REWA")]
    #[endpoint(registerUnbondToken)]
    fn register_unbond_token(&self) {
        self.require_caller_has_owner_or_admin_permissions();

        let payment_amount = self.call_value().rewa_value().clone_value();

        let guild_id = self.get_guild_id();
        let base_display_name = self.get_base_display_name();
        let token_display_name = self.build_token_display_name(
            base_display_name,
            guild_id,
            Some(ManagedBuffer::new_from_bytes(BASE_UNBOND_TOKEN_NAME)),
        );

        let token_ticker = self.get_base_unbond_token_id();
        let num_decimals = self.get_token_decimals();
        self.unbond_token().issue_and_set_all_roles(
            DcdtTokenType::Meta,
            payment_amount,
            token_display_name,
            token_ticker,
            num_decimals,
            None,
        );
    }

    #[endpoint(setTransferRoleUnbondToken)]
    fn set_transfer_role_unbond_token(&self) {
        self.require_caller_has_owner_or_admin_permissions();

        let address = self.blockchain().get_sc_address();
        self.unbond_token().set_local_roles_for_address(
            &address,
            &[DcdtLocalRole::Transfer],
            Some(<Self as UnbondTokenModule>::callbacks(self).t_role_unbond_token_callback()),
        );
    }

    #[callback]
    fn t_role_unbond_token_callback(&self, #[call_result] result: ManagedAsyncCallResult<()>) {
        if let ManagedAsyncCallResult::Ok(()) = result {
            self.unbond_token_transfer_role_set().set(true);
        }
    }

    #[storage_mapper("unbondTokenTransferRoleSet")]
    fn unbond_token_transfer_role_set(&self) -> SingleValueMapper<bool>;

    #[view(getUnbondTokenId)]
    #[storage_mapper("unbondTokenId")]
    fn unbond_token(&self) -> NonFungibleTokenMapper;
}
