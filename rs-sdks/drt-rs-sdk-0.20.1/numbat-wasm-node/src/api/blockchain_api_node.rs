use crate::api::managed_types::managed_buffer_api_node::unsafe_buffer_load_address;
use numbat_wasm::{
    api::BlockchainApi,
    types::{
        Address, BigUint, Box, DcdtTokenData, DcdtTokenType, ManagedAddress, ManagedBuffer,
        ManagedType, ManagedVec, TokenIdentifier, H256,
    },
};

#[allow(unused)]
extern "C" {
    // managed buffer API
    fn mBufferNew() -> i32;

    // address utils
    fn getSCAddress(resultOffset: *mut u8);
    #[cfg(not(feature = "unmanaged-ei"))]
    fn managedSCAddress(resultHandle: i32);

    fn getOwnerAddress(resultOffset: *mut u8);
    #[cfg(not(feature = "unmanaged-ei"))]
    fn managedOwnerAddress(resultHandle: i32);

    fn getCaller(resultOffset: *mut u8);
    #[cfg(not(feature = "unmanaged-ei"))]
    fn managedCaller(resultHandle: i32);

    fn getShardOfAddress(address_ptr: *const u8) -> i32;
    fn isSmartContract(address_ptr: *const u8) -> i32;

    /// Currently not used.
    #[allow(dead_code)]
    fn blockHash(nonce: i64, resultOffset: *mut u8) -> i32;

    /// Currently not used.
    #[allow(dead_code)]
    fn getFunction(functionOffset: *const u8) -> i32;

    fn getGasLeft() -> i64;
    fn getBlockTimestamp() -> i64;
    fn getBlockNonce() -> i64;
    fn getBlockRound() -> i64;
    fn getBlockEpoch() -> i64;
    fn getBlockRandomSeed(resultOffset: *mut u8);
    /// Currently not used.
    #[allow(dead_code)]
    fn getStateRootHash(resultOffset: *mut u8);
    fn getPrevBlockTimestamp() -> i64;
    fn getPrevBlockNonce() -> i64;
    fn getPrevBlockRound() -> i64;
    fn getPrevBlockEpoch() -> i64;
    fn getPrevBlockRandomSeed(resultOffset: *const u8);
    fn getOriginalTxHash(resultOffset: *const u8);

    // Managed versions of the above
    #[cfg(not(feature = "unmanaged-ei"))]
    fn managedGetPrevBlockRandomSeed(resultHandle: i32);
    #[cfg(not(feature = "unmanaged-ei"))]
    fn managedGetBlockRandomSeed(resultHandle: i32);
    #[cfg(not(feature = "unmanaged-ei"))]
    fn managedGetStateRootHash(resultHandle: i32);
    #[cfg(not(feature = "unmanaged-ei"))]
    fn managedGetOriginalTxHash(resultHandle: i32);

    // big int API
    fn bigIntNew(value: i64) -> i32;
    fn bigIntGetExternalBalance(address_ptr: *const u8, dest: i32);
    fn bigIntGetDCDTExternalBalance(
        address_ptr: *const u8,
        tokenIDOffset: *const u8,
        tokenIDLen: i32,
        nonce: i64,
        dest: i32,
    );

    // DCDT NFT
    fn getCurrentDCDTNFTNonce(
        address_ptr: *const u8,
        tokenIDOffset: *const u8,
        tokenIDLen: i32,
    ) -> i64;
    fn getDCDTTokenData(
        address_ptr: *const u8,
        tokenIDOffset: *const u8,
        tokenIDLen: i32,
        nonce: i64,
        valueOffset: i32,
        propertiesOffset: *const u8,
        hashOffset: *const u8,
        nameOffset: *const u8,
        attributesOffset: *const u8,
        creatorOffset: *const u8,
        royaltiesOffset: i32,
        urisOffset: *const u8,
    ) -> i32;

    // helper functions for getDCDTTokenData
    fn getDCDTNFTNameLength(
        address_ptr: *const u8,
        tokenIDOffset: *const u8,
        tokenIDLen: i32,
        nonce: i64,
    ) -> i32;
    fn getDCDTNFTAttributeLength(
        address_ptr: *const u8,
        tokenIDOffset: *const u8,
        tokenIDLen: i32,
        nonce: i64,
    ) -> i32;
    fn getDCDTNFTURILength(
        address_ptr: *const u8,
        tokenIDOffset: *const u8,
        tokenIDLen: i32,
        nonce: i64,
    ) -> i32;

    #[cfg(not(feature = "unmanaged-ei"))]
    fn managedGetDCDTTokenData(
        addressHandle: i32,
        tokenIDHandle: i32,
        nonce: i64,
        valueHandle: i32,
        propertiesHandle: i32,
        hashHandle: i32,
        nameHandle: i32,
        attributesHandle: i32,
        creatorHandle: i32,
        royaltiesHandle: i32,
        urisHandle: i32,
    );
}

