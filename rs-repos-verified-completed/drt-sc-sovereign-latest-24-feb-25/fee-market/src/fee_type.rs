dharitri_sc::imports!();
dharitri_sc::derive_imports!();

#[type_abi]
#[derive(TopEncode, TopDecode, NestedEncode, NestedDecode, Clone)]
pub enum FeeType<M: ManagedTypeApi> {
    None,
    Fixed {
        token: TokenIdentifier<M>,
        per_transfer: BigUint<M>,
        per_gas: BigUint<M>,
    },
    AnyToken {
        base_fee_token: TokenIdentifier<M>,
        per_transfer: BigUint<M>,
        per_gas: BigUint<M>,
    },
}

#[type_abi]
#[derive(TopDecode, TopEncode, NestedEncode, NestedDecode, Clone)]
pub struct FeeStruct<M: ManagedTypeApi> {
    pub base_token: TokenIdentifier<M>,
    pub fee_type: FeeType<M>,
}

#[dharitri_sc::module]
pub trait FeeTypeModule: utils::UtilsModule + bls_signature::BlsSignatureModule {
    #[only_owner]
    #[endpoint(addFee)]
    fn set_fee(&self, fee_struct: FeeStruct<Self::Api>) {
        self.require_valid_token_id(&fee_struct.base_token);

        let token = match &fee_struct.fee_type {
            FeeType::None => sc_panic!("Invalid fee type"),
            FeeType::Fixed {
                token,
                per_transfer: _,
                per_gas: _,
            } => {
                require!(&fee_struct.base_token == token, "Invalid fee");

                token
            }
            FeeType::AnyToken {
                base_fee_token,
                per_transfer: _,
                per_gas: _,
            } => base_fee_token,
        };

        self.require_valid_token_id(token);
        self.fee_enabled().set(true);
        self.token_fee(&fee_struct.base_token)
            .set(fee_struct.fee_type);
    }

    fn is_fee_enabled(&self) -> bool {
        self.fee_enabled().get()
    }

    #[only_owner]
    #[endpoint(removeFee)]
    fn remove_fee(&self, base_token: TokenIdentifier) {
        self.token_fee(&base_token).clear();
        self.fee_enabled().set(false);
    }

    #[view(getTokenFee)]
    #[storage_mapper("tokenFee")]
    fn token_fee(&self, token_id: &TokenIdentifier) -> SingleValueMapper<FeeType<Self::Api>>;

    #[storage_mapper("feeEnabledFlag")]
    fn fee_enabled(&self) -> SingleValueMapper<bool>;
}
