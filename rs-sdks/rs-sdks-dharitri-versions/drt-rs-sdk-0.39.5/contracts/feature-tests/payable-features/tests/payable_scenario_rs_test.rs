use dharitri_sc_scenario::*;

fn world() -> ScenarioWorld {
    let mut blockchain = ScenarioWorld::new();
    blockchain.set_current_dir_from_workspace("contracts/feature-tests/payable-features");
    blockchain.register_contract(
        "file:output/payable-features.wasm",
        payable_features::ContractBuilder,
    );
    blockchain
}

#[test]
fn call_value_check_rs() {
    dharitri_sc_scenario::run_rs("scenarios/call-value-check.scen.json", world());
}

#[test]
fn payable_multiple_rs() {
    dharitri_sc_scenario::run_rs("scenarios/payable_multiple.scen.json", world());
}

#[test]
fn payable_any_1_rs() {
    dharitri_sc_scenario::run_rs("scenarios/payable_any_1.scen.json", world());
}

#[test]
fn payable_any_2_rs() {
    dharitri_sc_scenario::run_rs("scenarios/payable_any_2.scen.json", world());
}

#[test]
fn payable_any_3_rs() {
    dharitri_sc_scenario::run_rs("scenarios/payable_any_3.scen.json", world());
}

#[test]
fn payable_any_4_rs() {
    dharitri_sc_scenario::run_rs("scenarios/payable_any_4.scen.json", world());
}

#[test]
fn payable_rewa_1_rs() {
    dharitri_sc_scenario::run_rs("scenarios/payable_rewa_1.scen.json", world());
}

#[test]
fn payable_rewa_2_rs() {
    dharitri_sc_scenario::run_rs("scenarios/payable_rewa_2.scen.json", world());
}

#[test]
fn payable_rewa_3_rs() {
    dharitri_sc_scenario::run_rs("scenarios/payable_rewa_3.scen.json", world());
}

#[test]
fn payable_rewa_4_rs() {
    dharitri_sc_scenario::run_rs("scenarios/payable_rewa_4.scen.json", world());
}

#[test]
fn payable_multi_array_rs() {
    dharitri_sc_scenario::run_rs("scenarios/payable_multi_array.scen.json", world());
}

#[test]
fn payable_token_1_rs() {
    dharitri_sc_scenario::run_rs("scenarios/payable_token_1.scen.json", world());
}

#[test]
fn payable_token_2_rs() {
    dharitri_sc_scenario::run_rs("scenarios/payable_token_2.scen.json", world());
}

#[test]
fn payable_token_3_rs() {
    dharitri_sc_scenario::run_rs("scenarios/payable_token_3.scen.json", world());
}

#[test]
fn payable_token_4_rs() {
    dharitri_sc_scenario::run_rs("scenarios/payable_token_4.scen.json", world());
}
