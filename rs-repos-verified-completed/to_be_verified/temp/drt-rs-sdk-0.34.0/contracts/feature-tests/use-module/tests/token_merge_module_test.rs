use std::convert::TryFrom;

use numbat_wasm::{
    api::ManagedTypeApi,
    arrayvec::ArrayVec,
    contract_base::ContractBase,
    numbat_codec::Empty,
    storage::mappers::StorageTokenWrapper,
    types::{DcdtLocalRole, DcdtTokenPayment, ManagedBuffer, ManagedVec, MultiValueEncoded},
};
use numbat_wasm_debug::{
    managed_address, managed_biguint, managed_buffer, managed_token_id, rust_biguint,
    testing_framework::BlockchainStateWrapper, tx_mock::TxInputDCDT, DebugApi,
};
use numbat_wasm_modules::token_merge::{
    merged_token_attributes::{TokenAttributesInstance, MAX_MERGED_TOKENS},
    TokenMergeModule,
};

static MERGED_TOKEN_ID: &[u8] = b"MERGED-123456";
static NFT_TOKEN_ID: &[u8] = b"NFT-123456";
static FUNGIBLE_TOKEN_ID: &[u8] = b"FUN-123456";

const NFT_AMOUNT: u64 = 1;
const FUNGIBLE_AMOUNT: u64 = 100;

const FIRST_NFT_NONCE: u64 = 5;
static FIRST_ATTRIBUTES: &[u8] = b"FirstAttributes";
const FIRST_ROYALTIES: u64 = 1_000;
static FIRST_URIS: &[&[u8]] = &[b"FirstUri", b"SecondUri"];

const SECOND_NFT_NONCE: u64 = 7;
static SECOND_ATTRIBUTES: &[u8] = b"SecondAttributes";
const SECOND_ROYALTIES: u64 = 5_000;
static SECOND_URIS: &[&[u8]] = &[b"cool.com/safe_file.exe"];

