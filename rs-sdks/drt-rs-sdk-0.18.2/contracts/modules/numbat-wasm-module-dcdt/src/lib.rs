#![no_std]

numbat_wasm::imports!();

/// Standard module for managing a single DCDT.
#[numbat_wasm::module]
pub trait DcdtModule {
    #[storage_mapper("token_id")]
    fn token_id(&self) -> SingleValueMapper<Self::Storage, TokenIdentifier>;

    #[payable("REWA")]
    #[endpoint(issueToken)]
    fn issue_token(
        &self,
        token_display_name: BoxedBytes,
        token_ticker: BoxedBytes,
        num_decimals: usize,
        #[payment] issue_cost: Self::BigUint,
    ) -> SCResult<AsyncCall<Self::SendApi>> {
        only_owner!(self, "only owner can issue token");
        require!(self.token_id().is_empty(), "Token already issued");

        let initial_supply = Self::BigUint::from(1u32);

        Ok(DCDTSystemSmartContractProxy::new_proxy_obj(self.send())
            .issue_fungible(
                issue_cost,
                &token_display_name,
                &token_ticker,
                &initial_supply,
                FungibleTokenProperties {
                    can_burn: false,
                    can_mint: false,
                    num_decimals,
                    can_freeze: true,
                    can_wipe: true,
                    can_pause: true,
                    can_change_owner: false,
                    can_upgrade: false,
                    can_add_special_roles: true,
                },
            )
            .async_call()
            .with_callback(self.callbacks().issue_callback()))
    }

    /// optional address to set roles for. Defaults to SC's address.
    #[endpoint(setLocalRoles)]
    fn set_local_roles(
        &self,
        #[var_args] opt_dest_address: OptionalArg<Address>,
    ) -> SCResult<AsyncCall<Self::SendApi>> {
        only_owner!(self, "only owner can set roles");

        let dest_address = match opt_dest_address {
            OptionalArg::Some(addr) => addr,
            OptionalArg::None => self.blockchain().get_sc_address(),
        };
        let token_id = self.token_id().get();
        let roles = [DcdtLocalRole::Mint, DcdtLocalRole::Burn];

        Ok(DCDTSystemSmartContractProxy::new_proxy_obj(self.send())
            .set_special_roles(&dest_address, &token_id, &roles)
            .async_call())
    }

    #[callback]
    fn issue_callback(&self, #[call_result] result: AsyncCallResult<TokenIdentifier>) {
        match result {
            AsyncCallResult::Ok(token_id) => {
                self.token_id().set(&token_id);
            },
            AsyncCallResult::Err(_) => {
                // return payment to initial caller
                let initial_caller = self.blockchain().get_owner_address();
                let rewa_returned = self.call_value().rewa_value();
                if rewa_returned > 0 {
                    self.send()
                        .direct_rewa(&initial_caller, &rewa_returned, &[]);
                }
            },
        }
    }

    fn mint(&self, amount: &Self::BigUint) -> SCResult<()> {
        let token_id = self.token_id().get();

        self.require_local_roles_set(&token_id)?;
        self.send().dcdt_local_mint(&token_id, 0, amount);

        Ok(())
    }

    fn burn(&self, amount: &Self::BigUint) -> SCResult<()> {
        let token_id = self.token_id().get();

        self.require_local_roles_set(&token_id)?;
        self.send().dcdt_local_burn(&token_id, 0, amount);

        Ok(())
    }

    fn require_token_issued(&self) -> SCResult<()> {
        require!(!self.token_id().is_empty(), "Token must be issued first");
        Ok(())
    }

    fn require_local_roles_set(&self, token_id: &TokenIdentifier) -> SCResult<()> {
        let roles = self.blockchain().get_dcdt_local_roles(token_id);
        require!(
            roles.contains(&DcdtLocalRole::Mint) && roles.contains(&DcdtLocalRole::Burn),
            "Must set local roles first"
        );
        Ok(())
    }
}
