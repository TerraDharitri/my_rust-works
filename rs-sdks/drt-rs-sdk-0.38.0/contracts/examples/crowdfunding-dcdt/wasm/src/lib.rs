// Code generated by the numbat-wasm multi-contract system. DO NOT EDIT.

////////////////////////////////////////////////////
////////////////// AUTO-GENERATED //////////////////
////////////////////////////////////////////////////

// Init:                                 1
// Endpoints:                            8
// Async Callback (empty):               1
// Total number of exported functions:  10

#![no_std]

numbat_wasm_node::wasm_endpoints! {
    crowdfunding_dcdt
    (
        fund
        status
        getCurrentFunds
        claim
        getTarget
        getDeadline
        getDeposit
        getCrowdfundingTokenIdentifier
    )
}

numbat_wasm_node::wasm_empty_callback! {}
