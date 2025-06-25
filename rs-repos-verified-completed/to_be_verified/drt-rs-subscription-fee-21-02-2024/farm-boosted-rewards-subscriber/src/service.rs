dharitri_sc::imports!();
dharitri_sc::derive_imports!();

use dharitri_sc_modules::only_admin;

pub const STANDARD_SUBSCRIPTION_INDEX: usize = 0;
pub const PREMIUM_SUBSCRIPTION_INDEX: usize = 1;
pub const PAYMENT_RECURRENCY: u64 = 30;

use crate::{
    events,
    subscriber_config::{self, MoaActionsPercentages, UserLastPayment, EPOCHS_IN_WEEK},
};

#[derive(ManagedVecItem, TypeAbi, TopEncode, TopDecode, PartialEq)]
pub struct MoaOperationItem<M: ManagedTypeApi> {
    pub user_address: ManagedAddress<M>,
    pub amount: BigUint<M>,
}

impl<M: ManagedTypeApi> MoaOperationItem<M> {
    pub fn new(user_address: ManagedAddress<M>, amount: BigUint<M>) -> Self {
        MoaOperationItem {
            user_address,
            amount,
        }
    }
}

#[dharitri_sc::module]
pub trait ServiceModule:
    subscriber_config::SubscriberConfigModule
    + common_subscriber::CommonSubscriberModule
    + energy_query::EnergyQueryModule
    + events::EventsModule
    + only_admin::OnlyAdminModule
{
    #[endpoint(subtractPayment)]
    fn subtract_payment_endpoint(&self, user_ids: MultiValueEncoded<AddressId>) {
        self.require_caller_is_admin();
        let current_epoch = self.blockchain().get_block_epoch();
        let payment_recurrency = PAYMENT_RECURRENCY;
        let standard_service_index = STANDARD_SUBSCRIPTION_INDEX;
        let premium_service_index = PREMIUM_SUBSCRIPTION_INDEX;
        let energy_threshold = self.energy_threshold().get();
        let fees_contract_address = self.fees_contract_address().get();
        let mut standard_processed_user_ids = ManagedVec::new();
        let mut premium_processed_user_ids = ManagedVec::new();

        for user_id in user_ids {
            let opt_user_address = self
                .user_id()
                .get_address_at_address(&fees_contract_address, user_id);
            if opt_user_address.is_none() {
                continue;
            }

            let user_last_payment_mapper = self.user_last_payment(user_id);
            let mut user_last_payment = if user_last_payment_mapper.is_empty() {
                UserLastPayment::default()
            } else {
                user_last_payment_mapper.get()
            };

            if current_epoch < user_last_payment.epoch + payment_recurrency
                && user_last_payment.epoch > 0
            {
                continue;
            }

            let user = unsafe { opt_user_address.unwrap_unchecked() };
            let user_energy = self.get_energy_amount(&user);

            let user_service_index = if user_energy >= energy_threshold {
                premium_processed_user_ids.push(user_id);
                premium_service_index
            } else {
                standard_processed_user_ids.push(user_id);
                standard_service_index
            };

            let subtract_user_payment_result = self.subtract_user_payment(
                fees_contract_address.clone(),
                user_service_index,
                user_id,
            );

            if !subtract_user_payment_result.is_err() {
                user_last_payment = UserLastPayment {
                    service_index: user_service_index,
                    epoch: current_epoch,
                };
                user_last_payment_mapper.set(user_last_payment);
            }
        }

        if !premium_processed_user_ids.is_empty() {
            self.emit_subtract_payment_event(premium_service_index, premium_processed_user_ids);
        }
        if !standard_processed_user_ids.is_empty() {
            self.emit_subtract_payment_event(standard_service_index, standard_processed_user_ids);
        }
    }

    #[endpoint(claimFees)]
    fn claim_fees(&self) -> BigUint {
        self.require_caller_is_admin();
        let current_epoch = self.blockchain().get_block_epoch();
        let last_fee_withdraw_epoch = self.last_fee_withdraw_epoch().get();
        let max_fee_withdraw_per_week = self.max_fee_withdraw_per_week().get();
        let fee_address_mapper = self.fees_claim_address();
        require!(
            max_fee_withdraw_per_week > 0,
            "You cannot withdraw any tokens"
        );
        require!(
            last_fee_withdraw_epoch + EPOCHS_IN_WEEK <= current_epoch,
            "Cannot claim yet"
        );
        require!(
            !fee_address_mapper.is_empty(),
            "The fee address is not defined"
        );

        let fee_address = fee_address_mapper.get();
        let mut total_fees = self.total_fees().take();
        let computed_fees = if total_fees <= max_fee_withdraw_per_week {
            total_fees.clone()
        } else {
            total_fees -= &max_fee_withdraw_per_week;
            self.total_fees().set(&total_fees);
            max_fee_withdraw_per_week
        };

        let wrewa_token_id = self.wrewa_token_id().get();
        self.send()
            .direct_dcdt(&fee_address, &wrewa_token_id, 0, &computed_fees);
        self.last_fee_withdraw_epoch().set(current_epoch);

        computed_fees
    }

    #[endpoint(performMoaOperations)]
    fn perform_moa_operations_endpoint(
        &self,
        service_index: usize,
        total_min_amount_out: BigUint,
        user_ids: MultiValueEncoded<AddressId>,
    ) {
        self.require_caller_is_admin();
        let actions_percentage = if service_index == STANDARD_SUBSCRIPTION_INDEX {
            self.normal_user_percentage().get()
        } else if service_index == PREMIUM_SUBSCRIPTION_INDEX {
            self.premium_user_percentage().get()
        } else {
            sc_panic!("Invalid service index")
        };

        let fees_contract_address = self.fees_contract_address().get();
        let wrewa_token_id = self.wrewa_token_id().get();

        let mut total_fees = BigUint::zero();
        let mut moa_operations_list: ManagedVec<MoaOperationItem<Self::Api>> = ManagedVec::new();
        let mut processed_user_ids = ManagedVec::new();
        for user_id in user_ids {
            let opt_user_address = self
                .user_id()
                .get_address_at_address(&fees_contract_address, user_id);
            if opt_user_address.is_none() {
                continue;
            }

            let fee_mapper = self.user_fees(service_index, user_id);
            if fee_mapper.is_empty() {
                continue;
            }

            let user_last_payment_mapper = self.user_last_payment(user_id);
            if user_last_payment_mapper.is_empty() {
                continue;
            }
            let user_last_payment = user_last_payment_mapper.get();
            if user_last_payment.service_index != service_index {
                continue;
            }

            let fee = fee_mapper.take();
            let token_id = fee.fees.token_identifier;
            require!(token_id == wrewa_token_id, "Invalid fee token id");
            let user_address = unsafe { opt_user_address.unwrap_unchecked() };

            total_fees += &fee.fees.amount;
            let moa_operation = MoaOperationItem::new(user_address, fee.fees.amount);
            moa_operations_list.push(moa_operation);
            processed_user_ids.push(user_id);
        }

        let total_tokens_to_lock = self.perform_moa_operation(
            wrewa_token_id,
            total_fees.clone(),
            &actions_percentage,
            total_min_amount_out,
        );

        if total_tokens_to_lock.amount == 0 {
            return;
        }

        let energy_factory_address = self.energy_factory_address().get();
        let lock_period = self.lock_period().get();

        // Call lock for each user to properly update their energy
        let mut total_processed_amount = BigUint::zero();
        for i in 0..moa_operations_list.len() {
            let moa_operation = moa_operations_list.get(i);
            let user_amount = if i < moa_operations_list.len() - 1 {
                let amount = &total_tokens_to_lock.amount * &moa_operation.amount / &total_fees;
                total_processed_amount += &amount;
                amount
            } else {
                &total_tokens_to_lock.amount - &total_processed_amount
            };

            if user_amount > 0 {
                self.call_lock_tokens(
                    energy_factory_address.clone(),
                    DcdtTokenPayment::new(
                        total_tokens_to_lock.token_identifier.clone(),
                        0,
                        user_amount,
                    ),
                    lock_period,
                    moa_operation.user_address,
                );
            }
        }

        self.emit_moa_operation_event(service_index, processed_user_ids);
    }

    fn perform_moa_operation(
        &self,
        token_id: TokenIdentifier,
        total_tokens: BigUint,
        actions_percentages: &MoaActionsPercentages,
        total_min_amount_out: BigUint,
    ) -> DcdtTokenPayment {
        let actions_value = actions_percentages.get_amounts_per_category(&total_tokens);
        let total_sell_amount = actions_value.get_sell_amount();

        if actions_value.fees > 0 {
            self.total_fees().update(|fees| *fees += actions_value.fees);
        }

        let bought_moa = self.buy_moa(token_id, total_sell_amount, total_min_amount_out);
        let moa_to_lock = &bought_moa.amount * actions_percentages.lock
            / (actions_percentages.lock + actions_percentages.burn);
        let moa_to_burn = &bought_moa.amount - &moa_to_lock;

        if moa_to_burn > 0 {
            self.send()
                .dcdt_local_burn(&bought_moa.token_identifier, 0, &moa_to_burn);
        }

        DcdtTokenPayment::new(bought_moa.token_identifier, 0, moa_to_lock)
    }

    fn buy_moa(
        &self,
        token_id: TokenIdentifier,
        amount: BigUint,
        min_amount_out: BigUint,
    ) -> DcdtTokenPayment {
        let pair_mapper = self.moa_pair();
        require!(!pair_mapper.is_empty(), "The MOA pair is not set");

        let moa_token_id = self.moa_token_id().get();
        let pair_address = pair_mapper.get();

        self.call_swap_to_moa(pair_address, moa_token_id, token_id, amount, min_amount_out)
    }
}
