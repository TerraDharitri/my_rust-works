use numbat_wasm_debug::*;

fn world() -> BlockchainMock {
    let mut blockchain = BlockchainMock::new();
    blockchain.set_current_dir_from_workspace("contracts/benchmarks/mappers/single-value-repeat");

    blockchain.register_contract(
        "file:output/single-value-repeat.wasm",
        Box::new(|context| Box::new(single_value_repeat::contract_obj(context))),
    );
    blockchain
}

#[test]
fn single_value_repeat_denali_rs() {
    numbat_wasm_debug::denali_rs("denali/single_value_repeat.scen.json", world());
}
