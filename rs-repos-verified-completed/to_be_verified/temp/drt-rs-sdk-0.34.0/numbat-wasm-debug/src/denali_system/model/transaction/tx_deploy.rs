use crate::denali_system::model::{AddressValue, BigUintValue, BytesValue, U64Value};
use numbat_wasm::types::CodeMetadata;
use denali::{
    interpret_trait::{InterpretableFrom, InterpreterContext, IntoRaw},
    serde_raw::TxDeployRaw,
};

use super::tx_interpret_util::interpret_rewa_value;

#[derive(Debug, Default)]
pub struct TxDeploy {
    pub from: AddressValue,
    pub rewa_value: BigUintValue,
    pub code_metadata: CodeMetadata,
    pub contract_code: BytesValue,
    pub arguments: Vec<BytesValue>,
    pub gas_limit: U64Value,
    pub gas_price: U64Value,
}

impl InterpretableFrom<TxDeployRaw> for TxDeploy {
    fn interpret_from(from: TxDeployRaw, context: &InterpreterContext) -> Self {
        TxDeploy {
            from: AddressValue::interpret_from(from.from, context),
            rewa_value: interpret_rewa_value(from.value, from.rewa_value, context),
            code_metadata: CodeMetadata::empty(), // not yet modelled in denali
            contract_code: BytesValue::interpret_from(from.contract_code, context),
            arguments: from
                .arguments
                .into_iter()
                .map(|t| BytesValue::interpret_from(t, context))
                .collect(),
            gas_limit: U64Value::interpret_from(from.gas_limit, context),
            gas_price: U64Value::interpret_from(from.gas_price, context),
        }
    }
}

impl IntoRaw<TxDeployRaw> for TxDeploy {
    fn into_raw(self) -> TxDeployRaw {
        TxDeployRaw {
            from: self.from.into_raw(),
            value: None,
            rewa_value: self.rewa_value.into_raw_opt(),
            contract_code: self.contract_code.into_raw(),
            arguments: self
                .arguments
                .into_iter()
                .map(|arg| arg.into_raw())
                .collect(),
            gas_limit: self.gas_limit.into_raw(),
            gas_price: self.gas_price.into_raw(),
        }
    }
}

impl TxDeploy {
    pub fn to_tx_data(&self) -> String {
        let mut result = hex::encode(&self.contract_code.value);
        result.push_str("@0500@"); // VM identifier
        result.push_str(hex::encode(self.code_metadata.to_byte_array()).as_str());
        for argument in &self.arguments {
            result.push('@');
            result.push_str(hex::encode(argument.value.as_slice()).as_str());
        }

        result
    }
}
