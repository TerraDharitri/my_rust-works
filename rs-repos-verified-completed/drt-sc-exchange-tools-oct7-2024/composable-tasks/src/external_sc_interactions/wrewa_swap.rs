dharitri_sc::imports!();

#[dharitri_sc::module]
pub trait WrewaWrapModule {
    fn wrap_rewa(&self, payment: RewaOrDcdtTokenPayment) -> RewaOrDcdtTokenPayment {
        require!(
            payment.token_identifier.is_rewa(),
            "Payment token is not REWA!"
        );

        let wrap_rewa_addr = self.wrap_rewa_addr().get();

        let ((), back_transfers) = self
            .wrap_rewa_proxy(wrap_rewa_addr)
            .wrap_rewa()
            .with_rewa_transfer(payment.amount)
            .execute_on_dest_context_with_back_transfers();

        let returned_wrapped_rewa = back_transfers.dcdt_payments;
        require!(
            returned_wrapped_rewa.len() == 1,
            "wrap_rewa should output only 1 payment"
        );

        RewaOrDcdtTokenPayment::from(returned_wrapped_rewa.get(0))
    }

    fn unwrap_rewa(&self, payment: RewaOrDcdtTokenPayment) -> RewaOrDcdtTokenPayment {
        let wrap_rewa_addr = self.wrap_rewa_addr().get();

        let ((), back_transfers) = self
            .wrap_rewa_proxy(wrap_rewa_addr)
            .unwrap_rewa()
            .with_dcdt_transfer(payment.unwrap_dcdt())
            .execute_on_dest_context_with_back_transfers();

        let returned_rewa = back_transfers.total_rewa_amount;

        RewaOrDcdtTokenPayment::new(RewaOrDcdtTokenIdentifier::rewa(), 0, returned_rewa)
    }

    #[proxy]
    fn wrap_rewa_proxy(
        &self,
        sc_address: ManagedAddress,
    ) -> dharitri_sc_wrewa_swap::Proxy<Self::Api>;

    #[storage_mapper("wrapRewaAddr")]
    fn wrap_rewa_addr(&self) -> SingleValueMapper<ManagedAddress>;
}
