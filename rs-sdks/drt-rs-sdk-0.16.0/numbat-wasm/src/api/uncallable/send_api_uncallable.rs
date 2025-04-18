use super::{BigIntUncallable, BigUintUncallable};
use crate::api::SendApi;
use crate::types::{Address, ArgBuffer, BoxedBytes, CodeMetadata};
use alloc::vec::Vec;

impl SendApi for super::UncallableApi {
	type AmountType = BigUintUncallable;
	type ProxyBigInt = BigIntUncallable;
	type ProxyStorage = Self;

	fn get_sc_address(&self) -> Address {
		unreachable!()
	}

	fn direct_rewa(&self, _to: &Address, _amount: &BigUintUncallable, _data: &[u8]) {
		unreachable!()
	}

	fn direct_rewa_execute(
		&self,
		_to: &Address,
		_amount: &BigUintUncallable,
		_gas_limit: u64,
		_function: &[u8],
		_arg_buffer: &ArgBuffer,
	) -> Result<(), &'static [u8]> {
		unreachable!()
	}

	fn direct_dcdt_execute(
		&self,
		_to: &Address,
		_token: &[u8],
		_amount: &BigUintUncallable,
		_gas: u64,
		_function: &[u8],
		_arg_buffer: &ArgBuffer,
	) -> Result<(), &'static [u8]> {
		unreachable!()
	}

	fn direct_dcdt_nft_execute(
		&self,
		_to: &Address,
		_token: &[u8],
		_nonce: u64,
		_amount: &BigUintUncallable,
		_gas_limit: u64,
		_function: &[u8],
		_arg_buffer: &ArgBuffer,
	) -> Result<(), &'static [u8]> {
		unreachable!()
	}

	fn async_call_raw(&self, _to: &Address, _amount: &BigUintUncallable, _data: &[u8]) -> ! {
		unreachable!()
	}

	fn deploy_contract(
		&self,
		_gas: u64,
		_amount: &BigUintUncallable,
		_code: &BoxedBytes,
		_code_metadata: CodeMetadata,
		_arg_buffer: &ArgBuffer,
	) -> Address {
		unreachable!()
	}

	fn execute_on_dest_context_raw(
		&self,
		_gas: u64,
		_address: &Address,
		_value: &BigUintUncallable,
		_function: &[u8],
		_arg_buffer: &ArgBuffer,
	) -> Vec<BoxedBytes> {
		unreachable!()
	}

	fn execute_on_dest_context_raw_custom_result_range<F>(
		&self,
		_gas: u64,
		_address: &Address,
		_value: &BigUintUncallable,
		_function: &[u8],
		_arg_buffer: &ArgBuffer,
		_range_closure: F,
	) -> Vec<BoxedBytes>
	where
		F: FnOnce(usize, usize) -> (usize, usize),
	{
		unreachable!()
	}

	fn execute_on_dest_context_by_caller_raw(
		&self,
		_gas: u64,
		_address: &Address,
		_value: &BigUintUncallable,
		_function: &[u8],
		_arg_buffer: &ArgBuffer,
	) -> Vec<BoxedBytes> {
		unreachable!()
	}

	fn execute_on_same_context_raw(
		&self,
		_gas: u64,
		_address: &Address,
		_value: &BigUintUncallable,
		_function: &[u8],
		_arg_buffer: &ArgBuffer,
	) {
		unreachable!()
	}

	fn storage_store_tx_hash_key(&self, _data: &[u8]) {
		unreachable!()
	}

	fn storage_load_tx_hash_key(&self) -> BoxedBytes {
		unreachable!()
	}

	fn call_local_dcdt_built_in_function(
		&self,
		_gas: u64,
		_function: &[u8],
		_arg_buffer: &ArgBuffer,
	) {
		unreachable!()
	}
}
