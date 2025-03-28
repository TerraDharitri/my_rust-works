dharitri_sc::imports!();

use crate::common::{self, CallbackData};

#[dharitri_sc::module]
pub trait CallPromisesModule: common::CommonModule {
    #[proxy]
    fn vault_proxy(&self) -> vault::Proxy<Self::Api>;

    #[endpoint]
    #[payable("*")]
    fn forward_promise_accept_funds(&self, to: ManagedAddress) {
        let payment = self.call_value().rewa_or_single_dcdt();
        let gas_limit = self.blockchain().get_gas_left() / 2;
        self.vault_proxy()
            .contract(to)
            .accept_funds()
            .with_rewa_or_single_dcdt_transfer(payment)
            .with_gas_limit(gas_limit)
            .async_call_promise()
            .register_promise()
    }

    #[endpoint]
    fn forward_promise_retrieve_funds(
        &self,
        to: ManagedAddress,
        token: RewaOrDcdtTokenIdentifier,
        token_nonce: u64,
        amount: BigUint,
    ) {
        let gas_limit = self.blockchain().get_gas_left() - 20_000_000;
        self.vault_proxy()
            .contract(to)
            .retrieve_funds(token, token_nonce, amount)
            .with_gas_limit(gas_limit)
            .async_call_promise()
            .with_callback(self.callbacks().retrieve_funds_callback())
            .with_extra_gas_for_callback(10_000_000)
            .register_promise()
    }

    #[promises_callback]
    fn retrieve_funds_callback(&self) {
        let (token, nonce, payment) = self.call_value().rewa_or_single_dcdt().into_tuple();
        self.retrieve_funds_callback_event(&token, nonce, &payment);

        let _ = self.callback_data().push(&CallbackData {
            callback_name: ManagedBuffer::from(b"retrieve_funds_callback"),
            token_identifier: token,
            token_nonce: nonce,
            token_amount: payment,
            args: ManagedVec::new(),
        });
    }
}
