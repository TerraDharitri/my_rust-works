use numbat_wasm_debug::*;

fn world() -> BlockchainMock {
    let mut blockchain = BlockchainMock::new();
    blockchain.set_current_dir_from_workspace("contracts/benchmarks/mappers/linked-list-repeat");

    blockchain.register_contract(
        "file:output/linked-list-repeat.wasm",
        Box::new(|context| Box::new(linked_list_repeat::contract_obj(context))),
    );
    blockchain
}

#[test]
fn linked_list_repeat_denali_rs() {
    numbat_wasm_debug::denali_rs("denali/linked_list_repeat.scen.json", world());
}
