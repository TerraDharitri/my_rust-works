// Code generated by the dharitri-sc build system. DO NOT EDIT.

////////////////////////////////////////////////////
////////////////// AUTO-GENERATED //////////////////
////////////////////////////////////////////////////

// Init:                                 1
// Upgrade:                              1
// Endpoints:                            3
// Async Callback (empty):               1
// Total number of exported functions:   6

#![no_std]

dharitri_sc_wasm_adapter::allocator!();
dharitri_sc_wasm_adapter::panic_handler!();

dharitri_sc_wasm_adapter::endpoints! {
    paint_the_moon_sc
    (
        init => init
        upgrade => upgrade
        block_size => block_size
        paint => paint
        paint_rect => paint_rect
    )
}

dharitri_sc_wasm_adapter::async_callback_empty! {}
