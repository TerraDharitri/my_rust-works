use dharitri_sc_scenario::*;

fn world() -> ScenarioWorld {
    let mut blockchain = ScenarioWorld::new();
    // blockchain.set_current_dir_from_workspace("relative path to your workspace, if applicable");

    blockchain.register_contract("drtsc:output/simple-dcdt-test.drtsc.json", simple_dcdt_test::ContractBuilder);
    blockchain
}

#[test]
fn empty_rs() {
    world().run("scenarios/simple_dcdt_test.scen.json");
}
