dharitri_sc::imports!();
dharitri_sc::derive_imports!();

use crate::common_storage;
use crate::subtract_payments::Epoch;
use crate::{fees, pair_actions};

pub const MAX_USER_DEPOSITS: usize = 20;
pub const MAX_SERVICES_LENGTH: usize = 20;

#[derive(TypeAbi, TopEncode, TopDecode, NestedEncode, NestedDecode, ManagedVecItem)]
pub struct ServiceInfo<M: ManagedTypeApi> {
    pub opt_payment_token: Option<TokenIdentifier<M>>,
    pub amount: BigUint<M>,
    pub payment_in_stable: bool,
    pub subscription_epochs: Epoch,
}

#[dharitri_sc::module]
pub trait ServiceModule:
    fees::FeesModule + pair_actions::PairActionsModule + common_storage::CommonStorageModule
{
    /// Arguments are MultiValue4 of opt_payment_token, payment_amount, payment_in_stable and subscription_epochs
    #[endpoint(registerService)]
    fn register_service(
        &self,
        args: MultiValueEncoded<MultiValue4<Option<TokenIdentifier>, BigUint, bool, Epoch>>,
    ) {
        require!(!args.is_empty(), "No arguments provided");

        let service_address = self.blockchain().get_caller();
        let existing_service_id = self.service_id().get_id(&service_address);
        require!(existing_service_id == NULL_ID, "Service already registered");

        let mut services = ManagedVec::<Self::Api, _>::new();
        for arg in args {
            let (opt_payment_token, amount, payment_in_stable, subscription_epochs) =
                arg.into_tuple();

            require!(subscription_epochs > 0, "Subscription epochs must be > 0");
            if let Some(token_id) = &opt_payment_token {
                require!(
                    self.accepted_fees_tokens().contains(token_id),
                    "Invalid token ID"
                );
            }

            services.push(ServiceInfo {
                opt_payment_token,
                amount,
                payment_in_stable,
                subscription_epochs,
            });
        }

        self.pending_service_info(&service_address)
            .update(|existing_services| {
                existing_services.extend(services.iter());
                require!(
                    existing_services.len() <= MAX_SERVICES_LENGTH,
                    "Maximum services length reached"
                );
            });
        let _ = self.pending_services().insert(service_address);
    }

    #[endpoint(addExtraServices)]
    fn add_extra_services(
        &self,
        args: MultiValueEncoded<MultiValue4<Option<TokenIdentifier>, BigUint, bool, Epoch>>,
    ) {
        require!(!args.is_empty(), "No arguments provided");

        let service_address = self.blockchain().get_caller();
        let existing_service_id = self.service_id().get_id(&service_address);
        require!(existing_service_id != NULL_ID, "Service not registered");

        let mut services = ManagedVec::<Self::Api, _>::new();
        for arg in args {
            let (opt_payment_token, amount, payment_in_stable, subscription_epochs) =
                arg.into_tuple();

            require!(subscription_epochs > 0, "Subscription epochs must be > 0");
            if let Some(token_id) = &opt_payment_token {
                require!(
                    self.accepted_fees_tokens().contains(token_id),
                    "Invalid token ID"
                );
            }

            services.push(ServiceInfo {
                opt_payment_token,
                amount,
                payment_in_stable,
                subscription_epochs,
            });
        }

        let service_info_mapper = self.service_info(existing_service_id);
        service_info_mapper.update(|existing_services| {
            existing_services.extend(services.iter());
            require!(
                existing_services.len() <= MAX_SERVICES_LENGTH,
                "Maximum services length reached"
            );
        });
    }

    #[endpoint(unregisterService)]
    fn unregister_service(&self) {
        let service_address = self.blockchain().get_caller();
        let service_id = self.service_id().remove_by_address(&service_address);
        if service_id != NULL_ID {
            self.service_info(service_id).clear();
        }

        let _ = self.pending_services().swap_remove(&service_address);
        self.pending_service_info(&service_address).clear();
    }

    #[only_owner]
    #[endpoint(unregisterServiceByOwner)]
    fn unregister_service_by_owner(&self, service_address: ManagedAddress) {
        let service_id = self.service_id().remove_by_address(&service_address);
        if service_id != NULL_ID {
            self.service_info(service_id).clear();
        }

        let _ = self.pending_services().swap_remove(&service_address);
        self.pending_service_info(&service_address).clear();
    }

    #[only_owner]
    #[endpoint(approveService)]
    fn approve_service(&self, service_address: ManagedAddress) {
        require!(
            self.pending_services().contains(&service_address),
            "Unknown service"
        );

        let service_id = self.service_id().insert_new(&service_address);
        let service_info = self.pending_service_info(&service_address).take();
        self.service_info(service_id).set(&service_info);

        require!(
            self.service_info(service_id).get().len() <= MAX_SERVICES_LENGTH,
            "Maximum services lenght reached"
        );

        let _ = self.pending_services().swap_remove(&service_address);
    }

    /// subscribe with the following arguments: service_id, service index
    #[endpoint]
    fn subscribe(&self, services: MultiValueEncoded<MultiValue2<AddressId, usize>>) {
        let caller = self.blockchain().get_caller();
        let caller_id = self.user_id().get_id_non_zero(&caller);

        for service in services {
            let (service_id, service_index) = service.into_tuple();
            let service_options = self.service_info(service_id).get();
            require!(
                service_index < service_options.len(),
                "Invalid service index"
            );

            let _ = self
                .subscribed_users(service_id, service_index)
                .insert(caller_id);
        }
    }

    /// unsubscribe from the given services, by providing the service_id and service indexes
    #[endpoint]
    fn unsubscribe(&self, services: MultiValueEncoded<MultiValue2<AddressId, usize>>) {
        let caller = self.blockchain().get_caller();
        let caller_id = self.user_id().get_id_non_zero(&caller);

        for service in services {
            let (service_id, service_index) = service.into_tuple();

            let _ = self
                .subscribed_users(service_id, service_index)
                .swap_remove(&caller_id);
            self.user_next_payment_epoch(caller_id, service_id, service_index)
                .clear();
        }
    }
}