#[test]
fn test_token_merge() {
    let rust_zero = rust_biguint!(0);
    let mut b_mock = BlockchainStateWrapper::new();
    let owner = b_mock.create_user_account(&rust_zero);
    let user = b_mock.create_user_account(&rust_zero);
    let merging_sc = b_mock.create_sc_account(
        &rust_zero,
        Some(&owner),
        use_module::contract_obj,
        "wasm path",
    );

    b_mock
        .execute_tx(&owner, &merging_sc, &rust_zero, |sc| {
            sc.merged_token()
                .set_token_id(&managed_token_id!(MERGED_TOKEN_ID));
            let _ = sc
                .mergeable_tokens_whitelist()
                .insert(managed_token_id!(NFT_TOKEN_ID));
            let _ = sc
                .mergeable_tokens_whitelist()
                .insert(managed_token_id!(FUNGIBLE_TOKEN_ID));
        })
        .assert_ok();
    b_mock.set_dcdt_local_roles(
        merging_sc.address_ref(),
        MERGED_TOKEN_ID,
        &[DcdtLocalRole::NftCreate, DcdtLocalRole::NftBurn],
    );

    b_mock.set_dcdt_balance(&user, FUNGIBLE_TOKEN_ID, &rust_biguint!(FUNGIBLE_AMOUNT));
    b_mock.set_nft_balance_all_properties(
        &user,
        NFT_TOKEN_ID,
        FIRST_NFT_NONCE,
        &rust_biguint!(NFT_AMOUNT),
        &FIRST_ATTRIBUTES.to_vec(),
        FIRST_ROYALTIES,
        None,
        None,
        None,
        &uris_to_vec(FIRST_URIS),
    );
    b_mock.set_nft_balance_all_properties(
        &user,
        NFT_TOKEN_ID,
        SECOND_NFT_NONCE,
        &rust_biguint!(NFT_AMOUNT),
        &SECOND_ATTRIBUTES.to_vec(),
        SECOND_ROYALTIES,
        None,
        None,
        None,
        &uris_to_vec(SECOND_URIS),
    );

    // merge two NFTs
    let nft_transfers = vec![
        TxInputDCDT {
            token_identifier: NFT_TOKEN_ID.to_vec(),
            nonce: FIRST_NFT_NONCE,
            value: rust_biguint!(NFT_AMOUNT),
        },
        TxInputDCDT {
            token_identifier: NFT_TOKEN_ID.to_vec(),
            nonce: SECOND_NFT_NONCE,
            value: rust_biguint!(NFT_AMOUNT),
        },
    ];
    b_mock
        .execute_dcdt_multi_transfer(&user, &merging_sc, &nft_transfers, |sc| {
            let merged_token = sc.merge_tokens();
            assert_eq!(
                merged_token.token_identifier,
                managed_token_id!(MERGED_TOKEN_ID)
            );
            assert_eq!(merged_token.token_nonce, 1);
            assert_eq!(merged_token.amount, managed_biguint!(NFT_AMOUNT));

            let merged_token_data = sc.blockchain().get_dcdt_token_data(
                &managed_address!(&user),
                &managed_token_id!(MERGED_TOKEN_ID),
                1,
            );

            let mut expected_attributes = ArrayVec::new();
            expected_attributes.push(TokenAttributesInstance {
                original_token_id_raw: ArrayVec::try_from(NFT_TOKEN_ID).unwrap(),
                original_token_nonce: FIRST_NFT_NONCE,
                original_token_amount: managed_biguint!(NFT_AMOUNT),
                attributes_raw: managed_buffer!(FIRST_ATTRIBUTES),
                royalties: managed_biguint!(FIRST_ROYALTIES),
                uris: uris_to_managed_vec(FIRST_URIS),
            });
            expected_attributes.push(TokenAttributesInstance {
                original_token_id_raw: ArrayVec::try_from(NFT_TOKEN_ID).unwrap(),
                original_token_nonce: SECOND_NFT_NONCE,
                original_token_amount: managed_biguint!(NFT_AMOUNT),
                attributes_raw: managed_buffer!(SECOND_ATTRIBUTES),
                royalties: managed_biguint!(SECOND_ROYALTIES),
                uris: uris_to_managed_vec(SECOND_URIS),
            });

            let decoded_attributes = merged_token_data
                .decode_attributes::<ArrayVec<TokenAttributesInstance<DebugApi>, MAX_MERGED_TOKENS>>();
            assert_eq!(decoded_attributes, expected_attributes);

            let mut expected_uris = ManagedVec::new();
            for uri in FIRST_URIS {
                expected_uris.push(managed_buffer!(*uri));
            }
            for uri in SECOND_URIS {
                expected_uris.push(managed_buffer!(*uri));
            }

            assert_eq!(merged_token_data.uris, expected_uris);

            assert_eq!(
                merged_token_data.royalties,
                managed_biguint!(SECOND_ROYALTIES)
            );
        })
        .assert_ok();

    b_mock.check_nft_balance(
        &user,
        MERGED_TOKEN_ID,
        1,
        &rust_biguint!(NFT_AMOUNT),
        Option::<&Empty>::None,
    );
    b_mock.check_nft_balance(
        merging_sc.address_ref(),
        NFT_TOKEN_ID,
        FIRST_NFT_NONCE,
        &rust_biguint!(NFT_AMOUNT),
        Option::<&Empty>::None,
    );
    b_mock.check_nft_balance(
        merging_sc.address_ref(),
        NFT_TOKEN_ID,
        SECOND_NFT_NONCE,
        &rust_biguint!(NFT_AMOUNT),
        Option::<&Empty>::None,
    );

    // split nfts
    b_mock
        .execute_dcdt_transfer(
            &user,
            &merging_sc,
            MERGED_TOKEN_ID,
            1,
            &rust_biguint!(NFT_AMOUNT),
            |sc| {
                let output_tokens = sc.split_tokens();
                let mut expected_output_tokens = ManagedVec::new();
                expected_output_tokens.push(DcdtTokenPayment::new(
                    managed_token_id!(NFT_TOKEN_ID),
                    FIRST_NFT_NONCE,
                    managed_biguint!(NFT_AMOUNT),
                ));
                expected_output_tokens.push(DcdtTokenPayment::new(
                    managed_token_id!(NFT_TOKEN_ID),
                    SECOND_NFT_NONCE,
                    managed_biguint!(NFT_AMOUNT),
                ));
                assert_eq!(output_tokens.to_vec(), expected_output_tokens);
            },
        )
        .assert_ok();

    b_mock.check_nft_balance(
        &user,
        NFT_TOKEN_ID,
        FIRST_NFT_NONCE,
        &rust_biguint!(NFT_AMOUNT),
        Option::<&Empty>::None,
    );
    b_mock.check_nft_balance(
        &user,
        NFT_TOKEN_ID,
        SECOND_NFT_NONCE,
        &rust_biguint!(NFT_AMOUNT),
        Option::<&Empty>::None,
    );

    // merge the NFT with fungible
    let dcdt_transfers = vec![
        TxInputDCDT {
            token_identifier: NFT_TOKEN_ID.to_vec(),
            nonce: FIRST_NFT_NONCE,
            value: rust_biguint!(NFT_AMOUNT),
        },
        TxInputDCDT {
            token_identifier: FUNGIBLE_TOKEN_ID.to_vec(),
            nonce: 0,
            value: rust_biguint!(FUNGIBLE_AMOUNT),
        },
    ];
    b_mock
        .execute_dcdt_multi_transfer(&user, &merging_sc, &dcdt_transfers, |sc| {
            let merged_token = sc.merge_tokens();
            assert_eq!(
                merged_token.token_identifier,
                managed_token_id!(MERGED_TOKEN_ID)
            );
            assert_eq!(merged_token.token_nonce, 2);
            assert_eq!(merged_token.amount, managed_biguint!(NFT_AMOUNT));

            let merged_token_data = sc.blockchain().get_dcdt_token_data(
                &managed_address!(&user),
                &managed_token_id!(MERGED_TOKEN_ID),
                2,
            );

            let mut expected_attributes = ArrayVec::new();
            expected_attributes.push(TokenAttributesInstance {
                original_token_id_raw: ArrayVec::try_from(FUNGIBLE_TOKEN_ID).unwrap(),
                original_token_nonce: 0,
                original_token_amount: managed_biguint!(FUNGIBLE_AMOUNT),
                attributes_raw: ManagedBuffer::new(),
                royalties: managed_biguint!(0),
                uris: ManagedVec::new(),
            });
            expected_attributes.push(TokenAttributesInstance {
                original_token_id_raw: ArrayVec::try_from(NFT_TOKEN_ID).unwrap(),
                original_token_nonce: FIRST_NFT_NONCE,
                original_token_amount: managed_biguint!(NFT_AMOUNT),
                attributes_raw: managed_buffer!(FIRST_ATTRIBUTES),
                royalties: managed_biguint!(FIRST_ROYALTIES),
                uris: uris_to_managed_vec(FIRST_URIS),
            });

            let decoded_attributes = merged_token_data
                .decode_attributes::<ArrayVec<TokenAttributesInstance<DebugApi>, MAX_MERGED_TOKENS>>();
            assert_eq!(decoded_attributes, expected_attributes);

            let mut expected_uris = ManagedVec::new();
            for uri in FIRST_URIS {
                expected_uris.push(managed_buffer!(*uri));
            }

            assert_eq!(merged_token_data.uris, expected_uris);

            assert_eq!(
                merged_token_data.royalties,
                managed_biguint!(FIRST_ROYALTIES)
            );
        })
        .assert_ok();

    b_mock.check_nft_balance(
        &user,
        MERGED_TOKEN_ID,
        2,
        &rust_biguint!(NFT_AMOUNT),
        Option::<&Empty>::None,
    );

    // merge NFT with an already merged token
    let combined_transfers = vec![
        TxInputDCDT {
            token_identifier: NFT_TOKEN_ID.to_vec(),
            nonce: SECOND_NFT_NONCE,
            value: rust_biguint!(NFT_AMOUNT),
        },
        TxInputDCDT {
            token_identifier: MERGED_TOKEN_ID.to_vec(),
            nonce: 2,
            value: rust_biguint!(NFT_AMOUNT),
        },
    ];
    b_mock
            .execute_dcdt_multi_transfer(&user, &merging_sc, &combined_transfers, |sc| {
                let merged_token = sc.merge_tokens();
                assert_eq!(
                    merged_token.token_identifier,
                    managed_token_id!(MERGED_TOKEN_ID)
                );
                assert_eq!(merged_token.token_nonce, 3);
                assert_eq!(merged_token.amount, managed_biguint!(NFT_AMOUNT));

                let merged_token_data = sc.blockchain().get_dcdt_token_data(
                    &managed_address!(&user),
                    &managed_token_id!(MERGED_TOKEN_ID),
                    3,
                );

                let mut expected_attributes = ArrayVec::new();
                expected_attributes.push(TokenAttributesInstance {
                    original_token_id_raw: ArrayVec::try_from(FUNGIBLE_TOKEN_ID).unwrap(),
                    original_token_nonce: 0,
                    original_token_amount: managed_biguint!(FUNGIBLE_AMOUNT),
                    attributes_raw: ManagedBuffer::new(),
                    royalties: managed_biguint!(0),
                    uris: ManagedVec::new(),
                });
                expected_attributes.push(TokenAttributesInstance {
                    original_token_id_raw: ArrayVec::try_from(NFT_TOKEN_ID).unwrap(),
                    original_token_nonce: FIRST_NFT_NONCE,
                    original_token_amount: managed_biguint!(NFT_AMOUNT),
                    attributes_raw: managed_buffer!(FIRST_ATTRIBUTES),
                    royalties: managed_biguint!(FIRST_ROYALTIES),
                    uris: uris_to_managed_vec(FIRST_URIS),
                });
                expected_attributes.push(TokenAttributesInstance {
                    original_token_id_raw: ArrayVec::try_from(NFT_TOKEN_ID).unwrap(),
                    original_token_nonce: SECOND_NFT_NONCE,
                    original_token_amount: managed_biguint!(NFT_AMOUNT),
                    attributes_raw: managed_buffer!(SECOND_ATTRIBUTES),
                    royalties: managed_biguint!(SECOND_ROYALTIES),
                    uris: uris_to_managed_vec(SECOND_URIS),
                });

                let decoded_attributes = merged_token_data
                    .decode_attributes::<ArrayVec<TokenAttributesInstance<DebugApi>, MAX_MERGED_TOKENS>>();
                assert_eq!(decoded_attributes, expected_attributes);

                let mut expected_uris = ManagedVec::new();
                for uri in FIRST_URIS {
                    expected_uris.push(managed_buffer!(*uri));
                }
                for uri in SECOND_URIS {
                    expected_uris.push(managed_buffer!(*uri));
                }

                assert_eq!(merged_token_data.uris, expected_uris);

                assert_eq!(
                    merged_token_data.royalties,
                    managed_biguint!(SECOND_ROYALTIES)
                );
            })
            .assert_ok();

    b_mock.check_nft_balance(
        &user,
        MERGED_TOKEN_ID,
        3,
        &rust_biguint!(NFT_AMOUNT),
        Option::<&Empty>::None,
    );

    // split the 3 merged tokens
    b_mock
        .execute_dcdt_transfer(
            &user,
            &merging_sc,
            MERGED_TOKEN_ID,
            3,
            &rust_biguint!(NFT_AMOUNT),
            |sc| {
                let output_tokens = sc.split_tokens();
                let mut expected_output_tokens = ManagedVec::new();
                expected_output_tokens.push(DcdtTokenPayment::new(
                    managed_token_id!(FUNGIBLE_TOKEN_ID),
                    0,
                    managed_biguint!(FUNGIBLE_AMOUNT),
                ));
                expected_output_tokens.push(DcdtTokenPayment::new(
                    managed_token_id!(NFT_TOKEN_ID),
                    FIRST_NFT_NONCE,
                    managed_biguint!(NFT_AMOUNT),
                ));
                expected_output_tokens.push(DcdtTokenPayment::new(
                    managed_token_id!(NFT_TOKEN_ID),
                    SECOND_NFT_NONCE,
                    managed_biguint!(NFT_AMOUNT),
                ));

                assert_eq!(output_tokens.to_vec(), expected_output_tokens);
            },
        )
        .assert_ok();

    b_mock.check_nft_balance(
        &user,
        NFT_TOKEN_ID,
        FIRST_NFT_NONCE,
        &rust_biguint!(NFT_AMOUNT),
        Option::<&Empty>::None,
    );
    b_mock.check_nft_balance(
        &user,
        NFT_TOKEN_ID,
        SECOND_NFT_NONCE,
        &rust_biguint!(NFT_AMOUNT),
        Option::<&Empty>::None,
    );
    b_mock.check_dcdt_balance(&user, FUNGIBLE_TOKEN_ID, &rust_biguint!(FUNGIBLE_AMOUNT));
}

