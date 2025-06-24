use numbat_wasm_debug::*;

fn world() -> BlockchainMock {
    let mut blockchain = BlockchainMock::new();
    blockchain.set_current_dir_from_workspace("contracts/benchmarks/mappers/vec-repeat");

    blockchain.register_contract(
        "file:output/vec-repeat.wasm",
        Box::new(|context| Box::new(vec_repeat::contract_obj(context))),
    );
    blockchain
}

#[test]
fn vec_repeat_denali_rs() {
    numbat_wasm_debug::denali_rs("denali/vec_repeat.scen.json", world());
}
