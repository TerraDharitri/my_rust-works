// Code generated by the dharitri-sc multi-contract system. DO NOT EDIT.

////////////////////////////////////////////////////
////////////////// AUTO-GENERATED //////////////////
////////////////////////////////////////////////////

// Init:                                 1
// Endpoints:                           16
// Async Callback (empty):               1
// Total number of exported functions:  18

#![no_std]
#![allow(internal_features)]
#![feature(lang_items)]

dharitri_sc_wasm_adapter::allocator!();
dharitri_sc_wasm_adapter::panic_handler!();

dharitri_sc_wasm_adapter::endpoints! {
    rust_snippets_generator_test
    (
        init => init
        no_arg_no_result_endpoint => no_arg_no_result_endpoint
        no_arg_one_result_endpoint => no_arg_one_result_endpoint
        one_arg_no_result_endpoint => one_arg_no_result_endpoint
        one_arg_one_result_endpoint => one_arg_one_result_endpoint
        multi_result => multi_result
        nested_result => nested_result
        custom_struct => custom_struct
        optional_type => optional_type
        option_type => option_type
        dcdt_token_payment => dcdt_token_payment
        rewa_or_dcdt_payment => rewa_or_dcdt_payment
        payable_endpoint => payable_endpoint
        managed_buffer => managed_buffer
        multi_value_2 => multi_value_2
        multi_value_4 => multi_value_4
        complex_multi_values => complex_multi_values
    )
}

dharitri_sc_wasm_adapter::async_callback_empty! {}