impl BlockchainApi for crate::AndesApiImpl {
    #[inline]
    fn get_sc_address_legacy(&self) -> Address {
        unsafe {
            let mut res = Address::zero();
            getSCAddress(res.as_mut_ptr());
            res
        }
    }

    #[inline]
    #[cfg(not(feature = "unmanaged-ei"))]
    fn get_sc_address(&self) -> ManagedAddress<Self> {
        unsafe {
            let handle = mBufferNew();
            managedSCAddress(handle);
            ManagedAddress::from_raw_handle(self.clone(), handle)
        }
    }

    #[inline]
    fn get_owner_address_legacy(&self) -> Address {
        unsafe {
            let mut res = Address::zero();
            getOwnerAddress(res.as_mut_ptr());
            res
        }
    }

    #[inline]
    #[cfg(not(feature = "unmanaged-ei"))]
    fn get_owner_address(&self) -> ManagedAddress<Self> {
        unsafe {
            let handle = mBufferNew();
            managedOwnerAddress(handle);
            ManagedAddress::from_raw_handle(self.clone(), handle)
        }
    }

    #[inline]
    fn get_shard_of_address_legacy(&self, address: &Address) -> u32 {
        unsafe { getShardOfAddress(address.as_ref().as_ptr()) as u32 }
    }

    #[inline]
    fn get_shard_of_address(&self, address: &ManagedAddress<Self>) -> u32 {
        unsafe { getShardOfAddress(unsafe_buffer_load_address(address.get_raw_handle())) as u32 }
    }

    #[inline]
    fn is_smart_contract_legacy(&self, address: &Address) -> bool {
        unsafe { isSmartContract(address.as_ref().as_ptr()) > 0 }
    }

    #[inline]
    fn is_smart_contract(&self, address: &ManagedAddress<Self>) -> bool {
        unsafe { isSmartContract(unsafe_buffer_load_address(address.get_raw_handle())) > 0 }
    }

    #[inline]
    fn get_caller_legacy(&self) -> Address {
        unsafe {
            let mut res = Address::zero();
            getCaller(res.as_mut_ptr());
            res
        }
    }

    #[inline]
    #[cfg(not(feature = "unmanaged-ei"))]
    fn get_caller(&self) -> ManagedAddress<Self> {
        unsafe {
            let handle = mBufferNew();
            managedCaller(handle);
            ManagedAddress::from_raw_handle(self.clone(), handle)
        }
    }

    fn get_balance_legacy(&self, address: &Address) -> BigUint<Self> {
        unsafe {
            let balance_handle = bigIntNew(0);
            bigIntGetExternalBalance(address.as_ref().as_ptr(), balance_handle);
            BigUint::from_raw_handle(self.clone(), balance_handle)
        }
    }

    fn get_balance(&self, address: &ManagedAddress<Self>) -> BigUint<Self> {
        unsafe {
            let balance_handle = bigIntNew(0);
            bigIntGetExternalBalance(
                unsafe_buffer_load_address(address.get_raw_handle()),
                balance_handle,
            );
            BigUint::from_raw_handle(self.clone(), balance_handle)
        }
    }

    #[inline]
    fn get_state_root_hash_legacy(&self) -> H256 {
        unsafe {
            let mut res = H256::zero();
            getOriginalTxHash(res.as_mut_ptr());
            res
        }
    }

    #[inline]
    #[cfg(not(feature = "unmanaged-ei"))]
    fn get_state_root_hash(&self) -> numbat_wasm::types::ManagedByteArray<Self, 32> {
        unsafe {
            let result_handle = mBufferNew();
            managedGetStateRootHash(result_handle);
            numbat_wasm::types::ManagedByteArray::from_raw_handle(self.clone(), result_handle)
        }
    }

    #[inline]
    fn get_tx_hash_legacy(&self) -> H256 {
        unsafe {
            let mut res = H256::zero();
            getOriginalTxHash(res.as_mut_ptr());
            res
        }
    }

    #[inline]
    #[cfg(not(feature = "unmanaged-ei"))]
    fn get_tx_hash(&self) -> numbat_wasm::types::ManagedByteArray<Self, 32> {
        unsafe {
            let result_handle = mBufferNew();
            managedGetOriginalTxHash(result_handle);
            numbat_wasm::types::ManagedByteArray::from_raw_handle(self.clone(), result_handle)
        }
    }

