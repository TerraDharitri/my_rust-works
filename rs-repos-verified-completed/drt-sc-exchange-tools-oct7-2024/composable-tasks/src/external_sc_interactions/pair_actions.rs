dharitri_sc::imports!();

use super::router_actions;
use pair::pair_actions::swap::ProxyTrait as _;

pub enum PairAddressForTokens<M: ManagedTypeApi> {
    CorrectOrder(ManagedAddress<M>),
    ReverseOrder(ManagedAddress<M>),
}

impl<M: ManagedTypeApi> PairAddressForTokens<M> {
    pub fn unwrap_address(self) -> ManagedAddress<M> {
        match self {
            PairAddressForTokens::CorrectOrder(addr) => addr,
            PairAddressForTokens::ReverseOrder(addr) => addr,
        }
    }

    pub fn is_reverse(&self) -> bool {
        matches!(self, PairAddressForTokens::ReverseOrder(_))
    }
}

#[dharitri_sc::module]
pub trait PairActionsModule: router_actions::RouterActionsModule {
    fn perform_swap_tokens_fixed_input(
        &self,
        from_tokens: TokenIdentifier,
        from_amount: BigUint,
        to_token_id: TokenIdentifier,
        min_amount_out: BigUint,
    ) -> DcdtTokenPayment {
        if from_tokens == to_token_id {
            return DcdtTokenPayment::new(from_tokens, 0, from_amount);
        }

        let pair_address = self.get_pair(from_tokens.clone(), to_token_id.clone());
        let payment = DcdtTokenPayment::new(from_tokens, 0, from_amount);

        let ((), back_transfers) = self
            .pair_proxy(pair_address)
            .swap_tokens_fixed_input(to_token_id.clone(), min_amount_out)
            .with_dcdt_transfer(payment)
            .execute_on_dest_context_with_back_transfers();

        require!(
            back_transfers.dcdt_payments.len() == 1,
            "Swap tokens fixed output: Back transfers expected 1 payment"
        );

        let payment_out = back_transfers.dcdt_payments.get(0);
        require!(
            payment_out.token_identifier == to_token_id,
            "Wrong returned token identifier!"
        );

        payment_out
    }

    fn perform_swap_tokens_fixed_output(
        &self,
        from_token_id: TokenIdentifier,
        from_amount: BigUint,
        to_token_id: TokenIdentifier,
        amount_out: BigUint,
    ) -> ManagedVec<DcdtTokenPayment> {
        if from_token_id == to_token_id {
            return ManagedVec::from_single_item(DcdtTokenPayment::new(
                from_token_id,
                0,
                from_amount,
            ));
        }

        let pair_address = self.get_pair(from_token_id.clone(), to_token_id.clone());
        let payment = DcdtTokenPayment::new(from_token_id, 0, from_amount);

        let ((), back_transfers) = self
            .pair_proxy(pair_address)
            .swap_tokens_fixed_output(to_token_id.clone(), amount_out)
            .with_dcdt_transfer(payment)
            .execute_on_dest_context_with_back_transfers();

        require!(
            back_transfers.dcdt_payments.len() <= 2,
            "Swap tokens fixed output: Back transfers expected maximum 2 payments"
        );

        let payment_out = back_transfers.dcdt_payments.get(0);
        require!(
            payment_out.token_identifier == to_token_id,
            "Wrong returned token identifier!"
        );

        back_transfers.dcdt_payments
    }

    #[proxy]
    fn pair_proxy(&self, sc_address: ManagedAddress) -> pair::Proxy<Self::Api>;
}
