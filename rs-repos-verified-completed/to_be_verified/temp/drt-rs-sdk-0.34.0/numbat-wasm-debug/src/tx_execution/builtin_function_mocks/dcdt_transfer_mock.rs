use crate::num_bigint::BigUint;
use numbat_wasm::{api::DCDT_TRANSFER_FUNC_NAME, types::heap::Address};
use num_traits::Zero;

use crate::{
    tx_execution::default_execution,
    tx_mock::{BlockchainUpdate, TxCache, TxInput, TxInputDCDT, TxLog, TxResult},
};

pub fn execute_dcdt_transfer(tx_input: TxInput, tx_cache: TxCache) -> (TxResult, BlockchainUpdate) {
    if tx_input.args.len() < 2 {
        let err_result = TxResult::from_vm_error("DCDTTransfer too few arguments".to_string());
        return (err_result, BlockchainUpdate::empty());
    }

    let token_identifier = tx_input.args[0].clone();
    let value = BigUint::from_bytes_be(tx_input.args[1].as_slice());

    let dcdt_values = vec![TxInputDCDT {
        token_identifier: token_identifier.clone(),
        nonce: 0,
        value: value.clone(),
    }];

    let dcdt_transfer_log = dcdt_transfer_event_log(
        tx_input.from.clone(),
        tx_input.to.clone(),
        token_identifier,
        &value,
    );

    let func_name = tx_input.args.get(2).map(Vec::clone).unwrap_or_default();
    let args = if tx_input.args.len() > 2 {
        tx_input.args[3..].to_vec()
    } else {
        Vec::new()
    };

    let exec_input = TxInput {
        from: tx_input.from,
        to: tx_input.to,
        rewa_value: BigUint::zero(),
        dcdt_values,
        func_name,
        args,
        gas_limit: tx_input.gas_limit,
        gas_price: tx_input.gas_price,
        tx_hash: tx_input.tx_hash,
    };

    let (mut tx_result, blockchain_updates) = default_execution(exec_input, tx_cache);

    // prepends dcdt log
    tx_result.result_logs = [&[dcdt_transfer_log][..], tx_result.result_logs.as_slice()].concat();

    (tx_result, blockchain_updates)
}

pub fn dcdt_transfer_event_log(
    from: Address,
    to: Address,
    dcdt_token_identifier: Vec<u8>,
    dcdt_value: &BigUint,
) -> TxLog {
    let nonce_topic = Vec::<u8>::new();
    TxLog {
        address: from,
        endpoint: DCDT_TRANSFER_FUNC_NAME.to_vec(),
        topics: vec![
            dcdt_token_identifier,
            nonce_topic,
            dcdt_value.to_bytes_be(),
            to.to_vec(),
        ],
        data: vec![],
    }
}