    #[inline]
    fn get_gas_left(&self) -> u64 {
        unsafe { getGasLeft() as u64 }
    }

    #[inline]
    fn get_block_timestamp(&self) -> u64 {
        unsafe { getBlockTimestamp() as u64 }
    }

    #[inline]
    fn get_block_nonce(&self) -> u64 {
        unsafe { getBlockNonce() as u64 }
    }

    #[inline]
    fn get_block_round(&self) -> u64 {
        unsafe { getBlockRound() as u64 }
    }

    #[inline]
    fn get_block_epoch(&self) -> u64 {
        unsafe { getBlockEpoch() as u64 }
    }

    #[inline]
    fn get_block_random_seed_legacy(&self) -> Box<[u8; 48]> {
        unsafe {
            let mut res = [0u8; 48];
            getBlockRandomSeed(res.as_mut_ptr());
            Box::new(res)
        }
    }

    #[inline]
    #[cfg(not(feature = "unmanaged-ei"))]
    fn get_block_random_seed(&self) -> numbat_wasm::types::ManagedByteArray<Self, 48> {
        unsafe {
            let result_handle = mBufferNew();
            managedGetBlockRandomSeed(result_handle);
            numbat_wasm::types::ManagedByteArray::from_raw_handle(self.clone(), result_handle)
        }
    }

    #[inline]
    fn get_prev_block_timestamp(&self) -> u64 {
        unsafe { getPrevBlockTimestamp() as u64 }
    }

    #[inline]
    fn get_prev_block_nonce(&self) -> u64 {
        unsafe { getPrevBlockNonce() as u64 }
    }

    #[inline]
    fn get_prev_block_round(&self) -> u64 {
        unsafe { getPrevBlockRound() as u64 }
    }

    #[inline]
    fn get_prev_block_epoch(&self) -> u64 {
        unsafe { getPrevBlockEpoch() as u64 }
    }

    #[inline]
    fn get_prev_block_random_seed_legacy(&self) -> Box<[u8; 48]> {
        unsafe {
            let mut res = [0u8; 48];
            getPrevBlockRandomSeed(res.as_mut_ptr());
            Box::new(res)
        }
    }

    #[inline]
    #[cfg(not(feature = "unmanaged-ei"))]
    fn get_prev_block_random_seed(&self) -> numbat_wasm::types::ManagedByteArray<Self, 48> {
        unsafe {
            let result_handle = mBufferNew();
            managedGetPrevBlockRandomSeed(result_handle);
            numbat_wasm::types::ManagedByteArray::from_raw_handle(self.clone(), result_handle)
        }
    }

    #[inline]
    fn get_current_dcdt_nft_nonce(&self, address: &Address, token: &TokenIdentifier<Self>) -> u64 {
        unsafe {
            getCurrentDCDTNFTNonce(
                address.as_ref().as_ptr(),
                token.to_dcdt_identifier().as_ptr(),
                token.len() as i32,
            ) as u64
        }
    }

    #[inline]
    fn get_dcdt_balance(
        &self,
        m_address: &ManagedAddress<Self>,
        token: &TokenIdentifier<Self>,
        nonce: u64,
    ) -> BigUint<Self> {
        let address = m_address.to_address();
        unsafe {
            let balance_handle = bigIntNew(0);
            bigIntGetDCDTExternalBalance(
                address.as_ref().as_ptr(),
                token.to_dcdt_identifier().as_ptr(),
                token.len() as i32,
                nonce as i64,
                balance_handle,
            );

            BigUint::from_raw_handle(self.clone(), balance_handle)
        }
    }

