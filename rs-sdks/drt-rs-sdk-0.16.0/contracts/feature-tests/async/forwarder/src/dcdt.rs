numbat_wasm::imports!();

use super::storage;

#[numbat_wasm_derive::module]
pub trait ForwarderDcdtModule: storage::ForwarderStorageModule {
	#[view(getFungibleDcdtBalance)]
	fn get_fungible_dcdt_balance(&self, token_identifier: &TokenIdentifier) -> Self::BigUint {
		self.blockchain().get_dcdt_balance(
			&self.blockchain().get_sc_address(),
			token_identifier.as_dcdt_identifier(),
			0,
		)
	}

	#[endpoint]
	fn send_dcdt(
		&self,
		to: &Address,
		token_id: BoxedBytes,
		amount: &Self::BigUint,
		#[var_args] opt_data: OptionalArg<BoxedBytes>,
	) {
		let data = match &opt_data {
			OptionalArg::Some(data) => data.as_slice(),
			OptionalArg::None => &[],
		};
		let _ = self
			.send()
			.direct_dcdt_via_transf_exec(to, token_id.as_slice(), amount, data);
	}

	#[endpoint]
	fn send_dcdt_twice(
		&self,
		to: &Address,
		token_id: BoxedBytes,
		amount_first_time: &Self::BigUint,
		amount_second_time: &Self::BigUint,
		#[var_args] opt_data: OptionalArg<BoxedBytes>,
	) {
		let data = match &opt_data {
			OptionalArg::Some(data) => data.as_slice(),
			OptionalArg::None => &[],
		};
		let _ = self.send().direct_dcdt_via_transf_exec(
			to,
			token_id.as_slice(),
			amount_first_time,
			data,
		);
		let _ = self.send().direct_dcdt_via_transf_exec(
			to,
			token_id.as_slice(),
			amount_second_time,
			data,
		);
	}

	#[payable("REWA")]
	#[endpoint]
	fn issue_fungible_token(
		&self,
		#[payment] issue_cost: Self::BigUint,
		token_display_name: BoxedBytes,
		token_ticker: BoxedBytes,
		initial_supply: Self::BigUint,
	) -> AsyncCall<Self::SendApi> {
		let caller = self.blockchain().get_caller();

		DCDTSystemSmartContractProxy::new_proxy_obj(self.send())
			.issue_fungible(
				issue_cost,
				&token_display_name,
				&token_ticker,
				&initial_supply,
				FungibleTokenProperties {
					num_decimals: 0,
					can_freeze: true,
					can_wipe: true,
					can_pause: true,
					can_mint: true,
					can_burn: true,
					can_change_owner: true,
					can_upgrade: true,
					can_add_special_roles: true,
				},
			)
			.async_call()
			.with_callback(self.callbacks().dcdt_issue_callback(&caller))
	}

	#[callback]
	fn dcdt_issue_callback(
		&self,
		caller: &Address,
		#[payment_token] token_identifier: TokenIdentifier,
		#[payment] returned_tokens: Self::BigUint,
		#[call_result] result: AsyncCallResult<()>,
	) {
		// callback is called with DCDTTransfer of the newly issued token, with the amount requested,
		// so we can get the token identifier and amount from the call data
		match result {
			AsyncCallResult::Ok(()) => {
				self.last_issued_token().set(&token_identifier);
				self.last_error_message().clear();
			},
			AsyncCallResult::Err(message) => {
				// return issue cost to the caller
				if token_identifier.is_rewa() && returned_tokens > 0 {
					self.send().direct_rewa(caller, &returned_tokens, &[]);
				}

				self.last_error_message().set(&message.err_msg);
			},
		}
	}

	#[endpoint]
	fn local_mint(&self, token_identifier: TokenIdentifier, amount: Self::BigUint) {
		self.send().dcdt_local_mint(
			self.blockchain().get_gas_left(),
			token_identifier.as_dcdt_identifier(),
			&amount,
		);
	}

	#[endpoint]
	fn local_burn(&self, token_identifier: TokenIdentifier, amount: Self::BigUint) {
		self.send().dcdt_local_burn(
			self.blockchain().get_gas_left(),
			token_identifier.as_dcdt_identifier(),
			&amount,
		);
	}
}
