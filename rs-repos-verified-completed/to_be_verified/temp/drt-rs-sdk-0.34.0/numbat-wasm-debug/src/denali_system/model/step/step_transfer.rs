use crate::denali_system::model::{
    AddressValue, BigUintValue, BytesValue, TxDCDT, TxTransfer, TxValidatorReward, U64Value,
};

#[derive(Debug, Default)]
pub struct TransferStep {
    pub tx_id: String,
    pub comment: Option<String>,
    pub tx: Box<TxTransfer>,
}

#[derive(Debug)]
pub struct ValidatorRewardStep {
    pub tx_id: String,
    pub comment: Option<String>,
    pub tx: Box<TxValidatorReward>,
}

impl TransferStep {
    pub fn new() -> Self {
        // 50,000 is the gas limit for simple REWA transfers, so it is default for convenience
        // DCDT transfers will need more
        Self::default().gas_limit("50,000")
    }

    pub fn from<A>(mut self, address: A) -> Self
    where
        AddressValue: From<A>,
    {
        self.tx.from = AddressValue::from(address);
        self
    }

    pub fn to<A>(mut self, address: A) -> Self
    where
        AddressValue: From<A>,
    {
        self.tx.to = AddressValue::from(address);
        self
    }

    pub fn rewa_value<A>(mut self, amount: A) -> Self
    where
        BigUintValue: From<A>,
    {
        if !self.tx.dcdt_value.is_empty() {
            panic!("Cannot transfer both REWA and DCDT");
        }

        self.tx.rewa_value = BigUintValue::from(amount);
        self
    }

    pub fn dcdt_transfer<T, N, A>(mut self, token_id: T, token_nonce: N, amount: A) -> Self
    where
        BytesValue: From<T>,
        U64Value: From<N>,
        BigUintValue: From<A>,
    {
        if self.tx.rewa_value.value > 0u32.into() {
            panic!("Cannot transfer both REWA and DCDT");
        }

        self.tx.dcdt_value.push(TxDCDT {
            dcdt_token_identifier: BytesValue::from(token_id),
            nonce: U64Value::from(token_nonce),
            dcdt_value: BigUintValue::from(amount),
        });

        self
    }

    pub fn gas_limit<V>(mut self, value: V) -> Self
    where
        U64Value: From<V>,
    {
        self.tx.gas_limit = U64Value::from(value);
        self
    }
}
