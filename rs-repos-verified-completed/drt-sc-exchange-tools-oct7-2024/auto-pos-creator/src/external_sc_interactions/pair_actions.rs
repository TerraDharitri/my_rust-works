dharitri_sc::imports!();

use pair::pair_actions::{
    add_liq::ProxyTrait as _,
    common_result_types::{AddLiquidityResultType, RemoveLiquidityResultType},
    remove_liq::ProxyTrait as _,
    swap::ProxyTrait as _,
};

pub const SWAP_MIN_AMOUNT: u64 = 1;

pub struct PairAddLiqArgs<M: ManagedTypeApi> {
    pub pair_address: ManagedAddress<M>,
    pub first_tokens: DcdtTokenPayment<M>,
    pub second_tokens: DcdtTokenPayment<M>,
    pub first_token_min_amount_out: BigUint<M>,
    pub second_token_min_amount_out: BigUint<M>,
}

pub struct PairAddLiqResult<M: ManagedTypeApi> {
    pub lp_tokens: DcdtTokenPayment<M>,
    pub first_tokens_remaining: DcdtTokenPayment<M>,
    pub second_tokens_remaining: DcdtTokenPayment<M>,
}

pub struct PairRemoveLiqResult<M: ManagedTypeApi> {
    pub first_tokens: DcdtTokenPayment<M>,
    pub second_tokens: DcdtTokenPayment<M>,
}

pub type PairTokenPayments<M> = PairRemoveLiqResult<M>;

#[dharitri_sc::module]
pub trait PairActionsModule:
    read_external_storage::ReadExternalStorageModule
    + crate::configs::pairs_config::PairsConfigModule
    + utils::UtilsModule
{
    fn call_pair_swap(
        &self,
        pair_address: ManagedAddress,
        input_tokens: DcdtTokenPayment,
        requested_token_id: TokenIdentifier,
    ) -> DcdtTokenPayment {
        self.pair_proxy(pair_address)
            .swap_tokens_fixed_input(requested_token_id, BigUint::from(SWAP_MIN_AMOUNT))
            .with_dcdt_transfer(input_tokens)
            .execute_on_dest_context()
    }

    fn call_pair_add_liquidity(
        &self,
        args: PairAddLiqArgs<Self::Api>,
    ) -> PairAddLiqResult<Self::Api> {
        let first_token_full_amount = args.first_tokens.amount.clone();
        let second_token_full_amount = args.second_tokens.amount.clone();
        let raw_results: AddLiquidityResultType<Self::Api> = self
            .pair_proxy(args.pair_address)
            .add_liquidity(
                args.first_token_min_amount_out,
                args.second_token_min_amount_out,
            )
            .with_dcdt_transfer(args.first_tokens)
            .with_dcdt_transfer(args.second_tokens)
            .execute_on_dest_context();

        let (lp_tokens, first_tokens_used, second_tokens_used) = raw_results.into_tuple();
        let first_tokens_remaining_amount = first_token_full_amount - first_tokens_used.amount;
        let second_tokens_remaining_amount = second_token_full_amount - second_tokens_used.amount;

        let first_tokens_remaining = DcdtTokenPayment::new(
            first_tokens_used.token_identifier,
            0,
            first_tokens_remaining_amount,
        );
        let second_tokens_remaining = DcdtTokenPayment::new(
            second_tokens_used.token_identifier,
            0,
            second_tokens_remaining_amount,
        );

        PairAddLiqResult {
            lp_tokens,
            first_tokens_remaining,
            second_tokens_remaining,
        }
    }

    fn call_pair_remove_liquidity(
        &self,
        pair_address: ManagedAddress,
        lp_tokens: DcdtTokenPayment,
        first_token_min_amount_out: BigUint,
        second_token_min_amount_out: BigUint,
    ) -> PairRemoveLiqResult<Self::Api> {
        let raw_results: RemoveLiquidityResultType<Self::Api> = self
            .pair_proxy(pair_address)
            .remove_liquidity(first_token_min_amount_out, second_token_min_amount_out)
            .with_dcdt_transfer(lp_tokens)
            .execute_on_dest_context();
        let (first_tokens, second_tokens) = raw_results.into_tuple();

        PairRemoveLiqResult {
            first_tokens,
            second_tokens,
        }
    }

    #[proxy]
    fn pair_proxy(&self, sc_address: ManagedAddress) -> pair::Proxy<Self::Api>;
}
