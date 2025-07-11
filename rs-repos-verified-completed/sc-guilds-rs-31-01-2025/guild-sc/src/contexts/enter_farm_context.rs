dharitri_sc::imports!();
dharitri_sc::derive_imports!();

use common_errors::{ERROR_BAD_PAYMENTS, ERROR_EMPTY_PAYMENTS};
use common_structs::PaymentsVec;

pub struct EnterFarmContext<M: ManagedTypeApi> {
    pub farming_token_payment: DcdtTokenPayment<M>,
    pub additional_farm_tokens: PaymentsVec<M>,
}

impl<M: ManagedTypeApi> EnterFarmContext<M> {
    pub fn new(
        mut payments: PaymentsVec<M>,
        farming_token_id: &TokenIdentifier<M>,
        farm_token_id: &TokenIdentifier<M>,
    ) -> Self {
        if payments.is_empty() {
            M::error_api_impl().signal_error(ERROR_EMPTY_PAYMENTS);
        }

        let farming_token_payment = payments.get(0);
        if &farming_token_payment.token_identifier != farming_token_id {
            M::error_api_impl().signal_error(ERROR_BAD_PAYMENTS);
        }

        payments.remove(0);
        for p in &payments {
            if &p.token_identifier != farm_token_id {
                M::error_api_impl().signal_error(ERROR_BAD_PAYMENTS);
            }
        }

        EnterFarmContext {
            farming_token_payment,
            additional_farm_tokens: payments,
        }
    }
}
