// Code generated by the numbat-wasm multi-contract system. DO NOT EDIT.

////////////////////////////////////////////////////
////////////////// AUTO-GENERATED //////////////////
////////////////////////////////////////////////////

// Init:                                 1
// Endpoints:                           12
// Async Callback (empty):               1
// Total number of exported functions:  14

#![no_std]

numbat_wasm_node::wasm_endpoints! {
    erc1155_marketplace
    (
        onERC1155Received
        onERC1155BatchReceived
        claim
        setCutPercentage
        setTokenOwnershipContractAddress
        bid
        endAuction
        isUpForAuction
        getAuctionStatus
        getCurrentWinningBid
        getCurrentWinner
        getPercentageCut
    )
}

numbat_wasm_node::wasm_empty_callback! {}
