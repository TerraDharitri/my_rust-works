use crate::num_bigint::BigUint;
use numbat_wasm::types::heap::Address;

use super::{AccountDcdt, BlockInfo, BlockchainMock};

/// Some data to get copied for the tx.
/// Would be nice maybe at some point to have a reference to the full blockchain mock in the tx context,
/// but for now, copying some data is enough.
#[derive(Clone, Debug)]
pub struct BlockchainTxInfo {
    pub previous_block_info: BlockInfo,
    pub current_block_info: BlockInfo,
    pub contract_balance: BigUint,
    pub contract_dcdt: AccountDcdt,
    pub contract_owner: Option<Address>,
}

impl BlockchainMock {
    pub fn create_tx_info(&self, contract_address: &Address) -> BlockchainTxInfo {
        if let Some(contract) = self.accounts.get(contract_address) {
            BlockchainTxInfo {
                previous_block_info: self.previous_block_info.clone(),
                current_block_info: self.current_block_info.clone(),
                contract_balance: contract.rewa_balance.clone(),
                contract_dcdt: contract.dcdt.clone(),
                contract_owner: contract.contract_owner.clone(),
            }
        } else {
            BlockchainTxInfo {
                previous_block_info: self.previous_block_info.clone(),
                current_block_info: self.current_block_info.clone(),
                contract_balance: 0u32.into(),
                contract_dcdt: AccountDcdt::default(),
                contract_owner: None,
            }
        }
    }
}
