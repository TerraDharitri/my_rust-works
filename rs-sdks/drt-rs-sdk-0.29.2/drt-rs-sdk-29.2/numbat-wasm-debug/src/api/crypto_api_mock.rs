use crate::DebugApi;
use numbat_wasm::{
    api::{
        CryptoApi, CryptoApiImpl, Handle, ManagedBufferApi, KECCAK256_RESULT_LEN,
        RIPEMD_RESULT_LEN, SHA256_RESULT_LEN,
    },
    types::{BoxedBytes, MessageHashType},
};
use sha2::Sha256;
use sha3::{Digest, Keccak256};

impl CryptoApi for DebugApi {
    type CryptoApiImpl = DebugApi;

    fn crypto_api_impl() -> Self::CryptoApiImpl {
        DebugApi::new_from_static()
    }
}

impl CryptoApiImpl for DebugApi {
    fn sha256_legacy(&self, data: &[u8]) -> [u8; SHA256_RESULT_LEN] {
        let mut hasher = Sha256::new();
        hasher.update(data);
        hasher.finalize().into()
    }

    fn sha256(&self, data_handle: Handle) -> Handle {
        // default implementation used in debugger
        // the VM has a dedicated hook
        let result_bytes = self.sha256_legacy(self.mb_to_boxed_bytes(data_handle).as_slice());
        self.mb_new_from_bytes(&result_bytes[..])
    }

    fn keccak256_legacy(&self, data: &[u8]) -> [u8; KECCAK256_RESULT_LEN] {
        let mut hasher = Keccak256::new();
        hasher.update(data);
        hasher.finalize().into()
    }

    fn keccak256(&self, data_handle: Handle) -> Handle {
        // default implementation used in debugger
        // the VM has a dedicated hook
        let result_bytes = self.keccak256_legacy(self.mb_to_boxed_bytes(data_handle).as_slice());
        self.mb_new_from_bytes(&result_bytes[..])
    }

    fn ripemd160(&self, _data: &[u8]) -> [u8; RIPEMD_RESULT_LEN] {
        panic!("ripemd160 not implemented yet!")
    }

    fn verify_bls(&self, _key: &[u8], _message: &[u8], _signature: &[u8]) -> bool {
        panic!("verify_bls not implemented yet!")
    }

    fn verify_ed25519(&self, _key: &[u8], _message: &[u8], _signature: &[u8]) -> bool {
        panic!("verify_ed25519 not implemented yet!")
    }

    fn verify_secp256k1(&self, _key: &[u8], _message: &[u8], _signature: &[u8]) -> bool {
        panic!("verify_secp256k1 not implemented yet!")
    }

    fn verify_custom_secp256k1(
        &self,
        _key: &[u8],
        _message: &[u8],
        _signature: &[u8],
        _hash_type: MessageHashType,
    ) -> bool {
        panic!("verify_custom_secp256k1 not implemented yet!")
    }

    fn encode_secp256k1_der_signature(&self, _r: &[u8], _s: &[u8]) -> BoxedBytes {
        panic!("encode_secp256k1_signature not implemented yet!")
    }
}
