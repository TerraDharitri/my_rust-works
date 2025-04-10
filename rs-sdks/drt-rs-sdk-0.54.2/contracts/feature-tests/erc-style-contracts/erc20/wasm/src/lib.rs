// Code generated by the dharitri-sc build system. DO NOT EDIT.

////////////////////////////////////////////////////
////////////////// AUTO-GENERATED //////////////////
////////////////////////////////////////////////////

// Init:                                 1
// Endpoints:                            6
// Async Callback (empty):               1
// Total number of exported functions:   8

#![no_std]

dharitri_sc_wasm_adapter::allocator!();
dharitri_sc_wasm_adapter::panic_handler!();

dharitri_sc_wasm_adapter::endpoints! {
    erc20
    (
        init => init
        totalSupply => total_supply
        balanceOf => token_balance
        allowance => allowance
        transfer => transfer
        transferFrom => transfer_from
        approve => approve
    )
}

dharitri_sc_wasm_adapter::async_callback_empty! {}
