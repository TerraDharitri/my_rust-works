use crate::num_bigint::BigUint;
use numbat_wasm::{
    api::DCDT_NFT_CREATE_FUNC_NAME,
    numbat_codec::{top_encode_to_vec_u8, TopDecode},
};

use crate::{
    tx_mock::{BlockchainUpdate, TxCache, TxInput, TxLog, TxResult, TxResultCalls},
    world_mock::{DcdtInstance, DcdtInstanceMetadata},
};

pub fn execute_dcdt_nft_create(
    tx_input: TxInput,
    tx_cache: TxCache,
) -> (TxResult, BlockchainUpdate) {
    if tx_input.args.len() < 7 {
        let err_result = TxResult::from_vm_error("DCDTNFTCreate too few arguments".to_string());
        return (err_result, BlockchainUpdate::empty());
    }
    assert!(
        tx_input.to == tx_input.from,
        "DCDTNFTCreate expects that to == from"
    );

    let token_identifier = tx_input.args[0].as_slice();
    let amount = BigUint::from_bytes_be(tx_input.args[1].as_slice());
    let name = tx_input.args[2].clone();
    let royalties = u64::top_decode(tx_input.args[3].as_slice()).unwrap();
    let hash = tx_input.args[4].clone();
    let attributes = tx_input.args[5].clone();
    let uri = tx_input.args[6].clone();

    let new_nonce = tx_cache.with_account_mut(&tx_input.to, |account| {
        let dcdt_data = account
            .dcdt
            .get_mut_by_identifier(token_identifier)
            .unwrap_or_else(|| panic!("DCDTNFTCreate unexpected token identifier"));
        dcdt_data.last_nonce += 1;
        dcdt_data.instances.push_instance(DcdtInstance {
            nonce: dcdt_data.last_nonce,
            balance: amount.clone(),
            metadata: DcdtInstanceMetadata {
                name,
                creator: Some(tx_input.from.clone()),
                royalties,
                hash: Some(hash),
                uri: vec![uri],
                attributes,
            },
        });

        dcdt_data.last_nonce
    });

    let dcdt_nft_create_log = TxLog {
        address: tx_input.from.clone(),
        endpoint: DCDT_NFT_CREATE_FUNC_NAME.to_vec(),
        topics: vec![
            token_identifier.to_vec(),
            top_encode_to_vec_u8(&new_nonce).unwrap(),
            amount.to_bytes_be(),
            Vec::new(), // in actuality this should contain the fully marshalled DCDT data
        ],
        data: vec![],
    };

    let tx_result = TxResult {
        result_status: 0,
        result_message: String::new(),
        result_values: vec![top_encode_to_vec_u8(&new_nonce).unwrap()],
        result_logs: vec![dcdt_nft_create_log],
        result_calls: TxResultCalls::empty(),
    };

    (tx_result, tx_cache.into_blockchain_updates())
}
