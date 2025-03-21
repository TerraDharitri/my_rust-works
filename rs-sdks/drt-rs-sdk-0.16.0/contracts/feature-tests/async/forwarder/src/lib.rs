#![no_std]
#![allow(clippy::too_many_arguments)]

mod call_async;
mod call_sync;
mod call_transf_exec;
mod dcdt;
mod nft;
mod roles;
mod sft;
mod storage;

numbat_wasm::imports!();

/// Test contract for investigating contract calls.
/// TODO: split into modules.
#[numbat_wasm_derive::contract]
pub trait Forwarder:
	call_sync::ForwarderSyncCallModule
	+ call_async::ForwarderAsyncCallModule
	+ call_transf_exec::ForwarderTransferExecuteModule
	+ dcdt::ForwarderDcdtModule
	+ sft::ForwarderSftModule
	+ nft::ForwarderNftModule
	+ roles::ForwarderRolesModule
	+ storage::ForwarderStorageModule
{
	#[init]
	fn init(&self) {}

	#[endpoint]
	fn send_rewa(
		&self,
		to: &Address,
		amount: &Self::BigUint,
		#[var_args] opt_data: OptionalArg<BoxedBytes>,
	) {
		let data = match &opt_data {
			OptionalArg::Some(data) => data.as_slice(),
			OptionalArg::None => &[],
		};
		self.send().direct_rewa(to, amount, data);
	}

	#[callback(retrieve_funds_callback)]
	fn retrieve_funds_callback_root(
		&self,
		#[payment_token] token: TokenIdentifier,
		#[payment] payment: Self::BigUint,
	) {
		// manual callback forwarding to modules is currently necessary
		self.retrieve_funds_callback(token, payment)
	}

	#[callback(send_funds_twice_callback)]
	fn send_funds_twice_callback_root(
		&self,
		to: &Address,
		token_identifier: &TokenIdentifier,
		amount: &Self::BigUint,
	) -> AsyncCall<Self::SendApi> {
		// manual callback forwarding to modules is currently necessary
		self.send_funds_twice_callback(to, token_identifier, amount)
	}

	#[callback(dcdt_issue_callback)]
	fn dcdt_issue_callback_root(
		&self,
		caller: &Address,
		#[payment_token] token_identifier: TokenIdentifier,
		#[payment] returned_tokens: Self::BigUint,
		#[call_result] result: AsyncCallResult<()>,
	) {
		// manual callback forwarding to modules is currently necessary
		self.dcdt_issue_callback(caller, token_identifier, returned_tokens, result)
	}

	#[callback(nft_issue_callback)]
	fn nft_issue_callback_root(
		&self,
		caller: &Address,
		#[call_result] result: AsyncCallResult<TokenIdentifier>,
	) {
		// manual callback forwarding to modules is currently necessary
		self.nft_issue_callback(caller, result)
	}

	#[callback(sft_issue_callback)]
	fn sft_issue_callback_root(
		&self,
		caller: &Address,
		#[call_result] result: AsyncCallResult<TokenIdentifier>,
	) {
		// manual callback forwarding to modules is currently necessary
		self.sft_issue_callback(caller, result)
	}

	#[callback(change_roles_callback)]
	fn change_roles_callback_root(&self, #[call_result] result: AsyncCallResult<()>) {
		// manual callback forwarding to modules is currently necessary
		self.change_roles_callback(result)
	}
}
