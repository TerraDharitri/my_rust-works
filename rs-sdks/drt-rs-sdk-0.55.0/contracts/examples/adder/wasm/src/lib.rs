// Code generated by the dharitri-sc build system. DO NOT EDIT.

////////////////////////////////////////////////////
////////////////// AUTO-GENERATED //////////////////
////////////////////////////////////////////////////

// Init:                                 1
// Upgrade:                              1
// Endpoints:                            2
// Async Callback (empty):               1
// Total number of exported functions:   5

#![no_std]

dharitri_sc_wasm_adapter::allocator!();
dharitri_sc_wasm_adapter::panic_handler!();

dharitri_sc_wasm_adapter::endpoints! {
    adder
    (
        init => init
        upgrade => upgrade
        getSum => sum
        add => add
    )
}

dharitri_sc_wasm_adapter::async_callback_empty! {}
