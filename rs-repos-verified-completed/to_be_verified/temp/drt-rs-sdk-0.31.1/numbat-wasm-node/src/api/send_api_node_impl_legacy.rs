use crate::{api::managed_types::big_int_api_node::unsafe_buffer_load_be_pad_right, VmApiImpl};
use alloc::vec::Vec;
use numbat_wasm::{
    api::{const_handles, BlockchainApi, BlockchainApiImpl, ManagedTypeApi, SendApiImpl},
    types::{
        heap::{Address, ArgBuffer, BoxedBytes},
        managed_vec_from_slice_of_boxed_bytes, BigUint, CodeMetadata, DcdtTokenPayment,
        ManagedAddress, ManagedArgBuffer, ManagedBuffer, ManagedType, ManagedVec, TokenIdentifier,
    },
    HexCallDataSerializer,
};

// Token ID + nonce + amount, as bytes
const AVERAGE_MULTI_TRANSFER_ARG_PAIR_LENGTH: usize = 15 + 2 + 8;

extern "C" {
    fn transferValue(
        dstOffset: *const u8,
        valueOffset: *const u8,
        dataOffset: *const u8,
        dataLength: i32,
    ) -> i32;

    fn transferValueExecute(
        dstOffset: *const u8,
        valueOffset: *const u8,
        gasLimit: i64,
        functionOffset: *const u8,
        functionLength: i32,
        numArguments: i32,
        argumentsLengthOffset: *const u8,
        dataOffset: *const u8,
    ) -> i32;

    fn transferDCDTExecute(
        dstOffset: *const u8,
        tokenIdOffset: *const u8,
        tokenIdLen: i32,
        valueOffset: *const u8,
        gasLimit: i64,
        functionOffset: *const u8,
        functionLength: i32,
        numArguments: i32,
        argumentsLengthOffset: *const u8,
        dataOffset: *const u8,
    ) -> i32;

    fn transferDCDTNFTExecute(
        dstOffset: *const u8,
        tokenIdOffset: *const u8,
        tokenIdLen: i32,
        valueOffset: *const u8,
        nonce: i64,
        gasLimit: i64,
        functionOffset: *const u8,
        functionLength: i32,
        numArguments: i32,
        argumentsLengthOffset: *const u8,
        dataOffset: *const u8,
    ) -> i32;

    fn multiTransferDCDTNFTExecute(
        dstOffset: *const u8,
        numTokenTransfers: i32,
        tokenTransfersArgsLengthOffset: *const u8,
        tokenTransferDataOffset: *const u8,
        gasLimit: i64,
        functionOffset: *const u8,
        functionLength: i32,
        numArguments: i32,
        argumentsLengthOffset: *const u8,
        dataOffset: *const u8,
    ) -> i32;

    fn asyncCall(
        dstOffset: *const u8,
        valueOffset: *const u8,
        dataOffset: *const u8,
        length: i32,
    ) -> !;

    fn createContract(
        gas: i64,
        valueOffset: *const u8,
        codeOffset: *const u8,
        codeMetadataOffset: *const u8,
        codeLength: i32,
        resultOffset: *const u8,
        numArguments: i32,
        argumentsLengthOffset: *const u8,
        dataOffset: *const u8,
    ) -> i32;

    fn deployFromSourceContract(
        gas: i64,
        valueOffset: *const u8,
        sourceContractAddressOffset: *const u8,
        codeMetadataOffset: *const u8,
        resultAddressOffset: *const u8,
        numArguments: i32,
        argumentsLengthOffset: *const u8,
        dataOffset: *const u8,
    ) -> i32;

    fn upgradeFromSourceContract(
        scAddressOffset: *const u8,
        gas: i64,
        valueOffset: *const u8,
        sourceContractAddressOffset: *const u8,
        codeMetadataOffset: *const u8,
        numArguments: i32,
        argumentsLengthOffset: *const u8,
        dataOffset: *const u8,
    );

    fn upgradeContract(
        scAddressOffset: *const u8,
        gas: i64,
        valueOffset: *const u8,
        codeOffset: *const u8,
        codeMetadataOffset: *const u8,
        codeLength: i32,
        numArguments: i32,
        argumentsLengthOffset: *const u8,
        dataOffset: *const u8,
    );

    fn executeOnDestContext(
        gas: i64,
        addressOffset: *const u8,
        valueOffset: *const u8,
        functionOffset: *const u8,
        functionLength: i32,
        numArguments: i32,
        argumentsLengthOffset: *const u8,
        dataOffset: *const u8,
    ) -> i32;

    fn executeOnDestContextByCaller(
        gas: i64,
        addressOffset: *const u8,
        valueOffset: *const u8,
        functionOffset: *const u8,
        functionLength: i32,
        numArguments: i32,
        argumentsLengthOffset: *const u8,
        dataOffset: *const u8,
    ) -> i32;

    fn executeOnSameContext(
        gas: i64,
        addressOffset: *const u8,
        valueOffset: *const u8,
        functionOffset: *const u8,
        functionLength: i32,
        numArguments: i32,
        argumentsLengthOffset: *const u8,
        dataOffset: *const u8,
    ) -> i32;

    fn executeReadOnly(
        gas: i64,
        addressOffset: *const u8,
        functionOffset: *const u8,
        functionLength: i32,
        numArguments: i32,
        argumentsLengthOffset: *const u8,
        dataOffset: *const u8,
    ) -> i32;

    fn getNumReturnData() -> i32;
    fn getReturnDataSize(result_index: i32) -> i32;
    fn getReturnData(result_index: i32, dataOffset: *const u8) -> i32;

    /// Clears results propagated from nested sync calls
    fn cleanReturnData();
    fn deleteFromReturnData(resultID: i32);
}

