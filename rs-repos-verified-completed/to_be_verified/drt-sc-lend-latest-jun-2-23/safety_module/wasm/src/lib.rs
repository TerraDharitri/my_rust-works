// Code generated by the dharitri-sc multi-contract system. DO NOT EDIT.

////////////////////////////////////////////////////
////////////////// AUTO-GENERATED //////////////////
////////////////////////////////////////////////////

// Init:                                 1
// Endpoints:                           12
// Async Callback:                       1
// Total number of exported functions:  14

#![no_std]
#![feature(lang_items)]

dharitri_sc_wasm_adapter::allocator!();
dharitri_sc_wasm_adapter::panic_handler!();

dharitri_sc_wasm_adapter::endpoints! {
    safety_module
    (
        addPool
        removePool
        fund
        fundFromPool
        takeFunds
        withdraw
        setLocalRolesNftToken
        pools
        wrewa_token
        deposit_apy
        nftToken
        lastErrorMessage
        callBack
    )
}
