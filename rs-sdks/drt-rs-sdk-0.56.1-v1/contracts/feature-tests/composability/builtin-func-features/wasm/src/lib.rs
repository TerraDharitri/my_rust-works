// Code generated by the dharitri-sc build system. DO NOT EDIT.

////////////////////////////////////////////////////
////////////////// AUTO-GENERATED //////////////////
////////////////////////////////////////////////////

// Init:                                 1
// Endpoints:                            4
// Async Callback (empty):               1
// Promise callbacks:                    1
// Total number of exported functions:   7

#![no_std]

dharitri_sc_wasm_adapter::allocator!();
dharitri_sc_wasm_adapter::panic_handler!();

dharitri_sc_wasm_adapter::endpoints! {
    builtin_func_features
    (
        init => init
        call_set_user_name => call_set_user_name
        call_delete_user_name => call_delete_user_name
        transferFungiblePromiseNoCallback => transfer_fungible_promise_no_callback
        transferFungiblePromiseWithCallback => transfer_fungible_promise_with_callback
        transfer_callback => transfer_callback
    )
}

dharitri_sc_wasm_adapter::async_callback_empty! {}
