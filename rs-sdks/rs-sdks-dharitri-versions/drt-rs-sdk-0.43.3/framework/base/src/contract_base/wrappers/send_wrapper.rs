use core::marker::PhantomData;

use crate::codec::Empty;

use crate::{
    api::{
        BlockchainApi, BlockchainApiImpl, CallTypeApi, StorageReadApi,
        CHANGE_OWNER_BUILTIN_FUNC_NAME, CLAIM_DEVELOPER_REWARDS_FUNC_NAME,
        DCDT_LOCAL_BURN_FUNC_NAME, DCDT_LOCAL_MINT_FUNC_NAME, DCDT_NFT_ADD_QUANTITY_FUNC_NAME,
        DCDT_NFT_ADD_URI_FUNC_NAME, DCDT_NFT_BURN_FUNC_NAME, DCDT_NFT_CREATE_FUNC_NAME,
        DCDT_NFT_UPDATE_ATTRIBUTES_FUNC_NAME,
    },
    codec,
    dcdt::DCDTSystemSmartContractProxy,
    types::{
        BigUint, ContractCall, ContractCallNoPayment, RewaOrDcdtTokenIdentifier, DcdtTokenPayment,
        ManagedAddress, ManagedArgBuffer, ManagedBuffer, ManagedType, ManagedVec, TokenIdentifier,
    },
};

use super::BlockchainWrapper;

const PERCENTAGE_TOTAL: u64 = 10_000;

use super::SendRawWrapper;

/// API that groups methods that either send REWA or DCDT, or that call other contracts.
// pub trait SendApi: Clone + Sized {

#[derive(Default)]
pub struct SendWrapper<A>
where
    A: CallTypeApi + StorageReadApi + BlockchainApi,
{
    _phantom: PhantomData<A>,
}

