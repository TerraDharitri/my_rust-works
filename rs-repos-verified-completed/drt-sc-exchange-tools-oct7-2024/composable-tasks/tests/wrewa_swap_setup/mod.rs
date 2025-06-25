#![allow(deprecated)]

use std::cell::RefCell;
use std::rc::Rc;

use dharitri_sc::types::{Address, DcdtLocalRole};
use dharitri_sc_scenario::{
    managed_token_id, rust_biguint,
    testing_framework::{BlockchainStateWrapper, ContractObjWrapper},
    DebugApi,
};
use dharitri_sc_wrewa_swap::RewaDcdtSwap;

pub static WREWA_TOKEN_ID: &[u8] = b"WREWA-123456";
pub static REWA_TOKEN_ID: &[u8] = b"REWA";

pub struct WrewaSwapSetup<WrewaSwapObjBuilder>
where
    WrewaSwapObjBuilder: 'static + Copy + Fn() -> dharitri_sc_wrewa_swap::ContractObj<DebugApi>,
{
    pub b_mock: Rc<RefCell<BlockchainStateWrapper>>,
    pub wrewa_swap_wrapper:
        ContractObjWrapper<dharitri_sc_wrewa_swap::ContractObj<DebugApi>, WrewaSwapObjBuilder>,
}

impl<WrewaSwapObjBuilder> WrewaSwapSetup<WrewaSwapObjBuilder>
where
    WrewaSwapObjBuilder: 'static + Copy + Fn() -> dharitri_sc_wrewa_swap::ContractObj<DebugApi>,
{
    pub fn new(
        b_mock: Rc<RefCell<BlockchainStateWrapper>>,
        wrewa_swap_builder: WrewaSwapObjBuilder,
        owner: &Address,
    ) -> Self {
        let rust_zero = rust_biguint!(0u64);
        let wrewa_swap_wrapper = b_mock.borrow_mut().create_sc_account(
            &rust_zero,
            Some(owner),
            wrewa_swap_builder,
            "wrewa swap",
        );

        b_mock
            .borrow_mut()
            .execute_tx(owner, &wrewa_swap_wrapper, &rust_zero, |sc| {
                sc.init(managed_token_id!(WREWA_TOKEN_ID));
            })
            .assert_ok();

        let initial_token_balance = 10_000_000_000u64;
        b_mock.borrow_mut().set_dcdt_balance(
            wrewa_swap_wrapper.address_ref(),
            WREWA_TOKEN_ID,
            &rust_biguint!(initial_token_balance),
        );
        b_mock.borrow_mut().set_rewa_balance(
            wrewa_swap_wrapper.address_ref(),
            &rust_biguint!(initial_token_balance),
        );

        let wrewa_token_roles = [DcdtLocalRole::Mint, DcdtLocalRole::Burn];
        b_mock.borrow_mut().set_dcdt_local_roles(
            wrewa_swap_wrapper.address_ref(),
            WREWA_TOKEN_ID,
            &wrewa_token_roles[..],
        );

        WrewaSwapSetup {
            b_mock,
            wrewa_swap_wrapper,
        }
    }
}
