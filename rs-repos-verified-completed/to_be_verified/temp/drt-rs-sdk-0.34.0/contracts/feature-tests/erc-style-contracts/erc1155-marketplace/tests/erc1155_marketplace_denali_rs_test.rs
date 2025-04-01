use numbat_wasm_debug::*;

fn world() -> BlockchainMock {
    let mut blockchain = BlockchainMock::new();
    blockchain.register_contract_builder(
        "file:output/erc1155-marketplace.wasm",
        erc1155_marketplace::ContractBuilder,
    );
    blockchain.register_contract_builder(
        "file:../erc1155/output/erc1155.wasm",
        erc1155::ContractBuilder,
    );

    blockchain
}

#[test]
fn auction_single_token_rewa_test_rs() {
    numbat_wasm_debug::denali_rs("denali/auction_single_token_rewa.scen.json", world());
}

#[test]
fn auction_batch_test_rs() {
    numbat_wasm_debug::denali_rs("denali/auction_batch.scen.json", world());
}

#[test]
fn bid_first_rewa_test_rs() {
    numbat_wasm_debug::denali_rs("denali/bid_first_rewa.scen.json", world());
}

#[test]
fn bid_second_rewa_test_rs() {
    numbat_wasm_debug::denali_rs("denali/bid_second_rewa.scen.json", world());
}

#[test]
fn bid_third_rewa_test_rs() {
    numbat_wasm_debug::denali_rs("denali/bid_third_rewa.scen.json", world());
}

#[test]
fn end_auction_test_rs() {
    numbat_wasm_debug::denali_rs("denali/end_auction.scen.json", world());
}
