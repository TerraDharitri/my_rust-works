use numbat_wasm_debug::*;

fn contract_map() -> ContractMap<TxContext> {
	let mut contract_map = ContractMap::new();
	contract_map.register_contract(
		"file:../../output/multisig.wasm",
		Box::new(|context| Box::new(multisig::contract_obj(context))),
	);
	contract_map
}

#[test]
fn test_change_board() {
	parse_execute_denali("denali/changeBoard.scen.json", &contract_map());
}

#[test]
fn test_change_quorum() {
	parse_execute_denali("denali/changeQuorum.scen.json", &contract_map());
}

#[test]
fn test_change_quorum_too_big() {
	parse_execute_denali("denali/changeQuorum_tooBig.scen.json", &contract_map());
}
