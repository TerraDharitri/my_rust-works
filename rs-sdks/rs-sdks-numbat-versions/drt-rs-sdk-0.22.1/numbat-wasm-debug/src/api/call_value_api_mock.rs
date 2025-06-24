use crate::{tx_mock::TxPanic, DebugApi};
use numbat_wasm::{
    api::CallValueApi,
    err_msg,
    types::{BigUint, DcdtTokenType, TokenIdentifier},
};

impl DebugApi {
    fn fail_if_more_than_one_dcdt_transfer(&self) {
        if self.dcdt_num_transfers() > 1 {
            std::panic::panic_any(TxPanic {
                status: 10,
                message: err_msg::TOO_MANY_DCDT_TRANSFERS.to_vec(),
            });
        }
    }
}

impl CallValueApi for DebugApi {
    fn check_not_payable(&self) {
        if self.rewa_value() > 0 {
            std::panic::panic_any(TxPanic {
                status: 10,
                message: err_msg::NON_PAYABLE_FUNC_REWA.to_vec(),
            });
        }
        if self.dcdt_value() > 0 {
            std::panic::panic_any(TxPanic {
                status: 10,
                message: err_msg::NON_PAYABLE_FUNC_DCDT.to_vec(),
            });
        }
    }

    #[inline]
    fn rewa_value(&self) -> BigUint<Self> {
        self.insert_new_big_uint(self.input_ref().rewa_value.clone())
    }

    #[inline]
    fn dcdt_value(&self) -> BigUint<Self> {
        self.fail_if_more_than_one_dcdt_transfer();
        self.dcdt_value_by_index(0)
    }

    #[inline]
    fn token(&self) -> TokenIdentifier<Self> {
        self.fail_if_more_than_one_dcdt_transfer();
        self.token_by_index(0)
    }

    #[inline]
    fn dcdt_token_nonce(&self) -> u64 {
        self.fail_if_more_than_one_dcdt_transfer();
        self.dcdt_token_nonce_by_index(0)
    }

    #[inline]
    fn dcdt_token_type(&self) -> DcdtTokenType {
        self.fail_if_more_than_one_dcdt_transfer();
        self.dcdt_token_type_by_index(0)
    }

    #[inline]
    fn dcdt_num_transfers(&self) -> usize {
        self.input_ref().dcdt_values.len()
    }

    #[inline]
    fn dcdt_value_by_index(&self, index: usize) -> BigUint<Self> {
        if let Some(dcdt_value) = self.input_ref().dcdt_values.get(index) {
            self.insert_new_big_uint(dcdt_value.value.clone())
        } else {
            self.insert_new_big_uint_zero()
        }
    }

    #[inline]
    fn token_by_index(&self, index: usize) -> TokenIdentifier<Self> {
        if let Some(dcdt_value) = self.input_ref().dcdt_values.get(index) {
            TokenIdentifier::from(
                self.insert_new_managed_buffer(dcdt_value.token_identifier.clone()),
            )
        } else {
            TokenIdentifier::rewa(self.clone())
        }
    }

    #[inline]
    fn dcdt_token_nonce_by_index(&self, index: usize) -> u64 {
        if let Some(dcdt_value) = self.input_ref().dcdt_values.get(index) {
            dcdt_value.nonce
        } else {
            0
        }
    }

    #[inline]
    fn dcdt_token_type_by_index(&self, index: usize) -> DcdtTokenType {
        if self.dcdt_token_nonce_by_index(index) == 0 {
            DcdtTokenType::Fungible
        } else {
            DcdtTokenType::NonFungible
        }
    }
}
