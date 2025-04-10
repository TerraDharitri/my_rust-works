use dharitri_sc_scenario::*;

fn world() -> ScenarioWorld {
    let mut blockchain = ScenarioWorld::new();
    blockchain.set_current_dir_from_workspace("contracts/core/wrewa-swap");

    blockchain.register_contract(
        "file:output/dharitri-sc-wrewa-swap.wasm",
        dharitri_sc_wrewa_swap::ContractBuilder,
    );
    blockchain
}

#[test]
fn unwrap_rewa_rs() {
    dharitri_sc_scenario::run_rs("scenarios/unwrap_rewa.scen.json", world());
}

#[test]
fn wrap_rewa_rs() {
    dharitri_sc_scenario::run_rs("scenarios/wrap_rewa.scen.json", world());
}