impl<A> SendWrapper<A>
where
    A: CallTypeApi + StorageReadApi + BlockchainApi,
{
    pub fn new() -> Self {
        SendWrapper {
            _phantom: PhantomData,
        }
    }

    #[inline]
    fn send_raw_wrapper(&self) -> SendRawWrapper<A> {
        SendRawWrapper::new()
    }

    /// A proxy for calling the system smart contract.
    ///
    /// Use the methods of this proxy to launch contract calls to the system SC.
    #[inline]
    pub fn dcdt_system_sc_proxy(&self) -> DCDTSystemSmartContractProxy<A> {
        DCDTSystemSmartContractProxy::new_proxy_obj()
    }

    /// Convenient way to quickly instance a minimal contract call (with no REWA, no arguments, etc.)
    ///
    /// You can further configure this contract call by chaining methods to it.
    #[inline]
    pub fn contract_call<R>(
        &self,
        to: ManagedAddress<A>,
        endpoint_name: ManagedBuffer<A>,
    ) -> ContractCallNoPayment<A, R> {
        ContractCallNoPayment::new(to, endpoint_name)
    }

    /// Sends REWA to a given address, directly.
    /// Used especially for sending REWA to regular accounts.
    #[inline]
    pub fn direct_rewa(&self, to: &ManagedAddress<A>, amount: &BigUint<A>) {
        self.send_raw_wrapper().direct_rewa(to, amount, Empty)
    }

    /// Sends REWA to a given address, directly.
    /// Used especially for sending REWA to regular accounts.
    ///
    /// If the amount is 0, it returns without error.
    pub fn direct_non_zero_rewa(&self, to: &ManagedAddress<A>, amount: &BigUint<A>) {
        if amount == &0 {
            return;
        }

        self.direct_rewa(to, amount)
    }

    /// Sends either REWA, DCDT or NFT to the target address,
    /// depending on the token identifier and nonce
    #[inline]
    pub fn direct(
        &self,
        to: &ManagedAddress<A>,
        token: &RewaOrDcdtTokenIdentifier<A>,
        nonce: u64,
        amount: &BigUint<A>,
    ) {
        self.direct_with_gas_limit(to, token, nonce, amount, 0, Empty, &[]);
    }

    /// Sends either REWA, DCDT or NFT to the target address,
    /// depending on the token identifier and nonce.
    ///
    /// If the amount is 0, it returns without error.
    #[inline]
    pub fn direct_non_zero(
        &self,
        to: &ManagedAddress<A>,
        token: &RewaOrDcdtTokenIdentifier<A>,
        nonce: u64,
        amount: &BigUint<A>,
    ) {
        self.direct_non_zero_with_gas_limit(to, token, nonce, amount, 0, Empty, &[]);
    }

    /// Sends a single DCDT transfer, and calls an endpoint at the destination.
    ///
    /// Avoid if possible, use a contract call with DCDT transfer instead, and call `.transfer_execute()` on it.
    #[allow(clippy::too_many_arguments)]
    pub fn direct_dcdt_with_gas_limit<D>(
        &self,
        to: &ManagedAddress<A>,
        token_identifier: &TokenIdentifier<A>,
        nonce: u64,
        amount: &BigUint<A>,
        gas: u64,
        endpoint_name: D,
        arguments: &[ManagedBuffer<A>],
    ) where
        D: Into<ManagedBuffer<A>>,
    {
        if nonce == 0 {
            let _ = self.send_raw_wrapper().transfer_dcdt_execute(
                to,
                token_identifier,
                amount,
                gas,
                &endpoint_name.into(),
                &arguments.into(),
            );
        } else {
            let _ = self.send_raw_wrapper().transfer_dcdt_nft_execute(
                to,
                token_identifier,
                nonce,
                amount,
                gas,
                &endpoint_name.into(),
                &arguments.into(),
            );
        }
    }

    /// Sends a single DCDT transfer, and calls an endpoint at the destination.
    ///
    /// If the amount is 0, it returns without error.
    ///
    /// Avoid if possible, use a contract call with DCDT transfer instead, and call `.transfer_execute()` on it.
    #[allow(clippy::too_many_arguments)]
    pub fn direct_non_zero_dcdt_with_gas_limit<D>(
        &self,
        to: &ManagedAddress<A>,
        token_identifier: &TokenIdentifier<A>,
        nonce: u64,
        amount: &BigUint<A>,
        gas: u64,
        endpoint_name: D,
        arguments: &[ManagedBuffer<A>],
    ) where
        D: Into<ManagedBuffer<A>>,
    {
        if amount == &0 {
            return;
        }
        self.direct_dcdt_with_gas_limit(
            to,
            token_identifier,
            nonce,
            amount,
            gas,
            endpoint_name,
            arguments,
        );
    }

    /// Sends a single DCDT transfer to target address.
    #[inline]
    #[allow(clippy::too_many_arguments)]
    pub fn direct_dcdt(
        &self,
        to: &ManagedAddress<A>,
        token_identifier: &TokenIdentifier<A>,
        nonce: u64,
        amount: &BigUint<A>,
    ) {
        self.direct_dcdt_with_gas_limit(to, token_identifier, nonce, amount, 0, Empty, &[]);
    }

    /// Sends a single DCDT transfer to target address.
    ///
    /// If the amount is 0, it returns without error.
    pub fn direct_non_zero_dcdt_payment(
        &self,
        to: &ManagedAddress<A>,
        payment: &DcdtTokenPayment<A>,
    ) {
        if payment.amount == 0 {
            return;
        }

        self.direct_dcdt(
            to,
            &payment.token_identifier,
            payment.token_nonce,
            &payment.amount,
        );
    }

    /// Sends either REWA, DCDT or NFT to the target address,
    /// depending on the token identifier and nonce.
    /// Also and calls an endpoint at the destination.
    ///
    /// Avoid if possible, use a contract call with DCDT transfer instead, and call `.transfer_execute()` on it.
    #[allow(clippy::too_many_arguments)]
    pub fn direct_with_gas_limit<D>(
        &self,
        to: &ManagedAddress<A>,
        token: &RewaOrDcdtTokenIdentifier<A>,
        nonce: u64,
        amount: &BigUint<A>,
        gas: u64,
        endpoint_name: D,
        arguments: &[ManagedBuffer<A>],
    ) where
        D: Into<ManagedBuffer<A>>,
    {
        if let Some(dcdt_token_identifier) = token.as_dcdt_option() {
            self.direct_dcdt_with_gas_limit(
                to,
                &dcdt_token_identifier,
                nonce,
                amount,
                gas,
                endpoint_name,
                arguments,
            );
        } else {
            let _ = self.send_raw_wrapper().direct_rewa_execute(
                to,
                amount,
                gas,
                &endpoint_name.into(),
                &arguments.into(),
            );
        }
    }
    /// Sends either REWA, DCDT or NFT to the target address,
    /// depending on the token identifier and nonce.
    /// Also and calls an endpoint at the destination.
    ///
    /// If the amount is 0, it returns without error.
    ///
    /// Avoid if possible, use a contract call with DCDT transfer instead, and call `.transfer_execute()` on it.
    #[allow(clippy::too_many_arguments)]
    pub fn direct_non_zero_with_gas_limit<D>(
        &self,
        to: &ManagedAddress<A>,
        token: &RewaOrDcdtTokenIdentifier<A>,
        nonce: u64,
        amount: &BigUint<A>,
        gas: u64,
        endpoint_name: D,
        arguments: &[ManagedBuffer<A>],
    ) where
        D: Into<ManagedBuffer<A>>,
    {
        if amount == &0 {
            return;
        }
        self.direct_with_gas_limit(to, token, nonce, amount, gas, endpoint_name, arguments);
    }

    /// Sends multiple DCDT tokens to a target address.
    pub fn direct_multi(
        &self,
        to: &ManagedAddress<A>,
        payments: &ManagedVec<A, DcdtTokenPayment<A>>,
    ) {
        let _ = self.send_raw_wrapper().multi_dcdt_transfer_execute(
            to,
            payments,
            0,
            &ManagedBuffer::new(),
            &ManagedArgBuffer::new(),
        );
    }

    /// Performs a simple DCDT/NFT transfer, but via async call.  
    ///
    /// As with any async call, this immediately terminates the execution of the current call,
    /// so only use as the last call in your endpoint.
    ///
    /// If you want to perform multiple transfers, use `self.send().transfer_multiple_dcdt_via_async_call()` instead.
    ///
    /// Note that REWA can NOT be transfered with this function.  
    pub fn transfer_dcdt_via_async_call(
        &self,
        to: ManagedAddress<A>,
        token: TokenIdentifier<A>,
        nonce: u64,
        amount: BigUint<A>,
    ) -> ! {
        ContractCallNoPayment::<A, ()>::new(to, ManagedBuffer::new())
            .with_dcdt_transfer((token, nonce, amount))
            .async_call()
            .call_and_exit_ignore_callback()
    }

    /// Performs a simple DCDT/NFT transfer, but via async call.  
    ///
    /// As with any async call, this immediately terminates the execution of the current call,
    /// so only use as the last call in your endpoint.
    ///
    /// If you want to perform multiple transfers, use `self.send().transfer_multiple_dcdt_via_async_call()` instead.  
    /// Note that REWA can NOT be transfered with this function.
    ///
    /// If the amount is 0, it returns without error.
    pub fn transfer_dcdt_non_zero_via_async_call(
        &self,
        to: ManagedAddress<A>,
        token: TokenIdentifier<A>,
        nonce: u64,
        amount: BigUint<A>,
    ) {
        if amount == 0 {
            return;
        }
        ContractCallNoPayment::<A, ()>::new(to, ManagedBuffer::new())
            .with_dcdt_transfer((token, nonce, amount))
            .async_call()
            .call_and_exit_ignore_callback()
    }

    /// Sends multiple DCDT tokens to a target address, via an async call.
    pub fn transfer_multiple_dcdt_via_async_call(
        &self,
        to: ManagedAddress<A>,
        payments: ManagedVec<A, DcdtTokenPayment<A>>,
    ) -> ! {
        ContractCallNoPayment::<A, ()>::new(to, ManagedBuffer::new())
            .with_multi_token_transfer(payments)
            .async_call()
            .call_and_exit_ignore_callback()
    }

    /// Creates a call to the `ClaimDeveloperRewards` builtin function.
    ///
    /// In itself, this does nothing. You need to then call turn the contract call into an async call.
    pub fn claim_developer_rewards(
        &self,
        child_sc_address: ManagedAddress<A>,
    ) -> ContractCallNoPayment<A, ()> {
        ContractCallNoPayment::new(child_sc_address, CLAIM_DEVELOPER_REWARDS_FUNC_NAME)
    }

    /// Creates a call to the `ChangeOwnerAddress` builtin function.
    ///
    /// In itself, this does nothing. You need to then call turn the contract call into an async call.
    pub fn change_owner_address(
        &self,
        child_sc_address: ManagedAddress<A>,
        new_owner: &ManagedAddress<A>,
    ) -> ContractCallNoPayment<A, ()> {
        let mut contract_call =
            ContractCallNoPayment::new(child_sc_address, CHANGE_OWNER_BUILTIN_FUNC_NAME);
        contract_call.proxy_arg(&new_owner);
        contract_call
    }

    /// Allows synchronously calling a local function by name. Execution is resumed afterwards.
    /// You should never have to call this function directly.
    /// Use the other specific methods instead.
    pub fn call_local_dcdt_built_in_function(
        &self,
        gas: u64,
        endpoint_name: &ManagedBuffer<A>,
        arg_buffer: &ManagedArgBuffer<A>,
    ) -> ManagedVec<A, ManagedBuffer<A>> {
        self.send_raw_wrapper()
            .call_local_dcdt_built_in_function(gas, endpoint_name, arg_buffer)
    }

    /// Allows synchronous minting of DCDT/SFT (depending on nonce). Execution is resumed afterwards.
    ///
    /// Note that the SC must have the DCDTLocalMint or DCDTNftAddQuantity roles set,
    /// or this will fail with "action is not allowed".
    ///
    /// For SFTs, you must use `self.send().dcdt_nft_create()` before adding additional quantity.
    ///
    /// This function cannot be used for NFTs.
    pub fn dcdt_local_mint(&self, token: &TokenIdentifier<A>, nonce: u64, amount: &BigUint<A>) {
        let mut arg_buffer = ManagedArgBuffer::new();
        let func_name: &str;

        arg_buffer.push_arg(token);

        if nonce == 0 {
            func_name = DCDT_LOCAL_MINT_FUNC_NAME;
        } else {
            func_name = DCDT_NFT_ADD_QUANTITY_FUNC_NAME;
            arg_buffer.push_arg(nonce);
        }

        arg_buffer.push_arg(amount);

        let _ = self.call_local_dcdt_built_in_function(
            A::blockchain_api_impl().get_gas_left(),
            &ManagedBuffer::from(func_name),
            &arg_buffer,
        );
    }

    /// Allows synchronous minting of DCDT/SFT (depending on nonce). Execution is resumed afterwards.
    ///
    /// Note that the SC must have the DCDTLocalMint or DCDTNftAddQuantity roles set,
    /// or this will fail with "action is not allowed".
    ///
    /// For SFTs, you must use `self.send().dcdt_nft_create()` before adding additional quantity.
    /// This function cannot be used for NFTs.
    ///
    /// If the amount is 0, it returns without error.
    pub fn dcdt_non_zero_local_mint(
        &self,
        token: &TokenIdentifier<A>,
        nonce: u64,
        amount: &BigUint<A>,
    ) {
        if amount == &0 {
            return;
        }
        self.dcdt_local_mint(token, nonce, amount);
    }

    /// Allows synchronous burning of DCDT/SFT/NFT (depending on nonce). Execution is resumed afterwards.
    ///
    /// Note that the SC must have the DCDTLocalBurn or DCDTNftBurn roles set,
    /// or this will fail with "action is not allowed".
    pub fn dcdt_local_burn(&self, token: &TokenIdentifier<A>, nonce: u64, amount: &BigUint<A>) {
        let mut arg_buffer = ManagedArgBuffer::new();
        let func_name: &str;

        arg_buffer.push_arg(token);
        if nonce == 0 {
            func_name = DCDT_LOCAL_BURN_FUNC_NAME;
        } else {
            func_name = DCDT_NFT_BURN_FUNC_NAME;
            arg_buffer.push_arg(nonce);
        }

        arg_buffer.push_arg(amount);

        let _ = self.call_local_dcdt_built_in_function(
            A::blockchain_api_impl().get_gas_left(),
            &ManagedBuffer::from(func_name),
            &arg_buffer,
        );
    }

    /// Allows synchronous burning of DCDT/SFT/NFT (depending on nonce). Execution is resumed afterwards.
    ///
    /// Note that the SC must have the DCDTLocalBurn or DCDTNftBurn roles set,
    /// or this will fail with "action is not allowed".
    ///
    /// If the amount is 0, it returns without error.
    pub fn dcdt_non_zero_local_burn(
        &self,
        token: &TokenIdentifier<A>,
        nonce: u64,
        amount: &BigUint<A>,
    ) {
        if amount == &0 {
            return;
        }
        self.dcdt_local_burn(token, nonce, amount);
    }

    /// Allows burning of multiple DCDT tokens at once.
    ///
    /// Will execute a synchronous call to the appropriate burn builtin function for each.
    pub fn dcdt_local_burn_multi(&self, payments: &ManagedVec<A, DcdtTokenPayment<A>>) {
        for payment in payments {
            self.dcdt_local_burn(
                &payment.token_identifier,
                payment.token_nonce,
                &payment.amount,
            );
        }
    }

    /// Allows burning of multiple DCDT tokens at once.
    ///
    /// Will execute a synchronous call to the appropriate burn builtin function for each.
    ///
    /// If any of the token amounts is 0 skips that token without throwing error.
    pub fn dcdt_non_zero_local_burn_multi(&self, payments: &ManagedVec<A, DcdtTokenPayment<A>>) {
        for payment in payments {
            self.dcdt_non_zero_local_burn(
                &payment.token_identifier,
                payment.token_nonce,
                &payment.amount,
            );
        }
    }

    /// Creates a new NFT token of a certain type (determined by `token_identifier`).
    /// `attributes` can be any serializable custom struct.  
    ///
    /// This is a synchronous built-in function call, so the smart contract execution is resumed afterwards.
    ///
    /// Must have DCDTNftCreate role set, or this will fail with "action is not allowed".
    ///
    /// Returns the nonce of the newly created NFT.
    #[allow(clippy::too_many_arguments)]
    pub fn dcdt_nft_create<T: codec::TopEncode>(
        &self,
        token: &TokenIdentifier<A>,
        amount: &BigUint<A>,
        name: &ManagedBuffer<A>,
        royalties: &BigUint<A>,
        hash: &ManagedBuffer<A>,
        attributes: &T,
        uris: &ManagedVec<A, ManagedBuffer<A>>,
    ) -> u64 {
        let mut arg_buffer = ManagedArgBuffer::new();
        arg_buffer.push_arg(token);
        arg_buffer.push_arg(amount);
        arg_buffer.push_arg(name);
        arg_buffer.push_arg(royalties);
        arg_buffer.push_arg(hash);
        arg_buffer.push_arg(attributes);

        if uris.is_empty() {
            // at least one URI is required, so we push an empty one
            arg_buffer.push_arg(codec::Empty);
        } else {
            // The API function has the last argument as variadic,
            // so we top-encode each and send as separate argument
            for uri in uris {
                arg_buffer.push_arg(uri);
            }
        }

        let output = self.call_local_dcdt_built_in_function(
            A::blockchain_api_impl().get_gas_left(),
            &ManagedBuffer::from(DCDT_NFT_CREATE_FUNC_NAME),
            &arg_buffer,
        );

        if let Some(first_result_bytes) = output.try_get(0) {
            first_result_bytes.parse_as_u64().unwrap_or_default()
        } else {
            0
        }
    }

    /// Creates a new NFT token of a certain type (determined by `token_identifier`).
    ///
    /// `attributes` can be any serializable custom struct.
    ///
    /// This is a built-in function, so the smart contract execution is resumed after.
    /// Must have DCDTNftCreate role set, or this will fail with "action is not allowed".
    ///
    /// Returns the nonce of the newly created NFT.
    ///
    /// If the amount is 0, it returns without error.
    #[allow(clippy::too_many_arguments)]
    pub fn dcdt_non_zero_nft_create<T: codec::TopEncode>(
        &self,
        token: &TokenIdentifier<A>,
        amount: &BigUint<A>,
        name: &ManagedBuffer<A>,
        royalties: &BigUint<A>,
        hash: &ManagedBuffer<A>,
        attributes: &T,
        uris: &ManagedVec<A, ManagedBuffer<A>>,
    ) -> u64 {
        if amount == &0 {
            0
        } else {
            self.dcdt_nft_create(token, amount, name, royalties, hash, attributes, uris)
        }
    }

    /// Quick way of creating a new NFT token instance.
    ///
    /// Returns the new NFT nonce.
    #[inline]
    pub fn dcdt_nft_create_compact<T: codec::TopEncode>(
        &self,
        token: &TokenIdentifier<A>,
        amount: &BigUint<A>,
        attributes: &T,
    ) -> u64 {
        self.dcdt_nft_create_compact_named(token, amount, &ManagedBuffer::new(), attributes)
    }

    /// Quick way of creating a new NFT token instance, with custom name.
    ///
    /// Returns the new NFT nonce.
    pub fn dcdt_nft_create_compact_named<T: codec::TopEncode>(
        &self,
        token: &TokenIdentifier<A>,
        amount: &BigUint<A>,
        name: &ManagedBuffer<A>,
        attributes: &T,
    ) -> u64 {
        let big_zero = BigUint::zero();
        let empty_buffer = ManagedBuffer::new();
        let empty_vec = ManagedVec::from_handle(empty_buffer.get_handle());

        self.dcdt_nft_create(
            token,
            amount,
            name,
            &big_zero,
            &empty_buffer,
            attributes,
            &empty_vec,
        )
    }

    /// Quick way of creating a new NFT token instance.
    ///
    /// Returns the new NFT nonce.
    ///
    /// If the amount is 0, it returns without error.
    #[inline]
    pub fn dcdt_non_zero_nft_create_compact<T: codec::TopEncode>(
        &self,
        token: &TokenIdentifier<A>,
        amount: &BigUint<A>,
        attributes: &T,
    ) -> u64 {
        self.dcdt_non_zero_nft_create_compact_named(
            token,
            amount,
            &ManagedBuffer::new(),
            attributes,
        )
    }

    /// Quick way of creating a new NFT token instance, with custom name.
    ///
    /// Returns the new NFT nonce.
    ///
    /// If the amount is 0, it returns without error.
    pub fn dcdt_non_zero_nft_create_compact_named<T: codec::TopEncode>(
        &self,
        token: &TokenIdentifier<A>,
        amount: &BigUint<A>,
        name: &ManagedBuffer<A>,
        attributes: &T,
    ) -> u64 {
        if amount == &0 {
            0
        } else {
            self.dcdt_nft_create_compact_named(token, amount, name, attributes)
        }
    }

    /// Sends the NFTs to the buyer address and calculates and sends the required royalties to the NFT creator.
    ///
    /// Returns the payment amount left after sending royalties.
    #[allow(clippy::too_many_arguments)]
    pub fn sell_nft(
        &self,
        nft_id: &TokenIdentifier<A>,
        nft_nonce: u64,
        nft_amount: &BigUint<A>,
        buyer: &ManagedAddress<A>,
        payment_token: &RewaOrDcdtTokenIdentifier<A>,
        payment_nonce: u64,
        payment_amount: &BigUint<A>,
    ) -> BigUint<A> {
        let nft_token_data = BlockchainWrapper::<A>::new().get_dcdt_token_data(
            &BlockchainWrapper::<A>::new().get_sc_address(),
            nft_id,
            nft_nonce,
        );
        let royalties_amount = payment_amount.clone() * nft_token_data.royalties / PERCENTAGE_TOTAL;

        let _ = self.send_raw_wrapper().transfer_dcdt_nft_execute(
            buyer,
            nft_id,
            nft_nonce,
            nft_amount,
            0,
            &ManagedBuffer::new(),
            &ManagedArgBuffer::new(),
        );

        if royalties_amount > 0u32 {
            self.direct(
                &nft_token_data.creator,
                payment_token,
                payment_nonce,
                &royalties_amount,
            );

            payment_amount.clone() - royalties_amount
        } else {
            payment_amount.clone()
        }
    }

    /// Sends the NFTs to the buyer address and calculates and sends the required royalties to the NFT creator.
    ///
    /// Returns the payment amount left after sending royalties.
    ///
    /// If the nft_amount or the payment_amount is 0 returns without error
    #[allow(clippy::too_many_arguments)]
    pub fn sell_nft_non_zero(
        &self,
        nft_id: &TokenIdentifier<A>,
        nft_nonce: u64,
        nft_amount: &BigUint<A>,
        buyer: &ManagedAddress<A>,
        payment_token: &RewaOrDcdtTokenIdentifier<A>,
        payment_nonce: u64,
        payment_amount: &BigUint<A>,
    ) -> BigUint<A> {
        if nft_amount == &0 || payment_amount == &0 {
            payment_amount.clone()
        } else {
            self.sell_nft(
                nft_id,
                nft_nonce,
                nft_amount,
                buyer,
                payment_token,
                payment_nonce,
                payment_amount,
            )
        }
    }

    /// Adds a new URI to an NFT, via a synchronous builtin function call.
    pub fn nft_add_uri(
        &self,
        token_id: &TokenIdentifier<A>,
        nft_nonce: u64,
        new_uri: ManagedBuffer<A>,
    ) {
        self.nft_add_multiple_uri(token_id, nft_nonce, &ManagedVec::from_single_item(new_uri));
    }

    /// Adds a multiple URIs to an NFT, via a synchronous builtin function call.
    pub fn nft_add_multiple_uri(
        &self,
        token_id: &TokenIdentifier<A>,
        nft_nonce: u64,
        new_uris: &ManagedVec<A, ManagedBuffer<A>>,
    ) {
        if new_uris.is_empty() {
            return;
        }

        let mut arg_buffer = ManagedArgBuffer::new();
        arg_buffer.push_arg(token_id);
        arg_buffer.push_arg(nft_nonce);

        for uri in new_uris {
            arg_buffer.push_arg(uri);
        }

        let _ = self.call_local_dcdt_built_in_function(
            A::blockchain_api_impl().get_gas_left(),
            &ManagedBuffer::from(DCDT_NFT_ADD_URI_FUNC_NAME),
            &arg_buffer,
        );
    }

    /// Changes attributes of an NFT, via a synchronous builtin function call.
    pub fn nft_update_attributes<T: codec::TopEncode>(
        &self,
        token_id: &TokenIdentifier<A>,
        nft_nonce: u64,
        new_attributes: &T,
    ) {
        let mut arg_buffer = ManagedArgBuffer::new();
        arg_buffer.push_arg(token_id);
        arg_buffer.push_arg(nft_nonce);
        arg_buffer.push_arg(new_attributes);

        let _ = self.call_local_dcdt_built_in_function(
            A::blockchain_api_impl().get_gas_left(),
            &ManagedBuffer::from(DCDT_NFT_UPDATE_ATTRIBUTES_FUNC_NAME),
            &arg_buffer,
        );
    }
}
