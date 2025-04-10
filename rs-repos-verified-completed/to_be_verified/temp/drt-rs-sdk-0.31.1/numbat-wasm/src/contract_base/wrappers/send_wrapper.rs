use core::marker::PhantomData;

use crate::{
    api::{
        BlockchainApi, BlockchainApiImpl, CallTypeApi, SendApiImpl, StorageReadApi,
        CHANGE_OWNER_BUILTIN_FUNC_NAME, DCDT_LOCAL_BURN_FUNC_NAME, DCDT_LOCAL_MINT_FUNC_NAME,
        DCDT_MULTI_TRANSFER_FUNC_NAME, DCDT_NFT_ADD_QUANTITY_FUNC_NAME, DCDT_NFT_ADD_URI_FUNC_NAME,
        DCDT_NFT_BURN_FUNC_NAME, DCDT_NFT_CREATE_FUNC_NAME, DCDT_NFT_TRANSFER_FUNC_NAME,
        DCDT_NFT_UPDATE_ATTRIBUTES_FUNC_NAME, DCDT_TRANSFER_FUNC_NAME,
    },
    dcdt::DCDTSystemSmartContractProxy,
    types::{
        BigUint, ContractCall, DcdtTokenPayment, ManagedAddress, ManagedArgBuffer, ManagedBuffer,
        ManagedType, ManagedVec, TokenIdentifier,
    },
};

use super::BlockchainWrapper;

