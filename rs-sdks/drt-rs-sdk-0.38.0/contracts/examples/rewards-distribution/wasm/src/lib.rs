// Code generated by the numbat-wasm multi-contract system. DO NOT EDIT.

////////////////////////////////////////////////////
////////////////// AUTO-GENERATED //////////////////
////////////////////////////////////////////////////

// Init:                                 1
// Endpoints:                           13
// Async Callback (empty):               1
// Total number of exported functions:  15

#![no_std]

numbat_wasm_node::wasm_endpoints! {
    rewards_distribution
    (
        depositRoyalties
        raffle
        claimRewards
        computeClaimableAmount
        getRaffleId
        getCompletedRaffleIdCount
        getRoyalties
        getNftRewardPercent
        getWasClaimed
        getSeedNftMinterAddress
        getBrackets
        getLastRaffleEpoch
        getNftTokenId
    )
}

numbat_wasm_node::wasm_empty_callback! {}
