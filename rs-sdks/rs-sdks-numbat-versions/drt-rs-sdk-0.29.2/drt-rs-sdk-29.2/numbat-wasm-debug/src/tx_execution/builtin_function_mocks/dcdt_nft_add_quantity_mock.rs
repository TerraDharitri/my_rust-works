use numbat_wasm::{
    api::DCDT_NFT_ADD_QUANTITY_FUNC_NAME,
    numbat_codec::{top_encode_to_vec_u8, TopDecode},
};
use num_bigint::BigUint;

use crate::{
    tx_mock::{BlockchainUpdate, TxCache, TxInput, TxLog, TxResult, TxResultCalls},
    world_mock::DcdtInstanceMetadata,
};

pub fn execute_nft_add_quantity(
    tx_input: TxInput,
    tx_cache: TxCache,
) -> (TxResult, BlockchainUpdate) {
    if tx_input.args.len() != 3 {
        let err_result =
            TxResult::from_vm_error("DCDTNFTAddQuantity expects 3 arguments".to_string());
        return (err_result, BlockchainUpdate::empty());
    }

    let token_identifier = tx_input.args[0].clone();
    let nonce = u64::top_decode(tx_input.args[1].as_slice()).unwrap();
    let value = BigUint::from_bytes_be(tx_input.args[2].as_slice());

    tx_cache.increase_dcdt_balance(
        &tx_input.to,
        &token_identifier,
        nonce,
        &value,
        DcdtInstanceMetadata::default(),
    );

    let dcdt_nft_create_log = TxLog {
        address: tx_input.from,
        endpoint: DCDT_NFT_ADD_QUANTITY_FUNC_NAME.to_vec(),
        topics: vec![
            token_identifier.to_vec(),
            top_encode_to_vec_u8(&nonce).unwrap(),
            value.to_bytes_be(),
        ],
        data: vec![],
    };

    let tx_result = TxResult {
        result_status: 0,
        result_message: String::new(),
        result_values: Vec::new(),
        result_logs: vec![dcdt_nft_create_log],
        result_calls: TxResultCalls::empty(),
    };

    (tx_result, tx_cache.into_blockchain_updates())
}
