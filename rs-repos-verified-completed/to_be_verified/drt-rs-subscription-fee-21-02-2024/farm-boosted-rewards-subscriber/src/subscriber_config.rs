dharitri_sc::imports!();
dharitri_sc::derive_imports!();

use config::ProxyTrait as _;
use subscription_fee::subtract_payments::Epoch;

pub type Percentage = u32;
pub const TOTAL_PERCENTAGE: Percentage = 10_000;
pub const EPOCHS_IN_WEEK: u64 = 7;

#[derive(Default, TypeAbi, TopEncode, TopDecode)]
pub struct UserLastPayment {
    pub service_index: usize,
    pub epoch: Epoch,
}

#[derive(TypeAbi, TopEncode, TopDecode)]
pub struct MoaActionsPercentages {
    pub lock: Percentage,
    pub fees: Percentage,
    pub burn: Percentage,
}

pub struct MoaActionsValue<M: ManagedTypeApi> {
    pub lock: BigUint<M>,
    pub fees: BigUint<M>,
    pub burn: BigUint<M>,
}

impl MoaActionsPercentages {
    pub fn is_valid(&self) -> bool {
        self.lock + self.fees + self.burn == TOTAL_PERCENTAGE
            && self.lock <= TOTAL_PERCENTAGE
            && self.fees <= TOTAL_PERCENTAGE
            && self.burn <= TOTAL_PERCENTAGE
    }

    pub fn get_amounts_per_category<M: ManagedTypeApi>(
        &self,
        total: &BigUint<M>,
    ) -> MoaActionsValue<M> {
        let lock_amount = total * self.lock / TOTAL_PERCENTAGE;
        let fees_amount = total * self.fees / TOTAL_PERCENTAGE;
        let burn_amount = total - &lock_amount - &fees_amount;

        MoaActionsValue {
            lock: lock_amount,
            fees: fees_amount,
            burn: burn_amount,
        }
    }
}

impl<M: ManagedTypeApi> MoaActionsValue<M> {
    pub fn get_sell_amount(&self) -> BigUint<M> {
        &self.lock + &self.burn
    }
}

#[dharitri_sc::module]
pub trait SubscriberConfigModule {
    #[only_owner]
    #[endpoint(setFeesClaimAddress)]
    fn set_fees_claim_address(&self, fees_claim_address: ManagedAddress) {
        self.fees_claim_address().set(fees_claim_address)
    }

    #[only_owner]
    #[endpoint(addMaxFeeWithdrawPerWeek)]
    fn add_max_fee_withdraw_per_week(&self, max_amount: BigUint) {
        self.max_fee_withdraw_per_week().set(max_amount);
    }

    fn call_swap_to_moa(
        &self,
        pair_address: ManagedAddress,
        moa_token_id: TokenIdentifier,
        input_token_id: TokenIdentifier,
        amount: BigUint,
        min_amount_out: BigUint,
    ) -> DcdtTokenPayment {
        self.other_pair_proxy(pair_address)
            .swap_tokens_fixed_input(moa_token_id, min_amount_out)
            .with_dcdt_transfer(DcdtTokenPayment::new(input_token_id, 0, amount))
            .execute_on_dest_context()
    }

    fn call_lock_tokens(
        &self,
        energy_factory_address: ManagedAddress,
        input_tokens: DcdtTokenPayment,
        lock_epochs: Epoch,
        destination: ManagedAddress,
    ) -> DcdtTokenPayment {
        self.energy_factory_proxy(energy_factory_address)
            .lock_tokens_endpoint(lock_epochs, destination)
            .with_dcdt_transfer(input_tokens)
            .execute_on_dest_context()
    }

    fn claim_boosted_rewards(
        &self,
        sc_address: ManagedAddress,
        user: ManagedAddress,
    ) -> DcdtTokenPayment {
        self.farm_proxy_obj(sc_address)
            .claim_boosted_rewards(user)
            .execute_on_dest_context()
    }

    fn get_user_allow_claim_boosted_rewards(
        &self,
        sc_address: ManagedAddress,
        user: ManagedAddress,
    ) -> bool {
        self.farm_proxy_obj(sc_address)
            .get_allow_external_claim_rewards(user)
            .execute_on_dest_context()
    }

    #[proxy]
    fn other_pair_proxy(&self, sc_address: ManagedAddress) -> pair::Proxy<Self::Api>;

    #[proxy]
    fn energy_factory_proxy(&self, sc_address: ManagedAddress) -> energy_factory::Proxy<Self::Api>;

    #[proxy]
    fn farm_proxy_obj(
        &self,
        sc_address: ManagedAddress,
    ) -> farm_with_locked_rewards::Proxy<Self::Api>;

    #[view(getUserLastPayment)]
    #[storage_mapper("user_last_payment")]
    fn user_last_payment(&self, user_id: AddressId) -> SingleValueMapper<UserLastPayment>;

    #[storage_mapper("moaTokenId")]
    fn moa_token_id(&self) -> SingleValueMapper<TokenIdentifier>;

    #[storage_mapper("moaPair")]
    fn moa_pair(&self) -> SingleValueMapper<ManagedAddress>;

    #[view(getLockPeriod)]
    #[storage_mapper("lockPeriod")]
    fn lock_period(&self) -> SingleValueMapper<Epoch>;

    #[view(getNormalUserPercentage)]
    #[storage_mapper("normalUserPercentage")]
    fn normal_user_percentage(&self) -> SingleValueMapper<MoaActionsPercentages>;

    #[view(getPremiumUserPercentage)]
    #[storage_mapper("premiumUserPercentage")]
    fn premium_user_percentage(&self) -> SingleValueMapper<MoaActionsPercentages>;

    #[view(getTotalFees)]
    #[storage_mapper("totalFees")]
    fn total_fees(&self) -> SingleValueMapper<BigUint>;

    #[view(getMaxFeeWithdrawPerWeek)]
    #[storage_mapper("maxFeeWithdrawPerWeek")]
    fn max_fee_withdraw_per_week(&self) -> SingleValueMapper<BigUint>;

    #[view(getLastFeeWithdrawEpoch)]
    #[storage_mapper("lastFeeWithdrawEpoch")]
    fn last_fee_withdraw_epoch(&self) -> SingleValueMapper<Epoch>;

    #[view(getFeesClaimAddress)]
    #[storage_mapper("feesClaimAddress")]
    fn fees_claim_address(&self) -> SingleValueMapper<ManagedAddress>;

    #[view(getEnergyThreshold)]
    #[storage_mapper("energyThreshold")]
    fn energy_threshold(&self) -> SingleValueMapper<BigUint>;

    #[storage_mapper("farmId")]
    fn farm_id(&self) -> AddressToIdMapper<Self::Api>;

    // used for external storage read
    #[storage_mapper("userId")]
    fn user_id(&self) -> AddressToIdMapper<Self::Api>;

    #[storage_mapper("first_token_id")]
    fn first_token_id(&self) -> SingleValueMapper<TokenIdentifier>;

    #[storage_mapper("second_token_id")]
    fn second_token_id(&self) -> SingleValueMapper<TokenIdentifier>;
}
