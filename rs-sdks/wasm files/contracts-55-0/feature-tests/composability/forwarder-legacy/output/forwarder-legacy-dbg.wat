(module $forwarder_legacy_wasm.wasm
  (type (;0;) (func (param i32 i64)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i32) (result i32)))
  (type (;6;) (func (param i32 i32 i64 i32 i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32) (result i32)))
  (type (;8;) (func (param i64 i32 i32 i32 i32 i32) (result i32)))
  (type (;9;) (func (param i32)))
  (type (;10;) (func (param i32 i32 i32 i64 i32)))
  (type (;11;) (func (param i64) (result i32)))
  (type (;12;) (func (param i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;13;) (func (param i32) (result i64)))
  (type (;14;) (func (result i64)))
  (type (;15;) (func))
  (type (;16;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;17;) (func (param i64 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;18;) (func (param i64)))
  (type (;19;) (func (param i32 i64 i32 i32 i32 i32 i32)))
  (type (;20;) (func (param i32 i32 i32) (result i64)))
  (type (;21;) (func (param i32 i32 i64) (result i32)))
  (type (;22;) (func (param i32 i32 i32 i32)))
  (type (;23;) (func (param i32 i32 i64 i32)))
  (type (;24;) (func (param i32 i32 i64 i32 i32)))
  (type (;25;) (func (param i32 i64 i32)))
  (type (;26;) (func (param i32 i32 i32 i64)))
  (type (;27;) (func (param i32 i32 i32 i32 i32 i32 i32) (result i64)))
  (type (;28;) (func (param i32 i32) (result i64)))
  (type (;29;) (func (param i32 i32 i32 i64 i32 i32)))
  (type (;30;) (func (param i32 i32 i64 i32 i64 i32 i32)))
  (type (;31;) (func (param i64 i32 i32 i32 i32) (result i32)))
  (type (;32;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;33;) (func (param i32 i32 i32 i32 i32)))
  (type (;34;) (func (param i32 i32 i32 i32 i32 i32 i32)))
  (type (;35;) (func (param i64 i32)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;0;) (type 0)))
  (import "env" "bigIntAdd" (func $bigIntAdd (;1;) (type 1)))
  (import "env" "signalError" (func $signalError (;2;) (type 2)))
  (import "env" "mBufferNew" (func $mBufferNew (;3;) (type 3)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;4;) (type 4)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;5;) (type 5)))
  (import "env" "managedTransferValueExecute" (func $managedTransferValueExecute (;6;) (type 6)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;7;) (type 7)))
  (import "env" "managedExecuteOnDestContext" (func $managedExecuteOnDestContext (;8;) (type 8)))
  (import "env" "managedMultiTransferDCDTNFTExecute" (func $managedMultiTransferDCDTNFTExecute (;9;) (type 6)))
  (import "env" "managedCaller" (func $managedCaller (;10;) (type 9)))
  (import "env" "managedSCAddress" (func $managedSCAddress (;11;) (type 9)))
  (import "env" "bigIntGetDCDTExternalBalance" (func $bigIntGetDCDTExternalBalance (;12;) (type 10)))
  (import "env" "bigIntNew" (func $bigIntNew (;13;) (type 11)))
  (import "env" "managedGetDCDTTokenData" (func $managedGetDCDTTokenData (;14;) (type 12)))
  (import "env" "bigIntGetCallValue" (func $bigIntGetCallValue (;15;) (type 9)))
  (import "env" "managedGetMultiDCDTCallValue" (func $managedGetMultiDCDTCallValue (;16;) (type 9)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;17;) (type 4)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;18;) (type 7)))
  (import "env" "managedSignalError" (func $managedSignalError (;19;) (type 9)))
  (import "env" "smallIntGetUnsignedArgument" (func $smallIntGetUnsignedArgument (;20;) (type 13)))
  (import "env" "getNumArguments" (func $getNumArguments (;21;) (type 3)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;22;) (type 5)))
  (import "env" "bigIntSub" (func $bigIntSub (;23;) (type 1)))
  (import "env" "managedGetOriginalTxHash" (func $managedGetOriginalTxHash (;24;) (type 9)))
  (import "env" "getGasLeft" (func $getGasLeft (;25;) (type 14)))
  (import "env" "cleanReturnData" (func $cleanReturnData (;26;) (type 15)))
  (import "env" "bigIntTDiv" (func $bigIntTDiv (;27;) (type 1)))
  (import "env" "bigIntMul" (func $bigIntMul (;28;) (type 1)))
  (import "env" "mBufferCopyByteSlice" (func $mBufferCopyByteSlice (;29;) (type 16)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;30;) (type 4)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;31;) (type 4)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;32;) (type 4)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;33;) (type 4)))
  (import "env" "bigIntGetUnsignedArgument" (func $bigIntGetUnsignedArgument (;34;) (type 2)))
  (import "env" "finish" (func $finish (;35;) (type 2)))
  (import "env" "managedWriteLog" (func $managedWriteLog (;36;) (type 2)))
  (import "env" "managedCreateContract" (func $managedCreateContract (;37;) (type 17)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;38;) (type 15)))
  (import "env" "smallIntFinishUnsigned" (func $smallIntFinishUnsigned (;39;) (type 18)))
  (import "env" "bigIntFinishUnsigned" (func $bigIntFinishUnsigned (;40;) (type 9)))
  (import "env" "managedDeployFromSourceContract" (func $managedDeployFromSourceContract (;41;) (type 17)))
  (import "env" "managedUpgradeContract" (func $managedUpgradeContract (;42;) (type 19)))
  (import "env" "managedUpgradeFromSourceContract" (func $managedUpgradeFromSourceContract (;43;) (type 19)))
  (import "env" "getCurrentDCDTNFTNonce" (func $getCurrentDCDTNFTNonce (;44;) (type 20)))
  (import "env" "getDCDTLocalRoles" (func $getDCDTLocalRoles (;45;) (type 13)))
  (import "env" "smallIntFinishSigned" (func $smallIntFinishSigned (;46;) (type 18)))
  (import "env" "managedIsDCDTFrozen" (func $managedIsDCDTFrozen (;47;) (type 21)))
  (import "env" "managedIsDCDTPaused" (func $managedIsDCDTPaused (;48;) (type 5)))
  (import "env" "managedIsDCDTLimitedTransfer" (func $managedIsDCDTLimitedTransfer (;49;) (type 5)))
  (import "env" "validateTokenIdentifier" (func $validateTokenIdentifier (;50;) (type 5)))
  (import "env" "bigIntCmp" (func $bigIntCmp (;51;) (type 4)))
  (import "env" "mBufferGetBytes" (func $mBufferGetBytes (;52;) (type 4)))
  (import "env" "bigIntSign" (func $bigIntSign (;53;) (type 5)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;54;) (type 16)))
  (import "env" "mBufferEq" (func $mBufferEq (;55;) (type 4)))
  (import "env" "managedAsyncCall" (func $managedAsyncCall (;56;) (type 22)))
  (table (;0;) 1 1 funcref)
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 143257)
  (global (;2;) i32 i32.const 143264)
  (export "memory" (memory 0))
  (export "init" (func $init))
  (export "send_rewa" (func $send_rewa))
  (export "echo_arguments_sync" (func $echo_arguments_sync))
  (export "echo_arguments_sync_twice" (func $echo_arguments_sync_twice))
  (export "forward_sync_accept_funds" (func $forward_sync_accept_funds))
  (export "forward_sync_accept_funds_with_fees" (func $forward_sync_accept_funds_with_fees))
  (export "forward_sync_accept_funds_then_read" (func $forward_sync_accept_funds_then_read))
  (export "forward_sync_retrieve_funds" (func $forward_sync_retrieve_funds))
  (export "forward_sync_retrieve_funds_with_accept_func" (func $forward_sync_retrieve_funds_with_accept_func))
  (export "accept_funds_func" (func $accept_funds_func))
  (export "forward_sync_accept_funds_multi_transfer" (func $forward_sync_accept_funds_multi_transfer))
  (export "echo_args_async" (func $echo_args_async))
  (export "forward_async_accept_funds" (func $forward_async_accept_funds))
  (export "forward_async_accept_funds_half_payment" (func $forward_async_accept_funds_half_payment))
  (export "forward_async_accept_funds_with_fees" (func $forward_async_accept_funds_with_fees))
  (export "forward_async_retrieve_funds" (func $forward_async_retrieve_funds))
  (export "send_funds_twice" (func $send_funds_twice))
  (export "send_async_accept_multi_transfer" (func $send_async_accept_multi_transfer))
  (export "callback_data" (func $callback_data))
  (export "callback_data_at_index" (func $callback_data_at_index))
  (export "clear_callback_data" (func $clear_callback_data))
  (export "forward_transf_exec_accept_funds" (func $forward_transf_exec_accept_funds))
  (export "forward_transf_exec_accept_single_dcdt" (func $forward_transf_exec_accept_single_dcdt))
  (export "forward_transf_execu_accept_funds_with_fees" (func $forward_transf_execu_accept_funds_with_fees))
  (export "forward_transf_exec_accept_funds_twice" (func $forward_transf_exec_accept_funds_twice))
  (export "forward_transf_exec_accept_funds_return_values" (func $forward_transf_exec_accept_funds_return_values))
  (export "transf_exec_multi_accept_funds_v2" (func $transf_exec_multi_accept_funds_v2))
  (export "forward_transf_exec_reject_funds_multi_transfer" (func $forward_transf_exec_reject_funds_multi_transfer))
  (export "transf_exec_multi_reject_funds" (func $transf_exec_multi_reject_funds))
  (export "changeOwnerAddress" (func $changeOwnerAddress))
  (export "deploy_contract" (func $deploy_contract))
  (export "deploy_two_contracts" (func $deploy_two_contracts))
  (export "deploy_vault_from_source" (func $deploy_vault_from_source))
  (export "upgradeVault" (func $upgradeVault))
  (export "upgrade_vault_from_source" (func $upgrade_vault_from_source))
  (export "getFungibleDcdtBalance" (func $getFungibleDcdtBalance))
  (export "getCurrentNftNonce" (func $getCurrentNftNonce))
  (export "send_dcdt" (func $send_dcdt))
  (export "send_dcdt_with_fees" (func $send_dcdt_with_fees))
  (export "send_dcdt_twice" (func $send_dcdt_twice))
  (export "send_dcdt_direct_multi_transfer" (func $send_dcdt_direct_multi_transfer))
  (export "issue_fungible_token" (func $issue_fungible_token))
  (export "local_mint" (func $local_mint))
  (export "local_burn" (func $local_burn))
  (export "get_dcdt_local_roles" (func $get_dcdt_local_roles))
  (export "get_dcdt_token_data" (func $get_dcdt_token_data))
  (export "is_dcdt_frozen" (func $is_dcdt_frozen))
  (export "is_dcdt_paused" (func $is_dcdt_paused))
  (export "is_dcdt_limited_transfer" (func $is_dcdt_limited_transfer))
  (export "validate_token_identifier" (func $validate_token_identifier))
  (export "sft_issue" (func $sft_issue))
  (export "get_nft_balance" (func $get_nft_balance))
  (export "buy_nft" (func $buy_nft))
  (export "nft_issue" (func $nft_issue))
  (export "nft_create" (func $nft_create))
  (export "nft_create_compact" (func $nft_create_compact))
  (export "nft_add_uris" (func $nft_add_uris))
  (export "nft_update_attributes" (func $nft_update_attributes))
  (export "nft_decode_complex_attributes" (func $nft_decode_complex_attributes))
  (export "nft_add_quantity" (func $nft_add_quantity))
  (export "nft_burn" (func $nft_burn))
  (export "transfer_nft_via_async_call" (func $transfer_nft_via_async_call))
  (export "transfer_nft_and_execute" (func $transfer_nft_and_execute))
  (export "create_and_send" (func $create_and_send))
  (export "setLocalRoles" (func $setLocalRoles))
  (export "unsetLocalRoles" (func $unsetLocalRoles))
  (export "lastIssuedToken" (func $lastIssuedToken))
  (export "lastErrorMessage" (func $lastErrorMessage))
  (export "callBack" (func $callBack))
  (export "transf_exec_multi_accept_funds" (func $forward_transf_exec_reject_funds_multi_transfer))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (func $_ZN100_$LT$vault..ProxyTo$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$16extract_proxy_to17hcb436e33eca3a746E (;57;) (type 5) (param i32) (result i32)
    (local i32)
    local.get 0
    i32.load
    local.set 1
    local.get 0
    i32.const 2147483646
    i32.store
    block ;; label = @1
      local.get 1
      i32.const 2147483646
      i32.ne
      br_if 0 (;@1;)
      i32.const 131072
      i32.const 25
      call $_ZN11dharitri_sc5types7managed7wrapped14managed_option26ManagedOption$LT$M$C$T$GT$18unwrap_or_sc_panic28_$u7b$$u7b$closure$u7d$$u7d$17he8c65a2199692bb7E
      unreachable
    end
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped14managed_option26ManagedOption$LT$M$C$T$GT$18unwrap_or_sc_panic28_$u7b$$u7b$closure$u7d$$u7d$17he8c65a2199692bb7E (;58;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $signalError
    unreachable
  )
  (func $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h458471db45f2ff8fE (;59;) (type 5) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    i64.const 0
    call $bigIntSetInt64
    local.get 1
    local.get 1
    local.get 0
    call $bigIntAdd
    local.get 1
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE (;60;) (type 3) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=133176
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=133176
    local.get 0
  )
  (func $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17h9fd260b747f8a7f4E (;61;) (type 15)
    i32.const 132145
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd9eae4beb3575ab6E (;62;) (type 22) (param i32 i32 i32 i32)
    block ;; label = @1
      local.get 1
      local.get 3
      i32.le_u
      br_if 0 (;@1;)
      local.get 1
      local.get 3
      call $_ZN4core5slice5index22slice_index_order_fail17hce8d8012711d5a00E
      unreachable
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN4core5slice5index22slice_index_order_fail17hce8d8012711d5a00E (;63;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN4core5slice5index22slice_index_order_fail8do_panic7runtime17h3eb440503b756a77E
    unreachable
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE (;64;) (type 5) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN117_$LT$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hba02e43a18afd885E (;65;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf249864f0cbba4dcE (;66;) (type 15)
    call $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17h9fd260b747f8a7f4E
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$11direct_dcdt17h08442fc50685bf2cE (;67;) (type 23) (param i32 i32 i64 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.tee 5
    local.get 1
    i32.store
    local.get 4
    local.get 3
    i32.store offset=20
    local.get 4
    local.get 2
    i64.store offset=8
    local.get 4
    local.get 0
    i32.store offset=24
    local.get 4
    i64.const 0
    i64.store offset=32
    local.get 4
    i32.const 40
    i32.add
    i32.const 8
    i32.add
    local.get 5
    i64.load
    i64.store
    local.get 4
    local.get 4
    i32.const 28
    i32.add
    i32.store offset=56
    local.get 4
    local.get 2
    i64.store offset=40
    local.get 4
    local.get 4
    i32.const 32
    i32.add
    i32.store offset=60
    local.get 4
    call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hff912d52582a58ccE
    local.get 4
    i32.const 40
    i32.add
    local.get 0
    i32.load
    i64.const 0
    local.get 4
    i32.load
    local.get 4
    i32.load offset=4
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17hdbf9223b33c0433bE
    local.get 4
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hff912d52582a58ccE (;68;) (type 9) (param i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.set 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17hdbf9223b33c0433bE (;69;) (type 24) (param i32 i32 i64 i32 i32)
    (local i32 i32 i64)
    local.get 0
    i32.load offset=12
    i32.load
    local.set 5
    local.get 0
    i32.load offset=8
    i32.load
    local.set 6
    block ;; label = @1
      local.get 0
      i64.load
      local.tee 7
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
      local.get 1
      local.get 6
      local.get 5
      local.get 2
      local.get 3
      local.get 4
      call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21transfer_dcdt_execute17hada019202a3f8c82E
      return
    end
    local.get 1
    local.get 6
    local.get 7
    local.get 5
    local.get 2
    local.get 3
    local.get 4
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17h47dce8406dbbac38E
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$11direct_rewa17h6982657448099880E (;70;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hff912d52582a58ccE
    local.get 1
    local.get 0
    i64.const 0
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load offset=12
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$24perform_transfer_execute17hd3c141cee5464307E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$24perform_transfer_execute17hd3c141cee5464307E (;71;) (type 24) (param i32 i32 i64 i32 i32)
    local.get 1
    local.get 0
    local.get 2
    local.get 3
    local.get 4
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$19direct_rewa_execute17h9d2eb97ecd34a405E
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_local_burn17hd82a145561d32e49E (;72;) (type 25) (param i32 i64 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 3
        i32.const 16
        i32.add
        i32.const 131465
        i32.const 13
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc16f49575b67c490E
        local.get 3
        i32.const 8
        i32.add
        local.get 3
        i32.load offset=16
        local.get 3
        i32.load offset=20
        local.get 0
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h39c935c26925aa3eE
        local.get 3
        i32.load offset=12
        local.set 0
        local.get 3
        i32.load offset=8
        local.set 4
        br 1 (;@1;)
      end
      local.get 3
      i32.const 40
      i32.add
      i32.const 131478
      i32.const 11
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc16f49575b67c490E
      local.get 3
      i32.const 32
      i32.add
      local.get 3
      i32.load offset=40
      local.get 3
      i32.load offset=44
      local.get 0
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h39c935c26925aa3eE
      local.get 3
      i32.const 24
      i32.add
      local.get 3
      i32.load offset=32
      local.get 3
      i32.load offset=36
      local.get 1
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17ha45d3d35710bc7d0E
      local.get 3
      i32.load offset=28
      local.set 0
      local.get 3
      i32.load offset=24
      local.set 4
    end
    local.get 3
    local.get 4
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17ha619b7fe99d2b6b7E
    local.get 3
    i32.load
    local.get 3
    i32.load offset=4
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17h715824254b18c59dE
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc16f49575b67c490E (;73;) (type 1) (param i32 i32 i32)
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6eaeb76854457359E
    local.set 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h39c935c26925aa3eE (;74;) (type 22) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h88bb164a1fa973daE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17ha45d3d35710bc7d0E (;75;) (type 26) (param i32 i32 i32 i64)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h189690f76e9cc4bcE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17ha619b7fe99d2b6b7E (;76;) (type 22) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h4ba86bd6469cb1e3E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17h715824254b18c59dE (;77;) (type 2) (param i32 i32)
    (local i64)
    call $getGasLeft
    local.set 2
    i32.const -30
    call $managedSCAddress
    local.get 2
    i32.const -30
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h429f6f51f1a88ea6E
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17h980ae3b341ad5fd1E
    drop
    call $cleanReturnData
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_local_mint17h42b10c7375e6a845E (;78;) (type 25) (param i32 i64 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 3
        i32.const 16
        i32.add
        i32.const 131489
        i32.const 13
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc16f49575b67c490E
        local.get 3
        i32.const 8
        i32.add
        local.get 3
        i32.load offset=16
        local.get 3
        i32.load offset=20
        local.get 0
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h39c935c26925aa3eE
        local.get 3
        i32.load offset=12
        local.set 0
        local.get 3
        i32.load offset=8
        local.set 4
        br 1 (;@1;)
      end
      local.get 3
      i32.const 40
      i32.add
      i32.const 131502
      i32.const 18
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc16f49575b67c490E
      local.get 3
      i32.const 32
      i32.add
      local.get 3
      i32.load offset=40
      local.get 3
      i32.load offset=44
      local.get 0
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h39c935c26925aa3eE
      local.get 3
      i32.const 24
      i32.add
      local.get 3
      i32.load offset=32
      local.get 3
      i32.load offset=36
      local.get 1
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17ha45d3d35710bc7d0E
      local.get 3
      i32.load offset=28
      local.set 0
      local.get 3
      i32.load offset=24
      local.set 4
    end
    local.get 3
    local.get 4
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17ha619b7fe99d2b6b7E
    local.get 3
    i32.load
    local.get 3
    i32.load offset=4
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17h715824254b18c59dE
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_nft_create17h77c5319b0fd2303aE (;79;) (type 27) (param i32 i32 i32 i32 i32 i32 i32) (result i64)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 7
    global.set $__stack_pointer
    local.get 7
    i32.const 72
    i32.add
    i32.const 131520
    i32.const 13
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc16f49575b67c490E
    local.get 7
    i32.const 64
    i32.add
    local.get 7
    i32.load offset=72
    local.get 7
    i32.load offset=76
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h39c935c26925aa3eE
    local.get 7
    i32.const 56
    i32.add
    local.get 7
    i32.load offset=64
    local.get 7
    i32.load offset=68
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17ha619b7fe99d2b6b7E
    local.get 7
    i32.const 48
    i32.add
    local.get 7
    i32.load offset=56
    local.get 7
    i32.load offset=60
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h6e10618d4f820b27E
    local.get 7
    i32.const 40
    i32.add
    local.get 7
    i32.load offset=48
    local.get 7
    i32.load offset=52
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17ha619b7fe99d2b6b7E
    local.get 7
    i32.const 32
    i32.add
    local.get 7
    i32.load offset=40
    local.get 7
    i32.load offset=44
    local.get 4
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h6e10618d4f820b27E
    local.get 7
    i32.const 24
    i32.add
    local.get 7
    i32.load offset=32
    local.get 7
    i32.load offset=36
    local.get 5
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17haa09a9f07b1852c3E
    local.get 7
    i32.load offset=28
    local.set 0
    local.get 7
    i32.load offset=24
    local.set 1
    block ;; label = @1
      block ;; label = @2
        local.get 6
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17hd2500b9f4d03b756E
        br_if 0 (;@2;)
        local.get 7
        local.get 6
        call $mBufferGetLength
        i32.store offset=92
        local.get 7
        i32.const 0
        i32.store offset=88
        local.get 7
        local.get 6
        i32.store offset=84
        loop ;; label = @3
          local.get 7
          i32.const 16
          i32.add
          local.get 7
          i32.const 84
          i32.add
          call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h922afb9bcbd9c93bE
          local.get 7
          i32.load offset=16
          i32.eqz
          br_if 2 (;@1;)
          local.get 7
          i32.const 8
          i32.add
          local.get 1
          local.get 0
          local.get 7
          i32.load offset=20
          call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h9cf79d0d36a618edE
          local.get 7
          i32.load offset=12
          local.set 0
          local.get 7
          i32.load offset=8
          local.set 1
          br 0 (;@3;)
        end
      end
      local.get 7
      local.get 1
      local.get 0
      call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17ha3a4d92da6e15336E
      local.get 7
      i32.load offset=4
      local.set 0
      local.get 7
      i32.load
      local.set 1
    end
    local.get 1
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17hb10d2671b76cddbeE
    local.set 8
    local.get 7
    i32.const 96
    i32.add
    global.set $__stack_pointer
    local.get 8
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h6e10618d4f820b27E (;80;) (type 22) (param i32 i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    drop
    local.get 2
    local.get 3
    i32.load
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17haa09a9f07b1852c3E (;81;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
    local.set 4
    local.get 3
    i32.load8_u
    local.get 4
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h8503467cc1a80ca7E
    local.get 3
    i32.load8_u offset=1
    local.get 4
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h8503467cc1a80ca7E
    local.get 3
    i32.load8_u offset=2
    local.get 4
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h8503467cc1a80ca7E
    local.get 2
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17hd2500b9f4d03b756E (;82;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7be4a9953ea8eddfE
    i32.eqz
  )
  (func $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h922afb9bcbd9c93bE (;83;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 3
        local.get 1
        i32.load offset=8
        i32.lt_u
        br_if 0 (;@2;)
        i32.const 0
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      i32.const 0
      i32.store offset=12
      local.get 1
      i32.load
      local.get 3
      local.get 2
      i32.const 12
      i32.add
      i32.const 4
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17he59cf7a5329a8f5dE
      drop
      local.get 1
      local.get 3
      i32.const 4
      i32.add
      i32.store offset=4
      local.get 2
      i32.load offset=12
      local.tee 1
      i32.const 24
      i32.shl
      local.get 1
      i32.const 65280
      i32.and
      i32.const 8
      i32.shl
      i32.or
      local.get 1
      i32.const 8
      i32.shr_u
      i32.const 65280
      i32.and
      local.get 1
      i32.const 24
      i32.shr_u
      i32.or
      i32.or
      local.set 3
      i32.const 1
      local.set 1
    end
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h9cf79d0d36a618edE (;84;) (type 22) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h0c68549f9be90843E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17ha3a4d92da6e15336E (;85;) (type 1) (param i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.tee 3
    i32.const 1
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17hb10d2671b76cddbeE (;86;) (type 28) (param i32 i32) (result i64)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    call $getGasLeft
    local.set 3
    i32.const -30
    call $managedSCAddress
    local.get 3
    i32.const -30
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h429f6f51f1a88ea6E
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17h980ae3b341ad5fd1E
    local.set 0
    call $cleanReturnData
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.set 1
    local.get 2
    local.get 0
    call $mBufferGetLength
    i32.store offset=28
    local.get 2
    i32.const 0
    i32.store offset=24
    local.get 2
    local.get 0
    i32.store offset=20
    block ;; label = @1
      loop ;; label = @2
        local.get 2
        i32.const 8
        i32.add
        local.get 2
        i32.const 20
        i32.add
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h922afb9bcbd9c93bE
        local.get 2
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 2
        i32.load offset=12
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
        br 0 (;@2;)
      end
    end
    local.get 2
    local.get 1
    call $mBufferGetLength
    i32.store offset=28
    local.get 2
    i32.const 0
    i32.store offset=24
    local.get 2
    local.get 1
    i32.store offset=20
    local.get 2
    i32.const 20
    i32.add
    i32.const 131873
    i32.const 11
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17hd655c08174432fcbE
    local.set 3
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 3
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$28transfer_dcdt_via_async_call17ha5b742dbd67bcc28E (;87;) (type 23) (param i32 i32 i64 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    local.get 3
    i32.store offset=20
    local.get 4
    local.get 1
    i32.store offset=16
    local.get 4
    local.get 2
    i64.store offset=8
    local.get 4
    local.get 0
    i32.store offset=24
    local.get 4
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hf7ce8183854d752cE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hf7ce8183854d752cE (;88;) (type 9) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 16
    i32.add
    i32.const 8
    i32.add
    local.get 0
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 1
    local.get 0
    i64.load
    i64.store offset=16
    local.get 0
    i32.load offset=16
    local.set 2
    local.get 1
    i32.const 8
    i32.add
    call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hff912d52582a58ccE
    local.get 1
    i32.const 16
    i32.add
    local.get 0
    i32.const 20
    i32.add
    local.tee 0
    local.get 0
    local.get 2
    local.get 1
    i32.load offset=8
    local.get 1
    i32.load offset=12
    call $_ZN11dharitri_sc5types11interaction10tx_payment22tx_payment_single_dcdt252_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h425624cc7295192bE
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17h5273cf2e03eea10dE (;89;) (type 22) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17h4fab3410cd6f932aE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17h4fab3410cd6f932aE (;90;) (type 22) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $managedAsyncCall
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$19direct_rewa_execute17h9d2eb97ecd34a405E (;91;) (type 24) (param i32 i32 i64 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $managedTransferValueExecute
    drop
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21transfer_dcdt_execute17hada019202a3f8c82E (;92;) (type 29) (param i32 i32 i32 i64 i32 i32)
    local.get 0
    local.get 1
    i64.const 0
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17h47dce8406dbbac38E
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17h47dce8406dbbac38E (;93;) (type 30) (param i32 i32 i64 i32 i64 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 7
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.set 8
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
    local.set 1
    local.get 7
    local.get 3
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h458471db45f2ff8fE
    i32.store offset=12
    local.get 7
    local.get 2
    i64.store
    local.get 7
    local.get 1
    i32.store offset=8
    local.get 8
    local.get 7
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h112f1bbc62eaae7eE
    local.get 0
    local.get 8
    local.get 4
    local.get 5
    local.get 6
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27multi_dcdt_transfer_execute17h8a41e14b180eb338E
    local.get 7
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17hc172dfc29a395390E (;94;) (type 9) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.const 8
    i32.shl
    local.get 0
    i32.const 65280
    i32.and
    i32.const 8
    i32.shr_u
    i32.or
    i32.store16 offset=14
    i32.const -25
    local.get 1
    i32.const 14
    i32.add
    i32.const 2
    call $mBufferSetBytes
    drop
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E (;95;) (type 3) (result i32)
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6eaeb76854457359E
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h112f1bbc62eaae7eE (;96;) (type 2) (param i32 i32)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.load offset=8
    local.tee 3
    i32.const 24
    i32.shl
    local.get 3
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 3
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 3
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store
    local.get 2
    local.get 1
    i32.load offset=12
    local.tee 3
    i32.const 24
    i32.shl
    local.get 3
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 3
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 3
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 2
    local.get 1
    i64.load
    local.tee 4
    i64.const 56
    i64.shl
    local.get 4
    i64.const 65280
    i64.and
    i64.const 40
    i64.shl
    i64.or
    local.get 4
    i64.const 16711680
    i64.and
    i64.const 24
    i64.shl
    local.get 4
    i64.const 4278190080
    i64.and
    i64.const 8
    i64.shl
    i64.or
    i64.or
    local.get 4
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 4
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 4
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 4
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=4 align=4
    local.get 0
    local.get 2
    i32.const 16
    call $mBufferAppendBytes
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27multi_dcdt_transfer_execute17h8a41e14b180eb338E (;97;) (type 24) (param i32 i32 i64 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $managedMultiTransferDCDTNFTExecute
    drop
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17h980ae3b341ad5fd1E (;98;) (type 31) (param i64 i32 i32 i32 i32) (result i32)
    (local i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 5
    call $managedExecuteOnDestContext
    drop
    local.get 5
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h55d72c18a6076eadE (;99;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 0
    call $managedCaller
    local.get 0
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17h62b2c0d8946772e5E (;100;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 0
    call $managedSCAddress
    local.get 0
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$16get_dcdt_balance17he14de28ca942b803E (;101;) (type 21) (param i32 i32 i64) (result i32)
    (local i32 i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.set 3
    local.get 1
    call $mBufferGetLength
    local.set 4
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node26unsafe_buffer_load_address17h162fea53fa3b31a5E
    local.get 1
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node35unsafe_buffer_load_token_identifier17hcfcca66f94458f18E
    i32.const 143193
    i32.const 143225
    local.get 4
    local.get 2
    local.get 3
    call $bigIntGetDCDTExternalBalance
    local.get 3
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node26unsafe_buffer_load_address17h162fea53fa3b31a5E (;102;) (type 9) (param i32)
    local.get 0
    i32.const 143193
    call $mBufferGetBytes
    drop
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node35unsafe_buffer_load_token_identifier17hcfcca66f94458f18E (;103;) (type 9) (param i32)
    local.get 0
    i32.const 143225
    call $mBufferGetBytes
    drop
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$19get_dcdt_token_data17h960794a6ae2360ccE (;104;) (type 26) (param i32 i32 i32 i64)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 1
    local.get 2
    local.get 3
    i64.const 0
    call $bigIntNew
    local.tee 5
    call $mBufferNew
    local.tee 6
    call $mBufferNew
    local.tee 7
    call $mBufferNew
    local.tee 8
    call $mBufferNew
    local.tee 9
    call $mBufferNew
    local.tee 10
    i64.const 0
    call $bigIntNew
    local.tee 11
    call $mBufferNew
    local.tee 12
    call $managedGetDCDTTokenData
    block ;; label = @1
      local.get 10
      call $mBufferGetLength
      br_if 0 (;@1;)
      local.get 10
      i32.const 131136
      i32.const 32
      call $mBufferSetBytes
      drop
    end
    local.get 4
    i32.const 0
    i32.store16 offset=14
    local.get 6
    i32.const 0
    local.get 4
    i32.const 14
    i32.add
    i32.const 2
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17he59cf7a5329a8f5dE
    drop
    local.get 0
    local.get 3
    i64.const 0
    i64.ne
    i32.store8 offset=28
    local.get 0
    local.get 5
    i32.store
    local.get 0
    local.get 12
    i32.store offset=24
    local.get 0
    local.get 11
    i32.store offset=20
    local.get 0
    local.get 10
    i32.store offset=16
    local.get 0
    local.get 9
    i32.store offset=12
    local.get 0
    local.get 8
    i32.store offset=8
    local.get 0
    local.get 7
    i32.store offset=4
    local.get 0
    local.get 4
    i32.load8_u offset=14
    i32.const 0
    i32.ne
    i32.store8 offset=29
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17he59cf7a5329a8f5dE (;105;) (type 16) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$11single_dcdt17hbb112d698aad5f76E (;106;) (type 9) (param i32)
    (local i32)
    block ;; label = @1
      call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17ha92307661ac3571aE
      local.tee 1
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h8f18dcf8c92376f9E
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h5ca2cdf8c4ba114fE
      return
    end
    i32.const 131168
    i32.const 34
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17ha92307661ac3571aE (;107;) (type 3) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28all_dcdt_transfers_unchecked17hadbddb47c165b9fbE
    local.set 1
    block ;; label = @1
      i32.const 4
      call $_ZN11dharitri_sc3api13managed_types14static_var_api16StaticVarApiImpl21flag_is_set_or_update17h28e4cf07a7f42ac2E
      br_if 0 (;@1;)
      i32.const -40
      i32.const 131320
      i32.const 11
      call $mBufferSetBytes
      drop
      local.get 0
      local.get 1
      call $mBufferGetLength
      i32.store offset=8
      local.get 0
      i32.const 0
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
      loop ;; label = @2
        local.get 0
        i32.const 15
        i32.add
        local.get 0
        call $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2752cd60e61f5775E
        local.get 0
        i32.load8_u offset=15
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        i32.const -40
        local.get 0
        i32.load offset=16 align=1
        local.tee 2
        i32.const 24
        i32.shl
        local.get 2
        i32.const 65280
        i32.and
        i32.const 8
        i32.shl
        i32.or
        local.get 2
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 2
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h00ec339cb3020c69E
        i32.eqz
        br_if 0 (;@2;)
      end
      i32.const 131202
      i32.const 24
      call $signalError
      unreachable
    end
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h8f18dcf8c92376f9E (;108;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7be4a9953ea8eddfE
    i32.const 4
    i32.shr_u
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h5ca2cdf8c4ba114fE (;109;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    i64.const 0
    i64.store
    local.get 2
    i64.const 0
    i64.store offset=32
    block ;; label = @1
      local.get 1
      i32.const 0
      local.get 2
      i32.const 32
      i32.add
      i32.const 16
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h0dd6767832ec3e98E
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131899
      i32.const 29
      call $signalError
      unreachable
    end
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 2
    i32.const 32
    i32.add
    call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$M$GT$$u20$as$u20$dharitri_sc..types..managed..wrapped..managed_vec_item..ManagedVecItem$GT$19borrow_from_payload17h5ed4b3110ea0a1f3E
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 0
    local.get 2
    i64.load offset=16
    i64.store
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28all_dcdt_transfers_unchecked17hadbddb47c165b9fbE (;110;) (type 3) (result i32)
    block ;; label = @1
      i32.const 2
      call $_ZN11dharitri_sc3api13managed_types14static_var_api16StaticVarApiImpl21flag_is_set_or_update17h28e4cf07a7f42ac2E
      br_if 0 (;@1;)
      i32.const -38
      call $managedGetMultiDCDTCallValue
    end
    i32.const -38
  )
  (func $_ZN11dharitri_sc3api13managed_types14static_var_api16StaticVarApiImpl21flag_is_set_or_update17h28e4cf07a7f42ac2E (;111;) (type 5) (param i32) (result i32)
    (local i32 i32)
    block ;; label = @1
      i32.const 0
      i32.load8_u offset=143192
      local.tee 1
      local.get 0
      i32.and
      i32.const 255
      i32.and
      local.get 0
      i32.const 255
      i32.and
      i32.eq
      local.tee 2
      br_if 0 (;@1;)
      i32.const 0
      local.get 1
      local.get 0
      i32.or
      i32.store8 offset=143192
    end
    local.get 2
  )
  (func $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2752cd60e61f5775E (;112;) (type 2) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 0
    local.set 3
    block ;; label = @1
      local.get 1
      i32.load offset=4
      local.tee 4
      local.get 1
      i32.load offset=8
      i32.ge_u
      br_if 0 (;@1;)
      local.get 2
      i32.const 8
      i32.add
      local.tee 3
      i64.const 0
      i64.store
      local.get 2
      i64.const 0
      i64.store
      local.get 1
      i32.load
      local.get 4
      local.get 2
      i32.const 16
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17he59cf7a5329a8f5dE
      drop
      local.get 1
      local.get 4
      i32.const 16
      i32.add
      i32.store offset=4
      local.get 0
      local.get 2
      i64.load
      i64.store offset=1 align=1
      local.get 0
      i32.const 9
      i32.add
      local.get 3
      i64.load
      i64.store align=1
      i32.const 1
      local.set 3
    end
    local.get 0
    local.get 3
    i32.store8
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h00ec339cb3020c69E (;113;) (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $mBufferEq
    i32.const 0
    i32.gt_s
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h689ccc120464f7d5E (;114;) (type 9) (param i32)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28all_dcdt_transfers_unchecked17hadbddb47c165b9fbE
            local.tee 2
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h8f18dcf8c92376f9E
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          i32.const 131168
          i32.const 34
          call $signalError
          unreachable
        end
        call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$4rewa17hcbf6f0e1e7ffd4afE
        local.set 2
        local.get 0
        call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$22rewa_direct_non_strict17h21f42fe5a0e49606E
        call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h458471db45f2ff8fE
        i32.store offset=12
        local.get 0
        i64.const 0
        i64.store
        local.get 0
        local.get 2
        i32.store offset=8
        br 1 (;@1;)
      end
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h5ca2cdf8c4ba114fE
      local.get 1
      i32.load offset=8
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
      local.set 2
      local.get 1
      i64.load
      local.set 3
      local.get 0
      local.get 1
      i32.load offset=12
      call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h458471db45f2ff8fE
      i32.store offset=12
      local.get 0
      local.get 3
      i64.store
      local.get 0
      local.get 2
      i32.store offset=8
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$4rewa17hcbf6f0e1e7ffd4afE (;115;) (type 3) (result i32)
    i32.const 131320
    i32.const 11
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6eaeb76854457359E
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$22rewa_direct_non_strict17h21f42fe5a0e49606E (;116;) (type 3) (result i32)
    block ;; label = @1
      i32.const 1
      call $_ZN11dharitri_sc3api13managed_types14static_var_api16StaticVarApiImpl21flag_is_set_or_update17h28e4cf07a7f42ac2E
      br_if 0 (;@1;)
      i32.const -35
      call $bigIntGetCallValue
    end
    i32.const -35
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17he031072ab1b682a7E (;117;) (type 9) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h689ccc120464f7d5E
    block ;; label = @1
      local.get 1
      i64.load
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i64.load offset=8
      i64.store
      local.get 1
      i32.const 16
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131226
    i32.const 28
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$4rewa17h1c1d1cacc0c4bd38E (;118;) (type 3) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28all_dcdt_transfers_unchecked17hadbddb47c165b9fbE
            local.tee 1
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h8f18dcf8c92376f9E
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          i32.const 131291
          i32.const 29
          call $signalError
          unreachable
        end
        call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$22rewa_direct_non_strict17h21f42fe5a0e49606E
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h5ca2cdf8c4ba114fE
      block ;; label = @2
        local.get 0
        i32.load offset=8
        call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h3efe55ec1cac865cE
        br_if 0 (;@2;)
        i32.const 131254
        i32.const 37
        call $signalError
        unreachable
      end
      local.get 0
      i32.load offset=12
      local.set 1
    end
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h3efe55ec1cac865cE (;119;) (type 5) (param i32) (result i32)
    i32.const -40
    i32.const 131320
    i32.const 11
    call $mBufferSetBytes
    drop
    i32.const -40
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h00ec339cb3020c69E
  )
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17he05c46dcb1b5885aE (;120;) (type 5) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb22766f67bb2d820E (;121;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131331
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6eaeb76854457359E
    local.tee 4
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 4
    i32.const 131354
    i32.const 3
    call $mBufferAppendBytes
    drop
    local.get 4
    local.get 2
    local.get 3
    call $mBufferAppendBytes
    drop
    local.get 4
    call $managedSignalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6eaeb76854457359E (;122;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h8fb479e3ba81cdacE (;123;) (type 15)
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$4rewa17h1c1d1cacc0c4bd38E
    drop
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h067d26e6abab87b3E (;124;) (type 5) (param i32) (result i32)
    local.get 0
    i32.const 132457
    i32.const 9
    call $_ZN253_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hb0c89c9cf8751429E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h3e1d3bad96e8d08dE
  )
  (func $_ZN253_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hb0c89c9cf8751429E (;125;) (type 7) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    local.get 0
    call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h922afb9bcbd9c93bE
    block ;; label = @1
      local.get 3
      i32.load offset=8
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=12
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
      local.set 0
      local.get 3
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 0
      return
    end
    local.get 1
    local.get 2
    i32.const 131357
    i32.const 17
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb22766f67bb2d820E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h3e1d3bad96e8d08dE (;126;) (type 5) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    call $mBufferToBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1015204b24770ba6E (;127;) (type 7) (param i32 i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.set 3
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.load
        i32.const 0
        i32.load offset=143188
        i32.ge_s
        br_if 1 (;@1;)
        local.get 3
        local.get 0
        local.get 1
        local.get 2
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1415ccf04a5751d6E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
        br 0 (;@2;)
      end
    end
    local.get 3
  )
  (func $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1415ccf04a5751d6E (;128;) (type 7) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h14a078a741bcfaabE
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17he05c46dcb1b5885aE
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E (;129;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.const 24
    i32.shl
    local.get 1
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 1
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 1
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 0
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    call $mBufferAppendBytes
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h13aec8f3f39cd78bE (;130;) (type 2) (param i32 i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 2
    block ;; label = @1
      block ;; label = @2
        local.get 1
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h9038e00cb4dab0fbE
        local.tee 3
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      local.get 3
      i32.const 28523
      i32.eq
      br_if 0 (;@1;)
      block ;; label = @2
        local.get 1
        i32.load
        i32.const 0
        i32.load offset=143188
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 1
        local.set 2
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
        local.set 4
        br 1 (;@1;)
      end
      i32.const 1
      local.set 2
      local.get 1
      i32.const 132099
      i32.const 6
      call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1415ccf04a5751d6E
      local.set 4
    end
    local.get 0
    local.get 4
    i32.store offset=8
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h9038e00cb4dab0fbE (;131;) (type 5) (param i32) (result i32)
    (local i64)
    block ;; label = @1
      local.get 0
      i32.const 132099
      i32.const 6
      call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h14a078a741bcfaabE
      call $smallIntGetUnsignedArgument
      local.tee 1
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 132099
      i32.const 6
      i32.const 131097
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb22766f67bb2d820E
      unreachable
    end
    local.get 1
    i32.wrap_i64
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1fbdb2c187bb9a5cE (;132;) (type 7) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN253_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hb0c89c9cf8751429E
    local.get 1
    local.get 2
    call $_ZN143_$LT$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h6848017938088f1bE
  )
  (func $_ZN143_$LT$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h6848017938088f1bE (;133;) (type 7) (param i32 i32 i32) (result i32)
    block ;; label = @1
      local.get 0
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 132026
      i32.const 16
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb22766f67bb2d820E
      unreachable
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h2d3b809a998ac7a5E (;134;) (type 5) (param i32) (result i32)
    local.get 0
    i32.const 132074
    i32.const 16
    call $_ZN253_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hb0c89c9cf8751429E
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17hfef59c404c4e64ddE
  )
  (func $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17hfef59c404c4e64ddE (;135;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17hc47d11e365c3e1b5E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h33c5800d32a06963E (;136;) (type 2) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h9038e00cb4dab0fbE
          local.tee 3
          i32.const 28523
          i32.eq
          br_if 0 (;@3;)
          local.get 3
          br_if 1 (;@2;)
        end
        local.get 2
        i32.const 12
        i32.add
        local.set 3
        i32.const 0
        local.set 4
        local.get 1
        i32.const 132099
        i32.const 6
        call $_ZN168_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17hc61ffeec8429bf4aE
        local.set 1
        br 1 (;@1;)
      end
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.load
          i32.const 0
          i32.load offset=143188
          i32.lt_s
          br_if 0 (;@3;)
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
          local.set 1
          br 1 (;@2;)
        end
        local.get 1
        i32.const 132099
        i32.const 6
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1415ccf04a5751d6E
        local.set 1
      end
      local.get 2
      local.get 3
      i32.store offset=12
      local.get 2
      i32.const 8
      i32.add
      local.set 3
      i32.const 1
      local.set 4
    end
    local.get 3
    local.get 1
    i32.store
    local.get 0
    local.get 4
    i32.store
    local.get 0
    local.get 2
    i32.load offset=12
    i32.store offset=4
    local.get 0
    local.get 2
    i32.load offset=8
    i32.store offset=8
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN168_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17hc61ffeec8429bf4aE (;137;) (type 7) (param i32 i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.set 3
    loop (result i32) ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load
        i32.const 0
        i32.load offset=143188
        i32.lt_s
        br_if 0 (;@2;)
        local.get 3
        return
      end
      local.get 3
      local.get 0
      local.get 1
      local.get 2
      call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1415ccf04a5751d6E
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
      br 0 (;@1;)
    end
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h777d35a4e7daadfdE (;138;) (type 7) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN168_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17hc61ffeec8429bf4aE
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h8c8bd4c9e26a12c8E (;139;) (type 2) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h9038e00cb4dab0fbE
          local.tee 3
          i32.const 28523
          i32.eq
          br_if 0 (;@3;)
          local.get 3
          br_if 1 (;@2;)
        end
        local.get 2
        i32.const 12
        i32.add
        local.set 3
        i32.const 0
        local.set 4
        local.get 1
        i32.const 132099
        i32.const 6
        call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h2c8c4e9959a1f46bE
        local.set 1
        br 1 (;@1;)
      end
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.load
          i32.const 0
          i32.load offset=143188
          i32.lt_s
          br_if 0 (;@3;)
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
          local.set 1
          br 1 (;@2;)
        end
        local.get 1
        i32.const 132099
        i32.const 6
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1415ccf04a5751d6E
        local.set 1
      end
      local.get 2
      local.get 3
      i32.store offset=12
      local.get 2
      i32.const 8
      i32.add
      local.set 3
      i32.const 1
      local.set 4
    end
    local.get 3
    local.get 1
    i32.store
    local.get 0
    local.get 4
    i32.store
    local.get 0
    local.get 2
    i32.load offset=12
    i32.store offset=4
    local.get 0
    local.get 2
    i32.load offset=8
    i32.store offset=8
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h2c8c4e9959a1f46bE (;140;) (type 7) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h14a078a741bcfaabE
    local.get 1
    local.get 2
    call $_ZN145_$LT$dharitri_sc..types..managed..wrapped..token_identifier..TokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h165193ac669f13eaE
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h9558c11a427c89aeE (;141;) (type 2) (param i32 i32)
    (local i32 i32 i32 i64 i32)
    local.get 1
    i32.const 132136
    i32.const 9
    call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h14a078a741bcfaabE
    call $_ZN129_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h8382c17b0a60e5edE
    local.set 2
    local.get 1
    i32.const 132136
    i32.const 9
    call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1415ccf04a5751d6E
    local.set 3
    local.get 1
    i32.const 132136
    i32.const 9
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h2c8c4e9959a1f46bE
    local.set 4
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.const 132136
          i32.const 9
          call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h14a078a741bcfaabE
          call $smallIntGetUnsignedArgument
          local.tee 5
          i64.const 1
          i64.gt_u
          br_if 0 (;@3;)
          i32.const 0
          local.set 6
          local.get 5
          i32.wrap_i64
          br_table 2 (;@1;) 1 (;@2;) 2 (;@1;)
        end
        i32.const 132136
        i32.const 9
        i32.const 132492
        i32.const 18
        call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb22766f67bb2d820E
        unreachable
      end
      i32.const 1
      local.set 6
    end
    local.get 0
    local.get 1
    i32.const 132136
    i32.const 9
    call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1415ccf04a5751d6E
    i32.store offset=16
    local.get 0
    local.get 6
    i32.store8 offset=12
    local.get 0
    local.get 4
    i32.store offset=8
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h14a078a741bcfaabE (;142;) (type 7) (param i32 i32 i32) (result i32)
    (local i32)
    block ;; label = @1
      local.get 0
      i32.load
      local.tee 3
      i32.const 0
      i32.load offset=143188
      i32.lt_s
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131357
      i32.const 17
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb22766f67bb2d820E
      unreachable
    end
    local.get 0
    local.get 3
    i32.const 1
    i32.add
    i32.store
    local.get 3
  )
  (func $_ZN129_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h8382c17b0a60e5edE (;143;) (type 5) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    call $bigIntGetUnsignedArgument
    local.get 1
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17he7135e24af7fc07cE (;144;) (type 2) (param i32 i32)
    (local i32)
    i32.const 0
    local.set 2
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load
        i32.const 0
        i32.load offset=143188
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 1
        local.set 2
        br 1 (;@1;)
      end
      local.get 1
      i32.const 132316
      i32.const 7
      call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1415ccf04a5751d6E
      local.set 1
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E (;145;) (type 7) (param i32 i32 i32) (result i32)
    block ;; label = @1
      local.get 0
      call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17he05c46dcb1b5885aE
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 132026
      i32.const 16
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb22766f67bb2d820E
      unreachable
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h19d3b1dec4a421d1E (;146;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN129_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h8382c17b0a60e5edE
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h2534930449c7ff1aE (;147;) (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17he05c46dcb1b5885aE
    local.tee 4
    call $mBufferGetLength
    local.set 0
    local.get 3
    i32.const 0
    i32.store8 offset=28
    local.get 3
    local.get 0
    i32.store offset=24
    local.get 3
    local.get 4
    i32.store offset=20
    local.get 3
    local.get 0
    i32.store offset=16
    local.get 3
    i32.const 0
    i32.store offset=12
    local.get 3
    i32.const 12
    i32.add
    local.get 1
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h5b1e5d61df9ff046E
    local.set 0
    local.get 3
    i32.const 12
    i32.add
    local.get 1
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h5b1e5d61df9ff046E
    local.set 4
    local.get 3
    i32.const 12
    i32.add
    local.get 1
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h5b1e5d61df9ff046E
    local.set 5
    block ;; label = @1
      local.get 3
      i32.load offset=16
      local.get 3
      i32.load offset=12
      i32.ne
      br_if 0 (;@1;)
      block ;; label = @2
        local.get 3
        i32.load8_u offset=28
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        i32.store offset=143180
        i32.const 0
        i32.const 0
        i32.store8 offset=143184
      end
      local.get 3
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 5
      i32.const 16
      i32.shl
      local.get 4
      i32.const 255
      i32.and
      i32.const 8
      i32.shl
      i32.or
      local.get 0
      i32.const 255
      i32.and
      i32.or
      return
    end
    local.get 1
    local.get 2
    i32.const 131097
    i32.const 14
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb22766f67bb2d820E
    unreachable
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h5b1e5d61df9ff046E (;148;) (type 7) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 0
    i32.store8 offset=15
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 3
      i32.const 15
      i32.add
      i32.const 1
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17ha05148689a286fd6E
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h08dd25e36547a856E
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    i32.const 1
    i32.add
    i32.store
    local.get 3
    i32.load8_u offset=15
    local.set 0
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h41a9a0e82179c4beE (;149;) (type 13) (param i32) (result i64)
    local.get 0
    call $smallIntGetUnsignedArgument
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h51932ae5b296ee6aE (;150;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17he05c46dcb1b5885aE
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h54916b9a9e41f603E (;151;) (type 3) (result i32)
    (local i64)
    block ;; label = @1
      i32.const 0
      call $smallIntGetUnsignedArgument
      local.tee 0
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 132466
      i32.const 5
      i32.const 131097
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb22766f67bb2d820E
      unreachable
    end
    local.get 0
    i32.wrap_i64
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h74bba0c6dddaf049E (;152;) (type 3) (result i32)
    i32.const 1
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h3ee80a1835bc165cE
  )
  (func $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h3ee80a1835bc165cE (;153;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17he05c46dcb1b5885aE
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17hc47d11e365c3e1b5E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5da29284acbec1cE (;154;) (type 7) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN145_$LT$dharitri_sc..types..managed..wrapped..token_identifier..TokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h165193ac669f13eaE
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..wrapped..token_identifier..TokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h165193ac669f13eaE (;155;) (type 7) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    local.get 0
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h3ee80a1835bc165cE
    call $_ZN11dharitri_sc5types7managed7wrapped16token_identifier24TokenIdentifier$LT$M$GT$7try_new17h45ed21fbc1db0871E
    block ;; label = @1
      local.get 3
      i32.load offset=8
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=12
      local.set 0
      local.get 3
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 0
      return
    end
    local.get 1
    local.get 2
    i32.const 131960
    i32.const 13
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb22766f67bb2d820E
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h452c95bd46dc491fE (;156;) (type 9) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=143188
      local.get 0
      i32.gt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131374
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hf6ef9181c3420c97E (;157;) (type 2) (param i32 i32)
    block ;; label = @1
      local.get 0
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
      return
    end
    i32.const 131374
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E (;158;) (type 9) (param i32)
    block ;; label = @1
      call $getNumArguments
      local.get 0
      i32.ne
      br_if 0 (;@1;)
      return
    end
    i32.const 131392
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h47ac3ed1686d2edeE (;159;) (type 9) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=143188
      local.get 0
      i32.lt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131357
    i32.const 17
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE (;160;) (type 15)
    i32.const 0
    call $getNumArguments
    i32.store offset=143188
  )
  (func $_ZN11dharitri_sc2io6finish12finish_multi17h229f8e956e6cc63dE (;161;) (type 9) (param i32)
    local.get 0
    i32.load
    call $mBufferFinish
    drop
    block ;; label = @1
      local.get 0
      i32.load offset=4
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=8
      call $mBufferFinish
      drop
    end
  )
  (func $_ZN11dharitri_sc2io6finish12finish_multi17hf8d5a2af1111a5c7E (;162;) (type 9) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    call $mBufferGetLength
    i32.store offset=28
    local.get 1
    i32.const 0
    i32.store offset=24
    local.get 1
    local.get 0
    i32.store offset=20
    block ;; label = @1
      loop ;; label = @2
        local.get 1
        i32.const 8
        i32.add
        local.get 1
        i32.const 20
        i32.add
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h922afb9bcbd9c93bE
        local.get 1
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.load offset=12
        call $mBufferFinish
        drop
        br 0 (;@2;)
      end
    end
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc3api13managed_types11big_int_api13BigIntApiImpl15bi_sub_unsigned17h17f6d8d48b2c8492E (;163;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $bigIntSub
    block ;; label = @1
      local.get 0
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$7bi_sign17h12474b880d747599E
      i32.const 255
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      return
    end
    i32.const 131417
    i32.const 48
    call $signalError
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$7bi_sign17h12474b880d747599E (;164;) (type 5) (param i32) (result i32)
    i32.const 0
    i32.const 2
    i32.const 1
    local.get 0
    call $bigIntSign
    local.tee 0
    select
    local.get 0
    i32.const 0
    i32.lt_s
    select
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h65412a132cc6b055E (;165;) (type 1) (param i32 i32 i32)
    local.get 1
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h374fe90fb8450d6cE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h374fe90fb8450d6cE (;166;) (type 1) (param i32 i32 i32)
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h429f6f51f1a88ea6E
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h2d0b8bb9d6407143E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h6c0dd51e46722c8bE (;167;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h1ebc70a1abd9e0abE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h1ebc70a1abd9e0abE (;168;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction9annotated14AnnotatedValue14with_value_ref17h8c5253dd5485c496E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h429f6f51f1a88ea6E (;169;) (type 3) (result i32)
    i32.const -10
    i64.const 0
    call $bigIntSetInt64
    i32.const -10
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h2d0b8bb9d6407143E (;170;) (type 22) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17h5273cf2e03eea10dE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt398_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized17h54ae14d01866c856E (;171;) (type 32) (param i32 i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    local.get 6
    local.get 0
    i32.store offset=12
    local.get 6
    i32.const 12
    i32.add
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    call $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized17hce1df88b9e58533fE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized17hce1df88b9e58533fE (;172;) (type 32) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    local.get 6
    local.get 3
    i32.store offset=4
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load
          local.tee 7
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h8f18dcf8c92376f9E
          br_table 1 (;@2;) 2 (;@1;) 0 (;@3;)
        end
        local.get 6
        local.get 5
        i32.store offset=40
        local.get 6
        local.get 4
        i32.store offset=36
        local.get 6
        local.get 1
        i32.store offset=32
        local.get 6
        local.get 2
        i32.store offset=28
        local.get 6
        local.get 0
        i32.store offset=24
        local.get 6
        i32.const 24
        i32.add
        local.get 6
        i32.const 4
        i32.add
        call $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17hd4fb97c18c44d0c9E
        unreachable
      end
      local.get 3
      local.get 4
      local.get 5
      call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h65412a132cc6b055E
      unreachable
    end
    local.get 6
    i32.const 24
    i32.add
    local.get 7
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h5ca2cdf8c4ba114fE
    local.get 6
    local.get 6
    i32.const 32
    i32.add
    i32.store offset=16
    local.get 6
    local.get 6
    i32.const 36
    i32.add
    i32.store offset=20
    local.get 6
    local.get 6
    i64.load offset=24
    i64.store offset=8
    local.get 6
    i32.const 8
    i32.add
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h02a95b054b77f507E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17hd4fb97c18c44d0c9E (;173;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    local.get 0
    i32.load offset=12
    local.get 0
    i32.load offset=16
    local.get 1
    local.get 0
    i32.load
    i32.load
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17h006465e4b00b7a04E
    local.get 2
    i32.load offset=12
    local.set 0
    local.get 2
    i32.load offset=8
    local.set 2
    call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h879c45997bc56b33E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h429f6f51f1a88ea6E
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h2d0b8bb9d6407143E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h02a95b054b77f507E (;174;) (type 32) (param i32 i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    local.get 6
    i32.const 16
    i32.add
    local.get 0
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 6
    local.get 1
    i32.store offset=28
    local.get 6
    local.get 2
    i32.store offset=24
    local.get 6
    local.get 5
    i32.store offset=4
    local.get 6
    local.get 4
    i32.store
    local.get 6
    local.get 0
    i64.load
    i64.store offset=8
    local.get 6
    local.get 3
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h5bc0112e9fc102fcE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17h006465e4b00b7a04E (;175;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 40
    i32.add
    i32.const 131826
    i32.const 20
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc16f49575b67c490E
    local.get 5
    i32.const 32
    i32.add
    local.get 5
    i32.load offset=40
    local.get 5
    i32.load offset=44
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h65eef37f0e3b2307E
    local.get 5
    i32.const 24
    i32.add
    local.get 5
    i32.load offset=32
    local.get 5
    i32.load offset=36
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h8f18dcf8c92376f9E
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h2c7e74a4afdd8c79E
    local.get 5
    i32.load offset=28
    local.set 3
    local.get 5
    i32.load offset=24
    local.set 6
    local.get 5
    local.get 4
    call $mBufferGetLength
    i32.store offset=60
    local.get 5
    i32.const 0
    i32.store offset=56
    local.get 5
    local.get 4
    i32.store offset=52
    local.get 5
    i32.const 64
    i32.add
    i32.const 8
    i32.add
    local.set 7
    local.get 5
    i32.const 112
    i32.add
    local.set 4
    loop ;; label = @1
      local.get 5
      i32.const 111
      i32.add
      local.get 5
      i32.const 52
      i32.add
      call $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2752cd60e61f5775E
      block ;; label = @2
        local.get 5
        i32.load8_u offset=111
        br_if 0 (;@2;)
        local.get 5
        i32.const 16
        i32.add
        local.get 6
        local.get 3
        local.get 1
        local.get 2
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17ha54f1d01c3b8519aE
        local.get 5
        i32.load offset=20
        local.set 3
        local.get 0
        local.get 5
        i32.load offset=16
        i32.store
        local.get 0
        local.get 3
        i32.store offset=4
        local.get 5
        i32.const 128
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 5
      i32.const 88
      i32.add
      i32.const 8
      i32.add
      local.get 4
      i32.const 8
      i32.add
      i64.load align=1
      i64.store
      local.get 5
      local.get 4
      i64.load align=1
      i64.store offset=88
      local.get 7
      local.get 5
      i32.const 88
      i32.add
      call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$M$GT$$u20$as$u20$dharitri_sc..types..managed..wrapped..managed_vec_item..ManagedVecItem$GT$19borrow_from_payload17h5ed4b3110ea0a1f3E
      local.get 5
      i32.load offset=84
      local.set 8
      local.get 3
      local.get 5
      i32.load offset=80
      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h0c68549f9be90843E
      local.get 5
      i32.const 8
      i32.add
      local.get 6
      local.get 3
      local.get 5
      i64.load offset=72
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17ha45d3d35710bc7d0E
      local.get 5
      local.get 5
      i32.load offset=8
      local.get 5
      i32.load offset=12
      local.get 8
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h6686c2c769ac1549E
      local.get 5
      i32.load offset=4
      local.set 3
      local.get 5
      i32.load
      local.set 6
      br 0 (;@1;)
    end
  )
  (func $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h879c45997bc56b33E (;176;) (type 3) (result i32)
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17h62b2c0d8946772e5E
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment22tx_payment_single_dcdt252_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h425624cc7295192bE (;177;) (type 32) (param i32 i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    local.get 6
    local.get 0
    i32.const 8
    i32.add
    i32.store offset=8
    local.get 6
    local.get 0
    i32.const 12
    i32.add
    i32.store offset=12
    local.get 6
    local.get 0
    i64.load
    i64.store
    local.get 6
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h02a95b054b77f507E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17hb41e5f9d1341532bE (;178;) (type 32) (param i32 i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    local.get 6
    local.get 5
    i32.store offset=8
    local.get 6
    local.get 4
    i32.store offset=4
    local.get 6
    local.get 3
    i32.store offset=12
    local.get 0
    local.get 6
    i32.const 4
    i32.add
    local.get 1
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$16map_rewa_or_dcdt17h1fa70bfffe0ed4aeE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$16map_rewa_or_dcdt17h1fa70bfffe0ed4aeE (;179;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 0
    i32.load offset=8
    local.set 6
    local.get 5
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 5
    local.get 1
    i64.load align=4
    i64.store
    local.get 5
    local.get 0
    i32.load offset=12
    i32.store offset=12
    local.get 5
    local.get 0
    i32.store offset=28
    local.get 5
    local.get 4
    i32.store offset=24
    local.get 5
    local.get 3
    i32.store offset=20
    local.get 6
    local.get 5
    local.get 2
    local.get 5
    i32.const 20
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$11map_or_else17h39b48f85f9357ec2E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h65ec03aa80fdd8cbE (;180;) (type 1) (param i32 i32 i32)
    local.get 2
    local.get 0
    local.get 1
    i32.load offset=8
    local.get 1
    i32.load
    local.get 1
    i32.load offset=4
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17ha134dff8896b32deE
    unreachable
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17ha134dff8896b32deE (;181;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 2
    i32.store offset=12
    local.get 5
    local.get 0
    i32.store offset=8
    local.get 5
    local.get 4
    i32.store offset=28
    local.get 5
    local.get 3
    i32.store offset=24
    local.get 5
    local.get 1
    i32.store offset=20
    local.get 5
    local.get 5
    i32.const 8
    i32.add
    i32.store offset=16
    local.get 5
    i32.const 16
    i32.add
    local.get 5
    i32.const 12
    i32.add
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h89a4d23d858de7e4E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h7dd3b59f9273c8f7E (;182;) (type 22) (param i32 i32 i32 i32)
    local.get 3
    local.get 0
    local.get 1
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call $_ZN11dharitri_sc5types11interaction10tx_payment22tx_payment_single_dcdt252_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h425624cc7295192bE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17h773a87b5e8ad74ccE (;183;) (type 24) (param i32 i32 i64 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 0
    i32.const 12
    i32.add
    local.set 6
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load offset=8
        local.tee 7
        call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h3efe55ec1cac865cE
        br_if 0 (;@2;)
        local.get 5
        local.get 7
        i32.store offset=12
        local.get 5
        local.get 6
        i32.store offset=44
        local.get 5
        local.get 4
        i32.store offset=24
        local.get 5
        local.get 3
        i32.store offset=20
        local.get 5
        local.get 0
        i64.load
        i64.store offset=32
        local.get 5
        local.get 5
        i32.const 12
        i32.add
        i32.store offset=40
        local.get 5
        local.get 1
        i32.store offset=16
        local.get 5
        i32.const 32
        i32.add
        local.get 1
        i32.load
        local.get 2
        local.get 3
        local.get 4
        call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17hdbf9223b33c0433bE
        br 1 (;@1;)
      end
      local.get 6
      i32.load
      local.get 1
      i32.load
      local.get 2
      local.get 3
      local.get 4
      call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$24perform_transfer_execute17hd3c141cee5464307E
    end
    local.get 5
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h5bc0112e9fc102fcE (;184;) (type 2) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load offset=4
    local.set 3
    local.get 0
    i32.load
    local.set 4
    block ;; label = @1
      local.get 0
      i64.load offset=8
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
      local.get 2
      local.get 4
      local.get 3
      local.get 0
      i32.load offset=16
      local.get 0
      i32.load offset=20
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h337f0d08b3decdeaE
      local.get 2
      i32.load offset=4
      local.set 0
      local.get 2
      i32.load
      local.set 2
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h429f6f51f1a88ea6E
      local.get 2
      local.get 0
      call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h2d0b8bb9d6407143E
      unreachable
    end
    local.get 2
    i32.const 8
    i32.add
    local.get 4
    local.get 3
    local.get 1
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h55de8113ca0dd442E
    local.get 2
    i32.load offset=12
    local.set 0
    local.get 2
    i32.load offset=8
    local.set 2
    call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h879c45997bc56b33E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h429f6f51f1a88ea6E
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h2d0b8bb9d6407143E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h337f0d08b3decdeaE (;185;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 24
    i32.add
    i32.const 131861
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc16f49575b67c490E
    local.get 5
    i32.const 16
    i32.add
    local.get 5
    i32.load offset=24
    local.get 5
    i32.load offset=28
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h6e10618d4f820b27E
    local.get 5
    i32.const 8
    i32.add
    local.get 5
    i32.load offset=16
    local.get 5
    i32.load offset=20
    local.get 4
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17ha619b7fe99d2b6b7E
    local.get 5
    local.get 5
    i32.load offset=8
    local.get 5
    i32.load offset=12
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17ha54f1d01c3b8519aE
    local.get 5
    i32.load offset=4
    local.set 3
    local.get 0
    local.get 5
    i32.load
    i32.store
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 5
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h55de8113ca0dd442E (;186;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 40
    i32.add
    i32.const 131846
    i32.const 15
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc16f49575b67c490E
    local.get 5
    i32.const 32
    i32.add
    local.get 5
    i32.load offset=40
    local.get 5
    i32.load offset=44
    local.get 4
    i32.load offset=8
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h6e10618d4f820b27E
    local.get 5
    i32.const 24
    i32.add
    local.get 5
    i32.load offset=32
    local.get 5
    i32.load offset=36
    local.get 4
    i64.load
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17ha45d3d35710bc7d0E
    local.get 5
    i32.const 16
    i32.add
    local.get 5
    i32.load offset=24
    local.get 5
    i32.load offset=28
    local.get 4
    i32.load offset=12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17ha619b7fe99d2b6b7E
    local.get 5
    i32.load offset=16
    local.set 6
    local.get 5
    i32.load offset=20
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    drop
    local.get 4
    local.get 3
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
    local.get 5
    i32.const 8
    i32.add
    local.get 6
    local.get 4
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17ha54f1d01c3b8519aE
    local.get 5
    i32.load offset=12
    local.set 4
    local.get 0
    local.get 5
    i32.load offset=8
    i32.store
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 5
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17h495203b43fc5dd22E (;187;) (type 22) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17he9e2d7d77668f0a9E
    local.get 0
    i32.const 131592
    i32.const 131587
    local.get 3
    select
    i32.const 4
    i32.const 5
    local.get 3
    select
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17he9e2d7d77668f0a9E
  )
  (func $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17he9e2d7d77668f0a9E (;188;) (type 1) (param i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.tee 3
    local.get 1
    local.get 2
    call $mBufferSetBytes
    drop
    local.get 0
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
  )
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14issue_fungible17h123ea21f3fd651d3E (;189;) (type 32) (param i32 i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    local.get 6
    i32.const 0
    i32.store8 offset=7
    local.get 6
    local.get 5
    i32.load8_u offset=11
    i32.store8 offset=12
    local.get 6
    local.get 5
    i32.load offset=7 align=1
    i32.store offset=8
    local.get 6
    local.get 5
    i32.load8_u offset=6
    i32.store8 offset=6
    local.get 6
    local.get 5
    i32.load16_u offset=4
    i32.store16 offset=4
    local.get 6
    local.get 5
    i32.load
    i32.store
    local.get 0
    local.get 1
    i32.const 0
    local.get 2
    local.get 3
    local.get 4
    local.get 6
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$5issue17hc62ecf1e355eef75E
    local.get 6
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$5issue17hc62ecf1e355eef75E (;190;) (type 34) (param i32 i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 7
    global.set $__stack_pointer
    local.get 7
    i32.const 16
    i32.add
    local.get 2
    i32.const 255
    i32.and
    local.tee 8
    i32.const 2
    i32.shl
    local.tee 9
    i32.const 132756
    i32.add
    i32.load
    local.get 9
    i32.const 132740
    i32.add
    i32.load
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc16f49575b67c490E
    local.get 7
    local.get 1
    i32.store offset=44
    local.get 7
    local.get 7
    i64.load offset=16
    i64.store offset=36 align=4
    local.get 7
    i32.const 24
    i32.add
    local.get 7
    i32.const 36
    i32.add
    local.get 3
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h0488d3cc16fc4964E
    local.get 7
    i32.const 36
    i32.add
    local.get 7
    i32.const 24
    i32.add
    local.get 4
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h0488d3cc16fc4964E
    block ;; label = @1
      block ;; label = @2
        local.get 8
        i32.eqz
        br_if 0 (;@2;)
        local.get 7
        i32.load offset=40
        local.set 1
        br 1 (;@1;)
      end
      local.get 7
      i32.const 8
      i32.add
      local.get 7
      i32.load offset=36
      local.get 7
      i32.load offset=40
      local.get 5
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17ha619b7fe99d2b6b7E
      local.get 7
      i32.load offset=44
      local.set 1
      local.get 7
      local.get 7
      i32.load offset=8
      local.get 7
      i32.load offset=12
      local.get 6
      i32.load
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h2c7e74a4afdd8c79E
      local.get 7
      local.get 1
      i32.store offset=44
      local.get 7
      local.get 7
      i32.load
      i32.store offset=36
      local.get 7
      i32.load offset=4
      local.set 1
    end
    local.get 6
    i32.load8_u offset=7
    local.set 10
    local.get 6
    i32.load8_u offset=9
    local.set 11
    local.get 6
    i32.load8_u offset=8
    local.set 12
    local.get 6
    i32.load8_u offset=12
    local.set 3
    local.get 6
    i32.load8_u offset=11
    local.set 4
    local.get 6
    i32.load8_u offset=10
    local.set 8
    local.get 6
    i32.load8_u offset=6
    local.set 9
    local.get 6
    i32.load8_u offset=5
    local.set 5
    local.get 1
    i32.const 131596
    i32.const 9
    local.get 6
    i32.load8_u offset=4
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17h495203b43fc5dd22E
    local.get 1
    i32.const 131605
    i32.const 7
    local.get 5
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17h495203b43fc5dd22E
    local.get 1
    i32.const 131612
    i32.const 8
    local.get 9
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17h495203b43fc5dd22E
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i32.const 255
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 131620
        i32.const 24
        local.get 10
        i32.const 1
        i32.and
        call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17h495203b43fc5dd22E
        br 1 (;@1;)
      end
      local.get 1
      i32.const 131644
      i32.const 7
      local.get 12
      i32.const 1
      i32.and
      call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17h495203b43fc5dd22E
      local.get 1
      i32.const 131651
      i32.const 7
      local.get 11
      i32.const 1
      i32.and
      call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17h495203b43fc5dd22E
    end
    local.get 1
    i32.const 131658
    i32.const 14
    local.get 8
    i32.const 1
    i32.and
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17h495203b43fc5dd22E
    local.get 1
    i32.const 131672
    i32.const 10
    local.get 4
    i32.const 1
    i32.and
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17h495203b43fc5dd22E
    local.get 1
    i32.const 131682
    i32.const 18
    local.get 3
    i32.const 1
    i32.and
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17h495203b43fc5dd22E
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 7
    i32.load offset=44
    i32.store offset=8
    local.get 0
    local.get 7
    i32.load offset=36
    i32.store
    local.get 7
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$17set_special_roles17hb78e897a16bf2a2eE (;191;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 40
    i32.add
    i32.const 131700
    i32.const 14
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc16f49575b67c490E
    local.get 4
    i32.const 32
    i32.add
    local.get 4
    i32.load offset=40
    local.get 4
    i32.load offset=44
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h39c935c26925aa3eE
    local.get 4
    i32.const 24
    i32.add
    local.get 4
    i32.load offset=32
    local.get 4
    i32.load offset=36
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h65eef37f0e3b2307E
    local.get 4
    i32.load offset=28
    local.set 2
    local.get 4
    i32.load offset=24
    local.set 1
    local.get 4
    i32.const 48
    i32.add
    i32.const 8
    i32.add
    local.get 3
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 4
    local.get 3
    i64.load align=4
    i64.store offset=48
    loop ;; label = @1
      local.get 4
      i32.const 48
      i32.add
      call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha6858e1690aad687E
      i32.const 255
      i32.and
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      block ;; label = @2
        local.get 3
        i32.const 14
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        local.get 2
        i32.store offset=4
        local.get 0
        local.get 1
        i32.store
        local.get 4
        i32.const 64
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 4
      i32.const 16
      i32.add
      local.get 3
      call $_ZN19dharitri_chain_core5types5flags15dcdt_local_role13DcdtLocalRole12as_role_name17h70f7a7dfdad9bf65E
      local.get 4
      i32.const 8
      i32.add
      local.get 1
      local.get 2
      local.get 4
      i32.load offset=16
      local.get 4
      i32.load offset=20
      call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h3fe72fa0de2d9581E
      local.get 4
      i32.load offset=12
      local.set 2
      local.get 4
      i32.load offset=8
      local.set 1
      br 0 (;@1;)
    end
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h65eef37f0e3b2307E (;192;) (type 22) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h3e017c339f638e36E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha6858e1690aad687E (;193;) (type 5) (param i32) (result i32)
    (local i64)
    block ;; label = @1
      local.get 0
      i32.load offset=4
      local.get 0
      i32.load offset=8
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 14
      return
    end
    block ;; label = @1
      local.get 0
      i32.const 132042
      i32.const 8
      call $_ZN257_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_owned..ManagedVecOwnedIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17habe78b5f3e7e44e0E
      local.tee 0
      call $mBufferGetLength
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.const 132042
        i32.const 8
        call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hfba986959943e7f6E
        local.tee 1
        i64.const 256
        i64.ge_u
        br_if 0 (;@2;)
        local.get 1
        i64.const 14
        i64.ge_u
        br_if 1 (;@1;)
        local.get 1
        i32.wrap_i64
        return
      end
      i32.const 132042
      i32.const 8
      i32.const 131097
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb22766f67bb2d820E
      unreachable
    end
    i32.const 132042
    i32.const 8
    i32.const 131982
    i32.const 13
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb22766f67bb2d820E
    unreachable
  )
  (func $_ZN19dharitri_chain_core5types5flags15dcdt_local_role13DcdtLocalRole12as_role_name17h70f7a7dfdad9bf65E (;194;) (type 2) (param i32 i32)
    (local i32)
    i32.const 1
    local.set 2
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  block ;; label = @8
                    block ;; label = @9
                      block ;; label = @10
                        block ;; label = @11
                          block ;; label = @12
                            block ;; label = @13
                              block ;; label = @14
                                block ;; label = @15
                                  local.get 1
                                  i32.const 255
                                  i32.and
                                  local.tee 1
                                  br_table 14 (;@1;) 0 (;@15;) 1 (;@14;) 2 (;@13;) 3 (;@12;) 4 (;@11;) 5 (;@10;) 6 (;@9;) 7 (;@8;) 8 (;@7;) 9 (;@6;) 10 (;@5;) 11 (;@4;) 12 (;@3;) 14 (;@1;)
                                end
                                i32.const 132772
                                local.set 2
                                br 12 (;@2;)
                              end
                              i32.const 132789
                              local.set 2
                              br 11 (;@2;)
                            end
                            i32.const 132806
                            local.set 2
                            br 10 (;@2;)
                          end
                          i32.const 132823
                          local.set 2
                          i32.const 22
                          local.set 1
                          br 10 (;@1;)
                        end
                        i32.const 132845
                        local.set 2
                        i32.const 15
                        local.set 1
                        br 9 (;@1;)
                      end
                      i32.const 132860
                      local.set 2
                      br 7 (;@2;)
                    end
                    i32.const 132877
                    local.set 2
                    i32.const 27
                    local.set 1
                    br 7 (;@1;)
                  end
                  i32.const 132904
                  local.set 2
                  i32.const 16
                  local.set 1
                  br 6 (;@1;)
                end
                i32.const 132920
                local.set 2
                br 4 (;@2;)
              end
              i32.const 132937
              local.set 2
              i32.const 23
              local.set 1
              br 4 (;@1;)
            end
            i32.const 132960
            local.set 2
            i32.const 21
            local.set 1
            br 3 (;@1;)
          end
          i32.const 132981
          local.set 2
          i32.const 19
          local.set 1
          br 2 (;@1;)
        end
        i32.const 133000
        local.set 2
      end
      i32.const 17
      local.set 1
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h3fe72fa0de2d9581E (;195;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.tee 5
    local.get 3
    local.get 4
    call $mBufferSetBytes
    drop
    local.get 2
    local.get 5
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$18issue_non_fungible17hd3935a184968270cE (;196;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17h82bf3edb1488bcb2E
    i32.store offset=12
    local.get 5
    i32.const 0
    i32.store16 offset=24
    local.get 5
    i32.const 0
    i32.store offset=16
    local.get 5
    local.get 4
    i32.load8_u offset=6
    i32.store8 offset=28
    local.get 5
    local.get 4
    i32.load16_u offset=4 align=1
    i32.store16 offset=26
    local.get 5
    local.get 4
    i32.load align=1
    i32.store offset=20
    local.get 0
    local.get 1
    i32.const 1
    local.get 2
    local.get 3
    local.get 5
    i32.const 12
    i32.add
    local.get 5
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$5issue17hc62ecf1e355eef75E
    local.get 5
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17h82bf3edb1488bcb2E (;197;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 0
    i64.const 0
    call $bigIntSetInt64
    local.get 0
  )
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$19issue_semi_fungible17ha402f9dfcec7eb5aE (;198;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17h82bf3edb1488bcb2E
    i32.store offset=12
    local.get 5
    i32.const 0
    i32.store16 offset=24
    local.get 5
    i32.const 0
    i32.store offset=16
    local.get 5
    local.get 4
    i32.load8_u offset=6
    i32.store8 offset=28
    local.get 5
    local.get 4
    i32.load16_u offset=4 align=1
    i32.store16 offset=26
    local.get 5
    local.get 4
    i32.load align=1
    i32.store offset=20
    local.get 0
    local.get 1
    i32.const 2
    local.get 2
    local.get 3
    local.get 5
    i32.const 12
    i32.add
    local.get 5
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$5issue17hc62ecf1e355eef75E
    local.get 5
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$19unset_special_roles17h8500ea2b6ced522cE (;199;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 40
    i32.add
    i32.const 131714
    i32.const 16
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc16f49575b67c490E
    local.get 4
    i32.const 32
    i32.add
    local.get 4
    i32.load offset=40
    local.get 4
    i32.load offset=44
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h39c935c26925aa3eE
    local.get 4
    i32.const 24
    i32.add
    local.get 4
    i32.load offset=32
    local.get 4
    i32.load offset=36
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h65eef37f0e3b2307E
    local.get 4
    i32.load offset=28
    local.set 2
    local.get 4
    i32.load offset=24
    local.set 1
    local.get 4
    i32.const 48
    i32.add
    i32.const 8
    i32.add
    local.get 3
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 4
    local.get 3
    i64.load align=4
    i64.store offset=48
    loop ;; label = @1
      local.get 4
      i32.const 48
      i32.add
      call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha6858e1690aad687E
      i32.const 255
      i32.and
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      block ;; label = @2
        local.get 3
        i32.const 14
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        local.get 2
        i32.store offset=4
        local.get 0
        local.get 1
        i32.store
        local.get 4
        i32.const 64
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 4
      i32.const 16
      i32.add
      local.get 3
      call $_ZN19dharitri_chain_core5types5flags15dcdt_local_role13DcdtLocalRole12as_role_name17h70f7a7dfdad9bf65E
      local.get 4
      i32.const 8
      i32.add
      local.get 1
      local.get 2
      local.get 4
      i32.load offset=16
      local.get 4
      i32.load offset=20
      call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h3fe72fa0de2d9581E
      local.get 4
      i32.load offset=12
      local.set 2
      local.get 4
      i32.load offset=8
      local.set 1
      br 0 (;@1;)
    end
  )
  (func $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h0488d3cc16fc4964E (;200;) (type 1) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    i32.load
    local.get 1
    i32.load offset=4
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h6e10618d4f820b27E
    local.get 1
    local.get 3
    i64.load offset=8
    i64.store align=4
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 0
    local.get 1
    i64.load align=4
    i64.store align=4
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h2c7e74a4afdd8c79E (;201;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.tee 4
    local.get 3
    i64.extend_i32_u
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h860c87a8a3e61c87E
    local.get 2
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction16callback_closure22cb_closure_storage_key17h0a98ee4601ef6377E (;202;) (type 3) (result i32)
    (local i32 i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 0
    call $managedGetOriginalTxHash
    i32.const 131784
    i32.const 10
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6eaeb76854457359E
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h8bfd3d4707cd0fb8E (;203;) (type 7) (param i32 i32 i32) (result i32)
    (local i32)
    i32.const 0
    local.set 3
    block ;; label = @1
      local.get 0
      i32.load offset=32
      local.get 2
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      call $memcmp
      i32.eqz
      local.set 3
    end
    local.get 3
  )
  (func $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h8db9673d074830f9E (;204;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 16
    i32.add
    i32.const 24
    i32.add
    local.tee 3
    i64.const 0
    i64.store
    local.get 2
    i32.const 16
    i32.add
    i32.const 16
    i32.add
    local.tee 4
    i64.const 0
    i64.store
    local.get 2
    i32.const 16
    i32.add
    i32.const 8
    i32.add
    local.tee 5
    i64.const 0
    i64.store
    local.get 2
    i64.const 0
    i64.store offset=16
    local.get 2
    i32.const 8
    i32.add
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7be4a9953ea8eddfE
    local.tee 6
    local.get 2
    i32.const 16
    i32.add
    i32.const 32
    call $_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd9eae4beb3575ab6E
    local.get 1
    i32.const 0
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h0dd6767832ec3e98E
    drop
    local.get 0
    local.get 6
    i32.store offset=32
    local.get 0
    i32.const 24
    i32.add
    local.get 3
    i64.load
    i64.store align=1
    local.get 0
    i32.const 16
    i32.add
    local.get 4
    i64.load
    i64.store align=1
    local.get 0
    i32.const 8
    i32.add
    local.get 5
    i64.load
    i64.store align=1
    local.get 0
    local.get 2
    i64.load offset=16
    i64.store align=1
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7be4a9953ea8eddfE (;205;) (type 5) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h0dd6767832ec3e98E (;206;) (type 16) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17he59cf7a5329a8f5dE
  )
  (func $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h7c4595fa7312a809E (;207;) (type 1) (param i32 i32 i32)
    block ;; label = @1
      local.get 1
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h0c68549f9be90843E
    end
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h0c68549f9be90843E (;208;) (type 2) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    drop
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
  )
  (func $_ZN11dharitri_sc5types11interaction2tx138Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..deploy_call..DeployCall$LT$Env$C$CodeSource$GT$$C$RH$GT$8argument17h47eadb2515b71487E (;209;) (type 7) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h7c4595fa7312a809E
    local.get 0
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h8503467cc1a80ca7E (;210;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store8 offset=15
    local.get 1
    local.get 2
    i32.const 15
    i32.add
    i32.const 1
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h455e82a287c43c47E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hb6d2b9cc5d604ab1E (;211;) (type 1) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    i32.load
    local.get 1
    i32.load offset=4
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h6686c2c769ac1549E
    local.get 1
    local.get 3
    i64.load offset=8
    i64.store align=4
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 0
    local.get 1
    i64.load align=4
    i64.store align=4
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h6686c2c769ac1549E (;212;) (type 22) (param i32 i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    drop
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h279135d06c5a2fceE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated14AnnotatedValue14with_value_ref17h8c5253dd5485c496E (;213;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN329_$LT$dharitri_sc..types..interaction..markers..dcdt_system_sc_address..DCDTSystemSCAddress$u20$as$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$8to_value17hb0a988c131c4b6feE
    call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h374fe90fb8450d6cE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17hfd9651a2afc51ee1E (;214;) (type 9) (param i32)
    local.get 0
    call $_ZN11dharitri_sc5types11interaction9annotated14AnnotatedValue14with_value_ref17h990a564b24b50bfcE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated14AnnotatedValue14with_value_ref17h990a564b24b50bfcE (;215;) (type 9) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    call $_ZN329_$LT$dharitri_sc..types..interaction..markers..dcdt_system_sc_address..DCDTSystemSCAddress$u20$as$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$8to_value17hb0a988c131c4b6feE
    i32.store offset=12
    local.get 0
    local.get 1
    i32.const 12
    i32.add
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h89a4d23d858de7e4E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17ha54f1d01c3b8519aE (;216;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block ;; label = @1
      local.get 3
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17hd2500b9f4d03b756E
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h0c68549f9be90843E
      local.get 5
      local.get 4
      call $mBufferGetLength
      i32.store offset=28
      local.get 5
      i32.const 0
      i32.store offset=24
      local.get 5
      local.get 4
      i32.store offset=20
      loop ;; label = @2
        local.get 5
        i32.const 8
        i32.add
        local.get 5
        i32.const 20
        i32.add
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h922afb9bcbd9c93bE
        local.get 5
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        local.get 5
        i32.load offset=12
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h0c68549f9be90843E
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 5
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN174_$LT$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$M$GT$$u20$as$u20$dharitri_sc..types..managed..wrapped..managed_vec_item..ManagedVecItem$GT$19borrow_from_payload17h5ed4b3110ea0a1f3E (;217;) (type 2) (param i32 i32)
    (local i32 i64)
    local.get 0
    local.get 1
    i32.load offset=12 align=1
    local.tee 2
    i32.const 24
    i32.shl
    local.get 2
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 2
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 2
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 0
    local.get 1
    i32.load align=1
    local.tee 2
    i32.const 24
    i32.shl
    local.get 2
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 2
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 2
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=8
    local.get 0
    local.get 1
    i64.load offset=4 align=1
    local.tee 3
    i64.const 56
    i64.shl
    local.get 3
    i64.const 65280
    i64.and
    i64.const 40
    i64.shl
    i64.or
    local.get 3
    i64.const 16711680
    i64.and
    i64.const 24
    i64.shl
    local.get 3
    i64.const 4278190080
    i64.and
    i64.const 8
    i64.shl
    i64.or
    i64.or
    local.get 3
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 3
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 3
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 3
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store
  )
  (func $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h860c87a8a3e61c87E (;218;) (type 0) (param i32 i64)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i64.const 0
    i64.store offset=8
    local.get 2
    local.get 1
    local.get 2
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec8num_conv17top_encode_number17he16fb69829eeed2eE
    local.get 0
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call $_ZN11dharitri_sc5types7managed10codec_util28managed_buffer_top_en_output174_$LT$impl$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$u20$for$u20$$RF$mut$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$12set_slice_u817hc04b9008ea3a48d3E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h88bb164a1fa973daE (;219;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    i32.store offset=12
    local.get 1
    i32.load
    local.get 2
    i32.const 12
    i32.add
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17hdef11543219be7fbE
    local.get 0
    local.get 2
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h3e017c339f638e36E (;220;) (type 2) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    drop
    local.get 0
    local.get 1
    i32.load
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h279135d06c5a2fceE (;221;) (type 5) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h189690f76e9cc4bcE (;222;) (type 0) (param i32 i64)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.tee 2
    local.get 1
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h860c87a8a3e61c87E
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h4ba86bd6469cb1e3E (;223;) (type 2) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    drop
    local.get 0
    local.get 1
    i32.load
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h279135d06c5a2fceE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17h41c39d7db0187825E (;224;) (type 9) (param i32)
    (local i32 i64 i32)
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load
          local.tee 1
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17hd2500b9f4d03b756E
          br_if 0 (;@3;)
          call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h3397058d26f1f3feE
          local.set 2
          local.get 0
          i32.load offset=12
          local.set 3
          br 1 (;@2;)
        end
        i64.const 0
        local.set 2
        local.get 0
        i32.load offset=12
        local.tee 3
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7be4a9953ea8eddfE
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 0
      i32.load offset=8
      local.get 3
      local.get 2
      local.get 1
      local.get 0
      i32.load offset=4
      call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27multi_dcdt_transfer_execute17h8a41e14b180eb338E
    end
  )
  (func $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h3397058d26f1f3feE (;225;) (type 14) (result i64)
    (local i64)
    call $getGasLeft
    local.tee 0
    i64.const -100000
    i64.add
    local.get 0
    local.get 0
    i64.const 100000
    i64.gt_u
    select
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17h6476b5e0fa1603bcE (;226;) (type 9) (param i32)
    (local i32 i64 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load offset=16
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17hd2500b9f4d03b756E
          br_if 0 (;@3;)
          call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h3397058d26f1f3feE
          local.set 2
          br 1 (;@2;)
        end
        i64.const 0
        local.set 2
        local.get 0
        i32.load offset=12
        call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17hbc4896d36dd2f83cE
        br_if 1 (;@1;)
      end
      local.get 1
      i32.const 24
      i32.add
      local.tee 3
      local.get 0
      i32.const 24
      i32.add
      i64.load
      i64.store
      local.get 1
      i32.const 16
      i32.add
      local.get 0
      i32.const 16
      i32.add
      i64.load
      local.tee 4
      i64.store
      local.get 1
      i32.const 8
      i32.add
      local.get 0
      i32.const 8
      i32.add
      local.tee 5
      i64.load
      i64.store
      local.get 1
      local.get 0
      i64.load
      i64.store
      local.get 1
      i32.const 32
      i32.add
      i32.const 8
      i32.add
      local.get 5
      i64.load
      i64.store
      local.get 1
      local.get 0
      i64.load
      i64.store offset=32
      local.get 1
      i32.const 32
      i32.add
      local.get 3
      local.get 2
      local.get 4
      i32.wrap_i64
      local.get 1
      i32.load offset=20
      call $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17h773a87b5e8ad74ccE
    end
    local.get 1
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17hbc4896d36dd2f83cE (;227;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic11big_num_cmp10bi_cmp_i6417haf2bddc3b816a674E
    i32.const 255
    i32.and
    i32.eqz
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17h70b575b4f3d28844E (;228;) (type 9) (param i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load offset=24
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17hd2500b9f4d03b756E
          br_if 0 (;@3;)
          local.get 0
          i64.load offset=16
          local.set 2
          br 1 (;@2;)
        end
        i64.const 0
        local.set 2
        local.get 0
        i32.load offset=12
        call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17hbc4896d36dd2f83cE
        br_if 1 (;@1;)
      end
      local.get 1
      i32.const 8
      i32.add
      local.get 0
      i32.const 40
      call $memcpy
      drop
      local.get 1
      i32.const 48
      i32.add
      i32.const 8
      i32.add
      local.get 0
      i32.const 8
      i32.add
      i64.load
      i64.store
      local.get 1
      local.get 0
      i64.load
      i64.store offset=48
      local.get 1
      i32.const 48
      i32.add
      local.get 1
      i32.const 40
      i32.add
      local.get 2
      local.get 1
      i32.load offset=32
      local.get 1
      i32.load offset=36
      call $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17h773a87b5e8ad74ccE
    end
    local.get 1
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h7ab287656ee931c2E (;229;) (type 31) (param i64 i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17h980ae3b341ad5fd1E
  )
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17hd655c08174432fcbE (;230;) (type 20) (param i32 i32 i32) (result i64)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN257_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_owned..ManagedVecOwnedIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17habe78b5f3e7e44e0E
    local.get 1
    local.get 2
    call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hfba986959943e7f6E
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync292_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$dharitri_sc..types..interaction..tx_result_handler_list..original_result..OriginalResultMarker$LT$OriginalResult$GT$$GT$$GT$23execute_on_dest_context17h846786d576c6be1aE (;231;) (type 9) (param i32)
    (local i32 i64 i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h3397058d26f1f3feE
    local.tee 2
    i64.store offset=16
    local.get 0
    i32.load offset=20
    local.set 3
    local.get 0
    i32.load offset=16
    local.set 4
    local.get 0
    i32.load offset=24
    local.set 5
    local.get 0
    i32.load offset=12
    local.set 6
    local.get 0
    i64.load
    local.set 7
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load offset=8
        local.tee 8
        call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h3efe55ec1cac865cE
        br_if 0 (;@2;)
        local.get 1
        local.get 6
        i32.store offset=52
        local.get 1
        local.get 8
        i32.store offset=48
        local.get 1
        local.get 7
        i64.store offset=40
        local.get 1
        local.get 5
        i32.store offset=32
        local.get 1
        local.get 3
        i32.store offset=28
        local.get 1
        local.get 4
        i32.store offset=24
        local.get 1
        local.get 1
        i32.const 16
        i32.add
        i32.store offset=36
        local.get 1
        local.get 1
        i32.const 24
        i32.add
        i32.const 28
        i32.add
        local.tee 6
        i32.store offset=76
        local.get 1
        local.get 1
        i32.const 48
        i32.add
        local.tee 8
        i32.store offset=72
        local.get 1
        local.get 7
        i64.store offset=64
        local.get 1
        local.get 0
        i32.const 28
        i32.add
        local.tee 0
        i32.store offset=88
        local.get 1
        local.get 0
        i32.store offset=84
        local.get 1
        local.get 3
        i32.store offset=60
        local.get 1
        local.get 4
        i32.store offset=56
        local.get 1
        local.get 1
        i32.const 16
        i32.add
        i32.store offset=80
        block ;; label = @3
          local.get 7
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
          local.get 1
          local.get 4
          local.get 3
          local.get 8
          local.get 6
          call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h337f0d08b3decdeaE
          local.get 1
          i32.load offset=4
          local.set 0
          local.get 1
          i32.load
          local.set 3
          call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h429f6f51f1a88ea6E
          local.set 4
          local.get 1
          i64.load offset=16
          local.get 5
          local.get 4
          local.get 3
          local.get 0
          call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h7ab287656ee931c2E
          local.set 0
          br 2 (;@1;)
        end
        local.get 1
        i32.const 8
        i32.add
        local.get 4
        local.get 3
        local.get 5
        local.get 1
        i32.const 64
        i32.add
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h55de8113ca0dd442E
        local.get 1
        i32.load offset=12
        local.set 0
        local.get 1
        i32.load offset=8
        local.set 3
        call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17h62b2c0d8946772e5E
        local.set 4
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h429f6f51f1a88ea6E
        local.set 5
        local.get 1
        i64.load offset=16
        local.get 4
        local.get 5
        local.get 3
        local.get 0
        call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h7ab287656ee931c2E
        local.set 0
        br 1 (;@1;)
      end
      local.get 2
      local.get 5
      local.get 6
      local.get 4
      local.get 3
      call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h7ab287656ee931c2E
      local.set 0
    end
    call $cleanReturnData
    local.get 0
    call $mBufferGetLength
    drop
    local.get 1
    i32.const 96
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync292_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$dharitri_sc..types..interaction..tx_result_handler_list..original_result..OriginalResultMarker$LT$OriginalResult$GT$$GT$$GT$23execute_on_dest_context17hb8b47fc0ce5e37edE (;232;) (type 9) (param i32)
    (local i32 i64 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h3397058d26f1f3feE
    local.tee 2
    i64.store offset=24
    local.get 0
    i32.load
    local.set 3
    local.get 0
    i32.load offset=4
    local.set 4
    local.get 0
    i32.load offset=12
    local.set 5
    local.get 1
    local.get 0
    i32.load offset=8
    local.tee 6
    i32.store offset=36
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 5
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h8f18dcf8c92376f9E
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          local.get 1
          local.get 3
          local.get 4
          local.get 1
          i32.const 36
          i32.add
          local.get 5
          call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17h006465e4b00b7a04E
          local.get 1
          i32.load offset=4
          local.set 0
          local.get 1
          i32.load
          local.set 5
          local.get 2
          call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17h62b2c0d8946772e5E
          call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h429f6f51f1a88ea6E
          local.get 5
          local.get 0
          call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h7ab287656ee931c2E
          local.set 0
          br 2 (;@1;)
        end
        local.get 2
        local.get 6
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h429f6f51f1a88ea6E
        local.get 3
        local.get 4
        call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h7ab287656ee931c2E
        local.set 0
        br 1 (;@1;)
      end
      local.get 1
      i32.const 40
      i32.add
      local.get 5
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h5ca2cdf8c4ba114fE
      local.get 1
      i64.load offset=40
      local.set 2
      local.get 1
      local.get 1
      i32.const 52
      i32.add
      local.tee 5
      i32.store offset=76
      local.get 1
      local.get 1
      i32.const 40
      i32.add
      i32.const 8
      i32.add
      local.tee 7
      i32.store offset=72
      local.get 1
      local.get 2
      i64.store offset=64
      local.get 1
      local.get 0
      i32.const 16
      i32.add
      local.tee 0
      i32.store offset=88
      local.get 1
      local.get 0
      i32.store offset=84
      local.get 1
      local.get 4
      i32.store offset=60
      local.get 1
      local.get 3
      i32.store offset=56
      local.get 1
      local.get 1
      i32.const 24
      i32.add
      i32.store offset=80
      block ;; label = @2
        local.get 2
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 1
        i32.const 8
        i32.add
        local.get 3
        local.get 4
        local.get 7
        local.get 5
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h337f0d08b3decdeaE
        local.get 1
        i32.load offset=12
        local.set 0
        local.get 1
        i32.load offset=8
        local.set 5
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h429f6f51f1a88ea6E
        local.set 3
        local.get 1
        i64.load offset=24
        local.get 6
        local.get 3
        local.get 5
        local.get 0
        call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h7ab287656ee931c2E
        local.set 0
        br 1 (;@1;)
      end
      local.get 1
      i32.const 16
      i32.add
      local.get 3
      local.get 4
      local.get 6
      local.get 1
      i32.const 56
      i32.add
      i32.const 8
      i32.add
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h55de8113ca0dd442E
      local.get 1
      i32.load offset=20
      local.set 0
      local.get 1
      i32.load offset=16
      local.set 5
      call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17h62b2c0d8946772e5E
      local.set 3
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h429f6f51f1a88ea6E
      local.set 4
      local.get 1
      i64.load offset=24
      local.get 3
      local.get 4
      local.get 5
      local.get 0
      call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h7ab287656ee931c2E
      local.set 0
    end
    call $cleanReturnData
    local.get 0
    call $mBufferGetLength
    drop
    local.get 1
    i32.const 96
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync292_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$dharitri_sc..types..interaction..tx_result_handler_list..original_result..OriginalResultMarker$LT$OriginalResult$GT$$GT$$GT$23execute_on_dest_context17hbcef4178cad53ea0E (;233;) (type 5) (param i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i32.load offset=12
    local.set 2
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 0
    i64.load
    local.get 0
    i32.load offset=16
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h429f6f51f1a88ea6E
    local.get 3
    local.get 2
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17h980ae3b341ad5fd1E
    local.set 3
    call $cleanReturnData
    local.get 1
    local.get 3
    call $mBufferGetLength
    local.tee 0
    i32.store offset=12
    i32.const 0
    local.set 2
    local.get 1
    i32.const 0
    i32.store offset=8
    local.get 1
    local.get 3
    i32.store offset=4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.set 3
    block ;; label = @1
      loop ;; label = @2
        local.get 2
        local.get 0
        i32.ge_u
        br_if 1 (;@1;)
        local.get 3
        local.get 1
        i32.const 4
        i32.add
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17hdb7bddafb118c544E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
        local.get 1
        i32.load offset=12
        local.set 0
        local.get 1
        i32.load offset=8
        local.set 2
        br 0 (;@2;)
      end
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3
  )
  (func $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17hdb7bddafb118c544E (;234;) (type 5) (param i32) (result i32)
    local.get 0
    i32.const 131873
    i32.const 11
    call $_ZN257_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_owned..ManagedVecOwnedIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17habe78b5f3e7e44e0E
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13decode_result17h0c83e3a7c0a26c9eE (;235;) (type 2) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    call $mBufferGetLength
    local.tee 3
    i32.store offset=12
    i32.const 0
    local.set 4
    local.get 2
    i32.const 0
    i32.store offset=8
    local.get 2
    local.get 1
    i32.store offset=4
    block ;; label = @1
      block ;; label = @2
        local.get 3
        br_if 0 (;@2;)
        i32.const 1
        local.set 4
        br 1 (;@1;)
      end
      local.get 2
      i32.const 4
      i32.add
      call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17hdb7bddafb118c544E
      local.set 1
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17h0d5a94dd782348c5E (;236;) (type 9) (param i32)
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h02684a3c6436ca62E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h02684a3c6436ca62E (;237;) (type 9) (param i32)
    local.get 0
    call $_ZN185_$LT$dharitri_sc..types..interaction..callback_closure..CallbackClosure$LT$Api$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_exec..tx_exec_async..TxAsyncCallCallback$LT$Api$GT$$GT$32save_callback_closure_to_storage17h6fbb25b512305001E
    local.get 0
    i32.load offset=12
    local.get 0
    i32.const 24
    i32.add
    local.get 0
    i32.load offset=16
    local.get 0
    i32.load offset=20
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h28622677f87da2cdE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17h5369aa1254715ed8E (;238;) (type 9) (param i32)
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h7fab8cfdd2a0b8dfE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h7fab8cfdd2a0b8dfE (;239;) (type 9) (param i32)
    local.get 0
    call $_ZN185_$LT$dharitri_sc..types..interaction..callback_closure..CallbackClosure$LT$Api$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_exec..tx_exec_async..TxAsyncCallCallback$LT$Api$GT$$GT$32save_callback_closure_to_storage17h6fbb25b512305001E
    local.get 0
    i32.load offset=12
    local.get 0
    i32.load offset=16
    local.get 0
    i32.load offset=20
    call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h65412a132cc6b055E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17h7024b6ac07fc2da6E (;240;) (type 9) (param i32)
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hd14c9826f789f9a0E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hd14c9826f789f9a0E (;241;) (type 9) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i32.const 28
    i32.add
    call $_ZN185_$LT$dharitri_sc..types..interaction..callback_closure..CallbackClosure$LT$Api$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_exec..tx_exec_async..TxAsyncCallCallback$LT$Api$GT$$GT$32save_callback_closure_to_storage17h6fbb25b512305001E
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 1
    local.get 0
    i64.load
    i64.store
    local.get 1
    local.get 0
    i32.const 40
    i32.add
    local.tee 2
    local.get 2
    local.get 0
    i32.load offset=24
    local.get 0
    i32.load offset=16
    local.get 0
    i32.load offset=20
    call $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17hb41e5f9d1341532bE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17h75376f2f4fb0497fE (;242;) (type 9) (param i32)
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h2555723874929964E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h2555723874929964E (;243;) (type 9) (param i32)
    local.get 0
    call $_ZN185_$LT$dharitri_sc..types..interaction..callback_closure..CallbackClosure$LT$Api$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_exec..tx_exec_async..TxAsyncCallCallback$LT$Api$GT$$GT$32save_callback_closure_to_storage17h6fbb25b512305001E
    local.get 0
    i32.load offset=12
    local.get 0
    i32.load offset=16
    call $_ZN165_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_not_payable..NotPayable$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h43899a3b30e4c5bfE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17hb5190ab000a5699dE (;244;) (type 9) (param i32)
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hc87ec498e622f40cE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hc87ec498e622f40cE (;245;) (type 9) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 1
    local.get 0
    i64.load
    i64.store
    local.get 1
    local.get 0
    i32.const 28
    i32.add
    local.tee 2
    local.get 2
    local.get 0
    i32.load offset=24
    local.get 0
    i32.load offset=16
    local.get 0
    i32.load offset=20
    call $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17hb41e5f9d1341532bE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17he6fb1627721f38e5E (;246;) (type 9) (param i32)
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hedcc75a4432de502E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hedcc75a4432de502E (;247;) (type 9) (param i32)
    (local i32)
    local.get 0
    i32.load offset=12
    local.get 0
    i32.const 16
    i32.add
    local.tee 1
    local.get 1
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt398_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized17h54ae14d01866c856E
    unreachable
  )
  (func $_ZN185_$LT$dharitri_sc..types..interaction..callback_closure..CallbackClosure$LT$Api$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_exec..tx_exec_async..TxAsyncCallCallback$LT$Api$GT$$GT$32save_callback_closure_to_storage17h6fbb25b512305001E (;248;) (type 9) (param i32)
    (local i32 i32)
    call $_ZN11dharitri_sc5types11interaction16callback_closure22cb_closure_storage_key17h0a98ee4601ef6377E
    local.set 1
    call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hb7b3d57d749d7dc2E
    local.set 2
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types10impl_slice96_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$$u5b$T$u5d$$GT$24dep_encode_or_handle_err17h557c2d6c9c20aacbE
    local.get 0
    i32.load offset=8
    local.get 2
    call $_ZN145_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hbab1eac3e55cc948E
    local.get 1
    local.get 2
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h7a801971403d72c0E
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h28622677f87da2cdE (;249;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 3
    i32.store offset=28
    local.get 4
    local.get 2
    i32.store offset=24
    local.get 4
    local.get 1
    i32.store offset=20
    local.get 4
    local.get 4
    i32.const 12
    i32.add
    i32.store offset=16
    local.get 4
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17hfd9651a2afc51ee1E
    unreachable
  )
  (func $_ZN165_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_not_payable..NotPayable$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h43899a3b30e4c5bfE (;250;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h6c0dd51e46722c8bE
    unreachable
  )
  (func $_ZN329_$LT$dharitri_sc..types..interaction..markers..dcdt_system_sc_address..DCDTSystemSCAddress$u20$as$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$8to_value17hb0a988c131c4b6feE (;251;) (type 3) (result i32)
    i32.const 131794
    i32.const 32
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6eaeb76854457359E
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h89a4d23d858de7e4E (;252;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 3
    local.get 2
    local.get 1
    i32.store offset=4
    local.get 2
    local.get 0
    i64.load offset=8 align=4
    i64.store offset=8 align=4
    local.get 2
    i32.const 4
    i32.add
    local.get 3
    i32.load
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1faf18fa28bebcfeE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util28managed_buffer_top_en_output174_$LT$impl$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$u20$for$u20$$RF$mut$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$12set_slice_u817hc04b9008ea3a48d3E (;253;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferSetBytes
    drop
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hc5e86102857795d5E (;254;) (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    local.get 1
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17ha27b9eaf5a5242e3E
    local.set 4
    local.get 3
    i32.const 8
    i32.add
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load
    local.tee 5
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h34c14e0b44ca54cfE
    block ;; label = @1
      local.get 3
      i32.load offset=8
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131884
      i32.const 15
      call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hc276eab493f40fc5E
      unreachable
    end
    local.get 3
    i32.load offset=12
    local.set 2
    local.get 0
    local.get 5
    local.get 4
    i32.add
    i32.store
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17ha27b9eaf5a5242e3E (;255;) (type 7) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 0
    i32.store offset=12
    local.get 0
    local.get 3
    i32.const 12
    i32.add
    i32.const 4
    local.get 1
    local.get 2
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hdd3ac06276fc71fdE
    local.get 3
    i32.load offset=12
    local.set 2
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    i32.const 24
    i32.shl
    local.get 2
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 2
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 2
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h34c14e0b44ca54cfE (;256;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    local.get 1
    local.get 2
    local.get 3
    call $mBufferNew
    local.tee 4
    call $mBufferCopyByteSlice
    local.set 3
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 0
    local.get 3
    i32.eqz
    i32.store
  )
  (func $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hc276eab493f40fc5E (;257;) (type 22) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6eaeb76854457359E
    local.tee 1
    local.get 2
    local.get 3
    call $mBufferAppendBytes
    drop
    local.get 1
    call $managedSignalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hefe7358bf293cd6bE (;258;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17h7e48451eaddee5aeE
    local.set 3
    local.get 2
    i32.const 8
    i32.add
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load
    local.tee 4
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h34c14e0b44ca54cfE
    block ;; label = @1
      local.get 2
      i32.load offset=8
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      i32.const 131884
      i32.const 15
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4485310af3f37671E
      unreachable
    end
    local.get 2
    i32.load offset=12
    local.set 1
    local.get 0
    local.get 4
    local.get 3
    i32.add
    i32.store
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17h7e48451eaddee5aeE (;259;) (type 4) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 0
    i32.store offset=12
    local.get 0
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    local.get 1
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h7c815396655cd407E
    local.get 2
    i32.load offset=12
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
    i32.const 24
    i32.shl
    local.get 1
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 1
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 1
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
  )
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4485310af3f37671E (;260;) (type 1) (param i32 i32 i32)
    (local i32)
    i32.const 131995
    i32.const 27
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6eaeb76854457359E
    local.tee 3
    local.get 0
    call $mBufferAppend
    drop
    local.get 3
    i32.const 131354
    i32.const 3
    call $mBufferAppendBytes
    drop
    local.get 3
    local.get 1
    local.get 2
    call $mBufferAppendBytes
    drop
    local.get 3
    call $managedSignalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h455e82a287c43c47E (;261;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferAppendBytes
    drop
  )
  (func $_ZN11dharitri_sc5types7managed5basic11big_num_cmp10bi_cmp_i6417haf2bddc3b816a674E (;262;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$7bi_sign17h12474b880d747599E
    i32.const 255
    i32.and
    i32.const -1
    i32.add
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h1a8a374082998d75E (;263;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferAppend
    drop
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$16from_single_item17h42b8d8b3546fea48E (;264;) (type 5) (param i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.tee 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped16token_identifier24TokenIdentifier$LT$M$GT$7try_new17h45ed21fbc1db0871E (;265;) (type 2) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h3efe55ec1cac865cE
    local.set 2
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.const 1
    i32.xor
    i32.store
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h5a3452e2166fceabE (;266;) (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc3api13managed_types11big_int_api13BigIntApiImpl15bi_sub_unsigned17h17f6d8d48b2c8492E
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h7904b92e5aca853eE (;267;) (type 5) (param i32) (result i32)
    i32.const -11
    i64.const 2
    call $bigIntSetInt64
    local.get 0
    local.get 0
    i32.const -11
    call $bigIntTDiv
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u64$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h58424e477216e810E (;268;) (type 5) (param i32) (result i32)
    i32.const -11
    i64.const 10000
    call $bigIntSetInt64
    local.get 0
    local.get 0
    i32.const -11
    call $bigIntTDiv
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators196_$LT$impl$u20$core..ops..arith..Mul$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3mul17h49f0545fcdc66a46E (;269;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 2
    local.get 0
    local.get 1
    call $bigIntMul
    local.get 2
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators196_$LT$impl$u20$core..ops..arith..Sub$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h03450025baf3b54dE (;270;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc3api13managed_types11big_int_api13BigIntApiImpl15bi_sub_unsigned17h17f6d8d48b2c8492E
    local.get 2
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17ha05148689a286fd6E (;271;) (type 16) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              local.get 0
              i32.load8_u offset=8
              local.tee 5
              br_if 0 (;@5;)
              block ;; label = @6
                local.get 0
                i32.load
                local.tee 6
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7be4a9953ea8eddfE
                local.tee 7
                i32.const 10000
                i32.gt_u
                i32.const 0
                i32.load8_u offset=143184
                i32.or
                local.tee 8
                i32.const 1
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 7
                i32.store offset=143180
                i32.const 0
                i32.const 1
                i32.store8 offset=143184
                local.get 4
                i32.const 8
                i32.add
                local.get 7
                i32.const 133180
                i32.const 10000
                call $_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd9eae4beb3575ab6E
                local.get 6
                i32.const 0
                local.get 4
                i32.load offset=8
                local.get 4
                i32.load offset=12
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h0dd6767832ec3e98E
                drop
                local.get 0
                i32.load8_u offset=8
                local.set 5
              end
              local.get 8
              i32.const 1
              i32.xor
              local.set 7
              block ;; label = @6
                local.get 5
                i32.const 255
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                i32.const 0
                i32.const 0
                i32.store offset=143180
                i32.const 0
                i32.const 0
                i32.store8 offset=143184
              end
              local.get 0
              local.get 7
              i32.const 1
              i32.and
              i32.store8 offset=8
              local.get 8
              i32.const 1
              i32.and
              br_if 1 (;@4;)
            end
            i32.const 1
            local.set 0
            local.get 3
            local.get 1
            i32.add
            local.tee 5
            i32.const 0
            i32.load offset=143180
            i32.gt_u
            br_if 1 (;@3;)
            local.get 5
            local.get 1
            i32.lt_u
            br_if 2 (;@2;)
            local.get 5
            i32.const 10000
            i32.gt_u
            br_if 3 (;@1;)
            local.get 2
            local.get 1
            i32.const 133180
            i32.add
            local.get 3
            call $memcpy
            drop
            i32.const 0
            local.set 0
            br 1 (;@3;)
          end
          local.get 0
          i32.load
          local.get 1
          local.get 2
          local.get 3
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h0dd6767832ec3e98E
          local.set 0
        end
        local.get 4
        i32.const 16
        i32.add
        global.set $__stack_pointer
        local.get 0
        return
      end
      local.get 1
      local.get 5
      call $_ZN4core5slice5index22slice_index_order_fail17hce8d8012711d5a00E
      unreachable
    end
    local.get 5
    i32.const 10000
    call $_ZN4core5slice5index22slice_index_order_fail17hce8d8012711d5a00E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$11map_or_else17h39b48f85f9357ec2E (;272;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block ;; label = @1
      local.get 0
      call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h3efe55ec1cac865cE
      br_if 0 (;@1;)
      local.get 4
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 4
      local.get 0
      i32.store offset=24
      local.get 4
      local.get 1
      i64.load align=4
      i64.store offset=8
      local.get 3
      local.get 4
      i32.const 8
      i32.add
      local.get 0
      call $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$16map_rewa_or_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17hc86b73710838b522E
      unreachable
    end
    local.get 2
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$16map_rewa_or_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17h248cb9508446aec0E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$16map_rewa_or_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17h248cb9508446aec0E (;273;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.load offset=12
    local.set 3
    local.get 2
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 2
    local.get 3
    i32.store offset=12
    local.get 2
    local.get 1
    i64.load align=4
    i64.store
    local.get 0
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h65ec03aa80fdd8cbE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$16map_rewa_or_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17hc86b73710838b522E (;274;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    i32.load offset=4
    local.set 4
    local.get 0
    i32.load
    local.set 5
    local.get 1
    i32.load offset=12
    local.set 6
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 3
    local.get 6
    i32.store offset=28
    local.get 3
    local.get 2
    i32.store offset=24
    local.get 3
    local.get 1
    i64.load align=4
    i64.store
    local.get 3
    local.get 0
    i32.load offset=8
    i64.load
    i64.store offset=16
    local.get 5
    local.get 4
    local.get 3
    local.get 3
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h7dd3b59f9273c8f7E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$11unwrap_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17hb4b33bf3419d66b5E (;275;) (type 15)
    i32.const 131960
    i32.const 13
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17hc47d11e365c3e1b5E (;276;) (type 5) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block ;; label = @1
      local.get 0
      call $mBufferGetLength
      i32.const 4
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.const 0
      i32.store offset=12
      local.get 0
      i32.const 0
      local.get 1
      i32.const 12
      i32.add
      i32.const 4
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17he59cf7a5329a8f5dE
      drop
      local.get 1
      i32.load offset=12
      i32.const 1096238418
      i32.ne
      br_if 0 (;@1;)
      call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$4rewa17hcbf6f0e1e7ffd4afE
      local.set 0
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17haec9fbc9dbaf9022E (;277;) (type 5) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_set11storage_set17hfaf78481ca1948fcE (;278;) (type 2) (param i32 i32)
    block ;; label = @1
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h3efe55ec1cac865cE
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_ZN11dharitri_sc7storage11storage_set25StorageSetOutput$LT$A$GT$18set_managed_buffer17hb2b8029571728040E
      return
    end
    local.get 0
    i32.const 131973
    i32.const 4
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817he373440a122b0226E
  )
  (func $_ZN11dharitri_sc7storage11storage_set25StorageSetOutput$LT$A$GT$18set_managed_buffer17hb2b8029571728040E (;279;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferStorageStore
    drop
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817he373440a122b0226E (;280;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6eaeb76854457359E
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage11storage_set13storage_clear17h43b5341756400bc5E (;281;) (type 9) (param i32)
    i32.const -20
    i32.const 1
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
    i32.const -20
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17h0aff6733c2542487E (;282;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i64.const 0
    i64.store offset=8
    local.get 2
    local.get 1
    i64.extend_i32_u
    local.get 2
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec8num_conv17top_encode_number17he16fb69829eeed2eE
    local.get 0
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817he373440a122b0226E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec8num_conv17top_encode_number17he16fb69829eeed2eE (;283;) (type 25) (param i32 i64 i32)
    (local i64 i32 i32)
    local.get 2
    local.get 1
    i64.const 56
    i64.shl
    local.get 1
    i64.const 65280
    i64.and
    i64.const 40
    i64.shl
    i64.or
    local.get 1
    i64.const 16711680
    i64.and
    i64.const 24
    i64.shl
    local.get 1
    i64.const 4278190080
    i64.and
    i64.const 8
    i64.shl
    i64.or
    i64.or
    local.get 1
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 1
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 1
    i64.const 40
    i64.shr_u
    local.tee 3
    i64.const 65280
    i64.and
    local.get 1
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store align=1
    local.get 0
    i32.const 8
    i32.const 0
    local.get 1
    i64.const 72057594037927936
    i64.lt_u
    local.tee 4
    local.get 1
    i64.const 48
    i64.shr_u
    i32.wrap_i64
    i32.const 255
    i32.and
    select
    local.tee 5
    local.get 4
    i32.add
    i32.const 0
    local.get 5
    local.get 3
    i32.wrap_i64
    i32.const 255
    i32.and
    select
    local.tee 4
    i32.add
    i32.const 0
    local.get 4
    local.get 1
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    i32.const 255
    i32.and
    select
    local.tee 5
    i32.add
    i32.const 0
    local.get 5
    local.get 1
    i32.wrap_i64
    local.tee 4
    i32.const 24
    i32.shr_u
    select
    local.tee 5
    i32.add
    i32.const 0
    local.get 5
    local.get 4
    i32.const 16
    i32.shr_u
    i32.const 255
    i32.and
    select
    local.tee 5
    i32.add
    i32.const 0
    local.get 5
    local.get 4
    i32.const 8
    i32.shr_u
    i32.const 255
    i32.and
    select
    local.tee 4
    i32.add
    local.get 4
    i32.const 0
    local.get 1
    i64.eqz
    select
    i32.add
    local.tee 4
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 2
    local.get 4
    i32.add
    i32.store
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$13get_unchecked17h3929d11eeeea097fE (;284;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h7a67f22e4ad928adE
    local.tee 1
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17haec9fbc9dbaf9022E
    local.tee 4
    call $mBufferGetLength
    local.set 2
    local.get 3
    i32.const 0
    i32.store8 offset=20
    local.get 3
    local.get 2
    i32.store offset=16
    local.get 3
    local.get 4
    i32.store offset=12
    local.get 3
    local.get 2
    i32.store offset=8
    local.get 3
    i32.const 0
    i32.store offset=4
    local.get 3
    i32.const 4
    i32.add
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hefe7358bf293cd6bE
    local.set 5
    local.get 3
    i32.const 4
    i32.add
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hefe7358bf293cd6bE
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17hc47d11e365c3e1b5E
    local.set 6
    local.get 3
    i64.const 0
    i64.store offset=24
    local.get 3
    i32.const 4
    i32.add
    local.get 3
    i32.const 24
    i32.add
    i32.const 8
    local.get 1
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h7c815396655cd407E
    local.get 3
    i64.load offset=24
    local.set 7
    local.get 3
    i32.const 4
    i32.add
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hefe7358bf293cd6bE
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h3e1d3bad96e8d08dE
    local.set 8
    local.get 3
    i32.const 4
    i32.add
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17h7e48451eaddee5aeE
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.set 4
    block ;; label = @1
      loop ;; label = @2
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 3
        i32.const 4
        i32.add
        local.get 1
        call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hefe7358bf293cd6bE
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
        local.get 2
        i32.const -1
        i32.add
        local.set 2
        br 0 (;@2;)
      end
    end
    block ;; label = @1
      local.get 3
      i32.load offset=8
      local.get 3
      i32.load offset=4
      i32.ne
      br_if 0 (;@1;)
      block ;; label = @2
        local.get 3
        i32.load8_u offset=20
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        i32.store offset=143180
        i32.const 0
        i32.const 0
        i32.store8 offset=143184
      end
      local.get 0
      local.get 4
      i32.store offset=20
      local.get 0
      local.get 8
      i32.store offset=16
      local.get 0
      local.get 6
      i32.store offset=12
      local.get 0
      local.get 5
      i32.store offset=8
      local.get 0
      local.get 7
      i64.const 56
      i64.shl
      local.get 7
      i64.const 65280
      i64.and
      i64.const 40
      i64.shl
      i64.or
      local.get 7
      i64.const 16711680
      i64.and
      i64.const 24
      i64.shl
      local.get 7
      i64.const 4278190080
      i64.and
      i64.const 8
      i64.shl
      i64.or
      i64.or
      local.get 7
      i64.const 8
      i64.shr_u
      i64.const 4278190080
      i64.and
      local.get 7
      i64.const 24
      i64.shr_u
      i64.const 16711680
      i64.and
      i64.or
      local.get 7
      i64.const 40
      i64.shr_u
      i64.const 65280
      i64.and
      local.get 7
      i64.const 56
      i64.shr_u
      i64.or
      i64.or
      i64.or
      i64.store
      local.get 3
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 1
    i32.const 131097
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4485310af3f37671E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h7a67f22e4ad928adE (;285;) (type 4) (param i32 i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
    local.tee 0
    i32.const 131977
    i32.const 5
    call $mBufferAppendBytes
    drop
    local.get 1
    local.get 0
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h047164854aaea7adE
    local.get 0
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h7c815396655cd407E (;286;) (type 22) (param i32 i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17ha05148689a286fd6E
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17hdeeb2edaf875d260E
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h3ebc65b850c08053E (;287;) (type 5) (param i32) (result i32)
    (local i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i64.const 0
    i64.store offset=8
    block ;; label = @1
      block ;; label = @2
        local.get 0
        call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17haec9fbc9dbaf9022E
        local.tee 2
        call $mBufferGetLength
        local.tee 3
        i32.const 9
        i32.ge_u
        br_if 0 (;@2;)
        local.get 2
        i32.const 0
        local.get 1
        i32.const 8
        i32.add
        local.get 3
        i32.sub
        i32.const 8
        i32.add
        local.get 3
        call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17he59cf7a5329a8f5dE
        drop
        local.get 1
        i64.load offset=8
        local.tee 4
        i64.const 56
        i64.shl
        local.get 4
        i64.const 65280
        i64.and
        i64.const 40
        i64.shl
        i64.or
        local.get 4
        i64.const 16711680
        i64.and
        i64.const 24
        i64.shl
        local.get 4
        i64.const 4278190080
        i64.and
        i64.const 8
        i64.shl
        i64.or
        i64.or
        local.get 4
        i64.const 8
        i64.shr_u
        i64.const 4278190080
        i64.and
        local.get 4
        i64.const 24
        i64.shr_u
        i64.const 16711680
        i64.and
        i64.or
        local.get 4
        i64.const 40
        i64.shr_u
        i64.const 65280
        i64.and
        local.get 4
        i64.const 56
        i64.shr_u
        i64.or
        i64.or
        i64.or
        local.tee 4
        i64.const 4294967296
        i64.ge_u
        br_if 1 (;@1;)
        local.get 1
        i32.const 16
        i32.add
        global.set $__stack_pointer
        local.get 4
        i32.wrap_i64
        return
      end
      local.get 0
      i32.const 131097
      i32.const 14
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4485310af3f37671E
      unreachable
    end
    local.get 0
    i32.const 131097
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4485310af3f37671E
    unreachable
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h047164854aaea7adE (;288;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.const 24
    i32.shl
    local.get 0
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 0
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 0
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h455e82a287c43c47E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hee0c482e78f90fb1E (;289;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_set25StorageSetOutput$LT$A$GT$18set_managed_buffer17hb2b8029571728040E
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17h7a88a7b46259e562E (;290;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h4ba86bd6469cb1e3E
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17h9feef24c03b9c650E (;291;) (type 0) (param i32 i64)
    local.get 0
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h189690f76e9cc4bcE
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17hfda65b1d37f99b85E (;292;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h88bb164a1fa973daE
  )
  (func $_ZN11dharitri_sc8log_util23event_topic_accumulator17h92c3cb07b8b2bd91E (;293;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.tee 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6eaeb76854457359E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
    local.get 2
  )
  (func $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hb7b3d57d749d7dc2E (;294;) (type 3) (result i32)
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6eaeb76854457359E
  )
  (func $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hb36790b2ea95e030E (;295;) (type 9) (param i32)
    local.get 0
    call $mBufferFinish
    drop
  )
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h9e70a5041c540ef9E (;296;) (type 2) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h279135d06c5a2fceE
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h070d4fb7a2440ae3E
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h070d4fb7a2440ae3E (;297;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7be4a9953ea8eddfE
    local.tee 3
    i32.const 24
    i32.shl
    local.get 3
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 3
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 3
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h455e82a287c43c47E
    local.get 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h1a8a374082998d75E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h7a801971403d72c0E (;298;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferStorageStore
    drop
  )
  (func $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17hd945d3b304b2eecdE (;299;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17haec9fbc9dbaf9022E
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hbab1eac3e55cc948E (;300;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7be4a9953ea8eddfE
    i32.const 2
    i32.shr_u
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h047164854aaea7adE
    local.get 2
    local.get 0
    call $mBufferGetLength
    i32.store offset=28
    local.get 2
    i32.const 0
    i32.store offset=24
    local.get 2
    local.get 0
    i32.store offset=20
    loop ;; label = @1
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 20
      i32.add
      call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h922afb9bcbd9c93bE
      block ;; label = @2
        local.get 2
        i32.load offset=8
        br_if 0 (;@2;)
        local.get 2
        i32.const 32
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 2
      i32.load offset=12
      local.get 1
      call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h070d4fb7a2440ae3E
      br 0 (;@1;)
    end
  )
  (func $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h28771eb601f2e7b4E (;301;) (type 2) (param i32 i32)
    (local i32 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i64.const 0
    local.set 3
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load offset=4
        local.get 1
        i32.load offset=8
        i32.ge_u
        br_if 0 (;@2;)
        local.get 2
        i32.const 8
        i32.add
        local.get 1
        i32.const 132042
        i32.const 8
        call $_ZN257_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_owned..ManagedVecOwnedIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17habe78b5f3e7e44e0E
        call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17hfef59c404c4e64ddE
        call $_ZN11dharitri_sc5types7managed7wrapped16token_identifier24TokenIdentifier$LT$M$GT$7try_new17h45ed21fbc1db0871E
        local.get 2
        i32.load offset=8
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=12
        local.set 4
        local.get 1
        i32.const 132042
        i32.const 8
        call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17hd655c08174432fcbE
        local.set 3
        local.get 0
        local.get 1
        i32.const 132042
        i32.const 8
        call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17hcb1de87146da3296E
        i32.store offset=20
        local.get 0
        local.get 4
        i32.store offset=16
        local.get 0
        local.get 3
        i64.store offset=8
        i64.const 1
        local.set 3
      end
      local.get 0
      local.get 3
      i64.store
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 132042
    i32.const 8
    i32.const 131960
    i32.const 13
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb22766f67bb2d820E
    unreachable
  )
  (func $_ZN257_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_owned..ManagedVecOwnedIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17habe78b5f3e7e44e0E (;302;) (type 7) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    local.get 0
    call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h922afb9bcbd9c93bE
    block ;; label = @1
      local.get 3
      i32.load offset=8
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=12
      local.set 0
      local.get 3
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 0
      return
    end
    local.get 1
    local.get 2
    i32.const 131357
    i32.const 17
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb22766f67bb2d820E
    unreachable
  )
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17hcb1de87146da3296E (;303;) (type 7) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN257_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_owned..ManagedVecOwnedIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17habe78b5f3e7e44e0E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h3e1d3bad96e8d08dE
  )
  (func $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hfba986959943e7f6E (;304;) (type 20) (param i32 i32 i32) (result i64)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i64.const 0
    i64.store offset=8
    block ;; label = @1
      local.get 0
      call $mBufferGetLength
      local.tee 4
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131097
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb22766f67bb2d820E
      unreachable
    end
    local.get 0
    i32.const 0
    local.get 3
    i32.const 8
    i32.add
    local.get 4
    i32.sub
    i32.const 8
    i32.add
    local.get 4
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17he59cf7a5329a8f5dE
    drop
    local.get 3
    i64.load offset=8
    local.set 5
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 5
    i64.const 56
    i64.shl
    local.get 5
    i64.const 65280
    i64.and
    i64.const 40
    i64.shl
    i64.or
    local.get 5
    i64.const 16711680
    i64.and
    i64.const 24
    i64.shl
    local.get 5
    i64.const 4278190080
    i64.and
    i64.const 8
    i64.shl
    i64.or
    i64.or
    local.get 5
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 5
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 5
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 5
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
  )
  (func $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h9dc4eda92a1dcd60E (;305;) (type 9) (param i32)
    block ;; label = @1
      local.get 0
      call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h3efe55ec1cac865cE
      br_if 0 (;@1;)
      local.get 0
      call $mBufferFinish
      drop
      return
    end
    i32.const 131973
    i32.const 4
    call $finish
  )
  (func $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17hdef11543219be7fbE (;306;) (type 2) (param i32 i32)
    block ;; label = @1
      local.get 0
      call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h3efe55ec1cac865cE
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
      i32.store
      return
    end
    local.get 1
    i32.load
    i32.const 131973
    i32.const 4
    call $_ZN11dharitri_sc5types7managed10codec_util28managed_buffer_top_en_output174_$LT$impl$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$u20$for$u20$$RF$mut$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$12set_slice_u817hc04b9008ea3a48d3E
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1faf18fa28bebcfeE (;307;) (type 2) (param i32 i32)
    local.get 0
    i32.load
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h2d0b8bb9d6407143E
    unreachable
  )
  (func $_ZN16forwarder_legacy14fwd_nft_legacy13CallbackProxy18nft_issue_callback17h5caa3f49e08a9339E (;308;) (type 2) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.tee 2
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h3e017c339f638e36E
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    i32.const 18
    i32.store offset=4
    local.get 0
    i32.const 132050
    i32.store
  )
  (func $_ZN16forwarder_legacy14fwd_nft_legacy18ForwarderNftModule10nft_create17hb42eebb094fd6988E (;309;) (type 27) (param i32 i32 i32 i32 i32 i32 i32) (result i64)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 7
    global.set $__stack_pointer
    local.get 7
    local.get 1
    i32.store offset=12
    local.get 7
    local.get 0
    i32.store offset=8
    local.get 7
    local.get 2
    i32.store offset=16
    local.get 7
    local.get 3
    i32.store offset=20
    local.get 7
    local.get 4
    i32.store offset=24
    local.get 7
    local.get 5
    i32.store16 offset=28
    local.get 7
    local.get 5
    i32.const 16
    i32.shr_u
    i32.store8 offset=30
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.tee 5
    local.get 6
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
    local.get 7
    i32.const 8
    i32.add
    local.get 7
    i32.const 12
    i32.add
    local.get 7
    i32.const 16
    i32.add
    local.get 7
    i32.const 20
    i32.add
    local.get 7
    i32.const 24
    i32.add
    local.get 7
    i32.const 28
    i32.add
    local.get 5
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_nft_create17h77c5319b0fd2303aE
    local.set 8
    i32.const 132640
    i32.const 6
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h92c3cb07b8b2bd91E
    local.tee 5
    local.get 7
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17hfda65b1d37f99b85E
    local.get 5
    local.get 8
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17h9feef24c03b9c650E
    local.get 5
    local.get 7
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17h7a88a7b46259e562E
    local.get 5
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    call $managedWriteLog
    local.get 7
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 8
  )
  (func $_ZN16forwarder_legacy14fwd_sft_legacy13CallbackProxy18sft_issue_callback17ha800ab724214b512E (;310;) (type 2) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.tee 2
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h3e017c339f638e36E
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    i32.const 18
    i32.store offset=4
    local.get 0
    i32.const 132170
    i32.store
  )
  (func $_ZN16forwarder_legacy15fwd_dcdt_legacy13CallbackProxy19dcdt_issue_callback17h2ee2b71334d859c7E (;311;) (type 2) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.tee 2
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h3e017c339f638e36E
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    i32.const 19
    i32.store offset=4
    local.get 0
    i32.const 132188
    i32.store
  )
  (func $_ZN16forwarder_legacy17fwd_deploy_legacy20DeployContractModule20perform_deploy_vault17heae319a796115845E (;312;) (type 22) (param i32 i32 i32 i32)
    (local i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 2
    local.get 3
    call $_ZN5vault10ProxyTrait4init17h399f137a6681caa1E
    local.set 3
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
    local.set 1
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h3397058d26f1f3feE
    local.set 5
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17h82bf3edb1488bcb2E
    local.set 2
    i32.const 0
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17hc172dfc29a395390E
    local.get 5
    local.get 2
    local.get 1
    i32.const -25
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 6
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 7
    call $managedCreateContract
    drop
    call $cleanReturnData
    local.get 4
    i32.const 8
    i32.add
    local.get 7
    call $_ZN11dharitri_sc5types11interaction7tx_exec13decode_result17h0c83e3a7c0a26c9eE
    local.get 0
    local.get 4
    i64.load offset=8
    i64.store offset=4 align=4
    local.get 0
    local.get 6
    i32.store
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN5vault10ProxyTrait4init17h399f137a6681caa1E (;313;) (type 4) (param i32 i32) (result i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction2tx138Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..deploy_call..DeployCall$LT$Env$C$CodeSource$GT$$C$RH$GT$8argument17h47eadb2515b71487E
  )
  (func $_ZN16forwarder_legacy21fwd_call_async_legacy13CallbackProxy25send_funds_twice_callback17ha2f3f5c500803908E (;314;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.tee 4
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h3e017c339f638e36E
    local.get 4
    local.get 2
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h88bb164a1fa973daE
    local.get 4
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h4ba86bd6469cb1e3E
    local.get 0
    local.get 4
    i32.store offset=8
    local.get 0
    i32.const 25
    i32.store offset=4
    local.get 0
    i32.const 132432
    i32.store
  )
  (func $_ZN172_$LT$$RF$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17h21ac51442be03aa3E (;315;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.load
    local.tee 0
    call $mBufferGetLength
    i32.store offset=28
    local.get 2
    i32.const 0
    i32.store offset=24
    local.get 2
    local.get 0
    i32.store offset=20
    loop ;; label = @1
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 20
      i32.add
      call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h922afb9bcbd9c93bE
      block ;; label = @2
        local.get 2
        i32.load offset=8
        br_if 0 (;@2;)
        local.get 2
        i32.const 32
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 1
      local.get 2
      i32.load offset=12
      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h0c68549f9be90843E
      br 0 (;@1;)
    end
  )
  (func $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h442b1ad1aa54a38dE (;316;) (type 2) (param i32 i32)
    block ;; label = @1
      local.get 0
      call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h3efe55ec1cac865cE
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h070d4fb7a2440ae3E
      return
    end
    i32.const 131973
    i32.const 4
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types10impl_slice96_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$$u5b$T$u5d$$GT$24dep_encode_or_handle_err17h557c2d6c9c20aacbE
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types10impl_slice96_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$$u5b$T$u5d$$GT$24dep_encode_or_handle_err17h557c2d6c9c20aacbE (;317;) (type 1) (param i32 i32 i32)
    local.get 1
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h047164854aaea7adE
    local.get 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h455e82a287c43c47E
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h08dd25e36547a856E (;318;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 131884
    i32.const 15
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb22766f67bb2d820E
    unreachable
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h8943c0ed88df0551E (;319;) (type 35) (param i64 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i64.const 56
    i64.shl
    local.get 0
    i64.const 65280
    i64.and
    i64.const 40
    i64.shl
    i64.or
    local.get 0
    i64.const 16711680
    i64.and
    i64.const 24
    i64.shl
    local.get 0
    i64.const 4278190080
    i64.and
    i64.const 8
    i64.shl
    i64.or
    i64.or
    local.get 0
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 0
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 0
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 0
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=8
    local.get 1
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h455e82a287c43c47E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hdd3ac06276fc71fdE (;320;) (type 33) (param i32 i32 i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17ha05148689a286fd6E
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 4
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h1a50b42b55a03756E
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h1a50b42b55a03756E (;321;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 131884
    i32.const 15
    call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hc276eab493f40fc5E
    unreachable
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17hdeeb2edaf875d260E (;322;) (type 9) (param i32)
    local.get 0
    i32.const 131884
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4485310af3f37671E
    unreachable
  )
  (func $_ZN4core3cmp10PartialOrd2gt17h2247c45792eb735bE (;323;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic11big_num_cmp10bi_cmp_i6417haf2bddc3b816a674E
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
  )
  (func $_ZN5vault10ProxyTrait12accept_funds17h8915a96ee16e688bE (;324;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    call $_ZN100_$LT$vault..ProxyTo$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$16extract_proxy_to17hcb436e33eca3a746E
    local.set 1
    local.get 2
    i32.const 8
    i32.add
    i32.const 132362
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc16f49575b67c490E
    local.get 0
    local.get 2
    i64.load offset=8
    i64.store align=4
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN5vault10ProxyTrait14echo_arguments17he0c154afa8db6fcaE (;325;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 1
    call $_ZN100_$LT$vault..ProxyTo$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$16extract_proxy_to17hcb436e33eca3a746E
    local.set 1
    local.get 3
    i32.const 8
    i32.add
    i32.const 132533
    i32.const 14
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc16f49575b67c490E
    local.get 3
    i32.load offset=8
    local.set 4
    local.get 2
    local.get 3
    i32.load offset=12
    local.tee 5
    call $_ZN172_$LT$$RF$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17h21ac51442be03aa3E
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    local.get 5
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN5vault10ProxyTrait14echo_arguments17hfae17d0dd4052d58E (;326;) (type 1) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 1
    call $_ZN100_$LT$vault..ProxyTo$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$16extract_proxy_to17hcb436e33eca3a746E
    local.set 2
    local.get 3
    i32.const 132533
    i32.const 14
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc16f49575b67c490E
    local.get 3
    i32.load
    local.set 1
    local.get 3
    i32.const 12
    i32.add
    local.get 3
    i32.load offset=4
    local.tee 4
    call $_ZN172_$LT$$RF$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17h21ac51442be03aa3E
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN5vault10ProxyTrait14retrieve_funds17h08f8d20d037e3766E (;327;) (type 10) (param i32 i32 i32 i64 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 1
    call $_ZN100_$LT$vault..ProxyTo$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$16extract_proxy_to17hcb436e33eca3a746E
    local.set 6
    local.get 5
    i32.const 8
    i32.add
    i32.const 132547
    i32.const 14
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc16f49575b67c490E
    local.get 5
    i32.load offset=8
    local.set 7
    local.get 5
    i32.load offset=12
    local.set 1
    local.get 5
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    i32.store offset=20
    local.get 2
    local.get 5
    i32.const 20
    i32.add
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17hdef11543219be7fbE
    local.get 1
    local.get 5
    i32.load offset=20
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
    local.get 5
    local.get 7
    local.get 1
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17ha45d3d35710bc7d0E
    local.get 5
    local.get 6
    i32.store offset=28
    local.get 5
    local.get 5
    i64.load
    i64.store offset=20 align=4
    local.get 0
    local.get 5
    i32.const 20
    i32.add
    local.get 4
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hb6d2b9cc5d604ab1E
    local.get 5
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN5vault10ProxyTrait4init17h70d9e61994dccd97E (;328;) (type 22) (param i32 i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types11interaction2tx138Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..deploy_call..DeployCall$LT$Env$C$CodeSource$GT$$C$RH$GT$8argument17h47eadb2515b71487E
    local.set 3
    local.get 1
    call $_ZN100_$LT$vault..ProxyTo$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$16extract_proxy_to17hcb436e33eca3a746E
    local.set 1
    local.get 0
    i32.const 256
    i32.store16 offset=4
    local.get 0
    local.get 3
    i32.store
    local.get 0
    local.get 1
    i32.store offset=8
  )
  (func $_ZN82_$LT$C$u20$as$u20$forwarder_legacy..fwd_storage_legacy..ForwarderStorageModule$GT$17last_issued_token17h08f50806ff4b14dbE (;329;) (type 3) (result i32)
    i32.const 132646
    i32.const 15
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6eaeb76854457359E
  )
  (func $_ZN82_$LT$C$u20$as$u20$forwarder_legacy..fwd_storage_legacy..ForwarderStorageModule$GT$18last_error_message17hb055d812e27fc46aE (;330;) (type 3) (result i32)
    i32.const 132661
    i32.const 16
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6eaeb76854457359E
  )
  (func $_ZN85_$LT$C$u20$as$u20$forwarder_legacy..fwd_call_sync_legacy..ForwarderSyncCallModule$GT$36execute_on_dest_context_result_event17h5023a28156d6e3beE (;331;) (type 9) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 132701
    i32.const 26
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h92c3cb07b8b2bd91E
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
    local.set 3
    local.get 1
    local.get 0
    call $mBufferGetLength
    i32.store offset=28
    local.get 1
    i32.const 0
    i32.store offset=24
    local.get 1
    local.get 0
    i32.store offset=20
    block ;; label = @1
      loop ;; label = @2
        local.get 1
        i32.const 8
        i32.add
        local.get 1
        i32.const 20
        i32.add
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h922afb9bcbd9c93bE
        local.get 1
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.load offset=12
        local.get 3
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h070d4fb7a2440ae3E
        br 0 (;@2;)
      end
    end
    local.get 2
    local.get 3
    call $managedWriteLog
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN87_$LT$C$u20$as$u20$forwarder_legacy..fwd_call_async_legacy..ForwarderAsyncCallModule$GT$13callback_data17hdf70c986186dd12fE (;332;) (type 9) (param i32)
    (local i32 i32)
    i32.const 132727
    i32.const 13
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6eaeb76854457359E
    local.tee 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
    local.tee 2
    i32.const 132022
    i32.const 4
    call $mBufferAppendBytes
    drop
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $rust_begin_unwind (;333;) (type 15)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17hbce93cd107d2a5cdE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17hbce93cd107d2a5cdE (;334;) (type 15)
    i32.const 133048
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;335;) (type 15)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
  )
  (func $send_rewa (;336;) (type 15)
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h19d3b1dec4a421d1E
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$11direct_rewa17h6982657448099880E
  )
  (func $echo_arguments_sync (;337;) (type 15)
    (local i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h47ac3ed1686d2edeE
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i32.const 132353
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h777d35a4e7daadfdE
    local.set 2
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h452c95bd46dc491fE
    call $getGasLeft
    local.set 3
    local.get 0
    local.get 1
    i32.store offset=44
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    i32.const 44
    i32.add
    local.get 2
    call $_ZN5vault10ProxyTrait14echo_arguments17hfae17d0dd4052d58E
    local.get 0
    local.get 3
    i64.const 1
    i64.shr_u
    i64.store offset=8
    local.get 0
    local.get 0
    i32.load offset=40
    i32.store offset=24
    local.get 0
    local.get 0
    i64.load offset=32 align=4
    i64.store offset=16
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync292_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$dharitri_sc..types..interaction..tx_result_handler_list..original_result..OriginalResultMarker$LT$OriginalResult$GT$$GT$$GT$23execute_on_dest_context17hbcef4178cad53ea0E
    call $_ZN85_$LT$C$u20$as$u20$forwarder_legacy..fwd_call_sync_legacy..ForwarderSyncCallModule$GT$36execute_on_dest_context_result_event17h5023a28156d6e3beE
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $echo_arguments_sync_twice (;338;) (type 15)
    (local i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h47ac3ed1686d2edeE
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i32.const 132353
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h777d35a4e7daadfdE
    local.set 2
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h452c95bd46dc491fE
    local.get 0
    local.get 2
    i32.store offset=4
    call $getGasLeft
    local.set 3
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
    i32.store offset=44
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    i32.const 44
    i32.add
    local.get 0
    i32.const 4
    i32.add
    call $_ZN5vault10ProxyTrait14echo_arguments17he0c154afa8db6fcaE
    local.get 0
    local.get 3
    i64.const 3
    i64.div_u
    local.tee 3
    i64.store offset=8
    local.get 0
    local.get 0
    i32.load offset=40
    i32.store offset=24
    local.get 0
    local.get 0
    i64.load offset=32 align=4
    i64.store offset=16
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync292_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$dharitri_sc..types..interaction..tx_result_handler_list..original_result..OriginalResultMarker$LT$OriginalResult$GT$$GT$$GT$23execute_on_dest_context17hbcef4178cad53ea0E
    call $_ZN85_$LT$C$u20$as$u20$forwarder_legacy..fwd_call_sync_legacy..ForwarderSyncCallModule$GT$36execute_on_dest_context_result_event17h5023a28156d6e3beE
    local.get 0
    local.get 1
    i32.store offset=44
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    i32.const 44
    i32.add
    local.get 0
    i32.const 4
    i32.add
    call $_ZN5vault10ProxyTrait14echo_arguments17he0c154afa8db6fcaE
    local.get 0
    local.get 3
    i64.store offset=8
    local.get 0
    local.get 0
    i32.load offset=40
    i32.store offset=24
    local.get 0
    local.get 0
    i64.load offset=32 align=4
    i64.store offset=16
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync292_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$dharitri_sc..types..interaction..tx_result_handler_list..original_result..OriginalResultMarker$LT$OriginalResult$GT$$GT$$GT$23execute_on_dest_context17hbcef4178cad53ea0E
    call $_ZN85_$LT$C$u20$as$u20$forwarder_legacy..fwd_call_sync_legacy..ForwarderSyncCallModule$GT$36execute_on_dest_context_result_event17h5023a28156d6e3beE
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_accept_funds (;339;) (type 15)
    (local i32 i32 i64 i32 i64 i64 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 160
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    local.get 0
    i32.const 120
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h689ccc120464f7d5E
    call $getGasLeft
    local.set 2
    local.get 0
    local.get 1
    i32.store offset=76
    local.get 0
    i32.const 76
    i32.add
    call $_ZN100_$LT$vault..ProxyTo$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$16extract_proxy_to17hcb436e33eca3a746E
    local.set 1
    local.get 0
    i32.const 24
    i32.add
    i32.const 132578
    i32.const 25
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc16f49575b67c490E
    local.get 0
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.get 0
    i32.const 120
    i32.add
    i32.const 8
    i32.add
    local.tee 3
    i64.load
    local.tee 4
    i64.store
    local.get 0
    local.get 1
    i32.store offset=64
    local.get 0
    local.get 0
    i64.load offset=120
    local.tee 5
    i64.store offset=32
    local.get 0
    local.get 2
    i64.const 1
    i64.shr_u
    local.tee 2
    i64.store offset=48
    local.get 0
    local.get 0
    i32.load offset=28
    local.tee 6
    i32.store offset=60
    local.get 0
    local.get 0
    i32.load offset=24
    local.tee 7
    i32.store offset=56
    local.get 0
    local.get 2
    i64.store offset=80
    local.get 0
    i32.load offset=44
    local.set 8
    block ;; label = @1
      block ;; label = @2
        local.get 4
        i32.wrap_i64
        local.tee 9
        call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h3efe55ec1cac865cE
        br_if 0 (;@2;)
        local.get 0
        local.get 8
        i32.store offset=116
        local.get 0
        local.get 9
        i32.store offset=112
        local.get 0
        local.get 5
        i64.store offset=104
        local.get 0
        local.get 1
        i32.store offset=96
        local.get 0
        local.get 6
        i32.store offset=92
        local.get 0
        local.get 7
        i32.store offset=88
        local.get 0
        local.get 0
        i32.const 80
        i32.add
        i32.store offset=100
        local.get 0
        local.get 0
        i32.const 116
        i32.add
        local.tee 9
        i32.store offset=140
        local.get 0
        local.get 0
        i32.const 112
        i32.add
        local.tee 10
        i32.store offset=136
        local.get 0
        local.get 5
        i64.store offset=128
        local.get 0
        local.get 0
        i32.const 68
        i32.add
        local.tee 8
        i32.store offset=152
        local.get 0
        local.get 8
        i32.store offset=148
        local.get 0
        local.get 6
        i32.store offset=124
        local.get 0
        local.get 7
        i32.store offset=120
        local.get 0
        local.get 0
        i32.const 80
        i32.add
        i32.store offset=144
        block ;; label = @3
          local.get 5
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
          local.get 0
          i32.const 8
          i32.add
          local.get 7
          local.get 6
          local.get 10
          local.get 9
          call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h337f0d08b3decdeaE
          local.get 0
          i32.load offset=12
          local.set 6
          local.get 0
          i32.load offset=8
          local.set 7
          call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h429f6f51f1a88ea6E
          local.set 8
          local.get 0
          i64.load offset=80
          local.get 1
          local.get 8
          local.get 7
          local.get 6
          call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h7ab287656ee931c2E
          local.set 1
          br 2 (;@1;)
        end
        local.get 0
        i32.const 16
        i32.add
        local.get 7
        local.get 6
        local.get 1
        local.get 3
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h55de8113ca0dd442E
        local.get 0
        i32.load offset=20
        local.set 1
        local.get 0
        i32.load offset=16
        local.set 6
        call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17h62b2c0d8946772e5E
        local.set 7
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h429f6f51f1a88ea6E
        local.set 8
        local.get 0
        i64.load offset=80
        local.get 7
        local.get 8
        local.get 6
        local.get 1
        call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h7ab287656ee931c2E
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      local.get 8
      local.get 7
      local.get 6
      call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h7ab287656ee931c2E
      local.set 1
    end
    call $cleanReturnData
    local.get 0
    local.get 1
    call $mBufferGetLength
    i32.store offset=128
    local.get 0
    i32.const 0
    i32.store offset=124
    local.get 0
    local.get 1
    i32.store offset=120
    local.get 0
    i32.const 120
    i32.add
    i32.const 131873
    i32.const 11
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17hcb1de87146da3296E
    local.set 6
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.set 1
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.load offset=124
        local.get 0
        i32.load offset=128
        i32.ge_u
        br_if 1 (;@1;)
        local.get 1
        local.get 0
        i32.const 120
        i32.add
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17hdb7bddafb118c544E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 6
    i32.store offset=32
    i32.const 132677
    i32.const 24
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h92c3cb07b8b2bd91E
    local.tee 6
    local.get 0
    i32.const 32
    i32.add
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17h7a88a7b46259e562E
    local.get 0
    local.get 1
    call $mBufferGetLength
    i32.store offset=128
    local.get 0
    i32.const 0
    i32.store offset=124
    local.get 0
    local.get 1
    i32.store offset=120
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        local.get 0
        i32.const 120
        i32.add
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h922afb9bcbd9c93bE
        local.get 0
        i32.load
        i32.eqz
        br_if 1 (;@1;)
        local.get 6
        local.get 0
        i32.load offset=4
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h0c68549f9be90843E
        br 0 (;@2;)
      end
    end
    local.get 6
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    call $managedWriteLog
    local.get 0
    i32.const 160
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_accept_funds_with_fees (;340;) (type 15)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h19d3b1dec4a421d1E
    local.set 2
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17he031072ab1b682a7E
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 0
    i32.load offset=12
    local.set 4
    local.get 4
    local.get 4
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators196_$LT$impl$u20$core..ops..arith..Mul$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3mul17h49f0545fcdc66a46E
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u64$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h58424e477216e810E
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h5a3452e2166fceabE
    local.set 4
    local.get 0
    local.get 1
    i32.store offset=60
    local.get 0
    i32.const 48
    i32.add
    local.get 0
    i32.const 60
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17h8915a96ee16e688bE
    local.get 0
    local.get 4
    i32.store offset=28
    local.get 0
    local.get 3
    i32.store offset=24
    local.get 0
    i64.const 0
    i64.store offset=16
    local.get 0
    local.get 0
    i32.load offset=56
    i32.store offset=40
    local.get 0
    local.get 0
    i64.load offset=48 align=4
    i64.store offset=32
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync292_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$dharitri_sc..types..interaction..tx_result_handler_list..original_result..OriginalResultMarker$LT$OriginalResult$GT$$GT$$GT$23execute_on_dest_context17h846786d576c6be1aE
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_accept_funds_then_read (;341;) (type 15)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h689ccc120464f7d5E
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
    i32.store offset=60
    local.get 0
    i32.const 48
    i32.add
    local.get 0
    i32.const 60
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17h8915a96ee16e688bE
    local.get 0
    local.get 0
    i32.load offset=56
    i32.store offset=40
    local.get 0
    local.get 0
    i64.load offset=48 align=4
    i64.store offset=32
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync292_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$dharitri_sc..types..interaction..tx_result_handler_list..original_result..OriginalResultMarker$LT$OriginalResult$GT$$GT$$GT$23execute_on_dest_context17h846786d576c6be1aE
    local.get 0
    local.get 1
    i32.store offset=48
    local.get 0
    i32.const 48
    i32.add
    call $_ZN100_$LT$vault..ProxyTo$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$16extract_proxy_to17hcb436e33eca3a746E
    local.set 2
    local.get 0
    i32.const 8
    i32.add
    i32.const 132510
    i32.const 11
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc16f49575b67c490E
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 0
    i32.load offset=12
    local.set 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.tee 4
    i32.const 132362
    i32.const 12
    call $mBufferSetBytes
    drop
    local.get 1
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h3397058d26f1f3feE
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h429f6f51f1a88ea6E
    local.get 3
    local.get 1
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17h980ae3b341ad5fd1E
    local.set 1
    call $cleanReturnData
    local.get 0
    local.get 1
    call $mBufferGetLength
    i32.store offset=24
    local.get 0
    i32.const 0
    i32.store offset=20
    local.get 0
    local.get 1
    i32.store offset=16
    block ;; label = @1
      local.get 0
      i32.const 16
      i32.add
      i32.const 131873
      i32.const 11
      call $_ZN257_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_owned..ManagedVecOwnedIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17habe78b5f3e7e44e0E
      i32.const 131873
      i32.const 11
      call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hfba986959943e7f6E
      local.tee 5
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 131873
      i32.const 11
      i32.const 131097
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb22766f67bb2d820E
      unreachable
    end
    local.get 5
    call $smallIntFinishUnsigned
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_retrieve_funds (;342;) (type 15)
    (local i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h74bba0c6dddaf049E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h41a9a0e82179c4beE
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h19d3b1dec4a421d1E
    local.set 4
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    local.get 0
    i32.const 12
    i32.add
    local.get 2
    local.get 3
    local.get 4
    call $_ZN5vault10ProxyTrait14retrieve_funds17h08f8d20d037e3766E
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h3397058d26f1f3feE
    local.set 3
    local.get 0
    i32.load offset=4
    local.set 1
    local.get 0
    i32.load
    local.set 2
    local.get 3
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h429f6f51f1a88ea6E
    local.get 2
    local.get 1
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17h980ae3b341ad5fd1E
    local.set 1
    call $cleanReturnData
    local.get 1
    call $mBufferGetLength
    drop
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_retrieve_funds_with_accept_func (;343;) (type 15)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    i32.const 1
    i32.const 132357
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5da29284acbec1cE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h19d3b1dec4a421d1E
    local.set 3
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17ha92307661ac3571aE
    local.set 4
    local.get 0
    local.get 1
    i32.store offset=32
    i32.const 132374
    i32.const 17
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6eaeb76854457359E
    local.set 5
    local.get 0
    i32.const 32
    i32.add
    call $_ZN100_$LT$vault..ProxyTo$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$16extract_proxy_to17hcb436e33eca3a746E
    local.set 6
    local.get 0
    i32.const 8
    i32.add
    i32.const 132603
    i32.const 33
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc16f49575b67c490E
    local.get 0
    i32.load offset=8
    local.set 7
    local.get 0
    i32.load offset=12
    local.set 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    i32.store offset=88
    local.get 2
    local.get 0
    i32.const 88
    i32.add
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17hdef11543219be7fbE
    local.get 1
    local.get 0
    i32.load offset=88
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
    local.get 0
    local.get 6
    i32.store offset=56
    local.get 0
    local.get 1
    i32.store offset=52
    local.get 0
    local.get 7
    i32.store offset=48
    local.get 0
    i32.const 88
    i32.add
    local.get 0
    i32.const 48
    i32.add
    local.get 3
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hb6d2b9cc5d604ab1E
    local.get 0
    i32.load offset=88
    local.set 6
    local.get 0
    i32.load offset=92
    local.tee 7
    i32.const 0
    local.get 5
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h7c4595fa7312a809E
    local.get 0
    i32.load offset=96
    local.set 8
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.set 3
    local.get 0
    local.get 4
    call $mBufferGetLength
    i32.store offset=44
    local.get 0
    i32.const 0
    i32.store offset=40
    local.get 0
    local.get 4
    i32.store offset=36
    local.get 0
    i32.const 48
    i32.add
    i32.const 8
    i32.add
    local.set 5
    local.get 0
    i32.const 88
    i32.add
    i32.const 1
    i32.add
    local.set 4
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 88
        i32.add
        local.get 0
        i32.const 36
        i32.add
        call $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2752cd60e61f5775E
        local.get 0
        i32.load8_u offset=88
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 0
        i32.const 72
        i32.add
        i32.const 8
        i32.add
        local.get 4
        i32.const 8
        i32.add
        i64.load align=1
        i64.store
        local.get 0
        local.get 4
        i64.load align=1
        i64.store offset=72
        local.get 5
        local.get 0
        i32.const 72
        i32.add
        call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$M$GT$$u20$as$u20$dharitri_sc..types..managed..wrapped..managed_vec_item..ManagedVecItem$GT$19borrow_from_payload17h5ed4b3110ea0a1f3E
        local.get 0
        i64.load offset=56
        local.set 9
        local.get 0
        i32.load offset=68
        local.set 1
        local.get 0
        i32.load offset=64
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
        local.set 2
        local.get 0
        local.get 1
        call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h458471db45f2ff8fE
        i32.store offset=100
        local.get 0
        local.get 9
        i64.store offset=88
        local.get 0
        local.get 2
        i32.store offset=96
        local.get 3
        local.get 0
        i32.const 88
        i32.add
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h112f1bbc62eaae7eE
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 3
    i32.store offset=28
    local.get 0
    local.get 8
    i32.store offset=24
    local.get 0
    local.get 7
    i32.store offset=20
    local.get 0
    local.get 6
    i32.store offset=16
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync292_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$dharitri_sc..types..interaction..tx_result_handler_list..original_result..OriginalResultMarker$LT$OriginalResult$GT$$GT$$GT$23execute_on_dest_context17hb8b47fc0ce5e37edE
    local.get 0
    i32.const 112
    i32.add
    global.set $__stack_pointer
  )
  (func $accept_funds_func (;344;) (type 15)
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
  )
  (func $forward_sync_accept_funds_multi_transfer (;345;) (type 15)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h47ac3ed1686d2edeE
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i32.const 132222
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1015204b24770ba6E
    local.set 2
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h452c95bd46dc491fE
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.set 3
    local.get 0
    local.get 2
    call $mBufferGetLength
    i32.store offset=56
    local.get 0
    i32.const 0
    i32.store offset=52
    local.get 0
    local.get 2
    i32.store offset=48
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.get 0
        i32.const 48
        i32.add
        call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h28771eb601f2e7b4E
        local.get 0
        i32.load offset=8
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 0
        local.get 0
        i64.load offset=24
        i64.store offset=40
        local.get 0
        local.get 0
        i64.load offset=16
        i64.store offset=32
        local.get 3
        local.get 0
        i32.const 32
        i32.add
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h112f1bbc62eaae7eE
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 1
    i32.store offset=60
    local.get 0
    i32.const 48
    i32.add
    local.get 0
    i32.const 60
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17h8915a96ee16e688bE
    local.get 0
    local.get 3
    i32.store offset=20
    local.get 0
    local.get 0
    i32.load offset=56
    i32.store offset=16
    local.get 0
    local.get 0
    i64.load offset=48 align=4
    i64.store offset=8 align=4
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync292_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$dharitri_sc..types..interaction..tx_result_handler_list..original_result..OriginalResultMarker$LT$OriginalResult$GT$$GT$$GT$23execute_on_dest_context17hb8b47fc0ce5e37edE
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $echo_args_async (;346;) (type 15)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h47ac3ed1686d2edeE
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=4
    local.get 0
    i32.const 4
    i32.add
    i32.const 132353
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h777d35a4e7daadfdE
    local.set 2
    local.get 0
    i32.load offset=4
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h452c95bd46dc491fE
    local.get 0
    local.get 1
    i32.store offset=28
    local.get 0
    i32.const 4
    i32.add
    local.get 0
    i32.const 28
    i32.add
    local.get 2
    call $_ZN5vault10ProxyTrait14echo_arguments17hfae17d0dd4052d58E
    local.get 0
    i32.load offset=12
    local.set 1
    local.get 0
    i32.load offset=4
    local.set 2
    local.get 0
    i32.load offset=8
    local.set 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.set 4
    local.get 0
    local.get 3
    i32.store offset=24
    local.get 0
    local.get 2
    i32.store offset=20
    local.get 0
    local.get 1
    i32.store offset=16
    local.get 0
    local.get 4
    i32.store offset=12
    local.get 0
    i32.const 18
    i32.store offset=8
    local.get 0
    i32.const 132391
    i32.store offset=4
    local.get 0
    i32.const 4
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17h5369aa1254715ed8E
    unreachable
  )
  (func $forward_async_accept_funds (;347;) (type 15)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h689ccc120464f7d5E
    local.get 0
    local.get 1
    i32.store offset=44
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    i32.const 44
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17h8915a96ee16e688bE
    local.get 0
    local.get 0
    i32.load offset=40
    i32.store offset=24
    local.get 0
    local.get 0
    i64.load offset=32 align=4
    i64.store offset=16
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17hb5190ab000a5699dE
    unreachable
  )
  (func $forward_async_accept_funds_half_payment (;348;) (type 15)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h689ccc120464f7d5E
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h7904b92e5aca853eE
    local.set 2
    local.get 0
    local.get 1
    i32.store offset=60
    local.get 0
    i32.const 48
    i32.add
    local.get 0
    i32.const 60
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17h8915a96ee16e688bE
    local.get 0
    local.get 2
    i32.store offset=28
    local.get 0
    local.get 0
    i32.load offset=56
    i32.store offset=40
    local.get 0
    local.get 0
    i64.load offset=48 align=4
    i64.store offset=32
    local.get 0
    local.get 0
    i32.load offset=8
    i32.store offset=24
    local.get 0
    local.get 0
    i64.load
    i64.store offset=16
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17hb5190ab000a5699dE
    unreachable
  )
  (func $forward_async_accept_funds_with_fees (;349;) (type 15)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h19d3b1dec4a421d1E
    local.set 2
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h689ccc120464f7d5E
    local.get 0
    i32.load offset=12
    local.set 3
    local.get 3
    local.get 3
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators196_$LT$impl$u20$core..ops..arith..Mul$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3mul17h49f0545fcdc66a46E
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u64$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h58424e477216e810E
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators196_$LT$impl$u20$core..ops..arith..Sub$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h03450025baf3b54dE
    local.set 3
    local.get 0
    local.get 1
    i32.store offset=60
    local.get 0
    i32.const 48
    i32.add
    local.get 0
    i32.const 60
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17h8915a96ee16e688bE
    local.get 0
    local.get 3
    i32.store offset=28
    local.get 0
    local.get 0
    i32.load offset=56
    i32.store offset=40
    local.get 0
    local.get 0
    i64.load offset=48 align=4
    i64.store offset=32
    local.get 0
    local.get 0
    i32.load offset=8
    i32.store offset=24
    local.get 0
    local.get 0
    i64.load
    i64.store offset=16
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17hb5190ab000a5699dE
    unreachable
  )
  (func $forward_async_retrieve_funds (;350;) (type 15)
    (local i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h74bba0c6dddaf049E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h41a9a0e82179c4beE
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h19d3b1dec4a421d1E
    local.set 4
    local.get 0
    local.get 1
    i32.store offset=28
    local.get 0
    i32.const 4
    i32.add
    local.get 0
    i32.const 28
    i32.add
    local.get 2
    local.get 3
    local.get 4
    call $_ZN5vault10ProxyTrait14retrieve_funds17h08f8d20d037e3766E
    local.get 0
    i32.load offset=12
    local.set 1
    local.get 0
    i32.load offset=4
    local.set 2
    local.get 0
    i32.load offset=8
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.set 5
    local.get 0
    local.get 4
    i32.store offset=24
    local.get 0
    local.get 2
    i32.store offset=20
    local.get 0
    local.get 1
    i32.store offset=16
    local.get 0
    local.get 5
    i32.store offset=12
    local.get 0
    i32.const 23
    i32.store offset=8
    local.get 0
    i32.const 132409
    i32.store offset=4
    local.get 0
    i32.const 4
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17h5369aa1254715ed8E
    unreachable
  )
  (func $send_funds_twice (;351;) (type 15)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h74bba0c6dddaf049E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h19d3b1dec4a421d1E
    local.set 3
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    local.get 3
    i32.store offset=12
    local.get 0
    local.get 1
    call $_ZN117_$LT$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hba02e43a18afd885E
    i32.store offset=60
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.const 60
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17h8915a96ee16e688bE
    local.get 2
    call $_ZN117_$LT$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hba02e43a18afd885E
    local.set 1
    local.get 3
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h458471db45f2ff8fE
    local.set 2
    local.get 0
    i32.load offset=24
    local.set 3
    local.get 0
    i64.load offset=16 align=4
    local.set 4
    local.get 0
    i32.const 44
    i32.add
    local.get 0
    i32.const 4
    i32.add
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 12
    i32.add
    call $_ZN16forwarder_legacy21fwd_call_async_legacy13CallbackProxy25send_funds_twice_callback17ha2f3f5c500803908E
    local.get 0
    local.get 4
    i64.store offset=32
    local.get 0
    local.get 2
    i32.store offset=28
    local.get 0
    local.get 1
    i32.store offset=24
    local.get 0
    i64.const 0
    i64.store offset=16
    local.get 0
    local.get 3
    i32.store offset=40
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17h7024b6ac07fc2da6E
    unreachable
  )
  (func $send_async_accept_multi_transfer (;352;) (type 15)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h47ac3ed1686d2edeE
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i32.const 132222
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1015204b24770ba6E
    local.set 2
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h452c95bd46dc491fE
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.set 3
    local.get 0
    local.get 2
    call $mBufferGetLength
    i32.store offset=56
    local.get 0
    i32.const 0
    i32.store offset=52
    local.get 0
    local.get 2
    i32.store offset=48
    loop ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.const 48
      i32.add
      call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h28771eb601f2e7b4E
      block ;; label = @2
        local.get 0
        i32.load offset=8
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i32.store offset=60
        local.get 0
        i32.const 48
        i32.add
        local.get 0
        i32.const 60
        i32.add
        call $_ZN5vault10ProxyTrait12accept_funds17h8915a96ee16e688bE
        local.get 0
        local.get 3
        i32.store offset=20
        local.get 0
        local.get 0
        i32.load offset=56
        i32.store offset=16
        local.get 0
        local.get 0
        i64.load offset=48 align=4
        i64.store offset=8 align=4
        local.get 0
        i32.const 8
        i32.add
        call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17he6fb1627721f38e5E
        unreachable
      end
      local.get 0
      local.get 0
      i64.load offset=24
      i64.store offset=40
      local.get 0
      local.get 0
      i64.load offset=16
      i64.store offset=32
      local.get 3
      local.get 0
      i32.const 32
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h112f1bbc62eaae7eE
      br 0 (;@1;)
    end
  )
  (func $callback_data (;353;) (type 15)
    (local i32 i32 i32 i32 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    local.get 0
    i32.const 8
    i32.add
    call $_ZN87_$LT$C$u20$as$u20$forwarder_legacy..fwd_call_async_legacy..ForwarderAsyncCallModule$GT$13callback_data17hdf70c986186dd12fE
    local.get 0
    i32.const 24
    i32.add
    local.set 1
    local.get 0
    i32.load offset=8
    local.set 2
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h3ebc65b850c08053E
    local.set 3
    i32.const 1
    local.set 4
    block ;; label = @1
      loop ;; label = @2
        local.get 4
        local.get 3
        i32.gt_u
        br_if 1 (;@1;)
        local.get 1
        local.get 2
        local.get 4
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$13get_unchecked17h3929d11eeeea097fE
        local.get 0
        i32.load offset=44
        local.set 5
        local.get 0
        i32.load offset=40
        local.set 6
        local.get 0
        i64.load offset=24
        local.set 7
        local.get 0
        i32.load offset=36
        local.set 8
        local.get 0
        i32.load offset=32
        call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hb7b3d57d749d7dc2E
        local.tee 9
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h070d4fb7a2440ae3E
        local.get 8
        local.get 9
        call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h442b1ad1aa54a38dE
        local.get 7
        local.get 9
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h8943c0ed88df0551E
        local.get 6
        local.get 9
        call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h9e70a5041c540ef9E
        local.get 5
        local.get 9
        call $_ZN145_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hbab1eac3e55cc948E
        local.get 9
        call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hb36790b2ea95e030E
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $callback_data_at_index (;354;) (type 15)
    (local i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h54916b9a9e41f603E
    local.set 1
    local.get 0
    i32.const 16
    i32.add
    call $_ZN87_$LT$C$u20$as$u20$forwarder_legacy..fwd_call_async_legacy..ForwarderAsyncCallModule$GT$13callback_data17hdf70c986186dd12fE
    block ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=16
      local.set 2
      local.get 0
      i32.load offset=20
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h3ebc65b850c08053E
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 24
      i32.add
      local.get 2
      local.get 1
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$13get_unchecked17h3929d11eeeea097fE
      local.get 0
      i32.load offset=44
      local.set 1
      local.get 0
      i32.load offset=40
      local.set 2
      local.get 0
      i64.load offset=24
      local.set 3
      local.get 0
      i32.load offset=36
      local.set 4
      local.get 0
      i32.load offset=32
      call $mBufferFinish
      drop
      local.get 4
      call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h9dc4eda92a1dcd60E
      local.get 3
      call $smallIntFinishUnsigned
      local.get 2
      call $bigIntFinishUnsigned
      local.get 0
      local.get 1
      call $mBufferGetLength
      i32.store offset=32
      local.get 0
      i32.const 0
      i32.store offset=28
      local.get 0
      local.get 1
      i32.store offset=24
      block ;; label = @2
        loop ;; label = @3
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.const 24
          i32.add
          call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h922afb9bcbd9c93bE
          local.get 0
          i32.load offset=8
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.load offset=12
          call $mBufferFinish
          drop
          br 0 (;@3;)
        end
      end
      local.get 0
      i32.const 48
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 133030
    i32.const 18
    call $signalError
    unreachable
  )
  (func $clear_callback_data (;355;) (type 15)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    local.set 1
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    local.get 0
    i32.const 8
    i32.add
    call $_ZN87_$LT$C$u20$as$u20$forwarder_legacy..fwd_call_async_legacy..ForwarderAsyncCallModule$GT$13callback_data17hdf70c986186dd12fE
    local.get 0
    i32.load offset=8
    local.set 2
    local.get 0
    i32.load offset=12
    local.tee 3
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h3ebc65b850c08053E
    local.set 4
    i32.const 1
    local.set 5
    block ;; label = @1
      loop ;; label = @2
        local.get 1
        i32.const 1
        i32.and
        br_if 1 (;@1;)
        local.get 5
        local.get 4
        i32.gt_u
        br_if 1 (;@1;)
        local.get 2
        local.get 5
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h7a67f22e4ad928adE
        call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h43b5341756400bc5E
        local.get 5
        local.get 4
        i32.ge_u
        local.set 1
        local.get 5
        local.get 5
        local.get 4
        i32.lt_u
        i32.add
        local.set 5
        br 0 (;@2;)
      end
    end
    local.get 3
    i32.const 0
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17h0aff6733c2542487E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_exec_accept_funds (;356;) (type 15)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h689ccc120464f7d5E
    local.get 0
    local.get 1
    i32.store offset=44
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    i32.const 44
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17h8915a96ee16e688bE
    local.get 0
    local.get 0
    i32.load offset=40
    i32.store offset=24
    local.get 0
    local.get 0
    i64.load offset=32 align=4
    i64.store offset=16
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17h6476b5e0fa1603bcE
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_exec_accept_single_dcdt (;357;) (type 15)
    (local i32 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$11single_dcdt17hbb112d698aad5f76E
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    i32.const 64
    i32.add
    local.get 0
    i32.const 20
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17h8915a96ee16e688bE
    local.get 0
    i32.load offset=68
    local.set 1
    local.get 0
    i32.load offset=72
    local.set 2
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load offset=64
          local.tee 3
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17hd2500b9f4d03b756E
          br_if 0 (;@3;)
          call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h3397058d26f1f3feE
          local.set 4
          br 1 (;@2;)
        end
        i64.const 0
        local.set 4
        local.get 0
        i32.load offset=12
        call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17hbc4896d36dd2f83cE
        br_if 1 (;@1;)
      end
      local.get 0
      local.get 2
      i32.store offset=48
      local.get 0
      local.get 0
      i32.const 12
      i32.add
      local.tee 5
      i32.store offset=44
      local.get 0
      local.get 0
      i32.const 8
      i32.add
      local.tee 6
      i32.store offset=40
      local.get 0
      i64.const 0
      i64.store offset=32
      local.get 0
      local.get 1
      i32.store offset=28
      local.get 0
      local.get 3
      i32.store offset=24
      local.get 0
      local.get 4
      i64.store offset=56
      local.get 0
      local.get 5
      i32.store offset=84
      local.get 0
      local.get 6
      i32.store offset=80
      local.get 0
      i64.const 0
      i64.store offset=72
      local.get 0
      local.get 0
      i32.const 52
      i32.add
      i32.store offset=88
      local.get 0
      local.get 1
      i32.store offset=68
      local.get 0
      local.get 3
      i32.store offset=64
      local.get 0
      local.get 0
      i32.const 56
      i32.add
      i32.store offset=92
      local.get 0
      i32.const 72
      i32.add
      local.get 2
      local.get 4
      local.get 3
      local.get 1
      call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17hdbf9223b33c0433bE
    end
    local.get 0
    i32.const 96
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_execu_accept_funds_with_fees (;358;) (type 15)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h19d3b1dec4a421d1E
    local.set 2
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17he031072ab1b682a7E
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 0
    i32.load offset=12
    local.set 4
    local.get 4
    local.get 4
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators196_$LT$impl$u20$core..ops..arith..Mul$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3mul17h49f0545fcdc66a46E
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u64$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h58424e477216e810E
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h5a3452e2166fceabE
    local.set 4
    local.get 0
    local.get 1
    i32.store offset=60
    local.get 0
    i32.const 48
    i32.add
    local.get 0
    i32.const 60
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17h8915a96ee16e688bE
    local.get 0
    local.get 4
    i32.store offset=28
    local.get 0
    local.get 3
    i32.store offset=24
    local.get 0
    i64.const 0
    i64.store offset=16
    local.get 0
    local.get 0
    i32.load offset=56
    i32.store offset=40
    local.get 0
    local.get 0
    i64.load offset=48 align=4
    i64.store offset=32
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17h6476b5e0fa1603bcE
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_exec_accept_funds_twice (;359;) (type 15)
    (local i32 i32 i64 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h689ccc120464f7d5E
    local.get 0
    i64.load offset=8
    local.set 2
    local.get 0
    i32.load offset=16
    local.set 3
    local.get 0
    i32.load offset=20
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h7904b92e5aca853eE
    local.set 4
    call $getGasLeft
    local.set 5
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
    i32.store offset=60
    local.get 0
    i32.const 48
    i32.add
    local.get 0
    i32.const 60
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17h8915a96ee16e688bE
    local.get 3
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
    local.set 6
    local.get 4
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h458471db45f2ff8fE
    local.set 7
    local.get 0
    local.get 5
    i64.const 1
    i64.shr_u
    local.tee 5
    i64.store offset=24
    local.get 0
    local.get 7
    i32.store offset=20
    local.get 0
    local.get 6
    i32.store offset=16
    local.get 0
    local.get 2
    i64.store offset=8
    local.get 0
    local.get 0
    i32.load offset=56
    i32.store offset=40
    local.get 0
    local.get 0
    i64.load offset=48 align=4
    i64.store offset=32
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17h70b575b4f3d28844E
    local.get 0
    local.get 1
    i32.store offset=60
    local.get 0
    i32.const 48
    i32.add
    local.get 0
    i32.const 60
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17h8915a96ee16e688bE
    local.get 0
    local.get 5
    i64.store offset=24
    local.get 0
    local.get 4
    i32.store offset=20
    local.get 0
    local.get 3
    i32.store offset=16
    local.get 0
    local.get 2
    i64.store offset=8
    local.get 0
    local.get 0
    i32.load offset=56
    i32.store offset=40
    local.get 0
    local.get 0
    i64.load offset=48 align=4
    i64.store offset=32
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17h70b575b4f3d28844E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_exec_accept_funds_return_values (;360;) (type 15)
    (local i32 i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h689ccc120464f7d5E
    local.get 0
    i32.const 8
    i32.add
    local.tee 2
    i32.load
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
    local.set 3
    call $getGasLeft
    local.set 4
    local.get 0
    local.get 1
    i32.store offset=60
    local.get 0
    i32.const 48
    i32.add
    local.get 0
    i32.const 60
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17h8915a96ee16e688bE
    local.get 0
    i32.const 16
    i32.add
    i32.const 8
    i32.add
    local.get 2
    i64.load
    i64.store
    local.get 0
    local.get 0
    i32.load offset=56
    i32.store offset=40
    local.get 0
    local.get 0
    i64.load
    i64.store offset=16
    local.get 0
    local.get 0
    i64.load offset=48 align=4
    i64.store offset=32
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17h6476b5e0fa1603bcE
    call $getGasLeft
    local.set 5
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17h82bf3edb1488bcb2E
    local.set 1
    local.get 4
    call $smallIntFinishUnsigned
    local.get 5
    call $smallIntFinishUnsigned
    local.get 1
    call $bigIntFinishUnsigned
    local.get 3
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h9dc4eda92a1dcd60E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $transf_exec_multi_accept_funds_v2 (;361;) (type 15)
    (local i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h47ac3ed1686d2edeE
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=24
    local.get 0
    i32.const 24
    i32.add
    i32.const 132222
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1015204b24770ba6E
    local.set 2
    local.get 0
    i32.load offset=24
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h452c95bd46dc491fE
    local.get 0
    local.get 1
    i32.store offset=48
    local.get 0
    i32.const 24
    i32.add
    local.get 0
    i32.const 48
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17h8915a96ee16e688bE
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.set 1
    local.get 0
    i32.load offset=28
    local.set 3
    local.get 0
    i32.load offset=24
    local.set 4
    local.get 0
    i32.load offset=32
    local.set 5
    local.get 0
    local.get 2
    call $mBufferGetLength
    i32.store offset=20
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    local.get 2
    i32.store offset=12
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 24
        i32.add
        local.get 0
        i32.const 12
        i32.add
        call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h28771eb601f2e7b4E
        local.get 0
        i32.load offset=24
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 0
        i64.load offset=40
        local.set 6
        local.get 0
        local.get 0
        i64.load offset=32
        i64.store offset=48
        local.get 0
        local.get 6
        i64.store offset=56
        local.get 1
        local.get 0
        i32.const 48
        i32.add
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h112f1bbc62eaae7eE
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 1
    i32.store offset=36
    local.get 0
    local.get 5
    i32.store offset=32
    local.get 0
    local.get 3
    i32.store offset=28
    local.get 0
    local.get 4
    i32.store offset=24
    local.get 0
    i32.const 24
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17h41c39d7db0187825E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_exec_reject_funds_multi_transfer (;362;) (type 15)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h47ac3ed1686d2edeE
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i32.const 132222
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1015204b24770ba6E
    local.set 2
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h452c95bd46dc491fE
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.set 3
    local.get 0
    local.get 2
    call $mBufferGetLength
    i32.store offset=56
    local.get 0
    i32.const 0
    i32.store offset=52
    local.get 0
    local.get 2
    i32.store offset=48
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.get 0
        i32.const 48
        i32.add
        call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h28771eb601f2e7b4E
        local.get 0
        i32.load offset=8
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 0
        local.get 0
        i64.load offset=24
        i64.store offset=40
        local.get 0
        local.get 0
        i64.load offset=16
        i64.store offset=32
        local.get 3
        local.get 0
        i32.const 32
        i32.add
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h112f1bbc62eaae7eE
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 1
    i32.store offset=60
    local.get 0
    i32.const 48
    i32.add
    local.get 0
    i32.const 60
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17h8915a96ee16e688bE
    local.get 0
    local.get 3
    i32.store offset=20
    local.get 0
    local.get 0
    i32.load offset=56
    i32.store offset=16
    local.get 0
    local.get 0
    i64.load offset=48 align=4
    i64.store offset=8 align=4
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17h41c39d7db0187825E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $transf_exec_multi_reject_funds (;363;) (type 15)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h47ac3ed1686d2edeE
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=24
    local.get 0
    i32.const 24
    i32.add
    i32.const 132222
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1015204b24770ba6E
    local.set 2
    local.get 0
    i32.load offset=24
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h452c95bd46dc491fE
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.set 3
    local.get 0
    local.get 2
    call $mBufferGetLength
    i32.store offset=20
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    local.get 2
    i32.store offset=12
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 24
        i32.add
        local.get 0
        i32.const 12
        i32.add
        call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h28771eb601f2e7b4E
        local.get 0
        i32.load offset=24
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 0
        local.get 0
        i64.load offset=40
        i64.store offset=56
        local.get 0
        local.get 0
        i64.load offset=32
        i64.store offset=48
        local.get 3
        local.get 0
        i32.const 48
        i32.add
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h112f1bbc62eaae7eE
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN100_$LT$vault..ProxyTo$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$16extract_proxy_to17hcb436e33eca3a746E
    local.set 2
    local.get 0
    i32.const 132521
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc16f49575b67c490E
    local.get 0
    local.get 3
    i32.store offset=36
    local.get 0
    local.get 2
    i32.store offset=32
    local.get 0
    local.get 0
    i64.load
    i64.store offset=24 align=4
    local.get 0
    i32.const 24
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17h41c39d7db0187825E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $changeOwnerAddress (;364;) (type 15)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132337
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    local.get 0
    i32.const 1
    i32.const 132483
    i32.const 9
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    i32.store offset=28
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
    local.set 2
    local.get 0
    i32.const 16
    i32.add
    i32.const 131533
    i32.const 18
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc16f49575b67c490E
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.load offset=16
    local.get 0
    i32.load offset=20
    local.get 0
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h65eef37f0e3b2307E
    local.get 0
    i32.load offset=12
    local.set 3
    local.get 0
    i32.load offset=8
    local.set 4
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h3397058d26f1f3feE
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h429f6f51f1a88ea6E
    local.get 4
    local.get 3
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17h980ae3b341ad5fd1E
    local.set 2
    call $cleanReturnData
    local.get 2
    call $mBufferGetLength
    drop
    local.get 0
    local.get 1
    i32.store offset=32
    local.get 0
    i32.const 32
    i32.add
    call $_ZN100_$LT$vault..ProxyTo$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$16extract_proxy_to17hcb436e33eca3a746E
    local.set 1
    local.get 0
    i32.const 132561
    i32.const 17
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc16f49575b67c490E
    local.get 0
    i32.load offset=4
    local.set 2
    local.get 0
    i32.load
    local.set 3
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h3397058d26f1f3feE
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h429f6f51f1a88ea6E
    local.get 3
    local.get 2
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17h980ae3b341ad5fd1E
    local.set 1
    call $cleanReturnData
    local.get 0
    local.get 1
    call $mBufferGetLength
    i32.store offset=44
    local.get 0
    i32.const 0
    i32.store offset=40
    local.get 0
    local.get 1
    i32.store offset=36
    local.get 0
    i32.const 36
    i32.add
    i32.const 131873
    i32.const 11
    call $_ZN257_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_owned..ManagedVecOwnedIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17habe78b5f3e7e44e0E
    i32.const 131873
    i32.const 11
    call $_ZN143_$LT$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h6848017938088f1bE
    call $mBufferFinish
    drop
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $deploy_contract (;365;) (type 15)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h47ac3ed1686d2edeE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h51932ae5b296ee6aE
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=20
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 20
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17he7135e24af7fc07cE
    local.get 0
    i32.load offset=12
    local.set 2
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 0
    i32.load offset=20
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h452c95bd46dc491fE
    local.get 0
    i32.const 20
    i32.add
    local.get 1
    local.get 3
    local.get 2
    call $_ZN16forwarder_legacy17fwd_deploy_legacy20DeployContractModule20perform_deploy_vault17heae319a796115845E
    local.get 0
    i32.const 20
    i32.add
    call $_ZN11dharitri_sc2io6finish12finish_multi17h229f8e956e6cc63dE
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $deploy_two_contracts (;366;) (type 15)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    local.get 0
    i32.const 4
    i32.add
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h51932ae5b296ee6aE
    local.tee 1
    i32.const 1
    local.get 0
    call $_ZN16forwarder_legacy17fwd_deploy_legacy20DeployContractModule20perform_deploy_vault17heae319a796115845E
    local.get 0
    i32.load offset=4
    local.set 2
    local.get 0
    i32.const 4
    i32.add
    local.get 1
    i32.const 1
    local.get 0
    call $_ZN16forwarder_legacy17fwd_deploy_legacy20DeployContractModule20perform_deploy_vault17heae319a796115845E
    local.get 0
    i32.load offset=4
    local.set 1
    local.get 2
    call $mBufferFinish
    drop
    local.get 1
    call $mBufferFinish
    drop
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $deploy_vault_from_source (;367;) (type 15)
    (local i32 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h47ac3ed1686d2edeE
    i32.const 0
    i32.const 132323
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=20
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 20
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17he7135e24af7fc07cE
    local.get 0
    i32.load offset=12
    local.set 2
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 0
    i32.load offset=20
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h452c95bd46dc491fE
    local.get 3
    local.get 2
    call $_ZN5vault10ProxyTrait4init17h399f137a6681caa1E
    local.set 2
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
    local.set 1
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h3397058d26f1f3feE
    local.set 4
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17h82bf3edb1488bcb2E
    local.set 3
    i32.const 0
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17hc172dfc29a395390E
    local.get 4
    local.get 3
    local.get 1
    i32.const -25
    local.get 2
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 5
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 6
    call $managedDeployFromSourceContract
    drop
    call $cleanReturnData
    local.get 0
    local.get 6
    call $_ZN11dharitri_sc5types11interaction7tx_exec13decode_result17h0c83e3a7c0a26c9eE
    local.get 0
    local.get 5
    i32.store offset=20
    local.get 0
    local.get 0
    i64.load
    i64.store offset=24 align=4
    local.get 0
    i32.const 20
    i32.add
    call $_ZN11dharitri_sc2io6finish12finish_multi17h229f8e956e6cc63dE
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $upgradeVault (;368;) (type 15)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h47ac3ed1686d2edeE
    i32.const 0
    i32.const 132337
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h51932ae5b296ee6aE
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=16
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17he7135e24af7fc07cE
    local.get 0
    i32.load offset=12
    local.set 3
    local.get 0
    i32.load offset=8
    local.set 4
    local.get 0
    i32.load offset=16
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h452c95bd46dc491fE
    local.get 0
    local.get 1
    i32.store offset=28
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.const 28
    i32.add
    local.get 4
    local.get 3
    call $_ZN5vault10ProxyTrait4init17h70d9e61994dccd97E
    call $getGasLeft
    local.set 5
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17h82bf3edb1488bcb2E
    local.set 1
    i32.const 256
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17hc172dfc29a395390E
    local.get 0
    i32.load offset=24
    local.get 5
    local.get 1
    local.get 2
    i32.const -25
    local.get 0
    i32.load offset=16
    i32.const -25
    call $managedUpgradeContract
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $upgrade_vault_from_source (;369;) (type 15)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h47ac3ed1686d2edeE
    i32.const 0
    i32.const 132337
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    i32.const 1
    i32.const 132323
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=16
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17he7135e24af7fc07cE
    local.get 0
    i32.load offset=12
    local.set 3
    local.get 0
    i32.load offset=8
    local.set 4
    local.get 0
    i32.load offset=16
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h452c95bd46dc491fE
    local.get 0
    local.get 1
    i32.store offset=28
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.const 28
    i32.add
    local.get 4
    local.get 3
    call $_ZN5vault10ProxyTrait4init17h70d9e61994dccd97E
    call $getGasLeft
    local.set 5
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17h82bf3edb1488bcb2E
    local.set 1
    i32.const 256
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17hc172dfc29a395390E
    local.get 0
    i32.load offset=24
    local.get 5
    local.get 1
    local.get 2
    i32.const -25
    local.get 0
    i32.load offset=16
    i32.const -25
    call $managedUpgradeFromSourceContract
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $getFungibleDcdtBalance (;370;) (type 15)
    (local i32)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132074
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5da29284acbec1cE
    local.set 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17h62b2c0d8946772e5E
    local.get 0
    i64.const 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$16get_dcdt_balance17he14de28ca942b803E
    call $bigIntFinishUnsigned
  )
  (func $getCurrentNftNonce (;371;) (type 15)
    (local i32 i32 i32)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132074
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5da29284acbec1cE
    local.set 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17h62b2c0d8946772e5E
    local.set 1
    local.get 0
    call $mBufferGetLength
    local.set 2
    local.get 1
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node26unsafe_buffer_load_address17h162fea53fa3b31a5E
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node35unsafe_buffer_load_token_identifier17hcfcca66f94458f18E
    i32.const 143193
    i32.const 143225
    local.get 2
    call $getCurrentDCDTNFTNonce
    call $smallIntFinishUnsigned
  )
  (func $send_dcdt (;372;) (type 15)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    i32.const 1
    i32.const 132207
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5da29284acbec1cE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h19d3b1dec4a421d1E
    local.set 3
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store offset=8
    local.get 0
    local.get 2
    i32.store offset=12
    local.get 0
    i32.const 4
    i32.add
    local.get 0
    i32.const 12
    i32.add
    i64.const 0
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$11direct_dcdt17h08442fc50685bf2cE
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $send_dcdt_with_fees (;373;) (type 15)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h19d3b1dec4a421d1E
    local.set 2
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$11single_dcdt17hbb112d698aad5f76E
    block ;; label = @1
      local.get 0
      i64.load offset=16
      i64.eqz
      br_if 0 (;@1;)
      i32.const 131226
      i32.const 28
      call $signalError
      unreachable
    end
    local.get 0
    i32.load offset=28
    local.set 1
    local.get 0
    local.get 0
    i32.load offset=24
    i32.store offset=12
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators196_$LT$impl$u20$core..ops..arith..Mul$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3mul17h49f0545fcdc66a46E
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u64$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h58424e477216e810E
    local.set 2
    local.get 0
    local.get 1
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h458471db45f2ff8fE
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h5a3452e2166fceabE
    i32.store offset=16
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 12
    i32.add
    i64.const 0
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$11direct_dcdt17h08442fc50685bf2cE
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $send_dcdt_twice (;374;) (type 15)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    i32.const 1
    i32.const 132207
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5da29284acbec1cE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h19d3b1dec4a421d1E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h19d3b1dec4a421d1E
    local.set 4
    local.get 0
    local.get 1
    i32.store
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store offset=8
    local.get 0
    local.get 2
    i32.store offset=12
    local.get 0
    local.get 0
    i32.const 12
    i32.add
    i64.const 0
    local.get 0
    i32.const 4
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$11direct_dcdt17h08442fc50685bf2cE
    local.get 0
    local.get 0
    i32.const 12
    i32.add
    i64.const 0
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$11direct_dcdt17h08442fc50685bf2cE
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $send_dcdt_direct_multi_transfer (;375;) (type 15)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h47ac3ed1686d2edeE
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=24
    local.get 0
    i32.const 24
    i32.add
    i32.const 132222
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1015204b24770ba6E
    local.set 2
    local.get 0
    i32.load offset=24
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h452c95bd46dc491fE
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.set 3
    local.get 0
    local.get 2
    call $mBufferGetLength
    i32.store offset=20
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    local.get 2
    i32.store offset=12
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 24
        i32.add
        local.get 0
        i32.const 12
        i32.add
        call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h28771eb601f2e7b4E
        local.get 0
        i32.load offset=24
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 0
        local.get 0
        i64.load offset=40
        i64.store offset=56
        local.get 0
        local.get 0
        i64.load offset=32
        i64.store offset=48
        local.get 3
        local.get 0
        i32.const 48
        i32.add
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h112f1bbc62eaae7eE
        br 0 (;@2;)
      end
    end
    local.get 1
    local.get 3
    call $getGasLeft
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    call $managedMultiTransferDCDTNFTExecute
    drop
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $issue_fungible_token (;376;) (type 15)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h8fb479e3ba81cdacE
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h51932ae5b296ee6aE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h51932ae5b296ee6aE
    local.set 2
    local.get 0
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h19d3b1dec4a421d1E
    i32.store offset=20
    local.get 0
    local.get 2
    i32.store offset=16
    local.get 0
    local.get 1
    i32.store offset=12
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$4rewa17h1c1d1cacc0c4bd38E
    local.set 1
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h55d72c18a6076eadE
    i32.store offset=24
    local.get 1
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h458471db45f2ff8fE
    local.set 1
    local.get 0
    i64.const 72340172838076673
    i64.store offset=32 align=4
    local.get 0
    i32.const 0
    i32.store offset=28
    local.get 0
    i32.const 52
    i32.add
    local.get 1
    local.get 0
    i32.const 12
    i32.add
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.const 20
    i32.add
    local.get 0
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14issue_fungible17h123ea21f3fd651d3E
    local.get 0
    i32.load offset=60
    local.set 1
    local.get 0
    i32.load offset=52
    local.set 2
    local.get 0
    i32.load offset=56
    local.set 3
    local.get 0
    i32.const 28
    i32.add
    local.get 0
    i32.const 24
    i32.add
    call $_ZN16forwarder_legacy15fwd_dcdt_legacy13CallbackProxy19dcdt_issue_callback17h2ee2b71334d859c7E
    local.get 0
    local.get 3
    i32.store offset=48
    local.get 0
    local.get 2
    i32.store offset=44
    local.get 0
    local.get 1
    i32.store offset=40
    local.get 0
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17h0d5a94dd782348c5E
    unreachable
  )
  (func $local_mint (;377;) (type 15)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132074
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5da29284acbec1cE
    local.set 1
    local.get 0
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h19d3b1dec4a421d1E
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i64.const 0
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_local_mint17h42b10c7375e6a845E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $local_burn (;378;) (type 15)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132074
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5da29284acbec1cE
    local.set 1
    local.get 0
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h19d3b1dec4a421d1E
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i64.const 0
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_local_burn17hd82a145561d32e49E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $get_dcdt_local_roles (;379;) (type 15)
    (local i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const -13
    local.set 1
    i32.const 0
    i32.const 132207
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5da29284acbec1cE
    call $getDCDTLocalRoles
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.set 3
    loop ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.const 133030
          i32.add
          i32.load8_u
          local.tee 4
          i32.const 3
          i32.shl
          i32.const 133064
          i32.add
          i64.load
          local.get 2
          i64.and
          i64.const 0
          i64.eq
          br_if 1 (;@2;)
          local.get 0
          i32.const 8
          i32.add
          local.get 4
          call $_ZN19dharitri_chain_core5types5flags15dcdt_local_role13DcdtLocalRole12as_role_name17h70f7a7dfdad9bf65E
          local.get 3
          local.get 0
          i32.load offset=8
          local.get 0
          i32.load offset=12
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6eaeb76854457359E
          call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h0c68549f9be90843E
          br 1 (;@2;)
        end
        local.get 3
        call $_ZN11dharitri_sc2io6finish12finish_multi17hf8d5a2af1111a5c7E
        local.get 0
        i32.const 16
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 1
      i32.const 1
      i32.add
      local.set 1
      br 0 (;@1;)
    end
  )
  (func $get_dcdt_token_data (;380;) (type 15)
    (local i32 i32 i32 i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    local.get 0
    i32.const 16
    i32.add
    i32.const 0
    i32.const 132215
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    i32.const 1
    i32.const 132207
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5da29284acbec1cE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h41a9a0e82179c4beE
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$19get_dcdt_token_data17h960794a6ae2360ccE
    local.get 0
    i32.load offset=40
    local.set 1
    local.get 0
    i32.load offset=36
    local.set 2
    local.get 0
    i32.load offset=32
    local.set 3
    local.get 0
    i32.load offset=28
    local.set 4
    local.get 0
    i32.load offset=24
    local.set 5
    local.get 0
    i32.load offset=20
    local.set 6
    local.get 0
    i64.load8_u offset=45
    local.set 7
    local.get 0
    i32.load offset=16
    local.set 8
    local.get 0
    i64.load8_u offset=44
    call $smallIntFinishUnsigned
    local.get 8
    call $bigIntFinishUnsigned
    local.get 7
    call $smallIntFinishSigned
    local.get 6
    call $mBufferFinish
    drop
    local.get 5
    call $mBufferFinish
    drop
    local.get 4
    call $mBufferFinish
    drop
    local.get 3
    call $mBufferFinish
    drop
    local.get 2
    call $bigIntFinishUnsigned
    call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hb7b3d57d749d7dc2E
    local.set 2
    local.get 0
    local.get 1
    call $mBufferGetLength
    i32.store offset=24
    local.get 0
    i32.const 0
    i32.store offset=20
    local.get 0
    local.get 1
    i32.store offset=16
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.get 0
        i32.const 16
        i32.add
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h922afb9bcbd9c93bE
        local.get 0
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=12
        local.get 2
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h070d4fb7a2440ae3E
        br 0 (;@2;)
      end
    end
    local.get 2
    call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hb36790b2ea95e030E
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $is_dcdt_frozen (;381;) (type 15)
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132215
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    i32.const 1
    i32.const 132207
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5da29284acbec1cE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h41a9a0e82179c4beE
    call $managedIsDCDTFrozen
    i32.const 0
    i32.gt_s
    i64.extend_i32_u
    call $smallIntFinishSigned
  )
  (func $is_dcdt_paused (;382;) (type 15)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132207
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5da29284acbec1cE
    call $managedIsDCDTPaused
    i32.const 0
    i32.gt_s
    i64.extend_i32_u
    call $smallIntFinishSigned
  )
  (func $is_dcdt_limited_transfer (;383;) (type 15)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132207
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5da29284acbec1cE
    call $managedIsDCDTLimitedTransfer
    i32.const 0
    i32.gt_s
    i64.extend_i32_u
    call $smallIntFinishSigned
  )
  (func $validate_token_identifier (;384;) (type 15)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132207
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5da29284acbec1cE
    call $validateTokenIdentifier
    i32.const 0
    i32.ne
    i64.extend_i32_u
    call $smallIntFinishSigned
  )
  (func $sft_issue (;385;) (type 15)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h8fb479e3ba81cdacE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h51932ae5b296ee6aE
    local.set 1
    local.get 0
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h51932ae5b296ee6aE
    i32.store offset=8
    local.get 0
    local.get 1
    i32.store offset=4
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$4rewa17h1c1d1cacc0c4bd38E
    local.set 1
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h55d72c18a6076eadE
    i32.store offset=12
    local.get 1
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h458471db45f2ff8fE
    local.set 1
    local.get 0
    i32.const 16843009
    i32.store offset=43 align=1
    local.get 0
    i32.const 16843009
    i32.store offset=40
    local.get 0
    i32.const 16
    i32.add
    local.get 1
    local.get 0
    i32.const 4
    i32.add
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 40
    i32.add
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$19issue_semi_fungible17ha402f9dfcec7eb5aE
    local.get 0
    i32.load offset=24
    local.set 1
    local.get 0
    i32.load offset=16
    local.set 2
    local.get 0
    i32.load offset=20
    local.set 3
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.const 12
    i32.add
    call $_ZN16forwarder_legacy14fwd_sft_legacy13CallbackProxy18sft_issue_callback17ha800ab724214b512E
    local.get 0
    local.get 3
    i32.store offset=36
    local.get 0
    local.get 2
    i32.store offset=32
    local.get 0
    local.get 1
    i32.store offset=28
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17h0d5a94dd782348c5E
    unreachable
  )
  (func $get_nft_balance (;386;) (type 15)
    (local i32 i64)
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132074
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5da29284acbec1cE
    local.set 0
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h41a9a0e82179c4beE
    local.set 1
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17h62b2c0d8946772e5E
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$16get_dcdt_balance17he14de28ca942b803E
    call $bigIntFinishUnsigned
  )
  (func $buy_nft (;387;) (type 15)
    (local i32 i32 i64 i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132068
    i32.const 6
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5da29284acbec1cE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h41a9a0e82179c4beE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h19d3b1dec4a421d1E
    local.set 3
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h689ccc120464f7d5E
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h55d72c18a6076eadE
    local.set 4
    local.get 0
    i64.load
    local.set 5
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17h62b2c0d8946772e5E
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$19get_dcdt_token_data17h960794a6ae2360ccE
    local.get 0
    i32.load offset=12
    local.tee 6
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h458471db45f2ff8fE
    local.tee 7
    local.get 7
    local.get 0
    i32.load offset=36
    call $bigIntMul
    local.get 7
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u64$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h58424e477216e810E
    local.set 7
    local.get 4
    local.get 1
    local.get 2
    local.get 3
    i64.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17h47dce8406dbbac38E
    block ;; label = @1
      block ;; label = @2
        local.get 7
        call $_ZN11dharitri_sc5types7managed5basic11big_num_cmp10bi_cmp_i6417haf2bddc3b816a674E
        i32.const 255
        i32.and
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        local.get 6
        call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h458471db45f2ff8fE
        local.set 1
        br 1 (;@1;)
      end
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load offset=8
          local.tee 1
          call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h3efe55ec1cac865cE
          br_if 0 (;@3;)
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
          local.set 3
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
          local.set 4
          local.get 0
          i32.load offset=32
          local.set 8
          block ;; label = @4
            local.get 5
            i64.const 0
            i64.ne
            br_if 0 (;@4;)
            local.get 8
            local.get 1
            local.get 7
            i64.const 0
            local.get 3
            local.get 4
            call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21transfer_dcdt_execute17hada019202a3f8c82E
            br 2 (;@2;)
          end
          local.get 8
          local.get 1
          local.get 5
          local.get 7
          i64.const 0
          local.get 3
          local.get 4
          call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17h47dce8406dbbac38E
          br 1 (;@2;)
        end
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
        local.set 1
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
        local.set 3
        local.get 0
        i32.load offset=32
        local.get 7
        i64.const 0
        local.get 1
        local.get 3
        call $managedTransferValueExecute
        drop
      end
      local.get 6
      call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h458471db45f2ff8fE
      local.get 7
      call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h5a3452e2166fceabE
      local.set 1
    end
    local.get 1
    call $bigIntFinishUnsigned
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $nft_issue (;388;) (type 15)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h8fb479e3ba81cdacE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h51932ae5b296ee6aE
    local.set 1
    local.get 0
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h51932ae5b296ee6aE
    i32.store offset=8
    local.get 0
    local.get 1
    i32.store offset=4
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$4rewa17h1c1d1cacc0c4bd38E
    local.set 1
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h55d72c18a6076eadE
    i32.store offset=12
    local.get 1
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h458471db45f2ff8fE
    local.set 1
    local.get 0
    i32.const 16843009
    i32.store offset=43 align=1
    local.get 0
    i32.const 16843009
    i32.store offset=40
    local.get 0
    i32.const 16
    i32.add
    local.get 1
    local.get 0
    i32.const 4
    i32.add
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 40
    i32.add
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$18issue_non_fungible17hd3935a184968270cE
    local.get 0
    i32.load offset=24
    local.set 1
    local.get 0
    i32.load offset=16
    local.set 2
    local.get 0
    i32.load offset=20
    local.set 3
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.const 12
    i32.add
    call $_ZN16forwarder_legacy14fwd_nft_legacy13CallbackProxy18nft_issue_callback17h5caa3f49e08a9339E
    local.get 0
    local.get 3
    i32.store offset=36
    local.get 0
    local.get 2
    i32.store offset=32
    local.get 0
    local.get 1
    i32.store offset=28
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17h0d5a94dd782348c5E
    unreachable
  )
  (func $nft_create (;389;) (type 15)
    call $checkNoPayment
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132074
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5da29284acbec1cE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h19d3b1dec4a421d1E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h51932ae5b296ee6aE
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h19d3b1dec4a421d1E
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h51932ae5b296ee6aE
    i32.const 5
    i32.const 132090
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h2534930449c7ff1aE
    i32.const 6
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h51932ae5b296ee6aE
    call $_ZN16forwarder_legacy14fwd_nft_legacy18ForwarderNftModule10nft_create17hb42eebb094fd6988E
    call $smallIntFinishUnsigned
  )
  (func $nft_create_compact (;390;) (type 15)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132074
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5da29284acbec1cE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h19d3b1dec4a421d1E
    local.set 2
    local.get 0
    i32.const 2
    i32.const 132090
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h2534930449c7ff1aE
    local.tee 3
    i32.const 16
    i32.shr_u
    i32.store8 offset=18
    local.get 0
    local.get 3
    i32.store16 offset=16
    local.get 0
    local.get 2
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    i32.store offset=20
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17h82bf3edb1488bcb2E
    i32.store offset=24
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.tee 1
    i32.store offset=28
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 12
    i32.add
    local.get 0
    i32.const 20
    i32.add
    local.get 0
    i32.const 24
    i32.add
    local.get 0
    i32.const 28
    i32.add
    local.get 0
    i32.const 16
    i32.add
    local.get 1
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_nft_create17h77c5319b0fd2303aE
    drop
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $nft_add_uris (;391;) (type 15)
    (local i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h47ac3ed1686d2edeE
    i32.const 0
    i32.const 132074
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5da29284acbec1cE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h41a9a0e82179c4beE
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=52
    local.get 0
    i32.const 52
    i32.add
    i32.const 132095
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h777d35a4e7daadfdE
    local.set 3
    local.get 0
    i32.load offset=52
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h452c95bd46dc491fE
    local.get 0
    local.get 1
    i32.store offset=48
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.set 1
    local.get 0
    local.get 3
    call $mBufferGetLength
    i32.store offset=60
    local.get 0
    i32.const 0
    i32.store offset=56
    local.get 0
    local.get 3
    i32.store offset=52
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 40
        i32.add
        local.get 0
        i32.const 52
        i32.add
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h922afb9bcbd9c93bE
        local.get 0
        i32.load offset=40
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 0
        i32.load offset=44
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
        br 0 (;@2;)
      end
    end
    block ;; label = @1
      local.get 1
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17hd2500b9f4d03b756E
      br_if 0 (;@1;)
      local.get 0
      i32.const 32
      i32.add
      i32.const 131551
      i32.const 13
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc16f49575b67c490E
      local.get 0
      i32.const 24
      i32.add
      local.get 0
      i32.load offset=32
      local.get 0
      i32.load offset=36
      local.get 0
      i32.const 48
      i32.add
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h39c935c26925aa3eE
      local.get 0
      i32.const 16
      i32.add
      local.get 0
      i32.load offset=24
      local.get 0
      i32.load offset=28
      local.get 2
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17ha45d3d35710bc7d0E
      local.get 0
      i32.load offset=20
      local.set 3
      local.get 0
      i32.load offset=16
      local.set 4
      local.get 0
      local.get 1
      call $mBufferGetLength
      i32.store offset=60
      local.get 0
      i32.const 0
      i32.store offset=56
      local.get 0
      local.get 1
      i32.store offset=52
      block ;; label = @2
        loop ;; label = @3
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.const 52
          i32.add
          call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h922afb9bcbd9c93bE
          local.get 0
          i32.load offset=8
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          local.get 4
          local.get 3
          local.get 0
          i32.load offset=12
          call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h9cf79d0d36a618edE
          local.get 0
          i32.load offset=4
          local.set 3
          local.get 0
          i32.load
          local.set 4
          br 0 (;@3;)
        end
      end
      local.get 4
      local.get 3
      call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17h715824254b18c59dE
    end
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $nft_update_attributes (;392;) (type 15)
    (local i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132074
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5da29284acbec1cE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h41a9a0e82179c4beE
    local.set 2
    local.get 0
    i32.const 2
    i32.const 132113
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h2534930449c7ff1aE
    local.tee 3
    i32.const 16
    i32.shr_u
    i32.store8 offset=46
    local.get 0
    local.get 3
    i32.store16 offset=44
    local.get 0
    local.get 1
    i32.store offset=40
    local.get 0
    i32.const 32
    i32.add
    i32.const 131564
    i32.const 23
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc16f49575b67c490E
    local.get 0
    i32.const 24
    i32.add
    local.get 0
    i32.load offset=32
    local.get 0
    i32.load offset=36
    local.get 0
    i32.const 40
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h39c935c26925aa3eE
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.load offset=24
    local.get 0
    i32.load offset=28
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17ha45d3d35710bc7d0E
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.load offset=16
    local.get 0
    i32.load offset=20
    local.get 0
    i32.const 44
    i32.add
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17haa09a9f07b1852c3E
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17h715824254b18c59dE
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $nft_decode_complex_attributes (;393;) (type 15)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 160
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE
    i32.const 6
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h47ac3ed1686d2edeE
    i32.const 0
    i32.const 132074
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5da29284acbec1cE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h19d3b1dec4a421d1E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h51932ae5b296ee6aE
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h19d3b1dec4a421d1E
    local.set 4
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h51932ae5b296ee6aE
    local.set 5
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h51932ae5b296ee6aE
    local.set 6
    local.get 0
    i32.const 6
    i32.store offset=136
    local.get 0
    i32.const 104
    i32.add
    local.get 0
    i32.const 136
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h9558c11a427c89aeE
    local.get 0
    i32.load offset=136
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h452c95bd46dc491fE
    local.get 0
    i32.load offset=120
    local.set 7
    local.get 0
    i32.load8_u offset=116
    local.set 8
    local.get 0
    i32.load offset=112
    local.set 9
    local.get 0
    i32.load offset=108
    local.set 10
    local.get 0
    i32.load offset=104
    local.set 11
    local.get 0
    local.get 5
    i32.store offset=100
    local.get 0
    local.get 4
    i32.store offset=96
    local.get 0
    local.get 3
    i32.store offset=92
    local.get 0
    local.get 2
    i32.store offset=88
    local.get 0
    local.get 1
    i32.store offset=84
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.tee 4
    local.get 6
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
    local.get 0
    i32.const 72
    i32.add
    i32.const 131520
    i32.const 13
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc16f49575b67c490E
    local.get 0
    i32.const 64
    i32.add
    local.get 0
    i32.load offset=72
    local.get 0
    i32.load offset=76
    local.get 0
    i32.const 84
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h39c935c26925aa3eE
    local.get 0
    i32.const 56
    i32.add
    local.get 0
    i32.load offset=64
    local.get 0
    i32.load offset=68
    local.get 0
    i32.const 88
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17ha619b7fe99d2b6b7E
    local.get 0
    i32.const 48
    i32.add
    local.get 0
    i32.load offset=56
    local.get 0
    i32.load offset=60
    local.get 0
    i32.const 92
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h6e10618d4f820b27E
    local.get 0
    i32.const 40
    i32.add
    local.get 0
    i32.load offset=48
    local.get 0
    i32.load offset=52
    local.get 0
    i32.const 96
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17ha619b7fe99d2b6b7E
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    i32.load offset=40
    local.get 0
    i32.load offset=44
    local.get 0
    i32.const 100
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h6e10618d4f820b27E
    local.get 0
    i32.load offset=36
    local.set 1
    local.get 0
    i32.load offset=32
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
    local.set 3
    local.get 11
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h279135d06c5a2fceE
    local.get 3
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h070d4fb7a2440ae3E
    local.get 10
    local.get 3
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h070d4fb7a2440ae3E
    block ;; label = @1
      block ;; label = @2
        local.get 9
        call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h3efe55ec1cac865cE
        br_if 0 (;@2;)
        local.get 9
        local.get 3
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h070d4fb7a2440ae3E
        br 1 (;@1;)
      end
      i32.const 4
      local.get 3
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h047164854aaea7adE
      local.get 3
      i32.const 131973
      i32.const 4
      call $mBufferAppendBytes
      drop
    end
    local.get 8
    local.get 3
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h8503467cc1a80ca7E
    local.get 7
    local.get 3
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h070d4fb7a2440ae3E
    local.get 1
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
    block ;; label = @1
      block ;; label = @2
        local.get 4
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17hd2500b9f4d03b756E
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        call $mBufferGetLength
        i32.store offset=112
        local.get 0
        i32.const 0
        i32.store offset=108
        local.get 0
        local.get 4
        i32.store offset=104
        loop ;; label = @3
          local.get 0
          i32.const 24
          i32.add
          local.get 0
          i32.const 104
          i32.add
          call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h922afb9bcbd9c93bE
          local.get 0
          i32.load offset=24
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 16
          i32.add
          local.get 2
          local.get 1
          local.get 0
          i32.load offset=28
          call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h9cf79d0d36a618edE
          local.get 0
          i32.load offset=20
          local.set 1
          local.get 0
          i32.load offset=16
          local.set 2
          br 0 (;@3;)
        end
      end
      local.get 0
      i32.const 8
      i32.add
      local.get 2
      local.get 1
      call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17ha3a4d92da6e15336E
      local.get 0
      i32.load offset=12
      local.set 1
      local.get 0
      i32.load offset=8
      local.set 2
    end
    local.get 2
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17hb10d2671b76cddbeE
    local.set 12
    local.get 0
    i32.const 104
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17h62b2c0d8946772e5E
    local.get 0
    i32.load offset=84
    local.get 12
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$19get_dcdt_token_data17h960794a6ae2360ccE
    i32.const 0
    local.set 2
    local.get 0
    i32.load offset=116
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
    local.tee 3
    call $mBufferGetLength
    local.set 1
    local.get 0
    i32.const 0
    i32.store8 offset=152
    local.get 0
    local.get 1
    i32.store offset=148
    local.get 0
    local.get 3
    i32.store offset=144
    local.get 0
    local.get 1
    i32.store offset=140
    local.get 0
    i32.const 0
    i32.store offset=136
    local.get 0
    i32.const 136
    i32.add
    i32.const 131928
    i32.const 32
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hc5e86102857795d5E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h3e1d3bad96e8d08dE
    local.set 1
    local.get 0
    i32.const 136
    i32.add
    i32.const 131928
    i32.const 32
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hc5e86102857795d5E
    local.set 3
    local.get 0
    local.get 0
    i32.const 136
    i32.add
    i32.const 131928
    i32.const 32
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hc5e86102857795d5E
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17hc47d11e365c3e1b5E
    call $_ZN11dharitri_sc5types7managed7wrapped16token_identifier24TokenIdentifier$LT$M$GT$7try_new17h45ed21fbc1db0871E
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          i32.load offset=4
          local.set 4
          local.get 0
          i32.const 0
          i32.store8 offset=159
          local.get 0
          i32.const 136
          i32.add
          local.get 0
          i32.const 159
          i32.add
          i32.const 1
          i32.const 131928
          i32.const 32
          call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hdd3ac06276fc71fdE
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                local.get 0
                i32.load8_u offset=159
                br_table 2 (;@4;) 1 (;@5;) 0 (;@6;)
              end
              i32.const 131928
              i32.const 32
              i32.const 131982
              i32.const 13
              call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hc276eab493f40fc5E
              unreachable
            end
            i32.const 1
            local.set 2
          end
          local.get 0
          i32.const 136
          i32.add
          i32.const 131928
          i32.const 32
          call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hc5e86102857795d5E
          local.set 5
          local.get 0
          i32.load offset=140
          local.get 0
          i32.load offset=136
          i32.ne
          br_if 1 (;@2;)
          block ;; label = @4
            local.get 0
            i32.load8_u offset=152
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            i32.const 0
            i32.store offset=143180
            i32.const 0
            i32.const 0
            i32.store8 offset=143184
          end
          local.get 11
          local.get 1
          call $bigIntCmp
          br_if 2 (;@1;)
          local.get 10
          local.get 3
          call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h00ec339cb3020c69E
          i32.eqz
          br_if 2 (;@1;)
          local.get 9
          local.get 4
          call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h00ec339cb3020c69E
          i32.eqz
          br_if 2 (;@1;)
          local.get 8
          i32.const 255
          i32.and
          local.get 2
          i32.ne
          br_if 2 (;@1;)
          local.get 7
          local.get 5
          call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h00ec339cb3020c69E
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 160
          i32.add
          global.set $__stack_pointer
          return
        end
        i32.const 131928
        i32.const 32
        i32.const 131960
        i32.const 13
        call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hc276eab493f40fc5E
        unreachable
      end
      i32.const 131928
      i32.const 32
      i32.const 131097
      i32.const 14
      call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hc276eab493f40fc5E
      unreachable
    end
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf249864f0cbba4dcE
    unreachable
  )
  (func $nft_add_quantity (;394;) (type 15)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132074
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5da29284acbec1cE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h41a9a0e82179c4beE
    local.set 2
    local.get 0
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h19d3b1dec4a421d1E
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_local_mint17h42b10c7375e6a845E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $nft_burn (;395;) (type 15)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132074
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5da29284acbec1cE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h41a9a0e82179c4beE
    local.set 2
    local.get 0
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h19d3b1dec4a421d1E
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_local_burn17hd82a145561d32e49E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $transfer_nft_via_async_call (;396;) (type 15)
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    i32.const 1
    i32.const 132074
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5da29284acbec1cE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h41a9a0e82179c4beE
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h19d3b1dec4a421d1E
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$28transfer_dcdt_via_async_call17ha5b742dbd67bcc28E
    unreachable
  )
  (func $transfer_nft_and_execute (;397;) (type 15)
    (local i32 i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h47ac3ed1686d2edeE
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    i32.const 1
    i32.const 132074
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5da29284acbec1cE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h41a9a0e82179c4beE
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h19d3b1dec4a421d1E
    local.set 4
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h51932ae5b296ee6aE
    local.set 5
    local.get 0
    i32.const 5
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 132127
    i32.const 9
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h777d35a4e7daadfdE
    local.set 6
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h452c95bd46dc491fE
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $getGasLeft
    local.get 5
    local.get 6
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17h47dce8406dbbac38E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $create_and_send (;398;) (type 15)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    i32.const 0
    i32.const 132111
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    i32.const 1
    i32.const 132074
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5da29284acbec1cE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h19d3b1dec4a421d1E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h51932ae5b296ee6aE
    local.set 4
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h19d3b1dec4a421d1E
    local.set 5
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h51932ae5b296ee6aE
    local.set 6
    i32.const 6
    i32.const 132090
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h2534930449c7ff1aE
    local.set 7
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h51932ae5b296ee6aE
    local.set 8
    local.get 0
    local.get 3
    i32.store offset=12
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    i32.const 4
    i32.add
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
    local.get 3
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h458471db45f2ff8fE
    local.get 4
    local.get 5
    local.get 6
    local.get 7
    local.get 8
    call $_ZN16forwarder_legacy14fwd_nft_legacy18ForwarderNftModule10nft_create17hb42eebb094fd6988E
    local.tee 9
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$11direct_dcdt17h08442fc50685bf2cE
    i32.const 132636
    i32.const 4
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h92c3cb07b8b2bd91E
    local.tee 2
    local.get 0
    i32.const 4
    i32.add
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h3e017c339f638e36E
    local.get 2
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17hfda65b1d37f99b85E
    local.get 2
    local.get 9
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17h9feef24c03b9c650E
    local.get 2
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17h7a88a7b46259e562E
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    call $managedWriteLog
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $setLocalRoles (;399;) (type 15)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h47ac3ed1686d2edeE
    i32.const 0
    i32.const 132215
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    i32.const 1
    i32.const 132074
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5da29284acbec1cE
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=28
    local.get 0
    i32.const 28
    i32.add
    i32.const 132311
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1015204b24770ba6E
    local.set 3
    local.get 0
    i32.load offset=28
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h452c95bd46dc491fE
    local.get 0
    local.get 2
    i32.store offset=24
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    local.get 3
    call $mBufferGetLength
    i32.store offset=36
    local.get 0
    i32.const 0
    i32.store offset=32
    local.get 0
    local.get 3
    i32.store offset=28
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 20
    i32.add
    local.get 0
    i32.const 24
    i32.add
    local.get 0
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$17set_special_roles17hb78e897a16bf2a2eE
    local.get 0
    i64.load offset=8
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.set 3
    local.get 0
    local.get 4
    i64.store offset=40 align=4
    local.get 0
    local.get 3
    i32.store offset=36
    local.get 0
    i32.const 21
    i32.store offset=32
    local.get 0
    i32.const 132290
    i32.store offset=28
    local.get 0
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17h75376f2f4fb0497fE
    unreachable
  )
  (func $unsetLocalRoles (;400;) (type 15)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h47ac3ed1686d2edeE
    i32.const 0
    i32.const 132215
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h075125a30ea44c70E
    local.set 1
    i32.const 1
    i32.const 132074
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5da29284acbec1cE
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=28
    local.get 0
    i32.const 28
    i32.add
    i32.const 132311
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1015204b24770ba6E
    local.set 3
    local.get 0
    i32.load offset=28
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h452c95bd46dc491fE
    local.get 0
    local.get 2
    i32.store offset=24
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    local.get 3
    call $mBufferGetLength
    i32.store offset=36
    local.get 0
    i32.const 0
    i32.store offset=32
    local.get 0
    local.get 3
    i32.store offset=28
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 20
    i32.add
    local.get 0
    i32.const 24
    i32.add
    local.get 0
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$19unset_special_roles17h8500ea2b6ced522cE
    local.get 0
    i64.load offset=8
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
    local.set 3
    local.get 0
    local.get 4
    i64.store offset=40 align=4
    local.get 0
    local.get 3
    i32.store offset=36
    local.get 0
    i32.const 21
    i32.store offset=32
    local.get 0
    i32.const 132290
    i32.store offset=28
    local.get 0
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17h75376f2f4fb0497fE
    unreachable
  )
  (func $lastIssuedToken (;401;) (type 15)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    local.get 0
    i32.const 8
    i32.add
    call $_ZN82_$LT$C$u20$as$u20$forwarder_legacy..fwd_storage_legacy..ForwarderStorageModule$GT$17last_issued_token17h08f50806ff4b14dbE
    local.tee 1
    call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17hd945d3b304b2eecdE
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17hc47d11e365c3e1b5E
    call $_ZN11dharitri_sc5types7managed7wrapped16token_identifier24TokenIdentifier$LT$M$GT$7try_new17h45ed21fbc1db0871E
    block ;; label = @1
      local.get 0
      i32.load offset=8
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      i32.const 131960
      i32.const 13
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4485310af3f37671E
      unreachable
    end
    local.get 0
    i32.load offset=12
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h9dc4eda92a1dcd60E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $lastErrorMessage (;402;) (type 15)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hfb04df912bc422e0E
    call $_ZN82_$LT$C$u20$as$u20$forwarder_legacy..fwd_storage_legacy..ForwarderStorageModule$GT$18last_error_message17hb055d812e27fc46aE
    call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17hd945d3b304b2eecdE
    call $mBufferFinish
    drop
  )
  (func $callBack (;403;) (type 15)
    (local i32 i32 i32 i32 i32 i64 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 176
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block ;; label = @1
      call $_ZN11dharitri_sc5types11interaction16callback_closure22cb_closure_storage_key17h0a98ee4601ef6377E
      local.tee 1
      call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17hd945d3b304b2eecdE
      local.tee 2
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17hd2500b9f4d03b756E
      br_if 0 (;@1;)
      local.get 2
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h657d18ac3772fe3dE
      local.tee 3
      call $mBufferGetLength
      local.set 2
      local.get 0
      i32.const 0
      i32.store8 offset=156
      local.get 0
      local.get 2
      i32.store offset=152
      local.get 0
      local.get 3
      i32.store offset=148
      local.get 0
      local.get 2
      i32.store offset=144
      local.get 0
      i32.const 0
      i32.store offset=140
      local.get 0
      i32.const 140
      i32.add
      i32.const 131111
      i32.const 25
      call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hc5e86102857795d5E
      local.set 4
      local.get 0
      i32.const 140
      i32.add
      i32.const 131111
      i32.const 25
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17ha27b9eaf5a5242e3E
      local.set 2
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
      local.set 3
      block ;; label = @2
        loop ;; label = @3
          local.get 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          local.get 0
          i32.const 140
          i32.add
          i32.const 131111
          i32.const 25
          call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hc5e86102857795d5E
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
          local.get 2
          i32.const -1
          i32.add
          local.set 2
          br 0 (;@3;)
        end
      end
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  block ;; label = @8
                    block ;; label = @9
                      block ;; label = @10
                        local.get 0
                        i32.load offset=144
                        local.get 0
                        i32.load offset=140
                        i32.ne
                        br_if 0 (;@10;)
                        block ;; label = @11
                          local.get 0
                          i32.load8_u offset=156
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.const 0
                          i32.store offset=143180
                          i32.const 0
                          i32.const 0
                          i32.store8 offset=143184
                        end
                        local.get 1
                        call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h43b5341756400bc5E
                        local.get 0
                        i32.const 40
                        i32.add
                        local.get 4
                        call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h8db9673d074830f9E
                        local.get 0
                        i32.load offset=72
                        i32.eqz
                        br_if 9 (;@1;)
                        local.get 0
                        i32.const 140
                        i32.add
                        local.get 4
                        call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h8db9673d074830f9E
                        local.get 0
                        i32.load offset=172
                        i32.eqz
                        br_if 9 (;@1;)
                        block ;; label = @11
                          block ;; label = @12
                            block ;; label = @13
                              local.get 0
                              i32.const 140
                              i32.add
                              i32.const 132391
                              i32.const 18
                              call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h8bfd3d4707cd0fb8E
                              br_if 0 (;@13;)
                              local.get 0
                              i32.const 140
                              i32.add
                              i32.const 132409
                              i32.const 23
                              call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h8bfd3d4707cd0fb8E
                              br_if 1 (;@12;)
                              local.get 0
                              i32.const 140
                              i32.add
                              i32.const 132432
                              i32.const 25
                              call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h8bfd3d4707cd0fb8E
                              i32.eqz
                              br_if 2 (;@11;)
                              local.get 0
                              local.get 3
                              call $mBufferGetLength
                              i32.store offset=84
                              local.get 0
                              i32.const 0
                              i32.store offset=80
                              local.get 0
                              local.get 3
                              i32.store offset=76
                              call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE
                              local.get 0
                              i32.const 76
                              i32.add
                              i32.const 132111
                              i32.const 2
                              call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1fbdb2c187bb9a5cE
                              local.set 2
                              local.get 0
                              i32.const 76
                              i32.add
                              call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h2d3b809a998ac7a5E
                              local.set 3
                              local.get 0
                              i32.const 76
                              i32.add
                              call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h067d26e6abab87b3E
                              local.set 1
                              local.get 0
                              i32.load offset=80
                              local.get 0
                              i32.load offset=84
                              call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hf6ef9181c3420c97E
                              local.get 0
                              local.get 2
                              call $_ZN117_$LT$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hba02e43a18afd885E
                              i32.store offset=124
                              local.get 0
                              i32.const 128
                              i32.add
                              local.get 0
                              i32.const 124
                              i32.add
                              call $_ZN5vault10ProxyTrait12accept_funds17h8915a96ee16e688bE
                              local.get 3
                              call $_ZN117_$LT$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hba02e43a18afd885E
                              local.set 2
                              local.get 0
                              local.get 1
                              call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h458471db45f2ff8fE
                              i32.store offset=100
                              local.get 0
                              local.get 2
                              i32.store offset=96
                              local.get 0
                              i64.const 0
                              i64.store offset=88
                              local.get 0
                              local.get 0
                              i32.load offset=136
                              i32.store offset=112
                              local.get 0
                              local.get 0
                              i64.load offset=128 align=4
                              i64.store offset=104
                              local.get 0
                              i32.const 88
                              i32.add
                              call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17hb5190ab000a5699dE
                              unreachable
                            end
                            call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE
                            i32.const 0
                            call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h47ac3ed1686d2edeE
                            local.get 0
                            i32.const 0
                            i32.store offset=128
                            local.get 0
                            i32.const 88
                            i32.add
                            local.get 0
                            i32.const 128
                            i32.add
                            call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h33c5800d32a06963E
                            local.get 0
                            i32.load offset=128
                            call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h452c95bd46dc491fE
                            local.get 0
                            i32.load offset=96
                            local.set 4
                            local.get 0
                            i32.load offset=92
                            local.set 2
                            local.get 0
                            i32.load offset=88
                            local.set 1
                            local.get 3
                            call $mBufferGetLength
                            local.set 3
                            call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE
                            i32.const 0
                            local.get 3
                            call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hf6ef9181c3420c97E
                            block ;; label = @13
                              block ;; label = @14
                                local.get 1
                                i32.const 1
                                i32.and
                                br_if 0 (;@14;)
                                i32.const 132471
                                i32.const 7
                                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6eaeb76854457359E
                                call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$16from_single_item17h42b8d8b3546fea48E
                                local.tee 3
                                local.get 2
                                call $mBufferAppend
                                drop
                                br 1 (;@13;)
                              end
                              i32.const 132478
                              i32.const 5
                              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6eaeb76854457359E
                              call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$16from_single_item17h42b8d8b3546fea48E
                              local.set 3
                              local.get 0
                              local.get 2
                              i32.const 24
                              i32.shl
                              local.get 2
                              i32.const 65280
                              i32.and
                              i32.const 8
                              i32.shl
                              i32.or
                              local.get 2
                              i32.const 8
                              i32.shr_u
                              i32.const 65280
                              i32.and
                              local.get 2
                              i32.const 24
                              i32.shr_u
                              i32.or
                              i32.or
                              i32.store offset=88
                              local.get 3
                              local.get 0
                              i32.const 88
                              i32.add
                              i32.const 4
                              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6eaeb76854457359E
                              call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
                              local.get 3
                              local.get 4
                              call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he5b03e55ef5954b5E
                            end
                            local.get 3
                            call $_ZN11dharitri_sc2io6finish12finish_multi17hf8d5a2af1111a5c7E
                            br 11 (;@1;)
                          end
                          local.get 3
                          call $mBufferGetLength
                          local.set 2
                          call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE
                          i32.const 0
                          local.get 2
                          call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hf6ef9181c3420c97E
                          local.get 0
                          i32.const 88
                          i32.add
                          call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h689ccc120464f7d5E
                          local.get 0
                          i64.load offset=88
                          local.set 5
                          local.get 0
                          i32.load offset=100
                          local.set 2
                          local.get 0
                          local.get 0
                          i32.load offset=96
                          i32.store offset=128
                          local.get 0
                          local.get 2
                          i32.store offset=88
                          i32.const 132409
                          i32.const 23
                          call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h92c3cb07b8b2bd91E
                          local.tee 2
                          local.get 0
                          i32.const 128
                          i32.add
                          call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h88bb164a1fa973daE
                          local.get 2
                          local.get 5
                          call $_ZN11dharitri_sc8log_util21serialize_event_topic17h9feef24c03b9c650E
                          local.get 2
                          local.get 0
                          i32.const 88
                          i32.add
                          call $_ZN11dharitri_sc8log_util21serialize_event_topic17h7a88a7b46259e562E
                          local.get 2
                          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
                          call $managedWriteLog
                          local.get 0
                          i32.const 8
                          i32.add
                          call $_ZN87_$LT$C$u20$as$u20$forwarder_legacy..fwd_call_async_legacy..ForwarderAsyncCallModule$GT$13callback_data17hdf70c986186dd12fE
                          local.get 0
                          i32.load offset=8
                          local.set 2
                          local.get 0
                          i32.load offset=12
                          local.set 3
                          i32.const 132409
                          i32.const 23
                          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6eaeb76854457359E
                          local.set 1
                          local.get 0
                          i32.load offset=88
                          local.set 4
                          local.get 0
                          i32.load offset=128
                          local.set 6
                          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h51f244cac470edb8E
                          local.set 7
                          local.get 2
                          local.get 3
                          call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h3ebc65b850c08053E
                          i32.const 1
                          i32.add
                          local.tee 8
                          call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h7a67f22e4ad928adE
                          local.set 9
                          local.get 1
                          call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hb7b3d57d749d7dc2E
                          local.tee 2
                          call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h070d4fb7a2440ae3E
                          local.get 6
                          local.get 2
                          call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h442b1ad1aa54a38dE
                          local.get 5
                          local.get 2
                          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h8943c0ed88df0551E
                          local.get 4
                          local.get 2
                          call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h9e70a5041c540ef9E
                          local.get 7
                          local.get 2
                          call $_ZN145_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hbab1eac3e55cc948E
                          local.get 9
                          local.get 2
                          call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h7a801971403d72c0E
                          local.get 3
                          local.get 8
                          call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17h0aff6733c2542487E
                          br 10 (;@1;)
                        end
                        local.get 0
                        i32.const 140
                        i32.add
                        local.get 4
                        call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h8db9673d074830f9E
                        local.get 0
                        i32.load offset=172
                        i32.eqz
                        br_if 9 (;@1;)
                        block ;; label = @11
                          local.get 0
                          i32.const 140
                          i32.add
                          i32.const 132188
                          i32.const 19
                          call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h8bfd3d4707cd0fb8E
                          i32.eqz
                          br_if 0 (;@11;)
                          call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE
                          i32.const 0
                          call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h47ac3ed1686d2edeE
                          local.get 0
                          i32.const 0
                          i32.store offset=76
                          local.get 0
                          i32.const 88
                          i32.add
                          local.get 0
                          i32.const 76
                          i32.add
                          call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h13aec8f3f39cd78bE
                          local.get 0
                          i32.load offset=76
                          call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h452c95bd46dc491fE
                          local.get 0
                          i32.load offset=96
                          local.set 4
                          local.get 0
                          i32.load offset=88
                          local.set 1
                          local.get 0
                          local.get 3
                          call $mBufferGetLength
                          i32.store offset=136
                          local.get 0
                          i32.const 0
                          i32.store offset=132
                          local.get 0
                          local.get 3
                          i32.store offset=128
                          call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE
                          local.get 0
                          i32.const 128
                          i32.add
                          i32.const 132105
                          i32.const 6
                          call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1fbdb2c187bb9a5cE
                          local.set 3
                          local.get 0
                          i32.load offset=132
                          local.get 0
                          i32.load offset=136
                          call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hf6ef9181c3420c97E
                          local.get 0
                          i32.const 16
                          i32.add
                          call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17he031072ab1b682a7E
                          local.get 0
                          i32.load offset=16
                          local.set 2
                          block ;; label = @12
                            local.get 1
                            i32.const 1
                            i32.and
                            br_if 0 (;@12;)
                            call $_ZN82_$LT$C$u20$as$u20$forwarder_legacy..fwd_storage_legacy..ForwarderStorageModule$GT$17last_issued_token17h08f50806ff4b14dbE
                            local.set 3
                            local.get 2
                            call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h3efe55ec1cac865cE
                            br_if 3 (;@9;)
                            local.get 3
                            local.get 2
                            call $_ZN11dharitri_sc7storage11storage_set11storage_set17hfaf78481ca1948fcE
                            call $_ZN82_$LT$C$u20$as$u20$forwarder_legacy..fwd_storage_legacy..ForwarderStorageModule$GT$18last_error_message17hb055d812e27fc46aE
                            call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h43b5341756400bc5E
                            br 11 (;@1;)
                          end
                          local.get 0
                          i32.load offset=20
                          local.set 1
                          local.get 2
                          call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h3efe55ec1cac865cE
                          i32.eqz
                          br_if 9 (;@2;)
                          local.get 1
                          call $_ZN4core3cmp10PartialOrd2gt17h2247c45792eb735bE
                          br_if 3 (;@8;)
                          br 9 (;@2;)
                        end
                        local.get 0
                        i32.const 140
                        i32.add
                        local.get 4
                        call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h8db9673d074830f9E
                        local.get 0
                        i32.load offset=172
                        i32.eqz
                        br_if 9 (;@1;)
                        block ;; label = @11
                          local.get 0
                          i32.const 140
                          i32.add
                          i32.const 132170
                          i32.const 18
                          call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h8bfd3d4707cd0fb8E
                          i32.eqz
                          br_if 0 (;@11;)
                          call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE
                          i32.const 0
                          call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h47ac3ed1686d2edeE
                          local.get 0
                          i32.const 0
                          i32.store offset=76
                          local.get 0
                          i32.const 88
                          i32.add
                          local.get 0
                          i32.const 76
                          i32.add
                          call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h8c8bd4c9e26a12c8E
                          local.get 0
                          i32.load offset=76
                          call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h452c95bd46dc491fE
                          local.get 0
                          i32.load offset=96
                          local.set 1
                          local.get 0
                          i32.load offset=92
                          local.set 4
                          local.get 0
                          i32.load offset=88
                          local.set 2
                          local.get 0
                          local.get 3
                          call $mBufferGetLength
                          i32.store offset=136
                          local.get 0
                          i32.const 0
                          i32.store offset=132
                          local.get 0
                          local.get 3
                          i32.store offset=128
                          call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE
                          local.get 0
                          i32.const 128
                          i32.add
                          i32.const 132105
                          i32.const 6
                          call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1fbdb2c187bb9a5cE
                          local.set 3
                          local.get 0
                          i32.load offset=132
                          local.get 0
                          i32.load offset=136
                          call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hf6ef9181c3420c97E
                          block ;; label = @12
                            local.get 2
                            i32.const 1
                            i32.and
                            br_if 0 (;@12;)
                            call $_ZN82_$LT$C$u20$as$u20$forwarder_legacy..fwd_storage_legacy..ForwarderStorageModule$GT$17last_issued_token17h08f50806ff4b14dbE
                            local.get 4
                            call $_ZN11dharitri_sc7storage11storage_set11storage_set17hfaf78481ca1948fcE
                            call $_ZN82_$LT$C$u20$as$u20$forwarder_legacy..fwd_storage_legacy..ForwarderStorageModule$GT$18last_error_message17hb055d812e27fc46aE
                            call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h43b5341756400bc5E
                            br 11 (;@1;)
                          end
                          local.get 0
                          i32.const 24
                          i32.add
                          call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17he031072ab1b682a7E
                          local.get 0
                          i32.load offset=28
                          local.set 2
                          local.get 0
                          i32.load offset=24
                          call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h3efe55ec1cac865cE
                          i32.eqz
                          br_if 8 (;@3;)
                          local.get 2
                          call $_ZN4core3cmp10PartialOrd2gt17h2247c45792eb735bE
                          br_if 4 (;@7;)
                          br 8 (;@3;)
                        end
                        local.get 0
                        i32.const 140
                        i32.add
                        local.get 4
                        call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h8db9673d074830f9E
                        local.get 0
                        i32.load offset=172
                        i32.eqz
                        br_if 9 (;@1;)
                        block ;; label = @11
                          local.get 0
                          i32.const 140
                          i32.add
                          i32.const 132050
                          i32.const 18
                          call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h8bfd3d4707cd0fb8E
                          i32.eqz
                          br_if 0 (;@11;)
                          call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE
                          i32.const 0
                          call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h47ac3ed1686d2edeE
                          local.get 0
                          i32.const 0
                          i32.store offset=76
                          local.get 0
                          i32.const 88
                          i32.add
                          local.get 0
                          i32.const 76
                          i32.add
                          call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h8c8bd4c9e26a12c8E
                          local.get 0
                          i32.load offset=76
                          call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h452c95bd46dc491fE
                          local.get 0
                          i32.load offset=96
                          local.set 1
                          local.get 0
                          i32.load offset=92
                          local.set 4
                          local.get 0
                          i32.load offset=88
                          local.set 2
                          local.get 0
                          local.get 3
                          call $mBufferGetLength
                          i32.store offset=136
                          local.get 0
                          i32.const 0
                          i32.store offset=132
                          local.get 0
                          local.get 3
                          i32.store offset=128
                          call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE
                          local.get 0
                          i32.const 128
                          i32.add
                          i32.const 132105
                          i32.const 6
                          call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1fbdb2c187bb9a5cE
                          local.set 3
                          local.get 0
                          i32.load offset=132
                          local.get 0
                          i32.load offset=136
                          call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hf6ef9181c3420c97E
                          block ;; label = @12
                            local.get 2
                            i32.const 1
                            i32.and
                            br_if 0 (;@12;)
                            call $_ZN82_$LT$C$u20$as$u20$forwarder_legacy..fwd_storage_legacy..ForwarderStorageModule$GT$17last_issued_token17h08f50806ff4b14dbE
                            local.get 4
                            call $_ZN11dharitri_sc7storage11storage_set11storage_set17hfaf78481ca1948fcE
                            call $_ZN82_$LT$C$u20$as$u20$forwarder_legacy..fwd_storage_legacy..ForwarderStorageModule$GT$18last_error_message17hb055d812e27fc46aE
                            call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h43b5341756400bc5E
                            br 11 (;@1;)
                          end
                          local.get 0
                          i32.const 32
                          i32.add
                          call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17he031072ab1b682a7E
                          local.get 0
                          i32.load offset=36
                          local.set 2
                          local.get 0
                          i32.load offset=32
                          call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h3efe55ec1cac865cE
                          i32.eqz
                          br_if 7 (;@4;)
                          local.get 2
                          call $_ZN4core3cmp10PartialOrd2gt17h2247c45792eb735bE
                          br_if 5 (;@6;)
                          br 7 (;@4;)
                        end
                        local.get 0
                        i32.const 140
                        i32.add
                        local.get 4
                        call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h8db9673d074830f9E
                        local.get 0
                        i32.load offset=172
                        i32.eqz
                        br_if 9 (;@1;)
                        local.get 0
                        i32.const 140
                        i32.add
                        i32.const 132290
                        i32.const 21
                        call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h8bfd3d4707cd0fb8E
                        i32.eqz
                        br_if 5 (;@5;)
                        call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE
                        i32.const 0
                        call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h47ac3ed1686d2edeE
                        local.get 0
                        i32.const 0
                        i32.store offset=128
                        local.get 0
                        i32.const 88
                        i32.add
                        local.get 0
                        i32.const 128
                        i32.add
                        call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h13aec8f3f39cd78bE
                        local.get 0
                        i32.load offset=128
                        call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h452c95bd46dc491fE
                        local.get 0
                        i32.load offset=96
                        local.set 1
                        local.get 0
                        i32.load offset=88
                        local.set 2
                        local.get 3
                        call $mBufferGetLength
                        local.set 3
                        call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb5edbebb8680428cE
                        i32.const 0
                        local.get 3
                        call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hf6ef9181c3420c97E
                        call $_ZN82_$LT$C$u20$as$u20$forwarder_legacy..fwd_storage_legacy..ForwarderStorageModule$GT$18last_error_message17hb055d812e27fc46aE
                        local.set 3
                        block ;; label = @11
                          local.get 2
                          i32.const 1
                          i32.and
                          br_if 0 (;@11;)
                          local.get 3
                          call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h43b5341756400bc5E
                          br 10 (;@1;)
                        end
                        local.get 3
                        local.get 1
                        call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hee0c482e78f90fb1E
                        br 9 (;@1;)
                      end
                      i32.const 131111
                      i32.const 25
                      i32.const 131097
                      i32.const 14
                      call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hc276eab493f40fc5E
                      unreachable
                    end
                    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$11unwrap_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17hb4b33bf3419d66b5E
                    unreachable
                  end
                  local.get 3
                  local.get 1
                  call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$11direct_rewa17h6982657448099880E
                  br 5 (;@2;)
                end
                local.get 3
                local.get 2
                call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$11direct_rewa17h6982657448099880E
                br 3 (;@3;)
              end
              local.get 3
              local.get 2
              call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$11direct_rewa17h6982657448099880E
              br 1 (;@4;)
            end
            i32.const 132236
            i32.const 54
            call $signalError
            unreachable
          end
          call $_ZN82_$LT$C$u20$as$u20$forwarder_legacy..fwd_storage_legacy..ForwarderStorageModule$GT$18last_error_message17hb055d812e27fc46aE
          local.get 1
          call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hee0c482e78f90fb1E
          br 2 (;@1;)
        end
        call $_ZN82_$LT$C$u20$as$u20$forwarder_legacy..fwd_storage_legacy..ForwarderStorageModule$GT$18last_error_message17hb055d812e27fc46aE
        local.get 1
        call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hee0c482e78f90fb1E
        br 1 (;@1;)
      end
      call $_ZN82_$LT$C$u20$as$u20$forwarder_legacy..fwd_storage_legacy..ForwarderStorageModule$GT$18last_error_message17hb055d812e27fc46aE
      local.get 4
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hee0c482e78f90fb1E
    end
    local.get 0
    i32.const 176
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN4core9panicking9panic_fmt17h931ec2537c26fa22E (;404;) (type 15)
    call $rust_begin_unwind
    unreachable
  )
  (func $_ZN4core5slice5index22slice_index_order_fail8do_panic7runtime17h3eb440503b756a77E (;405;) (type 2) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17h931ec2537c26fa22E
    unreachable
  )
  (func $memcpy (;406;) (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i32.const 16
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        br 1 (;@1;)
      end
      block ;; label = @2
        local.get 0
        i32.const 0
        local.get 0
        i32.sub
        i32.const 3
        i32.and
        local.tee 4
        i32.add
        local.tee 5
        local.get 0
        i32.le_u
        br_if 0 (;@2;)
        local.get 4
        i32.const -1
        i32.add
        local.set 6
        local.get 0
        local.set 3
        local.get 1
        local.set 7
        block ;; label = @3
          local.get 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.set 8
          local.get 0
          local.set 3
          local.get 1
          local.set 7
          loop ;; label = @4
            local.get 3
            local.get 7
            i32.load8_u
            i32.store8
            local.get 7
            i32.const 1
            i32.add
            local.set 7
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            local.get 8
            i32.const -1
            i32.add
            local.tee 8
            br_if 0 (;@4;)
          end
        end
        local.get 6
        i32.const 7
        i32.lt_u
        br_if 0 (;@2;)
        loop ;; label = @3
          local.get 3
          local.get 7
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 1
          i32.add
          local.get 7
          i32.const 1
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 2
          i32.add
          local.get 7
          i32.const 2
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 3
          i32.add
          local.get 7
          i32.const 3
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 4
          i32.add
          local.get 7
          i32.const 4
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 5
          i32.add
          local.get 7
          i32.const 5
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 6
          i32.add
          local.get 7
          i32.const 6
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 7
          i32.add
          local.get 7
          i32.const 7
          i32.add
          i32.load8_u
          i32.store8
          local.get 7
          i32.const 8
          i32.add
          local.set 7
          local.get 3
          i32.const 8
          i32.add
          local.tee 3
          local.get 5
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 5
      local.get 2
      local.get 4
      i32.sub
      local.tee 8
      i32.const -4
      i32.and
      local.tee 6
      i32.add
      local.set 3
      block ;; label = @2
        block ;; label = @3
          local.get 1
          local.get 4
          i32.add
          local.tee 7
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          local.get 5
          local.get 3
          i32.ge_u
          br_if 1 (;@2;)
          local.get 7
          local.set 1
          loop ;; label = @4
            local.get 5
            local.get 1
            i32.load
            i32.store
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 5
            i32.const 4
            i32.add
            local.tee 5
            local.get 3
            i32.lt_u
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 5
        local.get 3
        i32.ge_u
        br_if 0 (;@2;)
        local.get 7
        i32.const 3
        i32.shl
        local.tee 2
        i32.const 24
        i32.and
        local.set 4
        local.get 7
        i32.const -4
        i32.and
        local.tee 9
        i32.const 4
        i32.add
        local.set 1
        i32.const 0
        local.get 2
        i32.sub
        i32.const 24
        i32.and
        local.set 10
        local.get 9
        i32.load
        local.set 2
        loop ;; label = @3
          local.get 5
          local.get 2
          local.get 4
          i32.shr_u
          local.get 1
          i32.load
          local.tee 2
          local.get 10
          i32.shl
          i32.or
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 5
          i32.const 4
          i32.add
          local.tee 5
          local.get 3
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 8
      i32.const 3
      i32.and
      local.set 2
      local.get 7
      local.get 6
      i32.add
      local.set 1
    end
    block ;; label = @1
      local.get 3
      local.get 3
      local.get 2
      i32.add
      local.tee 5
      i32.ge_u
      br_if 0 (;@1;)
      local.get 2
      i32.const -1
      i32.add
      local.set 8
      block ;; label = @2
        local.get 2
        i32.const 7
        i32.and
        local.tee 7
        i32.eqz
        br_if 0 (;@2;)
        loop ;; label = @3
          local.get 3
          local.get 1
          i32.load8_u
          i32.store8
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 7
          i32.const -1
          i32.add
          local.tee 7
          br_if 0 (;@3;)
        end
      end
      local.get 8
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      loop ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 1
        i32.add
        local.get 1
        i32.const 1
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 2
        i32.add
        local.get 1
        i32.const 2
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 3
        i32.add
        local.get 1
        i32.const 3
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 4
        i32.add
        local.get 1
        i32.const 4
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 5
        i32.add
        local.get 1
        i32.const 5
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 6
        i32.add
        local.get 1
        i32.const 6
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 7
        i32.add
        local.get 1
        i32.const 7
        i32.add
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 8
        i32.add
        local.set 1
        local.get 3
        i32.const 8
        i32.add
        local.tee 3
        local.get 5
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 0
  )
  (func $memcmp (;407;) (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 3
    block ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      block ;; label = @2
        loop ;; label = @3
          local.get 0
          i32.load8_u
          local.tee 4
          local.get 1
          i32.load8_u
          local.tee 5
          i32.ne
          br_if 1 (;@2;)
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 2
          i32.const -1
          i32.add
          local.tee 2
          i32.eqz
          br_if 2 (;@1;)
          br 0 (;@3;)
        end
      end
      local.get 4
      local.get 5
      i32.sub
      local.set 3
    end
    local.get 3
  )
  (data $.rodata (;0;) (i32.const 131072) "recipient address not setinput too longserializer decode error: \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00incorrect number of DCDT transfersunexpected REWA transferfungible DCDT token expectedfunction does not accept DCDT paymentincorrect number of transfersREWA-000000argument decode error (): too few argumentstoo many argumentswrong number of argumentscannot subtract because result would be negativeDCDTLocalBurnDCDTNFTBurnDCDTLocalMintDCDTNFTAddQuantityDCDTNFTCreateChangeOwnerAddressDCDTNFTAddURIDCDTNFTUpdateAttributesfalsetruecanFreezecanWipecanPausecanTransferNFTCreateRolecanMintcanBurncanChangeOwnercanUpgradecanAddSpecialRolessetSpecialRoleunSetSpecialRoleissueissueNonFungibleissueSemiFungibleregisterMetaDCDTCB_CLOSURE#3\00\00\00\00\00\00\00\00\00\00\00\00\00#3\00\00\00\00\00\00\00\00\00\00\00\00\02\ff\ffMultiDCDTNFTTransferDCDTNFTTransferDCDTTransfersync resultinput too shortManagedVec index out of rangeerror decoding DCDT attributes: DCDT expectedREWA.iteminvalid valuestorage decode error (key: .lenbad array lengthvar argsnft_issue_callbacknft_idtoken_identifiercolorurisresultcallertonew_attributesargumentsattrs_argorig_attr != decoded_attrsft_issue_callbackdcdt_issue_callbacktoken_idaddresstoken_paymentsno callback function with that name exists in contractchange_roles_callbackrolesopt_argsource_addresschild_sc_addressargstokenaccept_fundsaccept_funds_funcecho_args_callbackretrieve_funds_callbacksend_funds_twice_callbackcb_amountindexsuccesserrornew_ownerinput out of rangecall_countsreject_fundsecho_argumentsretrieve_fundsget_owner_addressaccept_funds_echo_paymentretrieve_funds_with_transfer_execsendcreatelastIssuedTokenlastErrorMessageaccept_funds_sync_resultecho_arguments_sync_resultcallback_data\05\00\00\00\10\00\00\00\11\00\00\00\10\00\00\00\92\02\02\00\97\02\02\00\a7\02\02\00\b8\02\02\00DCDTRoleLocalMintDCDTRoleLocalBurnDCDTRoleNFTCreateDCDTRoleNFTAddQuantityDCDTRoleNFTBurnDCDTRoleNFTAddURIDCDTRoleNFTUpdateAttributesDCDTTransferRoleDCDTRoleSetNewURIDCDTRoleModifyRoyaltiesDCDTRoleModifyCreatorDCDTRoleNFTRecreateDCDTRoleNFTUpdate\01\02\03\04\05\06\07\08\09\0a\0b\0c\0dindex out of rangepanic occurred\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00 \00\00\00\00\00\00\00@\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\10\00\00\00\00\00\00")
  (data $.data (;1;) (i32.const 133176) "8\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.84.1 (e71f9a9a9 2025-01-27)")
  )
  (@custom "target_features" (after data) "\04+\0amultivalue+\0fmutable-globals+\0freference-types+\08sign-ext")
)
