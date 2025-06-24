use numbat_wasm_debug::*;

fn world() -> BlockchainMock {
    let mut blockchain = BlockchainMock::new();
    blockchain.set_current_dir_from_workspace("contracts/examples/multisig");

    blockchain.register_contract(
        "file:output/multisig.wasm",
        Box::new(|context| Box::new(multisig::contract_obj(context))),
    );

    blockchain.register_contract(
        "file:test-contracts/adder.wasm",
        Box::new(|context| Box::new(adder::contract_obj(context))),
    );

    blockchain.register_contract(
        "file:test-contracts/factorial.wasm",
        Box::new(|context| Box::new(factorial::contract_obj(context))),
    );

    blockchain
}

// #[test]
// fn call_other_shard_1_rs() {
//     numbat_wasm_debug::denali_rs("denali/call_other_shard-1.scen.json", world());
// }

// #[test]
// fn call_other_shard_2_rs() {
//     numbat_wasm_debug::denali_rs("denali/call_other_shard-2.scen.json", world());
// }

#[test]
fn changeboard_rs() {
    numbat_wasm_debug::denali_rs("denali/changeBoard.scen.json", world());
}

#[test]
fn changequorum_rs() {
    numbat_wasm_debug::denali_rs("denali/changeQuorum.scen.json", world());
}

#[test]
fn changequorum_toobig_rs() {
    numbat_wasm_debug::denali_rs("denali/changeQuorum_tooBig.scen.json", world());
}

#[test]
fn deployadder_err_rs() {
    numbat_wasm_debug::denali_rs("denali/deployAdder_err.scen.json", world());
}

#[test]
fn deployadder_then_call_rs() {
    numbat_wasm_debug::denali_rs("denali/deployAdder_then_call.scen.json", world());
}

#[test]
fn deployfactorial_rs() {
    numbat_wasm_debug::denali_rs("denali/deployFactorial.scen.json", world());
}

#[test]
fn deployothermultisig_rs() {
    numbat_wasm_debug::denali_rs("denali/deployOtherMultisig.scen.json", world());
}

#[test]
fn deploy_duplicate_bm_rs() {
    numbat_wasm_debug::denali_rs("denali/deploy_duplicate_bm.scen.json", world());
}

#[test]
fn remove_everyone_rs() {
    numbat_wasm_debug::denali_rs("denali/remove_everyone.scen.json", world());
}

#[test]
fn senddcdt_rs() {
    numbat_wasm_debug::denali_rs("denali/sendDcdt.scen.json", world());
}

#[test]
fn upgrade_rs() {
    numbat_wasm_debug::denali_rs("denali/upgrade.scen.json", world());
}

#[test]
fn upgrade_from_source_rs() {
    numbat_wasm_debug::denali_rs("denali/upgrade_from_source.scen.json", world());
}
