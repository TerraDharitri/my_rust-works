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
    world().run("scenarios/auction_batch.scen.json");
}

#[test]
fn auction_single_token_rewa_rs() {
    world().run("scenarios/auction_single_token_rewa.scen.json");
}

#[test]
fn bid_first_rewa_rs() {
    world().run("scenarios/bid_first_rewa.scen.json");
}

#[test]
fn bid_second_rewa_rs() {
    world().run("scenarios/bid_second_rewa.scen.json");
}

#[test]
fn bid_third_rewa_rs() {
    world().run("scenarios/bid_third_rewa.scen.json");
}

#[test]
fn end_auction_rs() {
    world().run("scenarios/end_auction.scen.json");
}