    #[cfg(feature = "unmanaged-ei")]
    fn get_dcdt_token_data(
        &self,
        m_address: &ManagedAddress<Self>,
        token: &TokenIdentifier<Self>,
        nonce: u64,
    ) -> DcdtTokenData<Self> {
        use numbat_wasm::types::BoxedBytes;
        let address = m_address.to_address();
        unsafe {
            let value_handle = bigIntNew(0);
            let mut properties = [0u8; 2]; // always 2 bytes
            let mut hash = BoxedBytes::allocate(128);

            let name_len = getDCDTNFTNameLength(
                address.as_ref().as_ptr(),
                token.to_dcdt_identifier().as_ptr(),
                token.len() as i32,
                nonce as i64,
            ) as usize;
            let mut name_bytes = BoxedBytes::allocate(name_len);

            let attr_len = getDCDTNFTAttributeLength(
                address.as_ref().as_ptr(),
                token.to_dcdt_identifier().as_ptr(),
                token.len() as i32,
                nonce as i64,
            ) as usize;
            let mut attr_bytes = BoxedBytes::allocate(attr_len);

            // Current implementation of the underlying API only provides one URI
            // In the future, this might be extended to multiple URIs per token,
            // Hence the DcdtTokenData receives a Vec<BoxedBytes>
            let uris_len = getDCDTNFTURILength(
                address.as_ref().as_ptr(),
                token.to_dcdt_identifier().as_ptr(),
                token.len() as i32,
                nonce as i64,
            ) as usize;
            let mut uri_bytes = BoxedBytes::allocate(uris_len);

            let mut creator = Address::zero();
            let royalties_handle = bigIntNew(0);

            getDCDTTokenData(
                address.as_ref().as_ptr(),
                token.to_dcdt_identifier().as_ptr(),
                token.len() as i32,
                nonce as i64,
                value_handle,
                properties.as_mut_ptr(),
                hash.as_mut_ptr(),
                name_bytes.as_mut_ptr(),
                attr_bytes.as_mut_ptr(),
                creator.as_mut_ptr(),
                royalties_handle,
                uri_bytes.as_mut_ptr(),
            );

            // Fungible always have a nonce of 0, so we check nonce to figure out the type
            let nonce = getCurrentDCDTNFTNonce(
                address.as_ref().as_ptr(),
                token.to_dcdt_identifier().as_ptr(),
                token.len() as i32,
            );
            let token_type = if nonce == 0 {
                DcdtTokenType::Fungible
            } else {
                DcdtTokenType::NonFungible
            };

            // Token is frozen if properties are not 0
            let frozen = properties[0] == 0 && properties[1] == 0;

            let mut uris_vec = ManagedVec::new(self.clone());
            uris_vec.push(ManagedBuffer::new_from_bytes(
                self.clone(),
                uri_bytes.as_slice(),
            ));

            DcdtTokenData {
                token_type,
                amount: BigUint::from_raw_handle(self.clone(), value_handle),
                frozen,
                hash: ManagedBuffer::new_from_bytes(self.clone(), hash.as_slice()),
                name: ManagedBuffer::new_from_bytes(self.clone(), name_bytes.as_slice()),
                attributes: ManagedBuffer::new_from_bytes(self.clone(), attr_bytes.as_slice()),
                creator: ManagedAddress::from_address(self.clone(), &creator),
                royalties: BigUint::from_raw_handle(self.clone(), royalties_handle),
                uris: uris_vec,
            }
        }
    }

    #[cfg(not(feature = "unmanaged-ei"))]
    fn get_dcdt_token_data(
        &self,
        address: &ManagedAddress<Self>,
        token: &TokenIdentifier<Self>,
        nonce: u64,
    ) -> DcdtTokenData<Self> {
        let managed_token_id = token.as_managed_buffer();
        unsafe {
            let value_handle = bigIntNew(0);
            let properties_handle = mBufferNew();
            let hash_handle = mBufferNew();
            let name_handle = mBufferNew();
            let attributes_handle = mBufferNew();
            let creator_handle = mBufferNew();
            let royalties_handle = bigIntNew(0);
            let uris_handle = mBufferNew();

            managedGetDCDTTokenData(
                address.get_raw_handle(),
                managed_token_id.get_raw_handle(),
                nonce as i64,
                value_handle,
                properties_handle,
                hash_handle,
                name_handle,
                attributes_handle,
                creator_handle,
                royalties_handle,
                uris_handle,
            );

            let token_type = if nonce == 0 {
                DcdtTokenType::Fungible
            } else {
                DcdtTokenType::NonFungible
            };

            // here we trust Andes that it always gives us a properties buffer of length 2
            let properties_buffer = ManagedBuffer::from_raw_handle(self.clone(), properties_handle);
            let mut properties_bytes = [0u8; 2];
            let _ = properties_buffer.load_slice(0, &mut properties_bytes[..]);
            let frozen = properties_bytes[0] == 0 && properties_bytes[1] == 0; // token is frozen if properties are not 0

            DcdtTokenData {
                token_type,
                amount: BigUint::from_raw_handle(self.clone(), value_handle),
                frozen,
                hash: ManagedBuffer::from_raw_handle(self.clone(), hash_handle),
                name: ManagedBuffer::from_raw_handle(self.clone(), name_handle),
                attributes: ManagedBuffer::from_raw_handle(self.clone(), attributes_handle),
                creator: ManagedAddress::from_raw_handle(self.clone(), creator_handle),
                royalties: BigUint::from_raw_handle(self.clone(), royalties_handle),
                uris: ManagedVec::from_raw_handle(self.clone(), uris_handle),
            }
        }
    }
}
