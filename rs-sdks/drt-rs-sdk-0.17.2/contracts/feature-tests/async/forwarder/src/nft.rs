numbat_wasm::imports!();
numbat_wasm::derive_imports!();

use super::storage;

// used as mock attributes for NFTs
#[derive(TopEncode, TopDecode, TypeAbi)]
pub struct Color {
	r: u8,
	g: u8,
	b: u8,
}

#[numbat_wasm_derive::module]
pub trait ForwarderNftModule: storage::ForwarderStorageModule {
	#[view]
	fn get_nft_balance(&self, token_identifier: &TokenIdentifier, nonce: u64) -> Self::BigUint {
		self.blockchain().get_dcdt_balance(
			&self.blockchain().get_sc_address(),
			token_identifier,
			nonce,
		)
	}

	#[payable("REWA")]
	#[endpoint]
	fn nft_issue(
		&self,
		#[payment] issue_cost: Self::BigUint,
		token_display_name: BoxedBytes,
		token_ticker: BoxedBytes,
	) -> AsyncCall<Self::SendApi> {
		let caller = self.blockchain().get_caller();

		DCDTSystemSmartContractProxy::new_proxy_obj(self.send())
			.issue_non_fungible(
				issue_cost,
				&token_display_name,
				&token_ticker,
				NonFungibleTokenProperties {
					can_freeze: true,
					can_wipe: true,
					can_pause: true,
					can_change_owner: true,
					can_upgrade: true,
					can_add_special_roles: true,
				},
			)
			.async_call()
			.with_callback(self.callbacks().nft_issue_callback(&caller))
	}

	#[callback]
	fn nft_issue_callback(
		&self,
		caller: &Address,
		#[call_result] result: AsyncCallResult<TokenIdentifier>,
	) {
		match result {
			AsyncCallResult::Ok(token_identifier) => {
				self.last_issued_token().set(&token_identifier);
				self.last_error_message().clear();
			},
			AsyncCallResult::Err(message) => {
				// return issue cost to the caller
				let (returned_tokens, token_identifier) = self.call_value().payment_token_pair();
				if token_identifier.is_rewa() && returned_tokens > 0 {
					self.send().direct_rewa(caller, &returned_tokens, &[]);
				}

				self.last_error_message().set(&message.err_msg);
			},
		}
	}

	#[endpoint]
	fn nft_create(
		&self,
		token_identifier: TokenIdentifier,
		amount: Self::BigUint,
		name: BoxedBytes,
		royalties: Self::BigUint,
		hash: BoxedBytes,
		color: Color,
		uri: BoxedBytes,
	) {
		self.send().dcdt_nft_create::<Color>(
			&token_identifier,
			&amount,
			&name,
			&royalties,
			&hash,
			&color,
			&[uri],
		);
	}

	#[endpoint]
	fn nft_add_quantity(
		&self,
		token_identifier: TokenIdentifier,
		nonce: u64,
		amount: Self::BigUint,
	) {
		self.send()
			.dcdt_nft_add_quantity(&token_identifier, nonce, &amount);
	}

	#[endpoint]
	fn nft_burn(&self, token_identifier: TokenIdentifier, nonce: u64, amount: Self::BigUint) {
		self.send().dcdt_nft_burn(&token_identifier, nonce, &amount);
	}

	#[endpoint]
	fn transfer_nft_via_async_call(
		&self,
		to: Address,
		token_identifier: TokenIdentifier,
		nonce: u64,
		amount: Self::BigUint,
		data: BoxedBytes,
	) {
		self.send().transfer_dcdt_nft_via_async_call(
			&self.blockchain().get_sc_address(),
			&to,
			&token_identifier,
			nonce,
			&amount,
			data.as_slice(),
		);
	}

	#[endpoint]
	fn transfer_nft_and_execute(
		&self,
		to: Address,
		token_identifier: TokenIdentifier,
		nonce: u64,
		amount: Self::BigUint,
		function: BoxedBytes,
		#[var_args] arguments: VarArgs<BoxedBytes>,
	) {
		let mut arg_buffer = ArgBuffer::new();
		for arg in arguments.into_vec() {
			arg_buffer.push_argument_bytes(arg.as_slice());
		}

		let _ = self.send().direct_dcdt_nft_execute(
			&to,
			&token_identifier,
			nonce,
			&amount,
			self.blockchain().get_gas_left(),
			function.as_slice(),
			&arg_buffer,
		);
	}
}
