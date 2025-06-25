use proxy_dex::{
    proxy_farm::{EnterFarmProxyResultType, ProxyTrait as _},
    proxy_pair::ProxyTrait as _,
};

dharitri_sc::imports!();
dharitri_sc::derive_imports!();

#[derive(TypeAbi, TopDecode, TopEncode)]
pub struct AddLiquidityProxyResult<M: ManagedTypeApi> {
    pub wrapped_lp_token: DcdtTokenPayment<M>,
    pub locked_token_leftover: DcdtTokenPayment<M>,
    pub wrewa_leftover: DcdtTokenPayment<M>,
}

#[derive(TypeAbi, TopDecode, TopEncode)]
pub struct EnterFarmProxyResult<M: ManagedTypeApi> {
    pub wrapped_farm_token: DcdtTokenPayment<M>,
    pub rewards: DcdtTokenPayment<M>,
}

#[dharitri_sc::module]
pub trait ProxyDexActionsModule {
    fn call_add_liquidity_proxy(
        &self,
        payments: ManagedVec<DcdtTokenPayment>,
        pair_address: ManagedAddress,
        first_token_amount_min: BigUint,
        second_token_amount_min: BigUint,
    ) -> AddLiquidityProxyResult<Self::Api> {
        let proxy_dex_address = self.proxy_dex_address().get();
        let output_payments: MultiValueEncoded<DcdtTokenPayment> = self
            .proxy_dex_proxy(proxy_dex_address)
            .add_liquidity_proxy(
                pair_address,
                first_token_amount_min,
                second_token_amount_min,
            )
            .with_multi_token_transfer(payments)
            .execute_on_dest_context();

        let output_payments_vec = output_payments.to_vec();

        AddLiquidityProxyResult {
            wrapped_lp_token: output_payments_vec.get(0),
            locked_token_leftover: output_payments_vec.get(1),
            wrewa_leftover: output_payments_vec.get(2),
        }
    }

    fn call_enter_farm_proxy(
        &self,
        user: ManagedAddress,
        payments: ManagedVec<DcdtTokenPayment>,
        farm_address: ManagedAddress,
    ) -> EnterFarmProxyResult<Self::Api> {
        let proxy_dex_address = self.proxy_dex_address().get();
        let result: EnterFarmProxyResultType<Self::Api> = self
            .proxy_dex_proxy(proxy_dex_address)
            .enter_farm_proxy_endpoint(farm_address, OptionalValue::Some(user))
            .with_multi_token_transfer(payments)
            .execute_on_dest_context();

        let (wrapped_farm_token, rewards) = result.into_tuple();

        EnterFarmProxyResult {
            wrapped_farm_token,
            rewards,
        }
    }

    #[storage_mapper("proxyDexAddress")]
    fn proxy_dex_address(&self) -> SingleValueMapper<ManagedAddress>;

    #[proxy]
    fn proxy_dex_proxy(&self, sc_address: ManagedAddress) -> proxy_dex::Proxy<Self::Api>;
}