const PERCENTAGE_TOTAL: u64 = 10_000;

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
    pub(crate) fn new() -> Self {
        SendWrapper {
            _phantom: PhantomData,
        }
    }

    pub fn dcdt_system_sc_proxy(&self) -> DCDTSystemSmartContractProxy<A> {
        DCDTSystemSmartContractProxy::new_proxy_obj()
    }

    pub fn contract_call<R>(
        &self,
        to: ManagedAddress<A>,
        endpoint_name: ManagedBuffer<A>,
    ) -> ContractCall<A, R> {
        ContractCall::new(to, endpoint_name)
    }

    /// Sends REWA to a given address, directly.
    /// Used especially for sending REWA to regular accounts.
    pub fn direct_rewa<D>(&self, to: &ManagedAddress<A>, amount: &BigUint<A>, data: D)
    where
        D: Into<ManagedBuffer<A>>,
    {
        A::send_api_impl().direct_rewa(to, amount, data)
    }

    /// Sends either REWA, DCDT or NFT to the target address,
    /// depending on the token identifier and nonce
    pub fn direct<D>(
        &self,
        to: &ManagedAddress<A>,
        token: &TokenIdentifier<A>,
        nonce: u64,
        amount: &BigUint<A>,
        data: D,
    ) where
        D: Into<ManagedBuffer<A>>,
    {
        self.direct_with_gas_limit(to, token, nonce, amount, 0, data, &[]);
    }

    #[allow(clippy::too_many_arguments)]
    pub fn direct_with_gas_limit<D>(
        &self,
        to: &ManagedAddress<A>,
        token: &TokenIdentifier<A>,
        nonce: u64,
        amount: &BigUint<A>,
        gas: u64,
        endpoint_name: D,
        arguments: &[ManagedBuffer<A>],
    ) where
        D: Into<ManagedBuffer<A>>,
    {
        let endpoint_name_managed = endpoint_name.into();
        let mut arg_buffer = ManagedArgBuffer::new_empty();
        for arg in arguments {
            arg_buffer.push_arg(arg);
        }

        if token.is_rewa() {
            let _ = A::send_api_impl().direct_rewa_execute(
                to,
                amount,
                gas,
                &endpoint_name_managed,
                &arg_buffer,
            );
        } else if nonce == 0 {
            let _ = A::send_api_impl().direct_dcdt_execute(
                to,
                token,
                amount,
                gas,
                &endpoint_name_managed,
                &arg_buffer,
            );
        } else {
            let _ = A::send_api_impl().direct_dcdt_nft_execute(
                to,
                token,
                nonce,
                amount,
                gas,
                &endpoint_name_managed,
                &arg_buffer,
            );
        }
    }

    pub fn direct_multi<D>(
        &self,
        to: &ManagedAddress<A>,
        payments: &ManagedVec<A, DcdtTokenPayment<A>>,
        data: D,
    ) where
        D: Into<ManagedBuffer<A>>,
    {
        let _ = A::send_api_impl().direct_multi_dcdt_transfer_execute(
            to,
            payments,
            0,
            &data.into(),
            &ManagedArgBuffer::new_empty(),
        );
    }

    /// Performs a simple DCDT/NFT transfer, but via async call.  
    /// As with any async call, this immediately terminates the execution of the current call.  
    /// So only use as the last call in your endpoint.  
    /// If you want to perform multiple transfers, use `self.send().transfer_multiple_dcdt_via_async_call()` instead.  
    /// Note that REWA can NOT be transfered with this function.  
    pub fn transfer_dcdt_via_async_call<D>(
        &self,
        to: &ManagedAddress<A>,
        token: &TokenIdentifier<A>,
        nonce: u64,
        amount: &BigUint<A>,
        data: D,
    ) -> !
    where
        D: Into<ManagedBuffer<A>>,
    {
        let data_buf: ManagedBuffer<A> = data.into();
        let mut arg_buffer = ManagedArgBuffer::new_empty();
        arg_buffer.push_arg(token);
        if nonce == 0 {
            arg_buffer.push_arg(amount);
            if !data_buf.is_empty() {
                arg_buffer.push_arg_raw(data_buf);
            }

            A::send_api_impl().async_call_raw(
                to,
                &BigUint::zero(),
                &ManagedBuffer::new_from_bytes(DCDT_TRANSFER_FUNC_NAME),
                &arg_buffer,
            )
        } else {
            arg_buffer.push_arg(nonce);
            arg_buffer.push_arg(amount);
            arg_buffer.push_arg(to);
            if !data_buf.is_empty() {
                arg_buffer.push_arg_raw(data_buf);
            }

            A::send_api_impl().async_call_raw(
                &BlockchainWrapper::<A>::new().get_sc_address(),
                &BigUint::zero(),
                &ManagedBuffer::new_from_bytes(DCDT_NFT_TRANSFER_FUNC_NAME),
                &arg_buffer,
            )
        }
    }

    pub fn transfer_multiple_dcdt_via_async_call<D>(
        &self,
        to: &ManagedAddress<A>,
        payments: &ManagedVec<A, DcdtTokenPayment<A>>,
        data: D,
    ) -> !
    where
        D: Into<ManagedBuffer<A>>,
    {
        let mut arg_buffer = ManagedArgBuffer::new_empty();
        arg_buffer.push_arg(to);
        arg_buffer.push_arg(payments.len());

        for payment in payments.into_iter() {
            // TODO: check that `!token_identifier.is_rewa()` or let Andes throw the error?
            arg_buffer.push_arg(payment.token_identifier);
            arg_buffer.push_arg(payment.token_nonce);
            arg_buffer.push_arg(payment.amount);
        }
        let data_buf: ManagedBuffer<A> = data.into();
        if !data_buf.is_empty() {
            arg_buffer.push_arg_raw(data_buf);
        }

        A::send_api_impl().async_call_raw(
            &BlockchainWrapper::<A>::new().get_sc_address(),
            &BigUint::zero(),
            &ManagedBuffer::new_from_bytes(DCDT_MULTI_TRANSFER_FUNC_NAME),
            &arg_buffer,
        );
    }

    /// Sends a synchronous call to change a smart contract address.
    pub fn change_owner_address(
        &self,
        child_sc_address: ManagedAddress<A>,
        new_owner: &ManagedAddress<A>,
    ) -> ContractCall<A, ()> {
        let mut contract_call = ContractCall::new(
            child_sc_address,
            ManagedBuffer::new_from_bytes(CHANGE_OWNER_BUILTIN_FUNC_NAME),
        );
        contract_call.push_endpoint_arg(&new_owner);
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
        let results =
            A::send_api_impl().call_local_dcdt_built_in_function(gas, endpoint_name, arg_buffer);

        A::send_api_impl().clean_return_data();

        results
    }

    /// Allows synchronous minting of DCDT/SFT (depending on nonce). Execution is resumed afterwards.
    /// Note that the SC must have the DCDTLocalMint or DCDTNftAddQuantity roles set,
    /// or this will fail with "action is not allowed"
    /// For SFTs, you must use `self.send().dcdt_nft_create()` before adding additional quantity.
    /// This function cannot be used for NFTs.
    pub fn dcdt_local_mint(&self, token: &TokenIdentifier<A>, nonce: u64, amount: &BigUint<A>) {
        let mut arg_buffer = ManagedArgBuffer::new_empty();
        let func_name: &[u8];

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
            &ManagedBuffer::new_from_bytes(func_name),
            &arg_buffer,
        );
    }

    /// Allows synchronous burning of DCDT/SFT/NFT (depending on nonce). Execution is resumed afterwards.
    /// Note that the SC must have the DCDTLocalBurn or DCDTNftBurn roles set,
    /// or this will fail with "action is not allowed"
    pub fn dcdt_local_burn(&self, token: &TokenIdentifier<A>, nonce: u64, amount: &BigUint<A>) {
        let mut arg_buffer = ManagedArgBuffer::new_empty();
        let func_name: &[u8];

        arg_buffer.push_arg(token);
        if nonce == 0 {
            func_name = DCDT_LOCAL_BURN_FUNC_NAME;
        } else {
            func_name = DCDT_NFT_BURN_FUNC_NAME;
            arg_buffer.push_arg(&nonce);
        }

        arg_buffer.push_arg(amount);

        let _ = self.call_local_dcdt_built_in_function(
            A::blockchain_api_impl().get_gas_left(),
            &ManagedBuffer::new_from_bytes(func_name),
            &arg_buffer,
        );
    }

    /// Creates a new NFT token of a certain type (determined by `token_identifier`).  
    /// `attributes` can be any serializable custom struct.  
    /// This is a built-in function, so the smart contract execution is resumed after.
    /// Must have DCDTNftCreate role set, or this will fail with "action is not allowed".
    /// Returns the nonce of the newly created NFT.
    #[allow(clippy::too_many_arguments)]
    pub fn dcdt_nft_create<T: numbat_codec::TopEncode>(
        &self,
        token: &TokenIdentifier<A>,
        amount: &BigUint<A>,
        name: &ManagedBuffer<A>,
        royalties: &BigUint<A>,
        hash: &ManagedBuffer<A>,
        attributes: &T,
        uris: &ManagedVec<A, ManagedBuffer<A>>,
    ) -> u64 {
        let mut arg_buffer = ManagedArgBuffer::new_empty();
        arg_buffer.push_arg(token);
        arg_buffer.push_arg(amount);
        arg_buffer.push_arg(name);
        arg_buffer.push_arg(royalties);
        arg_buffer.push_arg(hash);
        arg_buffer.push_arg(attributes);

        if uris.is_empty() {
            // at least one URI is required, so we push an empty one
            arg_buffer.push_arg(numbat_codec::Empty);
        } else {
            // The API function has the last argument as variadic,
            // so we top-encode each and send as separate argument
            for uri in uris {
                arg_buffer.push_arg(uri);
            }
        }

        let output = self.call_local_dcdt_built_in_function(
            A::blockchain_api_impl().get_gas_left(),
            &ManagedBuffer::new_from_bytes(DCDT_NFT_CREATE_FUNC_NAME),
            &arg_buffer,
        );

        if let Some(first_result_bytes) = output.try_get(0) {
            first_result_bytes.parse_as_u64().unwrap_or_default()
        } else {
            0
        }
    }

    #[inline]
    pub fn dcdt_nft_create_compact<T: numbat_codec::TopEncode>(
        &self,
        token: &TokenIdentifier<A>,
        amount: &BigUint<A>,
        attributes: &T,
    ) -> u64 {
        self.dcdt_nft_create_compact_named(token, amount, &ManagedBuffer::new(), attributes)
    }

    pub fn dcdt_nft_create_compact_named<T: numbat_codec::TopEncode>(
        &self,
        token: &TokenIdentifier<A>,
        amount: &BigUint<A>,
        name: &ManagedBuffer<A>,
        attributes: &T,
    ) -> u64 {
        let big_zero = BigUint::zero();
        let empty_buffer = ManagedBuffer::new();
        let empty_vec = ManagedVec::from_raw_handle(empty_buffer.get_raw_handle());

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

    /// Creates an NFT on behalf of the caller. This will set the "creator" field to the caller's address
    /// NOT activated on devnet/mainnet yet.
    #[allow(clippy::too_many_arguments)]
    pub fn dcdt_nft_create_as_caller<T: numbat_codec::TopEncode>(
        &self,
        token: &TokenIdentifier<A>,
        amount: &BigUint<A>,
        name: &ManagedBuffer<A>,
        royalties: &BigUint<A>,
        hash: &ManagedBuffer<A>,
        attributes: &T,
        uris: &ManagedVec<A, ManagedBuffer<A>>,
    ) -> u64 {
        let mut arg_buffer = ManagedArgBuffer::<A>::new_empty();
        arg_buffer.push_arg(token);
        arg_buffer.push_arg(amount);
        arg_buffer.push_arg(name);
        arg_buffer.push_arg(royalties);
        arg_buffer.push_arg(hash);
        arg_buffer.push_arg(attributes);

        if uris.is_empty() {
            // at least one URI is required, so we push an empty one
            arg_buffer.push_arg(&numbat_codec::Empty);
        } else {
            // The API function has the last argument as variadic,
            // so we top-encode each and send as separate argument
            for uri in uris {
                arg_buffer.push_arg(uri);
            }
        }

        let output = A::send_api_impl().execute_on_dest_context_by_caller_raw(
            A::blockchain_api_impl().get_gas_left(),
            &BlockchainWrapper::<A>::new().get_caller(),
            &BigUint::zero(),
            &ManagedBuffer::new_from_bytes(DCDT_NFT_CREATE_FUNC_NAME),
            &arg_buffer,
        );

        if let Some(first_result_bytes) = output.try_get(0) {
            first_result_bytes.parse_as_u64().unwrap_or_default()
        } else {
            0
        }
    }

    /// Sends thr NFTs to the buyer address and calculates and sends the required royalties to the NFT creator.
    /// Returns the payment amount left after sending royalties.
    #[allow(clippy::too_many_arguments)]
    pub fn sell_nft(
        &self,
        nft_id: &TokenIdentifier<A>,
        nft_nonce: u64,
        nft_amount: &BigUint<A>,
        buyer: &ManagedAddress<A>,
        payment_token: &TokenIdentifier<A>,
        payment_nonce: u64,
        payment_amount: &BigUint<A>,
    ) -> BigUint<A> {
        let nft_token_data = A::blockchain_api_impl().get_dcdt_token_data::<A>(
            &BlockchainWrapper::<A>::new().get_sc_address(),
            nft_id,
            nft_nonce,
        );
        let royalties_amount = payment_amount.clone() * nft_token_data.royalties / PERCENTAGE_TOTAL;

        self.direct(buyer, nft_id, nft_nonce, nft_amount, &[]);

        if royalties_amount > 0u32 {
            self.direct(
                &nft_token_data.creator,
                payment_token,
                payment_nonce,
                &royalties_amount,
                &[],
            );

            payment_amount.clone() - royalties_amount
        } else {
            payment_amount.clone()
        }
    }

    pub fn nft_add_uri(
        &self,
        token_id: &TokenIdentifier<A>,
        nft_nonce: u64,
        new_uri: ManagedBuffer<A>,
    ) {
        self.nft_add_multiple_uri(token_id, nft_nonce, &ManagedVec::from_single_item(new_uri));
    }

    pub fn nft_add_multiple_uri(
        &self,
        token_id: &TokenIdentifier<A>,
        nft_nonce: u64,
        new_uris: &ManagedVec<A, ManagedBuffer<A>>,
    ) {
        if new_uris.is_empty() {
            return;
        }

        let mut arg_buffer = ManagedArgBuffer::new_empty();
        arg_buffer.push_arg(token_id);
        arg_buffer.push_arg(nft_nonce);

        for uri in new_uris {
            arg_buffer.push_arg(uri);
        }

        let _ = self.call_local_dcdt_built_in_function(
            A::blockchain_api_impl().get_gas_left(),
            &ManagedBuffer::new_from_bytes(DCDT_NFT_ADD_URI_FUNC_NAME),
            &arg_buffer,
        );
    }

    pub fn nft_update_attributes<T: numbat_codec::TopEncode>(
        &self,
        token_id: &TokenIdentifier<A>,
        nft_nonce: u64,
        new_attributes: &T,
    ) {
        let mut arg_buffer = ManagedArgBuffer::new_empty();
        arg_buffer.push_arg(token_id);
        arg_buffer.push_arg(nft_nonce);
        arg_buffer.push_arg(new_attributes);

        let _ = self.call_local_dcdt_built_in_function(
            A::blockchain_api_impl().get_gas_left(),
            &ManagedBuffer::new_from_bytes(DCDT_NFT_UPDATE_ATTRIBUTES_FUNC_NAME),
            &arg_buffer,
        );
    }
}
