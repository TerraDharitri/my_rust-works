use numbat_wasm::{api::DCDT_NFT_TRANSFER_FUNC_NAME, numbat_codec::TopDecode, types::Address};
use num_bigint::BigUint;
use num_traits::Zero;

use crate::{
    tx_execution::default_execution,
    tx_mock::{BlockchainUpdate, TxCache, TxInput, TxInputDCDT, TxLog, TxResult},
};

pub fn execute_dcdt_nft_transfer(
    tx_input: TxInput,
    tx_cache: TxCache,
) -> (TxResult, BlockchainUpdate) {
    if tx_input.args.len() < 4 {
        let err_result = TxResult::from_vm_error("DCDTNFTTransfer too few arguments".to_string());
        return (err_result, BlockchainUpdate::empty());
    }
    assert!(
        tx_input.to == tx_input.from,
        "DCDTNFTTransfer expects that to == from"
    );

    let token_identifier = tx_input.args[0].clone();
    let nonce = u64::top_decode(tx_input.args[1].as_slice()).unwrap();
    let value = BigUint::from_bytes_be(tx_input.args[2].as_slice());
    let destination = Address::top_decode(tx_input.args[3].as_slice()).unwrap();

    let dcdt_values = vec![TxInputDCDT {
        token_identifier,
        nonce,
        value,
    }];

    let dcdt_nft_transfer_log = TxLog {
        address: tx_input.from.clone(),
        endpoint: DCDT_NFT_TRANSFER_FUNC_NAME.to_vec(),
        topics: vec![
            tx_input.args[0].clone(),
            tx_input.args[1].clone(),
            tx_input.args[2].clone(),
        ],
        data: vec![],
    };

    let func_name = tx_input.args.get(4).map(Vec::clone).unwrap_or_default();
    let args = if tx_input.args.len() > 5 {
        tx_input.args[5..].to_vec()
    } else {
        Vec::new()
    };

    let exec_input = TxInput {
        from: tx_input.from,
        to: destination,
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
    tx_result.result_logs = [
        &[dcdt_nft_transfer_log][..],
        tx_result.result_logs.as_slice(),
    ]
    .concat();

    (tx_result, blockchain_updates)
}
