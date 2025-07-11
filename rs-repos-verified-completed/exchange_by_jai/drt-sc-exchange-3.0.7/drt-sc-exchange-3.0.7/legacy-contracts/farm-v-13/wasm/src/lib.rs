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
    farm_v_13
    (
        init => init
        upgrade => upgrade
        exitFarm => exit_farm
        calculateRewardsForGivenPosition => calculate_rewards_for_given_position
        end_produce_rewards => end_produce_rewards
    )
}

dharitri_sc_wasm_adapter::async_callback_empty! {}
