use numbat_wasm_debug::*;

fn world() -> BlockchainMock {
    let mut blockchain = BlockchainMock::new();
    blockchain.set_current_dir_from_workspace("contracts/benchmarks/mappers/map-repeat");

    blockchain
        .register_contract_builder("file:output/map-repeat.wasm", map_repeat::ContractBuilder);
    blockchain
}

#[test]
fn map_repeat_struct_rs() {
    numbat_wasm_debug::denali_rs("denali/map_repeat_struct.scen.json", world());
}

#[test]
fn map_repeat_rs() {
    numbat_wasm_debug::denali_rs("denali/map_repeat.scen.json", world());
}