#[test]
fn partial_split_test() {
    let rust_zero = rust_biguint!(0);
    let mut b_mock = BlockchainStateWrapper::new();
    let owner = b_mock.create_user_account(&rust_zero);
    let user = b_mock.create_user_account(&rust_zero);
    let merging_sc = b_mock.create_sc_account(
        &rust_zero,
        Some(&owner),
        use_module::contract_obj,
        "wasm path",
    );

    b_mock
        .execute_tx(&owner, &merging_sc, &rust_zero, |sc| {
            sc.merged_token()
                .set_token_id(&managed_token_id!(MERGED_TOKEN_ID));
            let _ = sc
                .mergeable_tokens_whitelist()
                .insert(managed_token_id!(NFT_TOKEN_ID));
            let _ = sc
                .mergeable_tokens_whitelist()
                .insert(managed_token_id!(FUNGIBLE_TOKEN_ID));
        })
        .assert_ok();
    b_mock.set_dcdt_local_roles(
        merging_sc.address_ref(),
        MERGED_TOKEN_ID,
        &[DcdtLocalRole::NftCreate, DcdtLocalRole::NftBurn],
    );

    b_mock.set_dcdt_balance(&user, FUNGIBLE_TOKEN_ID, &rust_biguint!(FUNGIBLE_AMOUNT));
    b_mock.set_nft_balance_all_properties(
        &user,
        NFT_TOKEN_ID,
        FIRST_NFT_NONCE,
        &rust_biguint!(NFT_AMOUNT),
        &FIRST_ATTRIBUTES.to_vec(),
        FIRST_ROYALTIES,
        None,
        None,
        None,
        &uris_to_vec(FIRST_URIS),
    );
    b_mock.set_nft_balance_all_properties(
        &user,
        NFT_TOKEN_ID,
        SECOND_NFT_NONCE,
        &rust_biguint!(NFT_AMOUNT),
        &SECOND_ATTRIBUTES.to_vec(),
        SECOND_ROYALTIES,
        None,
        None,
        None,
        &uris_to_vec(SECOND_URIS),
    );

    // merge 2 NFTs and a fungible token
    let dcdt_transfers = vec![
        TxInputDCDT {
            token_identifier: NFT_TOKEN_ID.to_vec(),
            nonce: FIRST_NFT_NONCE,
            value: rust_biguint!(NFT_AMOUNT),
        },
        TxInputDCDT {
            token_identifier: NFT_TOKEN_ID.to_vec(),
            nonce: SECOND_NFT_NONCE,
            value: rust_biguint!(NFT_AMOUNT),
        },
        TxInputDCDT {
            token_identifier: FUNGIBLE_TOKEN_ID.to_vec(),
            nonce: 0,
            value: rust_biguint!(FUNGIBLE_AMOUNT),
        },
    ];
    b_mock
        .execute_dcdt_multi_transfer(&user, &merging_sc, &dcdt_transfers, |sc| {
            let merged_token = sc.merge_tokens();
            assert_eq!(
                merged_token.token_identifier,
                managed_token_id!(MERGED_TOKEN_ID)
            );
            assert_eq!(merged_token.token_nonce, 1);
            assert_eq!(merged_token.amount, managed_biguint!(NFT_AMOUNT));

            let merged_token_data = sc.blockchain().get_dcdt_token_data(
                &managed_address!(&user),
                &managed_token_id!(MERGED_TOKEN_ID),
                1,
            );

            let mut expected_attributes = ArrayVec::new();
            expected_attributes.push(TokenAttributesInstance {
                original_token_id_raw: ArrayVec::try_from(FUNGIBLE_TOKEN_ID).unwrap(),
                original_token_nonce: 0,
                original_token_amount: managed_biguint!(FUNGIBLE_AMOUNT),
                attributes_raw: ManagedBuffer::new(),
                royalties: managed_biguint!(0),
                uris: ManagedVec::new(),
            });
            expected_attributes.push(TokenAttributesInstance {
                original_token_id_raw: ArrayVec::try_from(NFT_TOKEN_ID).unwrap(),
                original_token_nonce: FIRST_NFT_NONCE,
                original_token_amount: managed_biguint!(NFT_AMOUNT),
                attributes_raw: managed_buffer!(FIRST_ATTRIBUTES),
                royalties: managed_biguint!(FIRST_ROYALTIES),
                uris: uris_to_managed_vec(FIRST_URIS),
            });
            expected_attributes.push(TokenAttributesInstance {
                original_token_id_raw: ArrayVec::try_from(NFT_TOKEN_ID).unwrap(),
                original_token_nonce: SECOND_NFT_NONCE,
                original_token_amount: managed_biguint!(NFT_AMOUNT),
                attributes_raw: managed_buffer!(SECOND_ATTRIBUTES),
                royalties: managed_biguint!(SECOND_ROYALTIES),
                uris: uris_to_managed_vec(SECOND_URIS),
            });

            let decoded_attributes = merged_token_data
                .decode_attributes::<ArrayVec<TokenAttributesInstance<DebugApi>, MAX_MERGED_TOKENS>>();
            assert_eq!(decoded_attributes, expected_attributes);
        })
        .assert_ok();

    // split part of the fungible token
    b_mock
        .execute_dcdt_transfer(
            &user,
            &merging_sc,
            MERGED_TOKEN_ID,
            1,
            &rust_biguint!(NFT_AMOUNT),
            |sc| {
                let mut tokens_to_remove = MultiValueEncoded::new();
                tokens_to_remove.push(DcdtTokenPayment::new(
                    managed_token_id!(FUNGIBLE_TOKEN_ID),
                    0,
                    managed_biguint!(40),
                ));
                let output_payments = sc.split_token_partial(tokens_to_remove);

                let mut expected_output_payments = ManagedVec::new();
                expected_output_payments.push(DcdtTokenPayment::new(
                    managed_token_id!(FUNGIBLE_TOKEN_ID),
                    0,
                    managed_biguint!(40),
                ));
                expected_output_payments.push(DcdtTokenPayment::new(
                    managed_token_id!(MERGED_TOKEN_ID),
                    2,
                    managed_biguint!(NFT_AMOUNT),
                ));
                assert_eq!(output_payments.to_vec(), expected_output_payments);
            },
        )
        .assert_ok();

    // fully remove instance
    b_mock
        .execute_dcdt_transfer(
            &user,
            &merging_sc,
            MERGED_TOKEN_ID,
            2,
            &rust_biguint!(NFT_AMOUNT),
            |sc| {
                let mut tokens_to_remove = MultiValueEncoded::new();
                tokens_to_remove.push(DcdtTokenPayment::new(
                    managed_token_id!(NFT_TOKEN_ID),
                    FIRST_NFT_NONCE,
                    managed_biguint!(NFT_AMOUNT),
                ));
                let output_payments = sc.split_token_partial(tokens_to_remove);

                let mut expected_output_payments = ManagedVec::new();
                expected_output_payments.push(DcdtTokenPayment::new(
                    managed_token_id!(NFT_TOKEN_ID),
                    FIRST_NFT_NONCE,
                    managed_biguint!(NFT_AMOUNT),
                ));
                expected_output_payments.push(DcdtTokenPayment::new(
                    managed_token_id!(MERGED_TOKEN_ID),
                    3,
                    managed_biguint!(NFT_AMOUNT),
                ));
                assert_eq!(output_payments.to_vec(), expected_output_payments);

                // check newest token attributes
                let merged_token_data = sc.blockchain().get_dcdt_token_data(
                    &managed_address!(&user),
                    &managed_token_id!(MERGED_TOKEN_ID),
                    3,
                );

                let mut expected_attributes = ArrayVec::new();
                expected_attributes.push(TokenAttributesInstance {
                    original_token_id_raw: ArrayVec::try_from(FUNGIBLE_TOKEN_ID).unwrap(),
                    original_token_nonce: 0,
                    original_token_amount: managed_biguint!(FUNGIBLE_AMOUNT - 40),
                    attributes_raw: ManagedBuffer::new(),
                    royalties: managed_biguint!(0),
                    uris: ManagedVec::new(),
                });
                expected_attributes.push(TokenAttributesInstance {
                    original_token_id_raw: ArrayVec::try_from(NFT_TOKEN_ID).unwrap(),
                    original_token_nonce: SECOND_NFT_NONCE,
                    original_token_amount: managed_biguint!(NFT_AMOUNT),
                    attributes_raw: managed_buffer!(SECOND_ATTRIBUTES),
                    royalties: managed_biguint!(SECOND_ROYALTIES),
                    uris: uris_to_managed_vec(SECOND_URIS),
                });

                let decoded_attributes = merged_token_data
                    .decode_attributes::<ArrayVec<TokenAttributesInstance<DebugApi>, MAX_MERGED_TOKENS>>();
                assert_eq!(decoded_attributes, expected_attributes);

                let mut expected_uris = ManagedVec::new();
                for uri in SECOND_URIS {
                    expected_uris.push(managed_buffer!(*uri));
                }

                assert_eq!(merged_token_data.uris, expected_uris);

                assert_eq!(
                    merged_token_data.royalties,
                    managed_biguint!(SECOND_ROYALTIES)
                );
            },
        )
        .assert_ok();
}

fn uris_to_vec(uris: &[&[u8]]) -> Vec<Vec<u8>> {
    let mut out = Vec::new();
    for uri in uris {
        out.push((*uri).to_vec());
    }

    out
}

fn uris_to_managed_vec<M: ManagedTypeApi>(uris: &[&[u8]]) -> ManagedVec<M, ManagedBuffer<M>> {
    let mut out = ManagedVec::new();
    for uri in uris {
        out.push(ManagedBuffer::new_from_bytes(*uri));
    }

    out
}
