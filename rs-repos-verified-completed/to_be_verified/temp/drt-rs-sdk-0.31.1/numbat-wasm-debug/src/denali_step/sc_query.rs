use crate::{
    num_bigint::BigUint,
    tx_execution::execute_sc_query,
    tx_mock::{generate_tx_hash_dummy, TxInput, TxResult},
    world_mock::BlockchainMock,
    CallBuilder, DebugApi,
};
use numbat_wasm::{
    numbat_codec::{CodecFrom, PanicErrorHandler, TopEncodeMulti},
    types::ContractCall,
};
use denali::model::{ScQueryStep, Step, TxExpect};

use super::check_tx_output;

impl BlockchainMock {
    /// Adds a denali SC query step, as specified in the `sc_query_step` argument, then executes it.
    pub fn denali_sc_query(&mut self, sc_query_step: ScQueryStep) -> &mut Self {
        let _ = self.with_borrowed(|state| execute_and_check(state, &sc_query_step));
        self.denali_trace.steps.push(Step::ScQuery(sc_query_step));
        self
    }

    /// Adds a denali SC query step, but sets the contract call data and returns the result.
    ///
    /// It also sets in the trace the expected result to be the actual returned result.
    ///
    /// It is the duty of the test developer to check that the result is actually correct after the call.
    pub fn denali_sc_query_expect_result<OriginalResult, RequestedResult>(
        &mut self,
        contract_call: ContractCall<DebugApi, OriginalResult>,
        mut sc_query_step: ScQueryStep,
    ) -> RequestedResult
    where
        OriginalResult: TopEncodeMulti,
        RequestedResult: CodecFrom<OriginalResult>,
    {
        sc_query_step = sc_query_step.call(contract_call);
        let tx_result = self.with_borrowed(|state| execute_and_check(state, &sc_query_step));

        let mut tx_expect = TxExpect::ok();
        for raw_result in &tx_result.result_values {
            let result_hex_string = format!("0x{}", hex::encode(&raw_result));
            tx_expect = tx_expect.result(result_hex_string.as_str());
        }
        sc_query_step = sc_query_step.expect(tx_expect);
        self.denali_trace.steps.push(Step::ScQuery(sc_query_step));

        let mut raw_results = tx_result.result_values;
        RequestedResult::multi_decode_or_handle_err(&mut raw_results, PanicErrorHandler).unwrap()
    }

    /// Performs a SC query to a contract, leaves no denali trace behind.
    ///
    /// Meant to be used for the test to investigate the state of the contract.
    ///
    /// Use `denali_sc_query` to embed the SC query in the resulting denali.
    pub fn quick_query<OriginalResult, RequestedResult>(
        &mut self,
        contract_call: ContractCall<DebugApi, OriginalResult>,
    ) -> RequestedResult
    where
        OriginalResult: TopEncodeMulti,
        RequestedResult: CodecFrom<OriginalResult>,
    {
        let sc_query_step = ScQueryStep::new().call(contract_call);
        let tx_result = self.with_borrowed(|state| execute(state, &sc_query_step));
        let mut raw_result = tx_result.result_values;
        RequestedResult::multi_decode_or_handle_err(&mut raw_result, PanicErrorHandler).unwrap()
    }
}

pub(crate) fn execute(
    state: BlockchainMock,
    sc_query_step: &ScQueryStep,
) -> (TxResult, BlockchainMock) {
    let tx_input = TxInput {
        from: sc_query_step.tx.to.to_address(),
        to: sc_query_step.tx.to.to_address(),
        rewa_value: BigUint::from(0u32),
        dcdt_values: Vec::new(),
        func_name: sc_query_step.tx.function.as_bytes().to_vec(),
        args: sc_query_step
            .tx
            .arguments
            .iter()
            .map(|scen_arg| scen_arg.value.clone())
            .collect(),
        gas_limit: u64::MAX,
        gas_price: 0u64,
        tx_hash: generate_tx_hash_dummy(&sc_query_step.tx_id),
    };

    let (tx_result, state) = execute_sc_query(tx_input, state);
    assert!(
        tx_result.result_calls.is_empty(),
        "Can't query a view function that performs an async call"
    );
    (tx_result, state)
}

fn execute_and_check(
    state: BlockchainMock,
    sc_query_step: &ScQueryStep,
) -> (TxResult, BlockchainMock) {
    let (tx_result, state) = execute(state, sc_query_step);
    if let Some(tx_expect) = &sc_query_step.expect {
        check_tx_output(&sc_query_step.tx_id, tx_expect, &tx_result);
    }

    (tx_result, state)
}
