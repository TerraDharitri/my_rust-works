use dharitri_sc_scenario::*;

fn world() -> ScenarioWorld {
    let mut blockchain = ScenarioWorld::new();
    blockchain.register_contract(
        "file:output/rust-testing-framework-tester.wasm",
        rust_testing_framework_tester::ContractBuilder,
    );
    blockchain
}

#[test]
#[ignore]
fn test_rs() {
    world().run("scenarios/test.scen.json");
}

#[test]
#[ignore]
fn test_dcdt_generation_rs() {
    world().run("scenarios/test_dcdt_generation.scen.json");
}

#[test]
#[ignore]
fn test_multiple_sc_rs() {
    world().run("scenarios/test_multiple_sc.scen.json");
}

#[test]
#[ignore = "not supported"]
fn trace_deploy_rs() {
    world().run("scenarios/trace-deploy.scen.json");
}
