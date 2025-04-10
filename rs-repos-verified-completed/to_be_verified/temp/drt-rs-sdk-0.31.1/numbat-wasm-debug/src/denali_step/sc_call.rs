use numbat_wasm::{
    numbat_codec::{CodecFrom, PanicErrorHandler, TopEncodeMulti},
    types::ContractCall,
};
use denali::model::{ScCallStep, Step, TxDCDT};

use crate::{
    tx_execution::sc_call_with_async_and_callback,
    tx_mock::{generate_tx_hash_dummy, TxInput, TxInputDCDT, TxResult},
    world_mock::BlockchainMock,
    CallBuilder, DebugApi,
};

use super::check_tx_output;

impl BlockchainMock {
    /// Adds a denali SC call step, as specified in the `sc_call_step` argument, then executes it.
    pub fn denali_sc_call(&mut self, sc_call_step: ScCallStep) -> &mut Self {
        let _ = self.with_borrowed(|state| execute_and_check(state, &sc_call_step));
        self.denali_trace.steps.push(Step::ScCall(sc_call_step));
        self
    }

    /// Adds a denali SC call step, executes it and retrieves the transaction result ("out" field).
    ///
    /// The transaction is expected to complete successfully.
    ///
    /// It takes the `contract_call` argument separately from the SC call step,
    /// so we can benefit from type inference in the result.
    pub fn denali_sc_call_get_result<OriginalResult, RequestedResult>(
        &mut self,
        contract_call: ContractCall<DebugApi, OriginalResult>,
        mut sc_call_step: ScCallStep,
    ) -> RequestedResult
    where
        OriginalResult: TopEncodeMulti,
        RequestedResult: CodecFrom<OriginalResult>,
    {
        sc_call_step = sc_call_step.call(contract_call);
        let tx_result = self.with_borrowed(|state| execute_and_check(state, &sc_call_step));
        self.denali_trace.steps.push(Step::ScCall(sc_call_step));
        let mut raw_result = tx_result.result_values;
        RequestedResult::multi_decode_or_handle_err(&mut raw_result, PanicErrorHandler).unwrap()
    }
}

pub(crate) fn execute(
    mut state: BlockchainMock,
    sc_call_step: &ScCallStep,
) -> (TxResult, BlockchainMock) {
    let tx = &sc_call_step.tx;
    let tx_input = TxInput {
        from: tx.from.to_address(),
        to: tx.to.to_address(),
        rewa_value: tx.rewa_value.value.clone(),
        dcdt_values: tx_dcdt_transfers_from_denali(tx.dcdt_value.as_slice()),
        func_name: tx.function.as_bytes().to_vec(),
        args: tx
            .arguments
            .iter()
            .map(|scen_arg| scen_arg.value.clone())
            .collect(),
        gas_limit: tx.gas_limit.value,
        gas_price: tx.gas_price.value,
        tx_hash: generate_tx_hash_dummy(&sc_call_step.tx_id),
    };

    // nonce gets increased irrespective of whether the tx fails or not
    state.increase_account_nonce(&tx_input.from);

    sc_call_with_async_and_callback(tx_input, state)
}

fn execute_and_check(
    state: BlockchainMock,
    sc_call_step: &ScCallStep,
) -> (TxResult, BlockchainMock) {
    let (tx_result, state) = execute(state, sc_call_step);
    if let Some(tx_expect) = &sc_call_step.expect {
        check_tx_output(&sc_call_step.tx_id, tx_expect, &tx_result);
    }
    (tx_result, state)
}

pub fn tx_dcdt_transfers_from_denali(denali_transf_dcdt: &[TxDCDT]) -> Vec<TxInputDCDT> {
    denali_transf_dcdt
        .iter()
        .map(tx_dcdt_transfer_from_denali)
        .collect()
}

pub fn tx_dcdt_transfer_from_denali(denali_transf_dcdt: &TxDCDT) -> TxInputDCDT {
    TxInputDCDT {
        token_identifier: denali_transf_dcdt.dcdt_token_identifier.value.clone(),
        nonce: denali_transf_dcdt.nonce.value,
        value: denali_transf_dcdt.dcdt_value.value.clone(),
    }
}
