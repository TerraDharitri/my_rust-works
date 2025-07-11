use crate::common::{custom_callbacks::CallbackProxy as _, signature::CheckExecutionSignatureArgs};

use crate::common::common_types::{
    Action, ActionMultiValue, ActionStruct, CallType, RewaTxType, DcdtTxType, GasLimit,
    GeneralActionData, PaymentsVec, REWA_TOKEN_ID,
};

use super::intents::IntentId;

const DEFAULT_EXTRA_CALLBACK_GAS: GasLimit = 10_000_000;
static INVALID_TX_DATA_ERR_MSG: &[u8] = b"Invalid Tx data";

dharitri_sc::imports!();

#[dharitri_sc::module]
pub trait ExecutionModule:
    crate::common::users::UsersModule
    + crate::common::signature::SignatureModule
    + crate::common::custom_callbacks::CustomCallbacksModule
    + super::intent_storage::IntentStorageModule
{
    #[endpoint(multiActionForUser)]
    fn multi_action_for_user(
        &self,
        user_address: ManagedAddress,
        actions: MultiValueEncoded<ActionMultiValue<Self::Api>>,
    ) {
        let own_sc_address = self.blockchain().get_sc_address();
        let actions_vec = self.collect_actions(actions);
        self.multi_action_for_user_common(&user_address, &actions_vec, &own_sc_address);
    }

    /// Pairs of (user_address, actions_vec)
    #[endpoint(multiActionForMultiUsers)]
    fn multi_action_for_multi_users(
        &self,
        args: MultiValueEncoded<MultiValue2<ManagedAddress, ManagedVec<ActionStruct<Self::Api>>>>,
    ) {
        self.require_non_empty_actions(&args);

        let own_sc_address = self.blockchain().get_sc_address();
        for pair in args {
            let (user_address, actions_vec) = pair.into_tuple();
            self.multi_action_for_user_common(&user_address, &actions_vec, &own_sc_address);
        }
    }

    fn collect_actions(
        &self,
        actions: MultiValueEncoded<ActionMultiValue<Self::Api>>,
    ) -> ManagedVec<ActionStruct<Self::Api>> {
        self.require_non_empty_actions(&actions);

        let mut actions_vec = ManagedVec::new();
        for action_multi in actions {
            let (action, user_nonce, signature) = action_multi.into_tuple();
            let action_struct = ActionStruct::new(action, user_nonce, signature);
            actions_vec.push(action_struct);
        }

        actions_vec
    }

    fn multi_action_for_user_common<T: Action<Self::Api>>(
        &self,
        user_address: &ManagedAddress,
        actions: &ManagedVec<T>,
        own_sc_address: &ManagedAddress,
    ) {
        self.check_can_execute_actions(user_address, actions, own_sc_address);

        for action_struct in actions {
            let mut action = action_struct.get_general_action_data();
            let rewa_value = self.get_rewa_value(&mut action.payments);
            self.execute_action_by_type(user_address.clone(), rewa_value, action, None);
        }
    }

    fn check_can_execute_actions<T: Action<Self::Api>>(
        &self,
        user_address: &ManagedAddress,
        actions: &ManagedVec<T>,
        own_sc_address: &ManagedAddress,
    ) {
        let user_id = self.user_ids().get_id_non_zero(user_address);
        let nonce_mapper = self.user_nonce(user_id);
        let mut user_nonce = nonce_mapper.get();
        let tokens_mapper = self.user_tokens(user_id);
        let mut user_tokens = tokens_mapper.get();
        for action_struct in actions {
            let (opt_nonce, opt_signature, action) = (
                action_struct.get_opt_nonce(),
                action_struct.get_opt_signature(),
                action_struct.get_general_action_data(),
            );
            require!(
                &action.dest_address != own_sc_address,
                "Invalid destination"
            );
            require!(!action.is_banned_endpoint_name(), "Invalid endpoint name");

            if let Some(nonce) = opt_nonce {
                require!(nonce == user_nonce, "Invalid user nonce");

                if let Some(signature) = opt_signature {
                    let args = CheckExecutionSignatureArgs {
                        own_sc_address,
                        user_address,
                        user_nonce,
                        action: &action,
                        signature: &signature,
                    };
                    self.check_execution_signature(args);
                }

                user_nonce += 1;
            }

            self.check_exec_args(&action);
            self.deduct_payments(&action.payments, &mut user_tokens);
        }

        nonce_mapper.set(user_nonce);
        tokens_mapper.set(user_tokens);
    }

    fn check_exec_args(&self, action: &GeneralActionData<Self::Api>) {
        if !self.blockchain().is_smart_contract(&action.dest_address) {
            require!(
                action.opt_execution.is_none(),
                "May not use call data for user transfers"
            );
        }
    }

    fn build_rewa_tx(
        &self,
        rewa_value: BigUint,
        action_data: GeneralActionData<Self::Api>,
    ) -> RewaTxType<Self::Api> {
        require!(action_data.opt_execution.is_some(), INVALID_TX_DATA_ERR_MSG);

        let sc_exec_data = unsafe { action_data.opt_execution.unwrap_unchecked() };
        self.tx()
            .to(action_data.dest_address)
            .rewa(rewa_value)
            .raw_call(sc_exec_data.endpoint_name)
            .arguments_raw(sc_exec_data.args.into())
            .gas(sc_exec_data.gas_limit)
    }

    fn build_dcdt_tx(&self, action_data: GeneralActionData<Self::Api>) -> DcdtTxType<Self::Api> {
        require!(action_data.opt_execution.is_some(), INVALID_TX_DATA_ERR_MSG);

        let sc_exec_data = unsafe { action_data.opt_execution.unwrap_unchecked() };
        self.tx()
            .to(action_data.dest_address)
            .multi_dcdt(action_data.payments)
            .raw_call(sc_exec_data.endpoint_name)
            .arguments_raw(sc_exec_data.args.into())
            .gas(sc_exec_data.gas_limit)
    }

    fn get_rewa_value(&self, payments: &mut PaymentsVec<Self::Api>) -> BigUint {
        let rewa_token_id = TokenIdentifier::from_dcdt_bytes(REWA_TOKEN_ID);
        let mut opt_rewa_index = None;
        let mut rewa_value = BigUint::zero();
        for (i, payment) in payments.iter().enumerate() {
            if payment.token_identifier != rewa_token_id {
                continue;
            }

            require!(opt_rewa_index.is_none(), "Only one REWA payment allowed");

            opt_rewa_index = Some(i);
            rewa_value = payment.amount;
        }

        if let Some(index) = opt_rewa_index {
            payments.remove(index);

            require!(payments.is_empty(), "Cannot transfer both REWA and DCDT");
        }

        rewa_value
    }

    fn execute_action_by_type(
        &self,
        user_address: ManagedAddress,
        rewa_value: BigUint,
        action: GeneralActionData<Self::Api>,
        opt_intent_id: Option<IntentId>,
    ) {
        match action.call_type {
            CallType::Transfer => {
                if rewa_value == 0 {
                    self.tx()
                        .to(action.dest_address)
                        .multi_dcdt(action.payments)
                        .transfer();
                } else {
                    self.tx()
                        .to(action.dest_address)
                        .rewa(rewa_value)
                        .transfer()
                }
            }
            CallType::Sync => {
                if rewa_value == 0 {
                    let tx = self.build_dcdt_tx(action);
                    tx.sync_call();
                } else {
                    let tx = self.build_rewa_tx(rewa_value, action);
                    tx.sync_call();
                }
            }
            CallType::Async => {
                let mut original_payments = action.payments.clone();
                if rewa_value == 0 {
                    let tx = self.build_dcdt_tx(action);
                    tx.with_callback(self.callbacks().user_action_cb(
                        user_address,
                        original_payments,
                        opt_intent_id,
                    ))
                    .with_extra_gas_for_callback(DEFAULT_EXTRA_CALLBACK_GAS)
                    .register_promise();
                } else {
                    original_payments.push(DcdtTokenPayment::new(
                        TokenIdentifier::from_dcdt_bytes(REWA_TOKEN_ID),
                        0,
                        rewa_value.clone(),
                    ));

                    let tx = self.build_rewa_tx(rewa_value, action);
                    tx.with_callback(self.callbacks().user_action_cb(
                        user_address,
                        original_payments,
                        opt_intent_id,
                    ))
                    .with_extra_gas_for_callback(DEFAULT_EXTRA_CALLBACK_GAS)
                    .register_promise();
                }
            }
        };
    }

    fn require_non_empty_actions<T>(&self, actions: &MultiValueEncoded<T>) {
        require!(!actions.is_empty(), "No actions");
    }
}
