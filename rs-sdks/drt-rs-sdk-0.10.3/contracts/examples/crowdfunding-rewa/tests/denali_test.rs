extern crate crowdfunding_rewa;
use crowdfunding_rewa::*;
use numbat_wasm::*;
use numbat_wasm_debug::*;

fn contract_map() -> ContractMap<TxContext> {
	let mut contract_map = ContractMap::new();
	contract_map.register_contract(
		"file:../output/crowdfunding-rewa.wasm",
		Box::new(|context| Box::new(CrowdfundingImpl::new(context))),
	);
	contract_map
}

#[test]
fn crowdfunding_claim_failed() {
	parse_execute_denali(
		"denali/crowdfunding-claim-failed.scen.json",
		&contract_map(),
	);
}

#[test]
fn crowdfunding_claim_successful() {
	parse_execute_denali(
		"denali/crowdfunding-claim-successful.scen.json",
		&contract_map(),
	);
}

#[test]
fn crowdfunding_claim_too_early() {
	parse_execute_denali(
		"denali/crowdfunding-claim-too-early.scen.json",
		&contract_map(),
	);
}

#[test]
fn crowdfunding_fund() {
	parse_execute_denali("denali/crowdfunding-fund.scen.json", &contract_map());
}

#[test]
fn crowdfunding_fund_too_late() {
	parse_execute_denali(
		"denali/crowdfunding-fund-too-late.scen.json",
		&contract_map(),
	);
}

#[test]
fn crowdfunding_init() {
	parse_execute_denali("denali/crowdfunding-init.scen.json", &contract_map());
}
