use crate::num_bigint::BigUint;
use numbat_wasm::{
    api::DCDT_NFT_BURN_FUNC_NAME,
    numbat_codec::{top_encode_to_vec_u8, TopDecode},
};

use crate::tx_mock::{BlockchainUpdate, TxCache, TxInput, TxLog, TxResult};

use super::super::builtin_func_trait::BuiltinFunction;

pub struct DCDTNftBurn;

impl BuiltinFunction for DCDTNftBurn {
    fn name(&self) -> &str {
        DCDT_NFT_BURN_FUNC_NAME
    }

    fn execute(&self, tx_input: TxInput, tx_cache: TxCache) -> (TxResult, BlockchainUpdate) {
        if tx_input.args.len() != 3 {
            let err_result = TxResult::from_vm_error("DCDTNFTBurn expects 3 arguments".to_string());
            return (err_result, BlockchainUpdate::empty());
        }

        let token_identifier = tx_input.args[0].clone();
        let nonce = u64::top_decode(tx_input.args[1].as_slice()).unwrap();
        let value = BigUint::from_bytes_be(tx_input.args[2].as_slice());

        tx_cache.subtract_dcdt_balance(&tx_input.to, &token_identifier, nonce, &value);

        let dcdt_nft_create_log = TxLog {
            address: tx_input.from,
            endpoint: DCDT_NFT_BURN_FUNC_NAME.into(),
            topics: vec![
                token_identifier.to_vec(),
                top_encode_to_vec_u8(&nonce).unwrap(),
                value.to_bytes_be(),
            ],
            data: vec![],
        };

        let tx_result = TxResult {
            result_status: 0,
            result_logs: vec![dcdt_nft_create_log],
            ..Default::default()
        };

        (tx_result, tx_cache.into_blockchain_updates())
    }
}
