use numbat_wasm::*;
use numbat_wasm_debug::*;

fn contract_map() -> ContractMap<TxContext> {
    let mut contract_map = ContractMap::new();
    contract_map.register_contract(
        "file:../output/erc721.wasm",
        Box::new(|context| Box::new(erc721::contract_obj(context))),
    );
    contract_map
}

#[test]
fn nft_approve_non_existent_token_rs() {
    numbat_wasm_debug::denali_rs(
        "denali/nft-approve-non-existent-token.scen.json",
        &contract_map(),
    );
}

#[test]
fn nft_approve_non_owned_token_rs() {
    numbat_wasm_debug::denali_rs(
        "denali/nft-approve-non-owned-token.scen.json",
        &contract_map(),
    );
}

#[test]
fn nft_approve_ok_rs() {
    numbat_wasm_debug::denali_rs("denali/nft-approve-ok.scen.json", &contract_map());
}

#[test]
fn nft_init_rs() {
    numbat_wasm_debug::denali_rs("denali/nft-init.scen.json", &contract_map());
}

#[test]
fn nft_mint_more_tokens_caller_not_owner_rs() {
    numbat_wasm_debug::denali_rs(
        "denali/nft-mint-more-tokens-caller-not-owner.scen.json",
        &contract_map(),
    );
}

#[test]
fn nft_mint_more_tokens_receiver_acc1_rs() {
    numbat_wasm_debug::denali_rs(
        "denali/nft-mint-more-tokens-receiver-acc1.scen.json",
        &contract_map(),
    );
}

#[test]
fn nft_mint_more_tokens_receiver_owner_rs() {
    numbat_wasm_debug::denali_rs(
        "denali/nft-mint-more-tokens-receiver-owner.scen.json",
        &contract_map(),
    );
}

#[test]
fn nft_revoke_non_approved_rs() {
    numbat_wasm_debug::denali_rs("denali/nft-revoke-non-approved.scen.json", &contract_map());
}

#[test]
fn nft_revoke_ok_rs() {
    numbat_wasm_debug::denali_rs("denali/nft-revoke-ok.scen.json", &contract_map());
}

#[test]
fn nft_transfer_approved_token_rs() {
    numbat_wasm_debug::denali_rs(
        "denali/nft-transfer-approved-token.scen.json",
        &contract_map(),
    );
}

#[test]
fn nft_transfer_non_existent_token_rs() {
    numbat_wasm_debug::denali_rs(
        "denali/nft-transfer-non-existent-token.scen.json",
        &contract_map(),
    );
}

#[test]
fn nft_transfer_not_owned_not_approved_token_rs() {
    numbat_wasm_debug::denali_rs(
        "denali/nft-transfer-not-owned-not-approved-token.scen.json",
        &contract_map(),
    );
}

#[test]
fn nft_transfer_ok_rs() {
    numbat_wasm_debug::denali_rs("denali/nft-transfer-ok.scen.json", &contract_map());
}

#[test]
fn nft_transfer_token_after_revoked_rs() {
    numbat_wasm_debug::denali_rs(
        "denali/nft-transfer-token-after-revoked.scen.json",
        &contract_map(),
    );
}

#[test]
fn nft_transfer_token_not_owner_no_approval_to_caller_rs() {
    numbat_wasm_debug::denali_rs(
        "denali/nft-transfer-token-not-owner-no-approval-to-caller.scen.json",
        &contract_map(),
    );
}

#[test]
fn nft_transfer_token_not_owner_no_approval_to_other_rs() {
    numbat_wasm_debug::denali_rs(
        "denali/nft-transfer-token-not-owner-no-approval-to-other.scen.json",
        &contract_map(),
    );
}

#[test]
fn nft_transfer_token_ok_rs() {
    numbat_wasm_debug::denali_rs("denali/nft-transfer-token-ok.scen.json", &contract_map());
}
