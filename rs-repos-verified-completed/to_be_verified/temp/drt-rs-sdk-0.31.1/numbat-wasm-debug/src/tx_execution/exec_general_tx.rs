use numbat_wasm::types::heap::Address;

use crate::{
    tx_mock::{BlockchainUpdate, TxCache, TxContext, TxInput, TxResult},
    world_mock::is_smart_contract_address,
};

use super::execute_tx_context;

pub fn default_execution(tx_input: TxInput, tx_cache: TxCache) -> (TxResult, BlockchainUpdate) {
    let mut tx_context = TxContext::new(tx_input, tx_cache);

    tx_context.tx_cache.subtract_rewa_balance(
        &tx_context.tx_input_box.from,
        &tx_context.tx_input_box.rewa_value,
    );
    tx_context.tx_cache.increase_rewa_balance(
        &tx_context.tx_input_box.to,
        &tx_context.tx_input_box.rewa_value,
    );

    // TODO: temporary, will convert to explicit builtin function first
    for dcdt_transfer in tx_context.tx_input_box.dcdt_values.iter() {
        tx_context.tx_cache.transfer_dcdt_balance(
            &tx_context.tx_input_box.from,
            &tx_context.tx_input_box.to,
            &dcdt_transfer.token_identifier,
            dcdt_transfer.nonce,
            &dcdt_transfer.value,
        );
    }

    let tx_result = if !is_smart_contract_address(&tx_context.tx_input_box.to)
        || tx_context.tx_input_box.func_name.is_empty()
    {
        // direct REWA transfer
        TxResult::empty()
    } else {
        let (tx_context_modified, tx_result) = execute_tx_context(tx_context);
        tx_context = tx_context_modified;
        tx_result
    };

    let blockchain_updates = tx_context.into_blockchain_updates();

    (tx_result, blockchain_updates)
}

pub fn deploy_contract(
    mut tx_input: TxInput,
    contract_path: Vec<u8>,
    tx_cache: TxCache,
) -> (TxResult, Address, BlockchainUpdate) {
    let new_address = tx_cache.get_new_address(&tx_input.from);
    tx_input.to = new_address.clone();
    tx_input.func_name = b"init".to_vec();
    let tx_context = TxContext::new(tx_input, tx_cache);
    let tx_input_ref = &*tx_context.tx_input_box;

    tx_context
        .tx_cache
        .subtract_rewa_balance(&tx_input_ref.from, &tx_input_ref.rewa_value);
    tx_context.create_new_contract(&new_address, contract_path, tx_input_ref.from.clone());
    tx_context
        .tx_cache
        .increase_rewa_balance(&new_address, &tx_input_ref.rewa_value);

    let (tx_context, tx_result) = execute_tx_context(tx_context);
    let blockchain_updates = tx_context.into_blockchain_updates();

    (tx_result, new_address, blockchain_updates)
}
