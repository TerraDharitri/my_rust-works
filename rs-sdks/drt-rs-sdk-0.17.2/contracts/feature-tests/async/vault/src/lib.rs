#![no_std]

numbat_wasm::imports!();

/// General test contract.
/// Used especially for investigating async calls and contract interaction in general.
#[numbat_wasm_derive::contract]
pub trait Vault {
	#[init]
	fn init(&self) {}

	#[endpoint]
	fn echo_arguments(
		&self,
		#[var_args] args: VarArgs<BoxedBytes>,
	) -> SCResult<MultiResultVec<BoxedBytes>> {
		self.call_counts(b"echo_arguments").update(|c| *c += 1);
		Ok(args.into_vec().into())
	}

	#[payable("*")]
	#[endpoint]
	fn accept_funds(
		&self,
		#[payment_token] token: TokenIdentifier,
		#[payment_amount] payment: Self::BigUint,
	) {
		let nonce = self.call_value().dcdt_token_nonce();
		let token_type = self.call_value().dcdt_token_type();

		self.accept_funds_event(&token, token_type.as_type_name(), &payment, nonce);

		self.call_counts(b"accept_funds").update(|c| *c += 1);
	}

	#[payable("*")]
	#[endpoint]
	fn accept_funds_echo_payment(
		&self,
		#[payment_token] token_identifier: TokenIdentifier,
		#[payment_amount] token_payment: Self::BigUint,
		#[payment_nonce] token_nonce: u64,
	) -> SCResult<MultiResult4<TokenIdentifier, BoxedBytes, Self::BigUint, u64>> {
		let token_type = self.call_value().dcdt_token_type();

		self.accept_funds_event(
			&token_identifier,
			token_type.as_type_name(),
			&token_payment,
			token_nonce,
		);

		self.call_counts(b"accept_funds_echo_payment")
			.update(|c| *c += 1);

		Ok((
			token_identifier,
			BoxedBytes::from(token_type.as_type_name()),
			token_payment,
			token_nonce,
		)
			.into())
	}

	#[payable("*")]
	#[endpoint]
	fn reject_funds(
		&self,
		#[payment_token] token: TokenIdentifier,
		#[payment] payment: Self::BigUint,
	) -> SCResult<()> {
		self.reject_funds_event(&token, &payment);
		sc_error!("reject_funds")
	}

	#[endpoint]
	fn retrieve_funds(
		&self,
		token: TokenIdentifier,
		amount: Self::BigUint,
		#[var_args] return_message: OptionalArg<BoxedBytes>,
	) {
		self.retrieve_funds_event(&token, &amount);

		let caller = self.blockchain().get_caller();
		let data = match &return_message {
			OptionalArg::Some(data) => data.as_slice(),
			OptionalArg::None => &[],
		};

		if token.is_rewa() {
			self.send().direct_rewa(&caller, &amount, data);
		} else {
			self.send()
				.transfer_dcdt_via_async_call(&caller, &token, &amount, data);
		}
	}

	#[event("accept_funds")]
	fn accept_funds_event(
		&self,
		#[indexed] token_identifier: &TokenIdentifier,
		#[indexed] token_type: &[u8],
		#[indexed] token_payment: &Self::BigUint,
		#[indexed] token_nonce: u64,
	);

	#[event("reject_funds")]
	fn reject_funds_event(
		&self,
		#[indexed] token: &TokenIdentifier,
		#[indexed] payment: &Self::BigUint,
	);

	#[event("retrieve_funds")]
	fn retrieve_funds_event(
		&self,
		#[indexed] token: &TokenIdentifier,
		#[indexed] amount: &Self::BigUint,
	);

	/// We already leave a trace of the calls using the event logs;
	/// this additional counter has the role of showing that storage also gets saved correctly.
	#[view]
	#[storage_mapper("call_counts")]
	fn call_counts(&self, endpoint: &[u8]) -> SingleValueMapper<Self::Storage, usize>;
}
