use dharitri_sc_scenario::*;

fn world() -> ScenarioWorld {
    let mut blockchain = ScenarioWorld::new();
    blockchain.register_contract(
        "file:output/erc1155-marketplace.wasm",
        erc1155_marketplace::ContractBuilder,
    );
    blockchain.register_contract(
        "file:../erc1155/output/erc1155.wasm",
        erc1155::ContractBuilder,
    );

    blockchain
}

#[test]
fn auction_batch_rs() {
    dharitri_sc_scenario::run_rs("scenarios/auction_batch.scen.json", world());
}

#[test]
fn auction_single_token_rewa_rs() {
    dharitri_sc_scenario::run_rs("scenarios/auction_single_token_rewa.scen.json", world());
}

#[test]
fn bid_first_rewa_rs() {
    dharitri_sc_scenario::run_rs("scenarios/bid_first_rewa.scen.json", world());
}

#[test]
fn bid_second_rewa_rs() {
    dharitri_sc_scenario::run_rs("scenarios/bid_second_rewa.scen.json", world());
}

#[test]
fn bid_third_rewa_rs() {
    dharitri_sc_scenario::run_rs("scenarios/bid_third_rewa.scen.json", world());
}

#[test]
fn end_auction_rs() {
    dharitri_sc_scenario::run_rs("scenarios/end_auction.scen.json", world());
}
