extern crate kitty_auction;
use kitty_auction::*;

extern crate kitty_ownership;
use kitty_ownership::*;

use numbat_wasm::*;
use numbat_wasm_debug::*;

fn contract_map() -> ContractMap<TxContext> {
	let mut contract_map = ContractMap::new();

	contract_map.register_contract(
		"file:../../kitty-ownership/output/kitty-ownership.wasm",
		Box::new(|context| Box::new(KittyOwnershipImpl::new(context))),
	);
	contract_map.register_contract(
		"file:../output/kitty-auction.wasm",
		Box::new(|context| Box::new(KittyAuctionImpl::new(context))),
	);

	contract_map
}

#[test]
fn init() {
	parse_execute_denali("denali/init.scen.json", &contract_map());
}

#[test]
fn create_and_auction_gen_zero_kitty() {
	parse_execute_denali(
		"denali/create_and_auction_gen_zero_kitty.scen.json",
		&contract_map(),
	);
}

#[test]
fn bid_first() {
	parse_execute_denali("denali/bid_first.scen.json", &contract_map());
}

#[test]
fn bid_second_too_low() {
	parse_execute_denali("denali/bid_second_too_low.scen.json", &contract_map());
}

#[test]
fn bid_second_ok() {
	parse_execute_denali("denali/bid_second_ok.scen.json", &contract_map());
}

#[test]
fn bid_second_max() {
	parse_execute_denali("denali/bid_second_max.scen.json", &contract_map());
}

#[test]
fn end_auction_second_bid_ok_early() {
	parse_execute_denali(
		"denali/end_auction_second_bid_ok_early.scen.json",
		&contract_map(),
	);
}

#[test]
fn end_auction_second_bid_ok_late() {
	parse_execute_denali(
		"denali/end_auction_second_bid_ok_late.scen.json",
		&contract_map(),
	);
}

#[test]
fn end_auction_second_bid_max_early() {
	parse_execute_denali(
		"denali/end_auction_second_bid_max_early.scen.json",
		&contract_map(),
	);
}

#[test]
fn create_sale_auction_ok() {
	parse_execute_denali("denali/create_sale_auction_ok.scen.json", &contract_map());
}

#[test]
fn create_sale_auction_not_owner() {
	parse_execute_denali(
		"denali/create_sale_auction_not_owner.scen.json",
		&contract_map(),
	);
}

#[test]
fn create_siring_auction_ok() {
	parse_execute_denali("denali/create_siring_auction_ok.scen.json", &contract_map());
}

#[test]
fn create_siring_auction_not_owner() {
	parse_execute_denali(
		"denali/create_siring_auction_not_owner.scen.json",
		&contract_map(),
	);
}

#[test]
fn bid_siring_auction() {
	parse_execute_denali("denali/bid_siring_auction.scen.json", &contract_map());
}

#[test]
fn end_siring_auction() {
	parse_execute_denali("denali/end_siring_auction.scen.json", &contract_map());
}

#[test]
fn end_auction_no_bids() {
	parse_execute_denali("denali/end_auction_no_bids.scen.json", &contract_map());
}
