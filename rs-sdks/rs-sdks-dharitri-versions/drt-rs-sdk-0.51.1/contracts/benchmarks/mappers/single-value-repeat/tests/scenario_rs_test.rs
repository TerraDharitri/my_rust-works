use dharitri_sc_scenario::*;

fn world() -> ScenarioWorld {
    let mut blockchain = ScenarioWorld::new();

    blockchain.register_contract(
        "drtsc:output/single-value-repeat.drtsc.json",
        single_value_repeat::ContractBuilder,
    );
    blockchain
}

#[test]
fn single_value_repeat_rs() {
    world().run("scenarios/single_value_repeat.scen.json");
}

#[test]
fn single_value_repeat_struct_rs() {
    world().run("scenarios/single_value_repeat_struct.scen.json");
}