impl SendApiImpl for VmApiImpl {
    fn direct_rewa<M, D>(&self, to: &ManagedAddress<M>, amount: &BigUint<M>, data: D)
    where
        M: ManagedTypeApi,
        D: Into<ManagedBuffer<M>>,
    {
        let to_address = to.to_address();
        let data_bytes = data.into().to_boxed_bytes();
        unsafe {
            let amount_bytes32_ptr = unsafe_buffer_load_be_pad_right(amount.get_raw_handle(), 32);
            let _ = transferValue(
                to_address.as_ptr(),
                amount_bytes32_ptr,
                data_bytes.as_ptr(),
                data_bytes.len() as i32,
            );
        }
    }

    fn create_async_call_raw<M: ManagedTypeApi>(
        &self,
        _to: &ManagedAddress<M>,
        _amount: &BigUint<M>,
        _endpoint_name: &ManagedBuffer<M>,
        _success: &'static [u8],
        _error: &'static [u8],
        _gas: u64,
        _extra_gas_for_callback: u64,
        _arg_buffer: &ManagedArgBuffer<M>,
    ) {
        unreachable!()
    }

    fn direct_rewa_execute<M: ManagedTypeApi>(
        &self,
        to: &ManagedAddress<M>,
        amount: &BigUint<M>,
        gas_limit: u64,
        endpoint_name: &ManagedBuffer<M>,
        arg_buffer: &ManagedArgBuffer<M>,
    ) -> Result<(), &'static [u8]> {
        let to_address = to.to_address();
        let function = endpoint_name.to_boxed_bytes();
        let legacy_arg_buffer = ArgBuffer::from(arg_buffer);
        unsafe {
            let amount_bytes32_ptr = unsafe_buffer_load_be_pad_right(amount.get_raw_handle(), 32);
            let result = transferValueExecute(
                to_address.as_ptr(),
                amount_bytes32_ptr,
                gas_limit as i64,
                function.as_ptr(),
                function.len() as i32,
                legacy_arg_buffer.num_args() as i32,
                legacy_arg_buffer.arg_lengths_bytes_ptr(),
                legacy_arg_buffer.arg_data_ptr(),
            );
            if result == 0 {
                Ok(())
            } else {
                Err(b"transferValueExecute failed")
            }
        }
    }

    fn direct_dcdt_execute<M: ManagedTypeApi>(
        &self,
        to: &ManagedAddress<M>,
        token: &TokenIdentifier<M>,
        amount: &BigUint<M>,
        gas_limit: u64,
        endpoint_name: &ManagedBuffer<M>,
        arg_buffer: &ManagedArgBuffer<M>,
    ) -> Result<(), &'static [u8]> {
        let to_address = to.to_address();
        unsafe {
            let amount_bytes32_ptr = unsafe_buffer_load_be_pad_right(amount.get_raw_handle(), 32);
            let function = endpoint_name.to_boxed_bytes();
            let legacy_arg_buffer = ArgBuffer::from(arg_buffer);
            let result = transferDCDTExecute(
                to_address.as_ptr(),
                token.to_dcdt_identifier().as_ptr(),
                token.len() as i32,
                amount_bytes32_ptr,
                gas_limit as i64,
                function.as_ptr(),
                function.len() as i32,
                legacy_arg_buffer.num_args() as i32,
                legacy_arg_buffer.arg_lengths_bytes_ptr(),
                legacy_arg_buffer.arg_data_ptr(),
            );
            if result == 0 {
                Ok(())
            } else {
                Err(b"transferDCDTExecute failed")
            }
        }
    }

    fn direct_dcdt_nft_execute<M: ManagedTypeApi>(
        &self,
        to: &ManagedAddress<M>,
        token: &TokenIdentifier<M>,
        nonce: u64,
        amount: &BigUint<M>,
        gas_limit: u64,
        endpoint_name: &ManagedBuffer<M>,
        arg_buffer: &ManagedArgBuffer<M>,
    ) -> Result<(), &'static [u8]> {
        let to_address = to.to_address();
        unsafe {
            let amount_bytes32_ptr = unsafe_buffer_load_be_pad_right(amount.get_raw_handle(), 32);
            let function = endpoint_name.to_boxed_bytes();
            let legacy_arg_buffer = ArgBuffer::from(arg_buffer);
            let result = transferDCDTNFTExecute(
                to_address.as_ptr(),
                token.to_dcdt_identifier().as_ptr(),
                token.len() as i32,
                amount_bytes32_ptr,
                nonce as i64,
                gas_limit as i64,
                function.as_ptr(),
                function.len() as i32,
                legacy_arg_buffer.num_args() as i32,
                legacy_arg_buffer.arg_lengths_bytes_ptr(),
                legacy_arg_buffer.arg_data_ptr(),
            );
            if result == 0 {
                Ok(())
            } else {
                Err(b"transferDCDTNFTExecute failed")
            }
        }
    }

    fn direct_multi_dcdt_transfer_execute<M: ManagedTypeApi>(
        &self,
        to: &ManagedAddress<M>,
        payments: &ManagedVec<M, DcdtTokenPayment<M>>,
        gas_limit: u64,
        endpoint_name: &ManagedBuffer<M>,
        arg_buffer: &ManagedArgBuffer<M>,
    ) -> Result<(), &'static [u8]> {
        unsafe {
            let nr_transfers = payments.len();
            let mut transfer_arg_lengths = Vec::with_capacity(nr_transfers * 3);
            let mut transfer_args =
                Vec::with_capacity(nr_transfers * AVERAGE_MULTI_TRANSFER_ARG_PAIR_LENGTH);

            for token in payments {
                let token_id_bytes = token.token_identifier.to_dcdt_identifier();
                let nonce_bytes = &token.token_nonce.to_be_bytes()[..]; // TODO: Maybe top-encode here instead
                let amount_bytes = &token.amount.to_bytes_be();

                transfer_arg_lengths.push(token_id_bytes.len() as i32);
                transfer_arg_lengths.push(nonce_bytes.len() as i32);
                transfer_arg_lengths.push(amount_bytes.len() as i32);

                transfer_args.extend_from_slice(token_id_bytes.as_slice());
                transfer_args.extend_from_slice(nonce_bytes);
                transfer_args.extend_from_slice(amount_bytes.as_slice());
            }

            let function = endpoint_name.to_boxed_bytes();
            let legacy_arg_buffer = ArgBuffer::from(arg_buffer);
            let to_address = to.to_address();
            let result = multiTransferDCDTNFTExecute(
                to_address.as_ptr(),
                nr_transfers as i32,
                transfer_arg_lengths.as_ptr() as *const u8,
                transfer_args.as_ptr(),
                gas_limit as i64,
                function.as_ptr(),
                function.len() as i32,
                legacy_arg_buffer.num_args() as i32,
                legacy_arg_buffer.arg_lengths_bytes_ptr(),
                legacy_arg_buffer.arg_data_ptr(),
            );
            if result == 0 {
                Ok(())
            } else {
                Err(b"multiTransferDCDTNFTExecute failed")
            }
        }
    }

    fn async_call_raw<M: ManagedTypeApi>(
        &self,
        to: &ManagedAddress<M>,
        amount: &BigUint<M>,
        endpoint_name: &ManagedBuffer<M>,
        arg_buffer: &ManagedArgBuffer<M>,
    ) -> ! {
        unsafe {
            let to_address = to.to_address();
            let amount_bytes32_ptr = unsafe_buffer_load_be_pad_right(amount.get_raw_handle(), 32);
            let call_data =
                HexCallDataSerializer::from_managed_arg_buffer(endpoint_name, arg_buffer)
                    .into_vec();
            asyncCall(
                to_address.as_ptr(),
                amount_bytes32_ptr,
                call_data.as_ptr(),
                call_data.len() as i32,
            )
        }
    }

    fn deploy_contract<M: ManagedTypeApi>(
        &self,
        gas: u64,
        amount: &BigUint<M>,
        code: &ManagedBuffer<M>,
        code_metadata: CodeMetadata,
        arg_buffer: &ManagedArgBuffer<M>,
    ) -> (ManagedAddress<M>, ManagedVec<M, ManagedBuffer<M>>) {
        let mut new_address = Address::zero();
        unsafe {
            let num_return_data_before = getNumReturnData();

            let amount_bytes32_ptr = unsafe_buffer_load_be_pad_right(amount.get_raw_handle(), 32);
            let legacy_arg_buffer = ArgBuffer::from(arg_buffer);
            let code_metadata_bytes = code_metadata.to_byte_array();
            let code_bytes = code.to_boxed_bytes();
            let _ = createContract(
                gas as i64,
                amount_bytes32_ptr,
                code_bytes.as_ptr(),
                code_metadata_bytes.as_ptr(),
                code_bytes.len() as i32,
                new_address.as_mut_ptr(),
                legacy_arg_buffer.num_args() as i32,
                legacy_arg_buffer.arg_lengths_bytes_ptr(),
                legacy_arg_buffer.arg_data_ptr(),
            );

            let num_return_data_after = getNumReturnData();
            let result_bytes = get_return_data_range(num_return_data_before, num_return_data_after);
            let results = managed_vec_from_slice_of_boxed_bytes(result_bytes.as_slice());

            (ManagedAddress::from(new_address), results)
        }
    }

    fn deploy_from_source_contract<M: ManagedTypeApi>(
        &self,
        gas: u64,
        amount: &BigUint<M>,
        source_contract_address: &ManagedAddress<M>,
        code_metadata: CodeMetadata,
        arg_buffer: &ManagedArgBuffer<M>,
    ) -> (ManagedAddress<M>, ManagedVec<M, ManagedBuffer<M>>) {
        let mut new_address = Address::zero();
        unsafe {
            let num_return_data_before = getNumReturnData();

            let amount_bytes32_ptr = unsafe_buffer_load_be_pad_right(amount.get_raw_handle(), 32);
            let code_metadata_bytes = code_metadata.to_byte_array();
            let legacy_arg_buffer = ArgBuffer::from(arg_buffer);
            let source_contract_address_bytes = source_contract_address.to_address();
            let _ = deployFromSourceContract(
                gas as i64,
                amount_bytes32_ptr,
                source_contract_address_bytes.as_ptr(),
                code_metadata_bytes.as_ptr(),
                new_address.as_mut_ptr(),
                legacy_arg_buffer.num_args() as i32,
                legacy_arg_buffer.arg_lengths_bytes_ptr(),
                legacy_arg_buffer.arg_data_ptr(),
            );

            let num_return_data_after = getNumReturnData();
            let result_bytes = get_return_data_range(num_return_data_before, num_return_data_after);
            let results = managed_vec_from_slice_of_boxed_bytes(result_bytes.as_slice());

            (ManagedAddress::from(new_address), results)
        }
    }

    fn upgrade_from_source_contract<M: ManagedTypeApi>(
        &self,
        sc_address: &ManagedAddress<M>,
        gas: u64,
        amount: &BigUint<M>,
        source_contract_address: &ManagedAddress<M>,
        code_metadata: CodeMetadata,
        arg_buffer: &ManagedArgBuffer<M>,
    ) {
        unsafe {
            let amount_bytes32_ptr = unsafe_buffer_load_be_pad_right(amount.get_raw_handle(), 32);
            let code_metadata_bytes = code_metadata.to_byte_array();
            let legacy_arg_buffer = ArgBuffer::from(arg_buffer);
            let source_contract_address_bytes = source_contract_address.to_address();
            let sc_address_bytes = sc_address.to_address();

            upgradeFromSourceContract(
                sc_address_bytes.as_ptr(),
                gas as i64,
                amount_bytes32_ptr,
                source_contract_address_bytes.as_ptr(),
                code_metadata_bytes.as_ptr(),
                legacy_arg_buffer.num_args() as i32,
                legacy_arg_buffer.arg_lengths_bytes_ptr(),
                legacy_arg_buffer.arg_data_ptr(),
            );
        }
    }

    fn upgrade_contract<M: ManagedTypeApi>(
        &self,
        sc_address: &ManagedAddress<M>,
        gas: u64,
        amount: &BigUint<M>,
        code: &ManagedBuffer<M>,
        code_metadata: CodeMetadata,
        arg_buffer: &ManagedArgBuffer<M>,
    ) {
        unsafe {
            let amount_bytes32_ptr = unsafe_buffer_load_be_pad_right(amount.get_raw_handle(), 32);
            let code_metadata_bytes = code_metadata.to_byte_array();
            let legacy_arg_buffer = ArgBuffer::from(arg_buffer);
            let sc_address_bytes = sc_address.to_address();
            let code_bytes = code.to_boxed_bytes();
            upgradeContract(
                sc_address_bytes.as_ptr(),
                gas as i64,
                amount_bytes32_ptr,
                code_bytes.as_ptr(),
                code_metadata_bytes.as_ptr(),
                code_bytes.len() as i32,
                legacy_arg_buffer.num_args() as i32,
                legacy_arg_buffer.arg_lengths_bytes_ptr(),
                legacy_arg_buffer.arg_data_ptr(),
            );
        }
    }

    fn execute_on_dest_context_raw<M: ManagedTypeApi>(
        &self,
        gas: u64,
        to: &ManagedAddress<M>,
        amount: &BigUint<M>,
        endpoint_name: &ManagedBuffer<M>,
        arg_buffer: &ManagedArgBuffer<M>,
    ) -> ManagedVec<M, ManagedBuffer<M>> {
        unsafe {
            let num_return_data_before = getNumReturnData();

            let amount_bytes32_ptr = unsafe_buffer_load_be_pad_right(amount.get_raw_handle(), 32);
            let function = endpoint_name.to_boxed_bytes();
            let legacy_arg_buffer = ArgBuffer::from(arg_buffer);
            let to_address = to.to_address();
            let _ = executeOnDestContext(
                gas as i64,
                to_address.as_ptr(),
                amount_bytes32_ptr,
                function.as_ptr(),
                function.len() as i32,
                legacy_arg_buffer.num_args() as i32,
                legacy_arg_buffer.arg_lengths_bytes_ptr(),
                legacy_arg_buffer.arg_data_ptr(),
            );

            let num_return_data_after = getNumReturnData();
            let result_bytes = get_return_data_range(num_return_data_before, num_return_data_after);
            managed_vec_from_slice_of_boxed_bytes(result_bytes.as_slice())
        }
    }

    fn execute_on_dest_context_by_caller_raw<M: ManagedTypeApi>(
        &self,
        gas: u64,
        to: &ManagedAddress<M>,
        amount: &BigUint<M>,
        endpoint_name: &ManagedBuffer<M>,
        arg_buffer: &ManagedArgBuffer<M>,
    ) -> ManagedVec<M, ManagedBuffer<M>> {
        unsafe {
            let num_return_data_before = getNumReturnData();

            let amount_bytes32_ptr = unsafe_buffer_load_be_pad_right(amount.get_raw_handle(), 32);
            let function = endpoint_name.to_boxed_bytes();
            let legacy_arg_buffer = ArgBuffer::from(arg_buffer);
            let to_address = to.to_address();
            let _ = executeOnDestContextByCaller(
                gas as i64,
                to_address.as_ptr(),
                amount_bytes32_ptr,
                function.as_ptr(),
                function.len() as i32,
                legacy_arg_buffer.num_args() as i32,
                legacy_arg_buffer.arg_lengths_bytes_ptr(),
                legacy_arg_buffer.arg_data_ptr(),
            );

            let num_return_data_after = getNumReturnData();
            let result_bytes = get_return_data_range(num_return_data_before, num_return_data_after);
            managed_vec_from_slice_of_boxed_bytes(result_bytes.as_slice())
        }
    }

    fn execute_on_same_context_raw<M: ManagedTypeApi>(
        &self,
        gas: u64,
        to: &ManagedAddress<M>,
        amount: &BigUint<M>,
        endpoint_name: &ManagedBuffer<M>,
        arg_buffer: &ManagedArgBuffer<M>,
    ) -> ManagedVec<M, ManagedBuffer<M>> {
        unsafe {
            let num_return_data_before = getNumReturnData();

            let amount_bytes32_ptr = unsafe_buffer_load_be_pad_right(amount.get_raw_handle(), 32);
            let function = endpoint_name.to_boxed_bytes();
            let legacy_arg_buffer = ArgBuffer::from(arg_buffer);
            let to_address = to.to_address();
            let _ = executeOnSameContext(
                gas as i64,
                to_address.as_ptr(),
                amount_bytes32_ptr,
                function.as_ptr(),
                function.len() as i32,
                legacy_arg_buffer.num_args() as i32,
                legacy_arg_buffer.arg_lengths_bytes_ptr(),
                legacy_arg_buffer.arg_data_ptr(),
            );

            let num_return_data_after = getNumReturnData();
            let result_bytes = get_return_data_range(num_return_data_before, num_return_data_after);
            managed_vec_from_slice_of_boxed_bytes(result_bytes.as_slice())
        }
    }

    fn execute_on_dest_context_readonly_raw<M: ManagedTypeApi>(
        &self,
        gas: u64,
        to: &ManagedAddress<M>,
        endpoint_name: &ManagedBuffer<M>,
        arg_buffer: &ManagedArgBuffer<M>,
    ) -> ManagedVec<M, ManagedBuffer<M>> {
        unsafe {
            let num_return_data_before = getNumReturnData();

            let function = endpoint_name.to_boxed_bytes();
            let legacy_arg_buffer = ArgBuffer::from(arg_buffer);
            let to_address = to.to_address();
            let _ = executeReadOnly(
                gas as i64,
                to_address.as_ptr(),
                function.as_ptr(),
                function.len() as i32,
                legacy_arg_buffer.num_args() as i32,
                legacy_arg_buffer.arg_lengths_bytes_ptr(),
                legacy_arg_buffer.arg_data_ptr(),
            );

            let num_return_data_after = getNumReturnData();
            let result_bytes = get_return_data_range(num_return_data_before, num_return_data_after);
            managed_vec_from_slice_of_boxed_bytes(result_bytes.as_slice())
        }
    }

    fn call_local_dcdt_built_in_function<M: ManagedTypeApi>(
        &self,
        gas: u64,
        function_name: &ManagedBuffer<M>,
        arg_buffer: &ManagedArgBuffer<M>,
    ) -> ManagedVec<M, ManagedBuffer<M>> {
        // account-level built-in function, so the destination address is the contract itself
        let own_address_handle = const_handles::MBUF_TEMPORARY_1;
        VmApiImpl::blockchain_api_impl().load_sc_address_managed(own_address_handle);

        self.execute_on_dest_context_raw(
            gas,
            &ManagedAddress::from_raw_handle(own_address_handle),
            &BigUint::zero(),
            function_name,
            arg_buffer,
        )
    }

    fn clean_return_data(&self) {
        unsafe {
            cleanReturnData();
        }
    }

    fn delete_from_return_data(&self, index: usize) {
        unsafe {
            deleteFromReturnData(index as i32);
        }
    }
}

/// Retrieves already pushed results, via `finish`.
/// `from_index` is inclusive.
/// `to_index` is exclusive.
unsafe fn get_return_data_range(from_index: i32, to_index: i32) -> Vec<BoxedBytes> {
    let num_results = to_index - from_index;
    let mut result = Vec::with_capacity(num_results as usize);
    if num_results > 0 {
        for index in from_index..to_index {
            result.push(get_return_data(index));
        }
    }
    result
}

/// Retrieves already pushed individual result at given index, via `finish`.
unsafe fn get_return_data(return_index: i32) -> BoxedBytes {
    let len = getReturnDataSize(return_index);
    let mut res = BoxedBytes::allocate(len as usize);
    if len > 0 {
        let _ = getReturnData(return_index, res.as_mut_ptr());
    }
    res
}
