use dharitri_sc_scenario::*;

fn world() -> ScenarioWorld {
    let mut blockchain = ScenarioWorld::new();
    blockchain.set_current_dir_from_workspace("contracts/examples/factorial");

    blockchain.register_contract(
        "drtsc:output/factorial.drtsc.json",
        factorial::ContractBuilder,
    );
    blockchain
}

#[test]
fn factorial_rs() {
    world().run("scenarios/factorial.scen.json");
}
