// #![allow(deprecated)]
//
// use bls_signature::BlsSignature;
// use bridge_setup::{
//     BridgeSetup, DummyAttributes, DUMMY_SIG, FEE_TOKEN_ID, FUNGIBLE_TOKEN_ID, NFT_TOKEN_ID,
//     TOKEN_BALANCE,
// };
// use dcdt_safe::{
//     from_sovereign::transfer_tokens::TransferTokensModule,
//     to_sovereign::{
//         create_tx::CreateTxModule, refund::RefundModule, set_tx_status::SetTxStatusModule,
//     },
// };
// use dharitri_sc::{
//     codec::multi_types::OptionalValue,
//     types::{DcdtTokenPayment, ManagedVec, MultiValueEncoded},
// };
// use dharitri_sc_scenario::{
//     managed_address, managed_biguint, managed_token_id, rust_biguint,
//     testing_framework::TxTokenTransfer,
// };
// use transaction::{
//     transaction_status::TransactionStatus, StolenFromFrameworkDcdtTokenData, Transaction,
// };
// use tx_batch_module::TxBatchModule;
//
// mod bridge_setup;
//
// #[test]
// fn init_test() {
//     let _ = BridgeSetup::new(dcdt_safe::contract_obj, fee_market::contract_obj);
// }
//
// #[test]
// fn transfer_two_tokens_to_sov_ok() {
//     let mut bridge_setup = BridgeSetup::new(dcdt_safe::contract_obj, fee_market::contract_obj);
//
//     let transfers = [
//         TxTokenTransfer {
//             token_identifier: FEE_TOKEN_ID.to_vec(),
//             nonce: 0,
//             value: rust_biguint!(TOKEN_BALANCE),
//         },
//         TxTokenTransfer {
//             token_identifier: FUNGIBLE_TOKEN_ID.to_vec(),
//             nonce: 0,
//             value: rust_biguint!(1_000),
//         },
//         TxTokenTransfer {
//             token_identifier: NFT_TOKEN_ID.to_vec(),
//             nonce: 1,
//             value: rust_biguint!(2_000),
//         },
//     ];
//
//     let dest = bridge_setup.sov_dest_addr.clone();
//
//     bridge_setup
//         .b_mock
//         .execute_dcdt_multi_transfer(
//             &bridge_setup.user,
//             &bridge_setup.bridge_wrapper,
//             &transfers,
//             |sc| {
//                 sc.deposit(managed_address!(&dest), OptionalValue::None);
//             },
//         )
//         .assert_ok();
//
//     bridge_setup
//         .b_mock
//         .execute_tx(
//             &bridge_setup.owner,
//             &bridge_setup.bridge_wrapper,
//             &rust_biguint!(0),
//             |sc| {
//                 let mut statuses = MultiValueEncoded::new();
//                 statuses.push(TransactionStatus::Executed);
//
//                 sc.set_transaction_batch_status(
//                     1,
//                     BlsSignature::new_from_bytes(&DUMMY_SIG),
//                     statuses,
//                 );
//             },
//         )
//         .assert_ok();
//
//     // fee is 100 per token
//     bridge_setup.b_mock.check_dcdt_balance(
//         &bridge_setup.user,
//         FEE_TOKEN_ID,
//         &(rust_biguint!(TOKEN_BALANCE) - rust_biguint!(200)),
//     );
//     bridge_setup.b_mock.check_dcdt_balance(
//         bridge_setup.fee_market_wrapper.address_ref(),
//         FEE_TOKEN_ID,
//         &rust_biguint!(200),
//     );
// }
//
// #[test]
// fn refund_failed_tx_to_sov() {
//     let mut bridge_setup = BridgeSetup::new(dcdt_safe::contract_obj, fee_market::contract_obj);
//
//     let transfers = [
//         TxTokenTransfer {
//             token_identifier: FEE_TOKEN_ID.to_vec(),
//             nonce: 0,
//             value: rust_biguint!(TOKEN_BALANCE),
//         },
//         TxTokenTransfer {
//             token_identifier: FUNGIBLE_TOKEN_ID.to_vec(),
//             nonce: 0,
//             value: rust_biguint!(1_000),
//         },
//         TxTokenTransfer {
//             token_identifier: NFT_TOKEN_ID.to_vec(),
//             nonce: 1,
//             value: rust_biguint!(2_000),
//         },
//     ];
//
//     let dest = bridge_setup.sov_dest_addr.clone();
//
//     bridge_setup
//         .b_mock
//         .execute_dcdt_multi_transfer(
//             &bridge_setup.user,
//             &bridge_setup.bridge_wrapper,
//             &transfers,
//             |sc| {
//                 sc.deposit(managed_address!(&dest), OptionalValue::None);
//             },
//         )
//         .assert_ok();
//
//     bridge_setup
//         .b_mock
//         .execute_tx(
//             &bridge_setup.owner,
//             &bridge_setup.bridge_wrapper,
//             &rust_biguint!(0),
//             |sc| {
//                 let mut statuses = MultiValueEncoded::new();
//                 statuses.push(TransactionStatus::Rejected);
//
//                 sc.set_transaction_batch_status(
//                     1,
//                     BlsSignature::new_from_bytes(&DUMMY_SIG),
//                     statuses,
//                 );
//             },
//         )
//         .assert_ok();
//
//     bridge_setup
//         .b_mock
//         .execute_tx(
//             &bridge_setup.user,
//             &bridge_setup.bridge_wrapper,
//             &rust_biguint!(0),
//             |sc| {
//                 sc.claim_refund(managed_token_id!(FUNGIBLE_TOKEN_ID));
//                 sc.claim_refund(managed_token_id!(NFT_TOKEN_ID));
//             },
//         )
//         .assert_ok();
//
//     bridge_setup.b_mock.check_dcdt_balance(
//         &bridge_setup.user,
//         FUNGIBLE_TOKEN_ID,
//         &rust_biguint!(TOKEN_BALANCE),
//     );
//     bridge_setup.b_mock.check_nft_balance(
//         &bridge_setup.user,
//         NFT_TOKEN_ID,
//         1,
//         &rust_biguint!(TOKEN_BALANCE),
//         Some(&DummyAttributes { dummy: 42 }),
//     );
// }
//
// #[test]
// fn transfer_token_to_and_from_sov_ok() {
//     let mut bridge_setup = BridgeSetup::new(dcdt_safe::contract_obj, fee_market::contract_obj);
//
//     let transfers = [
//         TxTokenTransfer {
//             token_identifier: FEE_TOKEN_ID.to_vec(),
//             nonce: 0,
//             value: rust_biguint!(TOKEN_BALANCE),
//         },
//         TxTokenTransfer {
//             token_identifier: FUNGIBLE_TOKEN_ID.to_vec(),
//             nonce: 0,
//             value: rust_biguint!(1_000),
//         },
//         TxTokenTransfer {
//             token_identifier: NFT_TOKEN_ID.to_vec(),
//             nonce: 1,
//             value: rust_biguint!(2_000),
//         },
//     ];
//
//     let user_addr = bridge_setup.user.clone();
//     let dest = bridge_setup.sov_dest_addr.clone();
//
//     bridge_setup
//         .b_mock
//         .execute_dcdt_multi_transfer(
//             &bridge_setup.user,
//             &bridge_setup.bridge_wrapper,
//             &transfers,
//             |sc| {
//                 sc.deposit(managed_address!(&dest), OptionalValue::None);
//             },
//         )
//         .assert_ok();
//
//     bridge_setup
//         .b_mock
//         .execute_tx(
//             &bridge_setup.owner,
//             &bridge_setup.bridge_wrapper,
//             &rust_biguint!(0),
//             |sc| {
//                 let mut statuses = MultiValueEncoded::new();
//                 statuses.push(TransactionStatus::Executed);
//
//                 sc.set_transaction_batch_status(
//                     1,
//                     BlsSignature::new_from_bytes(&DUMMY_SIG),
//                     statuses,
//                 );
//             },
//         )
//         .assert_ok();
//
//     bridge_setup
//         .b_mock
//         .execute_tx(
//             &bridge_setup.owner,
//             &bridge_setup.bridge_wrapper,
//             &rust_biguint!(0),
//             |sc| {
//                 let mut tokens = ManagedVec::new();
//                 tokens.push(DcdtTokenPayment::new(
//                     managed_token_id!(FUNGIBLE_TOKEN_ID),
//                     0,
//                     managed_biguint!(500),
//                 ));
//                 tokens.push(DcdtTokenPayment::new(
//                     managed_token_id!(NFT_TOKEN_ID),
//                     1,
//                     managed_biguint!(500),
//                 ));
//
//                 let mut token_data = ManagedVec::new();
//                 token_data.push(StolenFromFrameworkDcdtTokenData::default());
//                 token_data.push(StolenFromFrameworkDcdtTokenData::default());
//
//                 let mut transfers = MultiValueEncoded::new();
//                 transfers.push(Transaction {
//                     block_nonce: 1,
//                     nonce: 1,
//                     from: managed_address!(&dest),
//                     to: managed_address!(&user_addr),
//                     tokens,
//                     token_data,
//                     opt_transfer_data: None,
//                     is_refund_tx: false,
//                 });
//
//                 sc.batch_transfer_dcdt_token(
//                     1,
//                     BlsSignature::new_from_bytes(&DUMMY_SIG),
//                     transfers,
//                 );
//             },
//         )
//         .assert_ok();
//
//     bridge_setup.b_mock.check_dcdt_balance(
//         &bridge_setup.user,
//         FUNGIBLE_TOKEN_ID,
//         &rust_biguint!(TOKEN_BALANCE - 1_000 + 500),
//     );
//     bridge_setup.b_mock.check_nft_balance(
//         &bridge_setup.user,
//         NFT_TOKEN_ID,
//         1,
//         &rust_biguint!(TOKEN_BALANCE - 2_000 + 500),
//         Some(&DummyAttributes { dummy: 42 }),
//     );
// }
//
// #[test]
// fn transfer_token_from_sov_no_roles_refund() {
//     let mut bridge_setup = BridgeSetup::new(dcdt_safe::contract_obj, fee_market::contract_obj);
//     let user_addr = bridge_setup.user.clone();
//     let dest = bridge_setup.sov_dest_addr.clone();
//
//     bridge_setup
//         .b_mock
//         .execute_tx(
//             &bridge_setup.owner,
//             &bridge_setup.bridge_wrapper,
//             &rust_biguint!(0),
//             |sc| {
//                 let mut tokens = ManagedVec::new();
//                 tokens.push(DcdtTokenPayment::new(
//                     managed_token_id!(FUNGIBLE_TOKEN_ID),
//                     0,
//                     managed_biguint!(500),
//                 ));
//                 tokens.push(DcdtTokenPayment::new(
//                     managed_token_id!(NFT_TOKEN_ID),
//                     1,
//                     managed_biguint!(500),
//                 ));
//
//                 let mut token_data = ManagedVec::new();
//                 token_data.push(StolenFromFrameworkDcdtTokenData::default());
//                 token_data.push(StolenFromFrameworkDcdtTokenData::default());
//
//                 let mut transfers = MultiValueEncoded::new();
//                 transfers.push(Transaction {
//                     block_nonce: 1,
//                     nonce: 1,
//                     from: managed_address!(&dest),
//                     to: managed_address!(&user_addr),
//                     tokens,
//                     token_data,
//                     opt_transfer_data: None,
//                     is_refund_tx: false,
//                 });
//
//                 sc.batch_transfer_dcdt_token(
//                     1,
//                     BlsSignature::new_from_bytes(&DUMMY_SIG),
//                     transfers,
//                 );
//             },
//         )
//         .assert_ok();
//
//     // user received no tokens
//     bridge_setup.b_mock.check_dcdt_balance(
//         &bridge_setup.user,
//         FUNGIBLE_TOKEN_ID,
//         &rust_biguint!(TOKEN_BALANCE),
//     );
//     bridge_setup.b_mock.check_nft_balance(
//         &bridge_setup.user,
//         NFT_TOKEN_ID,
//         1,
//         &rust_biguint!(TOKEN_BALANCE),
//         Some(&DummyAttributes { dummy: 42 }),
//     );
//
//     // set block nonce in the future so batch is "final"
//     bridge_setup.b_mock.set_block_nonce(20);
//
//     bridge_setup
//         .b_mock
//         .execute_tx(
//             &bridge_setup.owner,
//             &bridge_setup.bridge_wrapper,
//             &rust_biguint!(0),
//             |sc| {
//                 // transactions were converted into Numbat -> Sov for refunding
//                 let opt_val = sc.get_current_tx_batch();
//                 assert!(opt_val.is_some());
//             },
//         )
//         .assert_ok();
// }
//
// #[test]
// fn not_enough_fee_test() {
//     let mut bridge_setup = BridgeSetup::new(dcdt_safe::contract_obj, fee_market::contract_obj);
//
//     let transfers = [
//         TxTokenTransfer {
//             token_identifier: FEE_TOKEN_ID.to_vec(),
//             nonce: 0,
//             value: rust_biguint!(10),
//         },
//         TxTokenTransfer {
//             token_identifier: FUNGIBLE_TOKEN_ID.to_vec(),
//             nonce: 0,
//             value: rust_biguint!(1_000),
//         },
//         TxTokenTransfer {
//             token_identifier: NFT_TOKEN_ID.to_vec(),
//             nonce: 1,
//             value: rust_biguint!(2_000),
//         },
//     ];
//
//     let dest = bridge_setup.sov_dest_addr.clone();
//
//     bridge_setup
//         .b_mock
//         .execute_dcdt_multi_transfer(
//             &bridge_setup.user,
//             &bridge_setup.bridge_wrapper,
//             &transfers,
//             |sc| {
//                 sc.deposit(managed_address!(&dest), OptionalValue::None);
//             },
//         )
//         .assert_user_error("Payment does not cover fee");
// }
