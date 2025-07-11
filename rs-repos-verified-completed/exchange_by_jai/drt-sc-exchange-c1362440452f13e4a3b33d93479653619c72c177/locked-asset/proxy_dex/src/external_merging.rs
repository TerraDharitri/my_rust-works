dharitri_sc::imports!();

use common_structs::PaymentsVec;
use dharitri_sc::api::CallTypeApi;

pub static FACTORY_MERGE_TOKENS_ENDPOINT_NAME: &[u8] = b"mergeTokens";
pub static FARM_MERGE_TOKENS_ENDPOINT_NAME: &[u8] = b"mergeFarmTokens";

pub fn merge_locked_tokens_through_factory<M: CallTypeApi>(
    original_caller: &ManagedAddress<M>,
    factory_address: ManagedAddress<M>,
    locked_tokens: PaymentsVec<M>,
) -> DcdtTokenPayment<M> {
    merge_common(
        original_caller,
        factory_address,
        FACTORY_MERGE_TOKENS_ENDPOINT_NAME,
        locked_tokens,
    )
}

pub fn merge_farm_tokens_through_farm<M: CallTypeApi>(
    original_caller: &ManagedAddress<M>,
    farm_address: ManagedAddress<M>,
    farm_tokens: PaymentsVec<M>,
) -> DcdtTokenPayment<M> {
    merge_common(
        original_caller,
        farm_address,
        FARM_MERGE_TOKENS_ENDPOINT_NAME,
        farm_tokens,
    )
}

fn merge_common<M: CallTypeApi>(
    original_caller: &ManagedAddress<M>,
    sc_address: ManagedAddress<M>,
    endpoint_name: &[u8],
    tokens: PaymentsVec<M>,
) -> DcdtTokenPayment<M> {
    Tx::new_tx_from_sc()
        .to(sc_address)
        .raw_call(endpoint_name)
        .argument(original_caller)
        .payment(tokens)
        .original_result::<DcdtTokenPayment<M>>()
        .returns(ReturnsResult)
        .sync_call()
}
