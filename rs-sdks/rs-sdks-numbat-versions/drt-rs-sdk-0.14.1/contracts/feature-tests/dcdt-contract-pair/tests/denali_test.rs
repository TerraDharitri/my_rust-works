extern crate first_contract;
use first_contract::*;
extern crate second_contract;
use second_contract::*;

use numbat_wasm::*;
use numbat_wasm_debug::*;

fn contract_map() -> ContractMap<TxContext> {
	let mut contract_map = ContractMap::new();
	contract_map.register_contract(
		"file:../first-contract/output/first-contract.wasm",
		Box::new(|context| Box::new(FirstContractImpl::new(context))),
	);

	contract_map.register_contract(
		"file:../second-contract/output/second-contract.wasm",
		Box::new(|context| Box::new(SecondContractImpl::new(context))),
	);
	contract_map
}

#[test]
fn init() {
	parse_execute_denali("denali/init.scen.json", &contract_map());
}

#[test]
fn simple_transfer_full() {
	parse_execute_denali("denali/simple_transfer_full.scen.json", &contract_map());
}

#[test]
fn simple_transfer_half() {
	parse_execute_denali("denali/simple_transfer_half.scen.json", &contract_map());
}

#[test]
fn simple_transfer_full_wrong_token() {
	parse_execute_denali(
		"denali/simple_transfer_full_wrong_token.scen.json",
		&contract_map(),
	);
}

#[test]
fn rejected_transfer() {
	parse_execute_denali("denali/reject_transfer.scen.json", &contract_map());
}
