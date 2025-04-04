use dharitri_sc::api::DCDT_MULTI_TRANSFER_FUNC_NAME;
use dharitri_sc_scenario::scenario_model::ScCallStep;
use num_traits::Zero;

#[test]
#[allow(deprecated)]
fn test_contract_call_multi_dcdt() {
    let tx = ScCallStep::new()
        .from("address:sender")
        .to("address:recipient")
        .dcdt_transfer("str:WREWA-abcdef", 0, 10u32)
        .dcdt_transfer("str:USDC-abcdef", 0, 11u32);

    let cc = tx.tx.to_contract_call();

    assert_eq!(
        cc.basic.function_call.function_name.to_vec(),
        DCDT_MULTI_TRANSFER_FUNC_NAME.as_bytes().to_vec(),
    );
    assert_eq!(
        cc.to_call_data_string().to_string(),
        "MultiDCDTNFTTransfer@726563697069656e745f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f@02@57524557412d616263646566@@0a@555344432d616263646566@@0b",
    );
    assert!(tx.tx.rewa_value.value.is_zero());
    assert_eq!(tx.tx.from.value, cc.basic.to.to_address());
}
