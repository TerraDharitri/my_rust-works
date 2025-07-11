use dharitri_sc_scenario::*;

fn world() -> ScenarioWorld {
    let mut blockchain = ScenarioWorld::new();
    blockchain.set_current_dir_from_workspace("contracts/dcdt-transfer-with-fee");

    blockchain.register_contract(
        "file:output/dcdt-transfer-with-fee.wasm",
        dcdt_transfer_with_fee::ContractBuilder,
    );
    blockchain
}

#[test]
fn claim_rs() {
    world().run("scenarios/claim.scen.json");
}

#[test]
fn deploy_rs() {
    world().run("scenarios/deploy.scen.json");
}

#[test]
fn setup_fees_and_transfer_rs() {
    world().run("scenarios/setup_fees_and_transfer.scen.json");
}
