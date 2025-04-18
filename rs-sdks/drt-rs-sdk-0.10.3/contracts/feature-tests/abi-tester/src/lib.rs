#![no_std]

imports!();

mod abi_test_type;

use abi_test_type::*;

/// Contract whose sole purpose is to verify that
/// the ABI generation framework works sa expected.
///
/// Note: any change in this contract must also be reflected in `abi_test_expected.abi.json`,
/// including Rust docs.
#[numbat_wasm_derive::contract(AbiTesterImpl)]
pub trait AbiTester {
	#[endpoint]
	#[output_name("single output")]
	#[output_name("this one doesn't show up")]
	fn echo_abi_test_type(&self, att: AbiTestType) -> AbiTestType {
		att
	}

	#[endpoint]
	#[output_name("multi-result-1")]
	#[output_name("multi-result-2")]
	#[output_name("multi-result-3")]
	#[output_name("multi-result-in-excess")]
	fn multi_result_3(&self) -> MultiResult3<i32, [u8; 3], BoxedBytes> {
		(1, [2; 3], BoxedBytes::empty()).into()
	}

	#[endpoint]
	#[output_name("multi-too-few-1")]
	#[output_name("multi-too-few-2")]
	fn multi_result_4(&self) -> MultiResult4<i32, [u8; 3], BoxedBytes, OnlyShowsUpAsNested3> {
		(
			1,
			[2; 3],
			BoxedBytes::empty(),
			OnlyShowsUpAsNested3 { something: () },
		)
			.into()
	}

	#[endpoint]
	fn var_args(
		&self,
		_simple_arg: u32,
		#[var_args] _var_args: VarArgs<MultiArg2<OnlyShowsUpAsNested4, i32>>,
	) {
	}

	#[endpoint]
	fn multi_result_vec(&self) -> MultiResultVec<OnlyShowsUpAsNested5> {
		MultiResultVec::new()
	}

	#[endpoint]
	fn optional_arg(
		&self,
		_simple_arg: u32,
		#[var_args] _opt_args: OptionalArg<OnlyShowsUpAsNested6>,
	) {
	}

	#[endpoint]
	fn optional_result(&self) -> OptionalResult<OnlyShowsUpAsNested7> {
		OptionalResult::None
	}

	#[endpoint]
	fn address_vs_h256(&self, address: Address, h256: H256) -> MultiResult2<Address, H256> {
		(address, h256).into()
	}

	#[endpoint]
	#[payable]
	fn payable_rewa(&self, #[payment] _payment: BigUint) {}
}
