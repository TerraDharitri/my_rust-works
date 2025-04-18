#![no_std]

numbat_wasm::imports!();

mod abi_enum;
mod abi_test_type;
mod only_nested;

use abi_enum::*;
use abi_test_type::*;
use only_nested::*;

/// Contract whose sole purpose is to verify that
/// the ABI generation framework works sa expected.
///
/// Note: any change in this contract must also be reflected in `abi_test_expected.abi.json`,
/// including Rust docs.
#[numbat_wasm::contract]
pub trait AbiTester {
    /// Contract constructor.
    #[init]
    #[payable("REWA")]
    fn init(&self, _constructor_arg_1: i32, _constructor_arg_2: OnlyShowsUpInConstructor) {}

    /// Example endpoint docs.
    #[endpoint]
    #[output_name("single output")]
    #[output_name("this one doesn't show up")]
    fn echo_abi_test_type(&self, att: AbiTestType) -> AbiTestType {
        att
    }

    #[endpoint]
    #[only_owner]
    fn echo_enum(&self, e: AbiEnum) -> AbiEnum {
        e
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
    fn multi_result_4(&self) -> MultiResult4<i32, [u8; 3], BoxedBytes, OnlyShowsUpAsNested03> {
        (1, [2; 3], BoxedBytes::empty(), OnlyShowsUpAsNested03()).into()
    }

    #[endpoint]
    fn var_args(
        &self,
        _simple_arg: u32,
        #[var_args] _var_args: VarArgs<MultiArg2<OnlyShowsUpAsNested04, i32>>,
    ) {
    }

    #[endpoint]
    fn multi_result_vec(&self) -> MultiResultVec<MultiResult3<OnlyShowsUpAsNested05, bool, ()>> {
        MultiResultVec::new()
    }

    #[endpoint]
    fn optional_arg(
        &self,
        _simple_arg: u32,
        #[var_args] _opt_args: OptionalArg<OnlyShowsUpAsNested06>,
    ) {
    }

    #[endpoint]
    fn optional_result(&self) -> OptionalResult<OnlyShowsUpAsNested07> {
        OptionalResult::None
    }

    #[endpoint]
    fn address_vs_h256(&self, address: Address, h256: H256) -> MultiResult2<Address, H256> {
        (address, h256).into()
    }

    #[endpoint]
    fn dcdt_local_role(&self) -> DcdtLocalRole {
        DcdtLocalRole::None
    }

    #[view]
    #[storage_mapper("sample_storage_mapper")]
    fn sample_storage_mapper(&self) -> SingleValueMapper<Self::Storage, OnlyShowsUpAsNested10>;

    #[endpoint]
    #[payable("REWA")]
    fn payable_rewa(
        &self,
        #[payment] _payment: Self::BigUint,
        #[payment_token] _token: TokenIdentifier,
    ) {
    }

    #[endpoint]
    #[payable("TOKEN-FOR-ABI")]
    fn payable_some_token(
        &self,
        #[payment] _payment: Self::BigUint,
        #[payment_token] _token: TokenIdentifier,
    ) {
    }

    #[endpoint]
    #[payable("*")]
    fn payable_any_token(
        &self,
        #[payment] _payment: Self::BigUint,
        #[payment_token] _token: TokenIdentifier,
    ) {
    }
}
