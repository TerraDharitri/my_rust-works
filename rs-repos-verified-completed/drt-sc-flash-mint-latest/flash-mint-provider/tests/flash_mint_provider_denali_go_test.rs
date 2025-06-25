#[test]
fn complete_setup_denali_go() {
    numbat_wasm_debug::denali_go("denali/complete_setup.scen.json");
}

#[test]
fn flash_loan_fail_denali_go() {
    numbat_wasm_debug::denali_go("denali/flash_loan_fail.scen.json");
}

#[test]
fn flash_loan_success_denali_go() {
    numbat_wasm_debug::denali_go("denali/flash_loan_success.scen.json");
}
