dharitri_sc::imports!();

#[dharitri_sc::module]
pub trait RewaWrapperActionsModule {
    fn call_wrap_rewa(&self, rewa_amount: BigUint) -> DcdtTokenPayment {
        let wrapper_sc_address = self.rewa_wrapper_address().get();
        let ((), back_transfers) = self
            .rewa_wrapper_proxy(wrapper_sc_address)
            .wrap_rewa()
            .with_rewa_transfer(rewa_amount)
            .execute_on_dest_context_with_back_transfers();

        let returned_wrapped_rewa = back_transfers.dcdt_payments;
        require!(
            returned_wrapped_rewa.len() == 1,
            "wrap_rewa should output only 1 payment"
        );

        returned_wrapped_rewa.get(0)
    }

    #[storage_mapper("rewaWrapperAddress")]
    fn rewa_wrapper_address(&self) -> SingleValueMapper<ManagedAddress>;

    #[proxy]
    fn rewa_wrapper_proxy(
        &self,
        sc_address: ManagedAddress,
    ) -> dharitri_sc_wrewa_swap::Proxy<Self::Api>;
}
