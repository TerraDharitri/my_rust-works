numbat_wasm::imports!();
numbat_wasm::derive_imports!();

use crate::bonding_curve::utils::structs::CurveArguments;
pub trait CurveFunction<M: ManagedTypeApi> {
    fn calculate_price(
        &self,
        token_start: &BigUint<M>,
        amount: &BigUint<M>,
        arguments: &CurveArguments<M>,
    ) -> SCResult<BigUint<M>>;
}
