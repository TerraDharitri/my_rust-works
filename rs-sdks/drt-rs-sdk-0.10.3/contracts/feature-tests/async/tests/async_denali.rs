extern crate async_alice;
use async_alice::*;
extern crate async_bob;
use async_bob::*;

use numbat_wasm::*;
use numbat_wasm_debug::*;

fn contract_map() -> ContractMap<TxContext> {
	let mut contract_map = ContractMap::new();
	contract_map.register_contract(
		"file:../async-alice/output/alice.wasm",
		Box::new(|context| Box::new(AliceImpl::new(context))),
	);

	contract_map.register_contract(
		"file:../async-bob/output/bob.wasm",
		Box::new(|context| Box::new(BobImpl::new(context))),
	);
	contract_map
}

#[test]
fn message_othershard_callback() {
	parse_execute_denali(
		"denali/message_otherShard_callback.scen.json",
		&contract_map(),
	);
}

#[test]
fn message_othershard() {
	parse_execute_denali("denali/message_otherShard.scen.json", &contract_map());
}

#[test]
fn message_sameshard_callback() {
	parse_execute_denali(
		"denali/message_sameShard_callback.scen.json",
		&contract_map(),
	);
}

#[test]
fn message_sameshard() {
	parse_execute_denali("denali/message_sameShard.scen.json", &contract_map());
}

#[test]
fn payment_othershard_callback() {
	parse_execute_denali(
		"denali/payment_otherShard_callback.scen.json",
		&contract_map(),
	);
}

#[test]
fn payment_othershard() {
	parse_execute_denali("denali/payment_otherShard.scen.json", &contract_map());
}

#[test]
fn payment_sameshard_callback() {
	parse_execute_denali(
		"denali/payment_sameShard_callback.scen.json",
		&contract_map(),
	);
}

#[test]
fn payment_sameshard() {
	parse_execute_denali("denali/payment_sameShard.scen.json", &contract_map());
}
