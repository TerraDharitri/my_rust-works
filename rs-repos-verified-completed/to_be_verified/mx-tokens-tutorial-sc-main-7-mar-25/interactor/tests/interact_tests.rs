use dharitri_sc_snippets::imports::*;
use rust_interact::{ContractInteract, MockAttr};

// Simple deploy test that runs on the real blockchain configuration.
// In order for this test to work, make sure that the `config.toml` file contains the real blockchain config (or choose it manually)
// Can be run with `sc-meta test`.
#[tokio::test]
#[ignore = "run on demand, relies on real blockchain state"]
async fn fungible_test() {
    let mut interactor = ContractInteract::new().await;

    interactor.deploy().await;

    let initial_supply = RustBigUint::from(100u64);
    interactor
        .issue_fungible_token_id("TESTTOKEN", "TEST", initial_supply)
        .await;

    interactor.last_issued_token_id().await;

    let roles = vec![DcdtLocalRole::Mint];
    interactor.add_roles(roles).await;

    interactor
        .add_quantity(0u64, RustBigUint::from(10_000u64))
        .await;
}

#[tokio::test]
#[ignore = "run on demand, relies on real blockchain state"]
async fn nft_test() {
    let mut interactor = ContractInteract::new().await;

    interactor.deploy().await;
    interactor.issue_nft_token_id("TESTTOKEN", "TEST").await;
    interactor.last_issued_token_id().await;

    let roles = vec![DcdtLocalRole::NftCreate];
    interactor.add_roles(roles).await;

    let _last_nft_nonce = interactor
        .mint_nft(
            RustBigUint::from(1u64),
            "TESTNFT".to_string(),
            RustBigUint::from(10u64),
            String::new(),
            MockAttr {},
            vec![],
        )
        .await;
}

#[tokio::test]
#[ignore = "run on demand, relies on real blockchain state"]
async fn sft_test() {
    let mut interactor = ContractInteract::new().await;

    interactor.deploy().await;
    interactor.issue_sft_token_id("TESTTOKEN", "TEST").await;
    interactor.last_issued_token_id().await;

    let roles = vec![DcdtLocalRole::NftCreate, DcdtLocalRole::NftAddQuantity];
    interactor.add_roles(roles).await;

    let last_sft_nonce = interactor
        .mint_nft(
            RustBigUint::from(1u64),
            "TESTSFT".to_string(),
            RustBigUint::from(10u64),
            String::new(),
            MockAttr {},
            vec![],
        )
        .await;

    interactor
        .add_quantity(last_sft_nonce, RustBigUint::from(545u64))
        .await;
}

#[tokio::test]
#[ignore = "run on demand, relies on real blockchain state"]
async fn full_scenario() {
    let mut interactor = ContractInteract::new().await;

    interactor.deploy().await;

    // FUNGIBLE
    let initial_supply = RustBigUint::from(100u64);
    interactor
        .issue_fungible_token_id("TESTTOKEN", "TEST", initial_supply)
        .await;

    interactor.last_issued_token_id().await;

    let roles = vec![DcdtLocalRole::Mint];
    interactor.add_roles(roles).await;

    interactor
        .add_quantity(0u64, RustBigUint::from(10_000u64))
        .await;

    // SFT
    interactor.issue_sft_token_id("TESTTOKEN", "TEST").await;
    interactor.last_issued_token_id().await;

    let roles = vec![DcdtLocalRole::NftCreate, DcdtLocalRole::NftAddQuantity];
    interactor.add_roles(roles).await;

    let last_sft_nonce = interactor
        .mint_nft(
            RustBigUint::from(1u64),
            "TESTSFT".to_string(),
            RustBigUint::from(10u64),
            String::new(),
            MockAttr {},
            vec![],
        )
        .await;

    interactor
        .add_quantity(last_sft_nonce, RustBigUint::from(545u64))
        .await;

    // NFT
    interactor.issue_nft_token_id("TESTTOKEN", "TEST").await;
    interactor.last_issued_token_id().await;

    let roles = vec![DcdtLocalRole::NftCreate];
    interactor.add_roles(roles).await;

    let _last_nft_nonce = interactor
        .mint_nft(
            RustBigUint::from(1u64),
            "TESTNFT".to_string(),
            RustBigUint::from(10u64),
            String::new(),
            MockAttr {},
            vec![],
        )
        .await;
}
