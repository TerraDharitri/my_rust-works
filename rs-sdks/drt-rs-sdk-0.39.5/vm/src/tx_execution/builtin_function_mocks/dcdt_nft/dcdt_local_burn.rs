use crate::num_bigint::BigUint;
use dharitri_sc::api::DCDT_LOCAL_BURN_FUNC_NAME;

use crate::tx_mock::{BlockchainUpdate, TxCache, TxInput, TxLog, TxResult};

use super::super::builtin_func_trait::BuiltinFunction;

pub struct DCDTLocalBurn;

impl BuiltinFunction for DCDTLocalBurn {
    fn name(&self) -> &str {
        DCDT_LOCAL_BURN_FUNC_NAME
    }

    fn execute(&self, tx_input: TxInput, tx_cache: TxCache) -> (TxResult, BlockchainUpdate) {
        if tx_input.args.len() != 2 {
            let err_result = TxResult::from_vm_error("DCDTLocalBurn expects 2 arguments");
            return (err_result, BlockchainUpdate::empty());
        }

        let token_identifier = tx_input.args[0].clone();
        let value = BigUint::from_bytes_be(tx_input.args[1].as_slice());

        tx_cache.subtract_dcdt_balance(&tx_input.to, &token_identifier, 0, &value);

        let dcdt_nft_create_log = TxLog {
            address: tx_input.from,
            endpoint: DCDT_LOCAL_BURN_FUNC_NAME.into(),
            topics: vec![token_identifier.to_vec(), Vec::new(), value.to_bytes_be()],
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
