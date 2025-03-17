(module $forwarder_wasm.wasm
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
  (type (;23;) (func (param i32 i64 i32)))
  (type (;24;) (func (param i32 i32 i32 i64)))
  (type (;25;) (func (param i32 i32 i32 i32 i32 i32 i32) (result i64)))
  (type (;26;) (func (param i32 i32) (result i64)))
  (type (;27;) (func (param i32 i32 i64 i32)))
  (type (;28;) (func (param i32 i32 i64 i32 i32)))
  (type (;29;) (func (param i32 i32 i32 i64 i32 i32)))
  (type (;30;) (func (param i32 i32 i64 i32 i64 i32 i32)))
  (type (;31;) (func (param i64 i32 i32 i32 i32) (result i32)))
  (type (;32;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;33;) (func (param i32 i32 i32 i32 i32)))
  (type (;34;) (func (param i32 i32 i32 i32 i32 i32 i32)))
  (type (;35;) (func (param i64 i32 i32 i32 i32)))
  (type (;36;) (func (param i64 i32)))
  (type (;37;) (func (param i32 i64 i32 i32)))
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
  (import "env" "managedGetBackTransfers" (func $managedGetBackTransfers (;13;) (type 2)))
  (import "env" "bigIntNew" (func $bigIntNew (;14;) (type 11)))
  (import "env" "managedGetDCDTTokenData" (func $managedGetDCDTTokenData (;15;) (type 12)))
  (import "env" "bigIntGetCallValue" (func $bigIntGetCallValue (;16;) (type 9)))
  (import "env" "managedGetMultiDCDTCallValue" (func $managedGetMultiDCDTCallValue (;17;) (type 9)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;18;) (type 4)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;19;) (type 7)))
  (import "env" "managedSignalError" (func $managedSignalError (;20;) (type 9)))
  (import "env" "smallIntGetUnsignedArgument" (func $smallIntGetUnsignedArgument (;21;) (type 13)))
  (import "env" "getArgumentLength" (func $getArgumentLength (;22;) (type 5)))
  (import "env" "getNumArguments" (func $getNumArguments (;23;) (type 3)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;24;) (type 5)))
  (import "env" "bigIntSub" (func $bigIntSub (;25;) (type 1)))
  (import "env" "managedGetOriginalTxHash" (func $managedGetOriginalTxHash (;26;) (type 9)))
  (import "env" "getGasLeft" (func $getGasLeft (;27;) (type 14)))
  (import "env" "cleanReturnData" (func $cleanReturnData (;28;) (type 15)))
  (import "env" "bigIntTDiv" (func $bigIntTDiv (;29;) (type 1)))
  (import "env" "bigIntMul" (func $bigIntMul (;30;) (type 1)))
  (import "env" "mBufferCopyByteSlice" (func $mBufferCopyByteSlice (;31;) (type 16)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;32;) (type 4)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;33;) (type 4)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;34;) (type 4)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;35;) (type 4)))
  (import "env" "bigIntGetUnsignedArgument" (func $bigIntGetUnsignedArgument (;36;) (type 2)))
  (import "env" "finish" (func $finish (;37;) (type 2)))
  (import "env" "managedWriteLog" (func $managedWriteLog (;38;) (type 2)))
  (import "env" "managedCreateContract" (func $managedCreateContract (;39;) (type 17)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;40;) (type 15)))
  (import "env" "bigIntFinishUnsigned" (func $bigIntFinishUnsigned (;41;) (type 9)))
  (import "env" "smallIntFinishUnsigned" (func $smallIntFinishUnsigned (;42;) (type 18)))
  (import "env" "managedDeployFromSourceContract" (func $managedDeployFromSourceContract (;43;) (type 17)))
  (import "env" "managedUpgradeContract" (func $managedUpgradeContract (;44;) (type 19)))
  (import "env" "managedUpgradeFromSourceContract" (func $managedUpgradeFromSourceContract (;45;) (type 19)))
  (import "env" "getCurrentDCDTNFTNonce" (func $getCurrentDCDTNFTNonce (;46;) (type 20)))
  (import "env" "getDCDTLocalRoles" (func $getDCDTLocalRoles (;47;) (type 13)))
  (import "env" "smallIntFinishSigned" (func $smallIntFinishSigned (;48;) (type 18)))
  (import "env" "managedIsDCDTFrozen" (func $managedIsDCDTFrozen (;49;) (type 21)))
  (import "env" "managedIsDCDTPaused" (func $managedIsDCDTPaused (;50;) (type 5)))
  (import "env" "managedIsDCDTLimitedTransfer" (func $managedIsDCDTLimitedTransfer (;51;) (type 5)))
  (import "env" "validateTokenIdentifier" (func $validateTokenIdentifier (;52;) (type 5)))
  (import "env" "bigIntCmp" (func $bigIntCmp (;53;) (type 4)))
  (import "env" "mBufferGetBytes" (func $mBufferGetBytes (;54;) (type 4)))
  (import "env" "bigIntSign" (func $bigIntSign (;55;) (type 5)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;56;) (type 16)))
  (import "env" "mBufferEq" (func $mBufferEq (;57;) (type 4)))
  (import "env" "managedAsyncCall" (func $managedAsyncCall (;58;) (type 22)))
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 143585)
  (global (;2;) i32 i32.const 143600)
  (export "memory" (memory 0))
  (export "init" (func $init))
  (export "send_rewa" (func $send_rewa))
  (export "echo_arguments_sync" (func $echo_arguments_sync))
  (export "echo_arguments_sync_twice" (func $echo_arguments_sync_twice))
  (export "forward_sync_accept_funds" (func $forward_sync_accept_funds))
  (export "forward_sync_accept_funds_rh_rewa" (func $forward_sync_accept_funds_rh_rewa))
  (export "forward_sync_accept_funds_rh_single_dcdt" (func $forward_sync_accept_funds_rh_single_dcdt))
  (export "forward_sync_accept_funds_rh_multi_dcdt" (func $forward_sync_accept_funds_rh_multi_dcdt))
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
  (export "forward_transf_execu_accept_funds_with_fees" (func $forward_transf_execu_accept_funds_with_fees))
  (export "forward_transf_exec_accept_funds_twice" (func $forward_transf_exec_accept_funds_twice))
  (export "forward_transf_exec_accept_funds_return_values" (func $forward_transf_exec_accept_funds_return_values))
  (export "transf_exec_multi_accept_funds" (func $transf_exec_multi_accept_funds))
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
  (export "issue_dynamic_token" (func $issue_dynamic_token))
  (export "issue_token_all_roles" (func $issue_token_all_roles))
  (export "change_to_dynamic" (func $change_to_dynamic))
  (export "update_token" (func $update_token))
  (export "modify_royalties" (func $modify_royalties))
  (export "set_new_uris" (func $set_new_uris))
  (export "modify_creator" (func $modify_creator))
  (export "metadata_recreate" (func $metadata_recreate))
  (export "metadata_update" (func $metadata_update))
  (export "lastIssuedToken" (func $lastIssuedToken))
  (export "lastErrorMessage" (func $lastErrorMessage))
  (export "callBack" (func $callBack))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (func $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae9780430f891b94E (;59;) (type 5) (param i32) (result i32)
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
    i32.load offset=133504
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=133504
    local.get 0
  )
  (func $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17hcdfab2f313084d7cE (;61;) (type 15)
    i32.const 132947
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hddc4951a156bae73E (;62;) (type 22) (param i32 i32 i32 i32)
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
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1a231d3a20798b2aE (;64;) (type 5) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h761bf0300273afeeE (;65;) (type 5) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    local.set 2
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
    loop (result i32) ;; label = @1
      local.get 1
      i32.const 8
      i32.add
      local.get 1
      i32.const 20
      i32.add
      call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h34483fd6d1c3df8bE
      block ;; label = @2
        local.get 1
        i32.load offset=8
        br_if 0 (;@2;)
        local.get 1
        i32.const 32
        i32.add
        global.set $__stack_pointer
        local.get 2
        return
      end
      local.get 2
      local.get 1
      i32.load offset=12
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1a231d3a20798b2aE
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
      br 0 (;@1;)
    end
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E (;66;) (type 3) (result i32)
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he82ecb04dfff02bfE
  )
  (func $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h34483fd6d1c3df8bE (;67;) (type 2) (param i32 i32)
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE (;68;) (type 2) (param i32 i32)
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
  (func $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hdec4978f3f7e0f76E (;69;) (type 15)
    call $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17hcdfab2f313084d7cE
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_local_burn17hb311ccc392fec580E (;70;) (type 23) (param i32 i64 i32)
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
        i32.const 131440
        i32.const 13
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
        local.get 3
        i32.const 8
        i32.add
        local.get 3
        i32.load offset=16
        local.get 3
        i32.load offset=20
        local.get 0
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h9e75a3ae8bbaec51E
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
      i32.const 131453
      i32.const 11
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
      local.get 3
      i32.const 32
      i32.add
      local.get 3
      i32.load offset=40
      local.get 3
      i32.load offset=44
      local.get 0
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h9e75a3ae8bbaec51E
      local.get 3
      i32.const 24
      i32.add
      local.get 3
      i32.load offset=32
      local.get 3
      i32.load offset=36
      local.get 1
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h0d2871c002d7fc4fE
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h36f6278c7a7c4d0eE
    local.get 3
    i32.load
    local.get 3
    i32.load offset=4
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17haca49405f7434190E
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE (;71;) (type 1) (param i32 i32 i32)
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he82ecb04dfff02bfE
    local.set 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h9e75a3ae8bbaec51E (;72;) (type 22) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hc569b7447a547bcfE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h0d2871c002d7fc4fE (;73;) (type 24) (param i32 i32 i32 i64)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17he3c5943545688ddbE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h36f6278c7a7c4d0eE (;74;) (type 22) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h7c4e565134499741E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17haca49405f7434190E (;75;) (type 2) (param i32 i32)
    (local i64)
    call $getGasLeft
    local.set 2
    i32.const -30
    call $managedSCAddress
    local.get 2
    i32.const -30
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17haae5e18ee28e6fb7E
    drop
    call $cleanReturnData
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_local_mint17h255ebbc1a39c6278E (;76;) (type 23) (param i32 i64 i32)
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
        i32.const 131464
        i32.const 13
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
        local.get 3
        i32.const 8
        i32.add
        local.get 3
        i32.load offset=16
        local.get 3
        i32.load offset=20
        local.get 0
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h9e75a3ae8bbaec51E
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
      i32.const 131477
      i32.const 18
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
      local.get 3
      i32.const 32
      i32.add
      local.get 3
      i32.load offset=40
      local.get 3
      i32.load offset=44
      local.get 0
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h9e75a3ae8bbaec51E
      local.get 3
      i32.const 24
      i32.add
      local.get 3
      i32.load offset=32
      local.get 3
      i32.load offset=36
      local.get 1
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h0d2871c002d7fc4fE
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h36f6278c7a7c4d0eE
    local.get 3
    i32.load
    local.get 3
    i32.load offset=4
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17haca49405f7434190E
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_nft_create17hd25c1e988aba8471E (;77;) (type 25) (param i32 i32 i32 i32 i32 i32 i32) (result i64)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 7
    global.set $__stack_pointer
    local.get 7
    i32.const 72
    i32.add
    i32.const 131495
    i32.const 13
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 7
    i32.const 64
    i32.add
    local.get 7
    i32.load offset=72
    local.get 7
    i32.load offset=76
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h9e75a3ae8bbaec51E
    local.get 7
    i32.const 56
    i32.add
    local.get 7
    i32.load offset=64
    local.get 7
    i32.load offset=68
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h36f6278c7a7c4d0eE
    local.get 7
    i32.const 48
    i32.add
    local.get 7
    i32.load offset=56
    local.get 7
    i32.load offset=60
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h652b932c25016bcfE
    local.get 7
    i32.const 40
    i32.add
    local.get 7
    i32.load offset=48
    local.get 7
    i32.load offset=52
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h36f6278c7a7c4d0eE
    local.get 7
    i32.const 32
    i32.add
    local.get 7
    i32.load offset=40
    local.get 7
    i32.load offset=44
    local.get 4
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h652b932c25016bcfE
    local.get 7
    i32.const 24
    i32.add
    local.get 7
    i32.load offset=32
    local.get 7
    i32.load offset=36
    local.get 5
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hadc751f32b72789aE
    local.get 7
    i32.load offset=28
    local.set 0
    local.get 7
    i32.load offset=24
    local.set 1
    block ;; label = @1
      block ;; label = @2
        local.get 6
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17hffab4404830fe2a7E
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
          call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h34483fd6d1c3df8bE
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
          call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h79dab1a6606343d9E
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
      call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h818888b193d932a3E
      local.get 7
      i32.load offset=4
      local.set 0
      local.get 7
      i32.load
      local.set 1
    end
    local.get 1
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17hf89209eeffbeb871E
    local.set 8
    local.get 7
    i32.const 96
    i32.add
    global.set $__stack_pointer
    local.get 8
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h652b932c25016bcfE (;78;) (type 22) (param i32 i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    drop
    local.get 2
    local.get 3
    i32.load
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1a231d3a20798b2aE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hadc751f32b72789aE (;79;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1a231d3a20798b2aE
    local.set 4
    local.get 3
    i32.load8_u
    local.get 4
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h01f47da771026525E
    local.get 3
    i32.load8_u offset=1
    local.get 4
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h01f47da771026525E
    local.get 3
    i32.load8_u offset=2
    local.get 4
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h01f47da771026525E
    local.get 2
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17hffab4404830fe2a7E (;80;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h0264625766d6480bE
    i32.eqz
  )
  (func $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h79dab1a6606343d9E (;81;) (type 22) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h41004dcd331a4bb5E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h818888b193d932a3E (;82;) (type 1) (param i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    local.tee 3
    i32.const 1
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17hf89209eeffbeb871E (;83;) (type 26) (param i32 i32) (result i64)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    call $getGasLeft
    local.set 3
    i32.const -30
    call $managedSCAddress
    local.get 3
    i32.const -30
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17haae5e18ee28e6fb7E
    local.set 1
    call $cleanReturnData
    local.get 2
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h761bf0300273afeeE
    local.tee 1
    call $mBufferGetLength
    i32.store offset=12
    local.get 2
    i32.const 0
    i32.store offset=8
    local.get 2
    local.get 1
    i32.store offset=4
    local.get 2
    i32.const 4
    i32.add
    i32.const 132043
    i32.const 11
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h9cbe0acc705e02efE
    local.set 3
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$28transfer_dcdt_via_async_call17hd0c3b3cdd681bb1eE (;84;) (type 27) (param i32 i32 i64 i32)
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hdeebfa1c3f753170E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hdeebfa1c3f753170E (;85;) (type 9) (param i32)
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
    call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h94052e9433022aa5E
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment22tx_payment_single_dcdt252_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h21cbf3a31746dc15E
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17hb073e29b37569e2fE (;86;) (type 22) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17h4fab3410cd6f932aE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17h4fab3410cd6f932aE (;87;) (type 22) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $managedAsyncCall
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$19direct_rewa_execute17h0583ce128519cedeE (;88;) (type 28) (param i32 i32 i64 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $managedTransferValueExecute
    drop
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21transfer_dcdt_execute17h1acc39a5bb87c68eE (;89;) (type 29) (param i32 i32 i32 i64 i32 i32)
    local.get 0
    local.get 1
    i64.const 0
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17hba411cc7ea68bf9aE
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17hba411cc7ea68bf9aE (;90;) (type 30) (param i32 i32 i64 i32 i64 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 7
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    local.set 8
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1a231d3a20798b2aE
    local.set 1
    local.get 7
    local.get 3
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae9780430f891b94E
    i32.store offset=12
    local.get 7
    local.get 2
    i64.store
    local.get 7
    local.get 1
    i32.store offset=8
    local.get 8
    local.get 7
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h64a478281fb2f0eeE
    local.get 0
    local.get 8
    local.get 4
    local.get 5
    local.get 6
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27multi_dcdt_transfer_execute17hef8dd99af564dab8E
    local.get 7
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17h815dec9838ae7791E (;91;) (type 9) (param i32)
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h64a478281fb2f0eeE (;92;) (type 2) (param i32 i32)
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
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27multi_dcdt_transfer_execute17hef8dd99af564dab8E (;93;) (type 28) (param i32 i32 i64 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $managedMultiTransferDCDTNFTExecute
    drop
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17haae5e18ee28e6fb7E (;94;) (type 31) (param i64 i32 i32 i32 i32) (result i32)
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
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h79880bd6fde944c9E (;95;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 0
    call $managedCaller
    local.get 0
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hbf9cb670948b1b75E (;96;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 0
    call $managedSCAddress
    local.get 0
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$16get_dcdt_balance17h9ff8712db610bd31E (;97;) (type 21) (param i32 i32 i64) (result i32)
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
    i32.const 143521
    i32.const 143553
    local.get 4
    local.get 2
    local.get 3
    call $bigIntGetDCDTExternalBalance
    local.get 3
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node26unsafe_buffer_load_address17h162fea53fa3b31a5E (;98;) (type 9) (param i32)
    local.get 0
    i32.const 143521
    call $mBufferGetBytes
    drop
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node35unsafe_buffer_load_token_identifier17hcfcca66f94458f18E (;99;) (type 9) (param i32)
    local.get 0
    i32.const 143553
    call $mBufferGetBytes
    drop
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$18get_back_transfers17h6bcce985a29ae290E (;100;) (type 9) (param i32)
    (local i32 i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 2
    call $managedGetBackTransfers
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$19get_dcdt_token_data17hb6d0dd894664f1d1E (;101;) (type 24) (param i32 i32 i32 i64)
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
      i32.const 131111
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17he59cf7a5329a8f5dE (;102;) (type 16) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$11single_dcdt17hffae3beaa9dcf296E (;103;) (type 9) (param i32)
    (local i32)
    block ;; label = @1
      call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17hbf749366dcc0acffE
      local.tee 1
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h012205b17d79ef57E
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h1404481bbed1f152E
      return
    end
    i32.const 131143
    i32.const 34
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17hbf749366dcc0acffE (;104;) (type 3) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28all_dcdt_transfers_unchecked17h3e93cd8f487e1c66E
    local.set 1
    block ;; label = @1
      i32.const 4
      call $_ZN11dharitri_sc3api13managed_types14static_var_api16StaticVarApiImpl21flag_is_set_or_update17h07219c65022dfb0aE
      br_if 0 (;@1;)
      i32.const -40
      i32.const 131295
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
        call $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h324475e27ea02625E
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
      i32.const 131177
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h012205b17d79ef57E (;105;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h0264625766d6480bE
    i32.const 4
    i32.shr_u
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h1404481bbed1f152E (;106;) (type 2) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h98cdb8559eb36907E
      i32.eqz
      br_if 0 (;@1;)
      i32.const 132069
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
    call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$M$GT$$u20$as$u20$dharitri_sc..types..managed..wrapped..managed_vec_item..ManagedVecItem$GT$19borrow_from_payload17hecc599a306c312faE
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
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28all_dcdt_transfers_unchecked17h3e93cd8f487e1c66E (;107;) (type 3) (result i32)
    block ;; label = @1
      i32.const 2
      call $_ZN11dharitri_sc3api13managed_types14static_var_api16StaticVarApiImpl21flag_is_set_or_update17h07219c65022dfb0aE
      br_if 0 (;@1;)
      i32.const -38
      call $managedGetMultiDCDTCallValue
    end
    i32.const -38
  )
  (func $_ZN11dharitri_sc3api13managed_types14static_var_api16StaticVarApiImpl21flag_is_set_or_update17h07219c65022dfb0aE (;108;) (type 5) (param i32) (result i32)
    (local i32 i32)
    block ;; label = @1
      i32.const 0
      i32.load8_u offset=143520
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
      i32.store8 offset=143520
    end
    local.get 2
  )
  (func $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h324475e27ea02625E (;109;) (type 2) (param i32 i32)
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h00ec339cb3020c69E (;110;) (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $mBufferEq
    i32.const 0
    i32.gt_s
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h9e4182d4648808c7E (;111;) (type 9) (param i32)
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
            call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28all_dcdt_transfers_unchecked17h3e93cd8f487e1c66E
            local.tee 2
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h012205b17d79ef57E
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          i32.const 131143
          i32.const 34
          call $signalError
          unreachable
        end
        call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$4rewa17h0ed248f736479bf9E
        local.set 2
        local.get 0
        call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$22rewa_direct_non_strict17h9cc3e4e80be2799bE
        call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae9780430f891b94E
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
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h8ef0c73382218e7bE
      local.get 1
      i32.load offset=8
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1a231d3a20798b2aE
      local.set 2
      local.get 1
      i64.load
      local.set 3
      local.get 0
      local.get 1
      i32.load offset=12
      call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae9780430f891b94E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$4rewa17h0ed248f736479bf9E (;112;) (type 3) (result i32)
    i32.const 131295
    i32.const 11
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he82ecb04dfff02bfE
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$22rewa_direct_non_strict17h9cc3e4e80be2799bE (;113;) (type 3) (result i32)
    block ;; label = @1
      i32.const 1
      call $_ZN11dharitri_sc3api13managed_types14static_var_api16StaticVarApiImpl21flag_is_set_or_update17h07219c65022dfb0aE
      br_if 0 (;@1;)
      i32.const -35
      call $bigIntGetCallValue
    end
    i32.const -35
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h8ef0c73382218e7bE (;114;) (type 2) (param i32 i32)
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
      local.get 2
      i32.const 32
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$17load_item_payload17he04f3fe5667097d4E
      br_if 0 (;@1;)
      i32.const 132069
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
    call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$M$GT$$u20$as$u20$dharitri_sc..types..managed..wrapped..managed_vec_item..ManagedVecItem$GT$19borrow_from_payload17hecc599a306c312faE
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    i32.const 24
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
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17hae04a1efcc5a3fd0E (;115;) (type 9) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h9e4182d4648808c7E
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
    i32.const 131201
    i32.const 28
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$4rewa17hfd6a7fd3072f2a13E (;116;) (type 3) (result i32)
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
            call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28all_dcdt_transfers_unchecked17h3e93cd8f487e1c66E
            local.tee 1
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h012205b17d79ef57E
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          i32.const 131266
          i32.const 29
          call $signalError
          unreachable
        end
        call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$22rewa_direct_non_strict17h9cc3e4e80be2799bE
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h8ef0c73382218e7bE
      block ;; label = @2
        local.get 0
        i32.load offset=8
        call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h934f0dafccc28bcfE
        br_if 0 (;@2;)
        i32.const 131229
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
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h934f0dafccc28bcfE (;117;) (type 5) (param i32) (result i32)
    i32.const -40
    i32.const 131295
    i32.const 11
    call $mBufferSetBytes
    drop
    i32.const -40
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h00ec339cb3020c69E
  )
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hbb2fc474509a9551E (;118;) (type 5) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h15253db9ce9923c8E (;119;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131306
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he82ecb04dfff02bfE
    local.tee 4
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 4
    i32.const 131329
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he82ecb04dfff02bfE (;120;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h367705837a947d61E (;121;) (type 15)
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$4rewa17hfd6a7fd3072f2a13E
    drop
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h044ba8ea6a280a0bE (;122;) (type 2) (param i32 i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 2
    block ;; label = @1
      block ;; label = @2
        local.get 1
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17hb879fdce24cbe3e6E
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
        i32.load offset=143516
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 1
        local.set 2
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
        local.set 4
        br 1 (;@1;)
      end
      i32.const 1
      local.set 2
      local.get 1
      i32.const 132808
      i32.const 6
      call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h8c66612e9c555699E
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
  (func $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17hb879fdce24cbe3e6E (;123;) (type 5) (param i32) (result i32)
    (local i64)
    block ;; label = @1
      local.get 0
      i32.const 132808
      i32.const 6
      call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hd6b1ef5773861c08E
      call $smallIntGetUnsignedArgument
      local.tee 1
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 132808
      i32.const 6
      i32.const 131072
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h15253db9ce9923c8E
      unreachable
    end
    local.get 1
    i32.wrap_i64
  )
  (func $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h8c66612e9c555699E (;124;) (type 7) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hd6b1ef5773861c08E
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hbb2fc474509a9551E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1afbc05fc57752ebE (;125;) (type 7) (param i32 i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    local.set 3
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.load
        i32.const 0
        i32.load offset=143516
        i32.ge_s
        br_if 1 (;@1;)
        local.get 3
        local.get 0
        local.get 1
        local.get 2
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h8c66612e9c555699E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
        br 0 (;@2;)
      end
    end
    local.get 3
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h3ae927d8ddfeb84aE (;126;) (type 7) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN168_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h9630b8fa5661a488E
  )
  (func $_ZN168_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h9630b8fa5661a488E (;127;) (type 7) (param i32 i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    local.set 3
    loop (result i32) ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load
        i32.const 0
        i32.load offset=143516
        i32.lt_s
        br_if 0 (;@2;)
        local.get 3
        return
      end
      local.get 3
      local.get 0
      local.get 1
      local.get 2
      call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h8c66612e9c555699E
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
      br 0 (;@1;)
    end
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h5e583aa0c9057bdeE (;128;) (type 2) (param i32 i32)
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
          call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17hb879fdce24cbe3e6E
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
        i32.const 132808
        i32.const 6
        call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h349af47b327d0d75E
        local.set 1
        br 1 (;@1;)
      end
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.load
          i32.const 0
          i32.load offset=143516
          i32.lt_s
          br_if 0 (;@3;)
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
          local.set 1
          br 1 (;@2;)
        end
        local.get 1
        i32.const 132808
        i32.const 6
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h8c66612e9c555699E
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
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h349af47b327d0d75E (;129;) (type 7) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hd6b1ef5773861c08E
    local.get 1
    local.get 2
    call $_ZN145_$LT$dharitri_sc..types..managed..wrapped..token_identifier..TokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h4a62585ae21c8629E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h895c29ae2a69bff5E (;130;) (type 2) (param i32 i32)
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
          call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17hb879fdce24cbe3e6E
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
        i32.const 132808
        i32.const 6
        call $_ZN168_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h9630b8fa5661a488E
        local.set 1
        br 1 (;@1;)
      end
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.load
          i32.const 0
          i32.load offset=143516
          i32.lt_s
          br_if 0 (;@3;)
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
          local.set 1
          br 1 (;@2;)
        end
        local.get 1
        i32.const 132808
        i32.const 6
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h8c66612e9c555699E
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h947b77d7df60709cE (;131;) (type 2) (param i32 i32)
    (local i32 i32 i32 i64 i32)
    local.get 1
    i32.const 132938
    i32.const 9
    call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hd6b1ef5773861c08E
    call $_ZN129_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17heba62e29b1ff3960E
    local.set 2
    local.get 1
    i32.const 132938
    i32.const 9
    call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h8c66612e9c555699E
    local.set 3
    local.get 1
    i32.const 132938
    i32.const 9
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h349af47b327d0d75E
    local.set 4
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.const 132938
          i32.const 9
          call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hd6b1ef5773861c08E
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
        i32.const 132938
        i32.const 9
        i32.const 132220
        i32.const 18
        call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h15253db9ce9923c8E
        unreachable
      end
      i32.const 1
      local.set 6
    end
    local.get 0
    local.get 1
    i32.const 132938
    i32.const 9
    call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h8c66612e9c555699E
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
  (func $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hd6b1ef5773861c08E (;132;) (type 7) (param i32 i32 i32) (result i32)
    (local i32)
    block ;; label = @1
      local.get 0
      i32.load
      local.tee 3
      i32.const 0
      i32.load offset=143516
      i32.lt_s
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131332
      i32.const 17
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h15253db9ce9923c8E
      unreachable
    end
    local.get 0
    local.get 3
    i32.const 1
    i32.add
    i32.store
    local.get 3
  )
  (func $_ZN129_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17heba62e29b1ff3960E (;133;) (type 5) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    call $bigIntGetUnsignedArgument
    local.get 1
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h99a775bb35f0c258E (;134;) (type 2) (param i32 i32)
    (local i32)
    i32.const 0
    local.set 2
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load
        i32.const 0
        i32.load offset=143516
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 1
        local.set 2
        br 1 (;@1;)
      end
      local.get 1
      i32.const 132408
      i32.const 7
      call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h8c66612e9c555699E
      local.set 1
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17ha2c9623a80c77b99E (;135;) (type 7) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN253_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h09df61d5cade12c5E
    local.get 1
    local.get 2
    call $_ZN143_$LT$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h9b8a07bd6d9f0d0fE
  )
  (func $_ZN253_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h09df61d5cade12c5E (;136;) (type 7) (param i32 i32 i32) (result i32)
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
    call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h34483fd6d1c3df8bE
    block ;; label = @1
      local.get 3
      i32.load offset=8
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=12
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1a231d3a20798b2aE
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
    i32.const 131332
    i32.const 17
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h15253db9ce9923c8E
    unreachable
  )
  (func $_ZN143_$LT$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h9b8a07bd6d9f0d0fE (;137;) (type 7) (param i32 i32 i32) (result i32)
    block ;; label = @1
      local.get 0
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1a231d3a20798b2aE
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 132196
      i32.const 16
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h15253db9ce9923c8E
      unreachable
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17had187b776bb5456dE (;138;) (type 5) (param i32) (result i32)
    local.get 0
    i32.const 132783
    i32.const 9
    call $_ZN253_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h09df61d5cade12c5E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17hb4f8febeddbdb1feE
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17hb4f8febeddbdb1feE (;139;) (type 5) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    call $mBufferToBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hcf8013bda8a66a16E (;140;) (type 5) (param i32) (result i32)
    local.get 0
    i32.const 132792
    i32.const 16
    call $_ZN253_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h09df61d5cade12c5E
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17hdd836ec0c1f3b596E
  )
  (func $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17hdd836ec0c1f3b596E (;141;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1a231d3a20798b2aE
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h7059c70463acda7aE
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E (;142;) (type 7) (param i32 i32 i32) (result i32)
    block ;; label = @1
      local.get 0
      call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hbb2fc474509a9551E
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 132196
      i32.const 16
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h15253db9ce9923c8E
      unreachable
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h210aef91ca3fee5aE (;143;) (type 3) (result i32)
    (local i64)
    block ;; label = @1
      i32.const 2
      call $getArgumentLength
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    block ;; label = @1
      block ;; label = @2
        i32.const 2
        call $smallIntGetUnsignedArgument
        local.tee 0
        i64.const 256
        i64.ge_u
        br_if 0 (;@2;)
        local.get 0
        i64.const 8
        i64.ge_u
        br_if 1 (;@1;)
        local.get 0
        i32.wrap_i64
        return
      end
      i32.const 132475
      i32.const 10
      i32.const 131072
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h15253db9ce9923c8E
      unreachable
    end
    i32.const 132475
    i32.const 10
    i32.const 132152
    i32.const 13
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h15253db9ce9923c8E
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h35da27e1543378b1E (;144;) (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hbb2fc474509a9551E
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
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17hae1cf6f7914288f8E
    local.set 0
    local.get 3
    i32.const 12
    i32.add
    local.get 1
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17hae1cf6f7914288f8E
    local.set 4
    local.get 3
    i32.const 12
    i32.add
    local.get 1
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17hae1cf6f7914288f8E
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
        i32.store offset=143508
        i32.const 0
        i32.const 0
        i32.store8 offset=143512
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
    i32.const 131072
    i32.const 14
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h15253db9ce9923c8E
    unreachable
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17hae1cf6f7914288f8E (;145;) (type 7) (param i32 i32 i32) (result i32)
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
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h419d0b236349b4b2E
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17hc787f77e99fe0dd2E
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4da779f4fabc90a7E (;146;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hbb2fc474509a9551E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h66fd8b1179e8a744E (;147;) (type 3) (result i32)
    i32.const 1
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17ha2fcfa4737655d12E
  )
  (func $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17ha2fcfa4737655d12E (;148;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hbb2fc474509a9551E
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h7059c70463acda7aE
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9901b688586819e7E (;149;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN129_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17heba62e29b1ff3960E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E (;150;) (type 7) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN145_$LT$dharitri_sc..types..managed..wrapped..token_identifier..TokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h4a62585ae21c8629E
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..wrapped..token_identifier..TokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h4a62585ae21c8629E (;151;) (type 7) (param i32 i32 i32) (result i32)
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
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17ha2fcfa4737655d12E
    call $_ZN11dharitri_sc5types7managed7wrapped16token_identifier24TokenIdentifier$LT$M$GT$7try_new17hcc159319e2fe3780E
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
    i32.const 132130
    i32.const 13
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h15253db9ce9923c8E
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacfbc8cc8a9848a7E (;152;) (type 7) (param i32 i32 i32) (result i32)
    (local i64)
    block ;; label = @1
      local.get 0
      call $smallIntGetUnsignedArgument
      local.tee 3
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131072
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h15253db9ce9923c8E
      unreachable
    end
    local.get 3
    i32.wrap_i64
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb80ee9fba32521afE (;153;) (type 13) (param i32) (result i64)
    local.get 0
    call $smallIntGetUnsignedArgument
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5830c7af5e96c711E (;154;) (type 9) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=143516
      local.get 0
      i32.gt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131349
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h9f593610fae37bd4E (;155;) (type 2) (param i32 i32)
    block ;; label = @1
      local.get 0
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
      return
    end
    i32.const 131349
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E (;156;) (type 9) (param i32)
    block ;; label = @1
      call $getNumArguments
      local.get 0
      i32.ne
      br_if 0 (;@1;)
      return
    end
    i32.const 131367
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc4deb71796a2a81aE (;157;) (type 9) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=143516
      local.get 0
      i32.lt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131332
    i32.const 17
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E (;158;) (type 15)
    i32.const 0
    call $getNumArguments
    i32.store offset=143516
  )
  (func $_ZN11dharitri_sc2io6finish12finish_multi17h5ee88a58b6564deeE (;159;) (type 9) (param i32)
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
  (func $_ZN11dharitri_sc2io6finish12finish_multi17hfa7bf56b7cc81f4eE (;160;) (type 9) (param i32)
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
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h34483fd6d1c3df8bE
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
  (func $_ZN11dharitri_sc3api13managed_types11big_int_api13BigIntApiImpl15bi_sub_unsigned17hec6c6b4b82746295E (;161;) (type 1) (param i32 i32 i32)
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
    i32.const 131392
    i32.const 48
    call $signalError
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$7bi_sign17h12474b880d747599E (;162;) (type 5) (param i32) (result i32)
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
  (func $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h0697f663fea3c2a2E (;163;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17hbe46a4334a49c034E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17hbe46a4334a49c034E (;164;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction9annotated14AnnotatedValue14with_value_ref17h3161a830c6d76243E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h7bc0ade2d329aa4dE (;165;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h9d2f3f2e699535a6E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h9d2f3f2e699535a6E (;166;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17he5b315c3d10ff447E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h5f897789fed0e203E (;167;) (type 1) (param i32 i32 i32)
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h1400fe0dd9ee92cfE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E (;168;) (type 3) (result i32)
    i32.const -10
    i64.const 0
    call $bigIntSetInt64
    i32.const -10
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h1400fe0dd9ee92cfE (;169;) (type 22) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17hb073e29b37569e2fE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt398_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$24perform_transfer_execute17ha7a82a8e24e7f375E (;170;) (type 28) (param i32 i32 i64 i32 i32)
    local.get 1
    local.get 0
    local.get 2
    local.get 3
    local.get 4
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27multi_dcdt_transfer_execute17hef8dd99af564dab8E
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment22tx_payment_single_dcdt252_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h21cbf3a31746dc15E (;171;) (type 32) (param i32 i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17hfa663ad697e18df9E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17hfa663ad697e18df9E (;172;) (type 32) (param i32 i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h27bf0cdf9bd4e8dfE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment22tx_payment_single_dcdt252_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h57b710adad38968fE (;173;) (type 32) (param i32 i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h3a5e4351d6d34aeaE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h3a5e4351d6d34aeaE (;174;) (type 32) (param i32 i32 i32 i32 i32 i32)
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
    local.get 3
    local.get 6
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h1ea41a85752d2dddE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h7eed006eff3f3ef2E (;175;) (type 32) (param i32 i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    local.get 6
    local.get 5
    i32.store offset=12
    local.get 6
    local.get 4
    i32.store offset=8
    local.get 6
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 6
    i32.const 4
    i32.add
    local.get 1
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$16map_rewa_or_dcdt17h52dc07ca7673c055E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$16map_rewa_or_dcdt17h52dc07ca7673c055E (;176;) (type 33) (param i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$11map_or_else17h60eddb27109526d6E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h2f73ee26e96c793aE (;177;) (type 22) (param i32 i32 i32 i32)
    local.get 3
    local.get 0
    local.get 1
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    local.get 2
    i32.load offset=8
    call $_ZN11dharitri_sc5types11interaction10tx_payment22tx_payment_single_dcdt252_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h57b710adad38968fE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17hc6ffb83ae79b7a26E (;178;) (type 1) (param i32 i32 i32)
    local.get 2
    local.get 0
    local.get 1
    i32.load
    local.get 1
    i32.load offset=4
    local.get 1
    i32.load offset=8
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h79a421e6c06e4ce3E
    unreachable
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h79a421e6c06e4ce3E (;179;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 0
    i32.store offset=12
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
    i32.const 12
    i32.add
    i32.store offset=16
    local.get 2
    local.get 5
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h8990ca3090c8793dE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h1ea41a85752d2dddE (;180;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h2386a24254600caeE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h27bf0cdf9bd4e8dfE (;181;) (type 2) (param i32 i32)
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
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h125a0fab9bc6901eE
      local.get 2
      i32.load offset=4
      local.set 0
      local.get 2
      i32.load
      local.set 2
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E
      local.get 2
      local.get 0
      call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h1400fe0dd9ee92cfE
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h9fdb101a9ba5b3f5E
    local.get 2
    i32.load offset=12
    local.set 0
    local.get 2
    i32.load offset=8
    local.set 2
    call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h0851ab1d808a0851E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h1400fe0dd9ee92cfE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h125a0fab9bc6901eE (;182;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 24
    i32.add
    i32.const 132031
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 5
    i32.const 16
    i32.add
    local.get 5
    i32.load offset=24
    local.get 5
    i32.load offset=28
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h652b932c25016bcfE
    local.get 5
    i32.const 8
    i32.add
    local.get 5
    i32.load offset=16
    local.get 5
    i32.load offset=20
    local.get 4
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h36f6278c7a7c4d0eE
    local.get 5
    local.get 5
    i32.load offset=8
    local.get 5
    i32.load offset=12
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hdc9ab5a11a939fd3E
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
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h9fdb101a9ba5b3f5E (;183;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 40
    i32.add
    i32.const 132016
    i32.const 15
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 5
    i32.const 32
    i32.add
    local.get 5
    i32.load offset=40
    local.get 5
    i32.load offset=44
    local.get 4
    i32.load offset=8
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h652b932c25016bcfE
    local.get 5
    i32.const 24
    i32.add
    local.get 5
    i32.load offset=32
    local.get 5
    i32.load offset=36
    local.get 4
    i64.load
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h0d2871c002d7fc4fE
    local.get 5
    i32.const 16
    i32.add
    local.get 5
    i32.load offset=24
    local.get 5
    i32.load offset=28
    local.get 4
    i32.load offset=12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h36f6278c7a7c4d0eE
    local.get 5
    i32.load offset=16
    local.set 6
    local.get 5
    i32.load offset=20
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    drop
    local.get 4
    local.get 3
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1a231d3a20798b2aE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
    local.get 5
    i32.const 8
    i32.add
    local.get 6
    local.get 4
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hdc9ab5a11a939fd3E
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
  (func $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h0851ab1d808a0851E (;184;) (type 3) (result i32)
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hbf9cb670948b1b75E
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17h03c13df554da87b9E (;185;) (type 28) (param i32 i32 i64 i32 i32)
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
      call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21transfer_dcdt_execute17h1acc39a5bb87c68eE
      return
    end
    local.get 1
    local.get 6
    local.get 7
    local.get 5
    local.get 2
    local.get 3
    local.get 4
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17hba411cc7ea68bf9aE
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment28tx_payment_rewa_or_dcdt_refs270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h2abdf4b711d4d1e4E (;186;) (type 32) (param i32 i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    local.get 6
    local.get 5
    i32.store offset=12
    local.get 6
    local.get 4
    i32.store offset=8
    local.get 6
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 6
    i32.const 4
    i32.add
    local.get 1
    local.get 2
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment35RewaOrDcdtTokenPaymentRefs$LT$M$GT$16map_rewa_or_dcdt17h89ad69da9f727c84E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment35RewaOrDcdtTokenPaymentRefs$LT$M$GT$16map_rewa_or_dcdt17h89ad69da9f727c84E (;187;) (type 32) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    local.get 0
    i32.load offset=8
    local.set 7
    local.get 6
    local.get 0
    i32.load offset=12
    local.tee 8
    i32.store offset=12
    local.get 6
    local.get 0
    i32.store offset=8
    local.get 6
    local.get 5
    i32.store offset=4
    local.get 6
    local.get 4
    i32.store
    local.get 7
    i32.load
    local.get 1
    local.get 2
    local.get 8
    local.get 6
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$15map_ref_or_else17h0db9b24a00c13138E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment28tx_payment_rewa_or_dcdt_refs270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h119fd7b919eb5c76E (;188;) (type 1) (param i32 i32 i32)
    local.get 2
    local.get 0
    local.get 1
    i32.load
    local.get 1
    i32.load offset=4
    local.get 1
    i32.load offset=8
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h041556b36107b955E
    unreachable
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h041556b36107b955E (;189;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 0
    i32.store offset=12
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
    i32.const 12
    i32.add
    i32.store offset=16
    local.get 2
    local.get 5
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17ha98a7733973c7667E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment28tx_payment_rewa_or_dcdt_refs270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17hdecd4b572ddcbebbE (;190;) (type 22) (param i32 i32 i32 i32)
    local.get 3
    local.get 0
    local.get 1
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    local.get 2
    i32.load offset=8
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h3a5e4351d6d34aeaE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment28tx_payment_rewa_or_dcdt_refs270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17h021bc8ee30773c0fE (;191;) (type 28) (param i32 i32 i64 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 0
    i32.load offset=12
    local.set 6
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load offset=8
        local.tee 7
        i32.load
        call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h934f0dafccc28bcfE
        br_if 0 (;@2;)
        local.get 5
        local.get 7
        i32.load
        i32.store offset=4
        local.get 5
        local.get 6
        i32.store offset=28
        local.get 5
        local.get 4
        i32.store offset=12
        local.get 5
        local.get 3
        i32.store offset=8
        local.get 5
        local.get 0
        i64.load
        i64.store offset=16
        local.get 5
        local.get 5
        i32.const 4
        i32.add
        i32.store offset=24
        local.get 5
        i32.const 16
        i32.add
        local.get 1
        local.get 2
        local.get 3
        local.get 4
        call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17h03c13df554da87b9E
        br 1 (;@1;)
      end
      local.get 6
      i32.load
      local.get 1
      local.get 2
      local.get 3
      local.get 4
      call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$24perform_transfer_execute17h7002fd7771e45988E
    end
    local.get 5
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$24perform_transfer_execute17h7002fd7771e45988E (;192;) (type 28) (param i32 i32 i64 i32 i32)
    local.get 1
    local.get 0
    local.get 2
    local.get 3
    local.get 4
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$19direct_rewa_execute17h0583ce128519cedeE
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment29tx_payment_multi_rewa_or_dcdt412_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized17hcaf227d14d2ba33bE (;193;) (type 32) (param i32 i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment29tx_payment_multi_rewa_or_dcdt416_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized17hcc6ece69e72578f3E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment29tx_payment_multi_rewa_or_dcdt416_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized17hcc6ece69e72578f3E (;194;) (type 32) (param i32 i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    local.get 6
    local.get 5
    i32.store offset=28
    local.get 6
    local.get 4
    i32.store offset=24
    local.get 6
    local.get 1
    i32.store offset=20
    local.get 6
    local.get 2
    i32.store offset=16
    local.get 6
    local.get 0
    i32.store offset=12
    local.get 3
    local.get 6
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17hde8370ec695a1721E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17hde8370ec695a1721E (;195;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h1336ec1f6107f0acE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment29tx_payment_multi_rewa_or_dcdt416_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17hf8a54bfa100f4716E (;196;) (type 2) (param i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17h6b800ef9caebe721E
    local.get 2
    i32.load offset=12
    local.set 0
    local.get 2
    i32.load offset=8
    local.set 2
    call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h0851ab1d808a0851E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h1400fe0dd9ee92cfE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17h6b800ef9caebe721E (;197;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 144
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 56
    i32.add
    i32.const 131996
    i32.const 20
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 5
    i32.const 48
    i32.add
    local.get 5
    i32.load offset=56
    local.get 5
    i32.load offset=60
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h8de6413318889c57E
    local.get 5
    i32.const 40
    i32.add
    local.get 5
    i32.load offset=48
    local.get 5
    i32.load offset=52
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h012205b17d79ef57E
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hd8e843cd262c7ab8E
    local.get 5
    i32.load offset=44
    local.set 3
    local.get 5
    i32.load offset=40
    local.set 6
    local.get 5
    local.get 4
    call $mBufferGetLength
    i32.store offset=76
    local.get 5
    i32.const 0
    i32.store offset=72
    local.get 5
    local.get 4
    i32.store offset=68
    local.get 5
    i32.const 80
    i32.add
    i32.const 8
    i32.add
    local.set 7
    local.get 5
    i32.const 128
    i32.add
    local.set 4
    loop ;; label = @1
      local.get 5
      i32.const 127
      i32.add
      local.get 5
      i32.const 68
      i32.add
      call $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h324475e27ea02625E
      block ;; label = @2
        local.get 5
        i32.load8_u offset=127
        br_if 0 (;@2;)
        local.get 5
        i32.const 32
        i32.add
        local.get 6
        local.get 3
        local.get 1
        local.get 2
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hdc9ab5a11a939fd3E
        local.get 5
        i32.load offset=36
        local.set 3
        local.get 0
        local.get 5
        i32.load offset=32
        i32.store
        local.get 0
        local.get 3
        i32.store offset=4
        local.get 5
        i32.const 144
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 5
      i32.const 104
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
      i64.store offset=104
      local.get 7
      local.get 5
      i32.const 104
      i32.add
      call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$M$GT$$u20$as$u20$dharitri_sc..types..managed..wrapped..managed_vec_item..ManagedVecItem$GT$19borrow_from_payload17hecc599a306c312faE
      local.get 5
      i32.load offset=100
      local.set 8
      local.get 5
      i32.const 24
      i32.add
      local.get 6
      local.get 3
      local.get 5
      i32.load offset=96
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h5c9ed9a40d0984b0E
      local.get 5
      i32.const 16
      i32.add
      local.get 5
      i32.load offset=24
      local.get 5
      i32.load offset=28
      local.get 5
      i64.load offset=88
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h0d2871c002d7fc4fE
      local.get 5
      i32.const 8
      i32.add
      local.get 5
      i32.load offset=16
      local.get 5
      i32.load offset=20
      local.get 8
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hced03b6ccbb1e76dE
      local.get 5
      i32.load offset=12
      local.set 3
      local.get 5
      i32.load offset=8
      local.set 6
      br 0 (;@1;)
    end
  )
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17he2638710d1af67ecE (;198;) (type 22) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17hde452577d69ef8e0E
    local.get 0
    i32.const 131655
    i32.const 131650
    local.get 3
    select
    i32.const 4
    i32.const 5
    local.get 3
    select
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17hde452577d69ef8e0E
  )
  (func $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17hde452577d69ef8e0E (;199;) (type 1) (param i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    local.tee 3
    local.get 1
    local.get 2
    call $mBufferSetBytes
    drop
    local.get 0
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
  )
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$12update_token17h39c6f8ca0276168bE (;200;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    i32.const 131763
    i32.const 13
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 2
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load offset=12
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h55fd12b0f78e2bf9E
    local.get 2
    i32.load offset=4
    local.set 1
    local.get 0
    local.get 2
    i32.load
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h55fd12b0f78e2bf9E (;201;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    i32.store offset=12
    local.get 3
    local.get 4
    i32.const 12
    i32.add
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h345a84db45cd36f7E
    local.get 2
    local.get 4
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$13issue_dynamic17hecb013ecb5b91d24E (;202;) (type 32) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    i32.const 1
    local.set 7
    i32.const 131776
    i32.const 1
    local.get 4
    i32.const -4
    i32.add
    local.tee 8
    i32.const 255
    i32.and
    local.tee 9
    i32.const 3
    i32.lt_u
    local.tee 10
    select
    local.set 11
    i32.const 0
    local.set 12
    i32.const 15
    i32.const 0
    local.get 10
    select
    local.set 10
    block ;; label = @1
      local.get 9
      i32.const 2
      i32.gt_u
      br_if 0 (;@1;)
      local.get 8
      i32.const 2
      i32.shl
      i32.const 1020
      i32.and
      local.tee 7
      i32.const 133380
      i32.add
      i32.load
      local.set 12
      local.get 7
      i32.const 133368
      i32.add
      i32.load
      local.set 7
    end
    local.get 6
    i32.const 8
    i32.add
    local.get 11
    local.get 10
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 6
    local.get 1
    i32.store offset=40
    local.get 6
    local.get 6
    i64.load offset=8
    i64.store offset=32 align=4
    local.get 6
    i32.const 20
    i32.add
    local.get 6
    i32.const 32
    i32.add
    local.get 2
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hfd36f34906f9429cE
    local.get 6
    i32.const 32
    i32.add
    local.get 6
    i32.const 20
    i32.add
    local.get 3
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hfd36f34906f9429cE
    local.get 6
    i32.const 20
    i32.add
    local.get 6
    i32.const 32
    i32.add
    local.get 7
    local.get 12
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hb9d50264c7ad0176E
    block ;; label = @1
      local.get 4
      i32.const 6
      i32.and
      i32.const 4
      i32.eq
      br_if 0 (;@1;)
      local.get 6
      i32.const 32
      i32.add
      i32.const 8
      i32.add
      local.get 6
      i32.const 20
      i32.add
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get 6
      local.get 6
      i64.load offset=20 align=4
      i64.store offset=32
      local.get 6
      i32.const 20
      i32.add
      local.get 6
      i32.const 32
      i32.add
      local.get 5
      call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17heb13a95060f42f7cE
    end
    local.get 0
    local.get 6
    i32.load offset=28
    i32.store offset=8
    local.get 0
    local.get 6
    i64.load offset=20 align=4
    i64.store align=4
    local.get 6
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hfd36f34906f9429cE (;203;) (type 1) (param i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h5c9ed9a40d0984b0E
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
  (func $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hb9d50264c7ad0176E (;204;) (type 22) (param i32 i32 i32 i32)
    local.get 1
    i32.load offset=4
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17hde452577d69ef8e0E
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
  )
  (func $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17heb13a95060f42f7cE (;205;) (type 1) (param i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hd8e843cd262c7ab8E
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
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14issue_fungible17h17cc95c3edde2021E (;206;) (type 32) (param i32 i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$5issue17h07a613b7f7903698E
    local.get 6
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$5issue17h07a613b7f7903698E (;207;) (type 34) (param i32 i32 i32 i32 i32 i32 i32)
    (local i32 i32 i64 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
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
    local.tee 2
    i32.const 133060
    i32.add
    i32.load
    local.get 2
    i32.const 133044
    i32.add
    i32.load
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 7
    local.get 1
    i32.store offset=56
    local.get 7
    local.get 7
    i64.load offset=16
    i64.store offset=48 align=4
    local.get 7
    i32.const 36
    i32.add
    local.get 7
    i32.const 48
    i32.add
    local.get 3
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hb724c39f16019b5cE
    local.get 7
    i32.const 24
    i32.add
    local.get 7
    i32.const 36
    i32.add
    local.get 4
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hb724c39f16019b5cE
    block ;; label = @1
      local.get 8
      br_if 0 (;@1;)
      local.get 7
      i32.const 8
      i32.add
      local.get 7
      i32.load offset=24
      local.get 7
      i32.load offset=28
      local.get 5
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h36f6278c7a7c4d0eE
      local.get 7
      local.get 7
      i64.load offset=8
      local.tee 9
      i64.store offset=24 align=4
      local.get 7
      i32.const 48
      i32.add
      i32.const 8
      i32.add
      local.get 7
      i32.const 24
      i32.add
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get 7
      local.get 9
      i64.store offset=48
      local.get 7
      i32.const 24
      i32.add
      local.get 7
      i32.const 48
      i32.add
      local.get 6
      i32.load
      call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17heb13a95060f42f7cE
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
    local.set 1
    local.get 6
    i32.load8_u offset=11
    local.set 3
    local.get 6
    i32.load8_u offset=10
    local.set 4
    local.get 6
    i32.load8_u offset=6
    local.set 5
    local.get 6
    i32.load8_u offset=5
    local.set 13
    local.get 7
    i32.load offset=28
    local.tee 2
    i32.const 131659
    i32.const 9
    local.get 6
    i32.load8_u offset=4
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17he2638710d1af67ecE
    local.get 2
    i32.const 131668
    i32.const 7
    local.get 13
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17he2638710d1af67ecE
    local.get 2
    i32.const 131675
    i32.const 8
    local.get 5
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17he2638710d1af67ecE
    block ;; label = @1
      block ;; label = @2
        local.get 8
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const 131683
        i32.const 24
        local.get 10
        i32.const 1
        i32.and
        call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17he2638710d1af67ecE
        br 1 (;@1;)
      end
      local.get 2
      i32.const 131707
      i32.const 7
      local.get 12
      i32.const 1
      i32.and
      call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17he2638710d1af67ecE
      local.get 2
      i32.const 131714
      i32.const 7
      local.get 11
      i32.const 1
      i32.and
      call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17he2638710d1af67ecE
    end
    local.get 2
    i32.const 131721
    i32.const 14
    local.get 4
    i32.const 1
    i32.and
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17he2638710d1af67ecE
    local.get 2
    i32.const 131735
    i32.const 10
    local.get 3
    i32.const 1
    i32.and
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17he2638710d1af67ecE
    local.get 2
    i32.const 131745
    i32.const 18
    local.get 1
    i32.const 1
    i32.and
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17he2638710d1af67ecE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 7
    i32.load offset=32
    i32.store offset=8
    local.get 0
    local.get 7
    i32.load offset=24
    i32.store
    local.get 7
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$17change_to_dynamic17h01624a3254103505E (;208;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    i32.const 131801
    i32.const 15
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 2
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load offset=12
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h55fd12b0f78e2bf9E
    local.get 2
    i32.load offset=4
    local.set 1
    local.get 0
    local.get 2
    i32.load
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$17set_special_roles17h6576c362c2bbbdd6E (;209;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 40
    i32.add
    i32.const 131816
    i32.const 14
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 4
    i32.const 32
    i32.add
    local.get 4
    i32.load offset=40
    local.get 4
    i32.load offset=44
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h9e75a3ae8bbaec51E
    local.get 4
    i32.const 24
    i32.add
    local.get 4
    i32.load offset=32
    local.get 4
    i32.load offset=36
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h8de6413318889c57E
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
      call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9d913933d7866a36E
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
      call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h0800d05427ee276cE
      local.get 4
      i32.load offset=12
      local.set 2
      local.get 4
      i32.load offset=8
      local.set 1
      br 0 (;@1;)
    end
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h8de6413318889c57E (;210;) (type 22) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h7fccccfa034b706fE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9d913933d7866a36E (;211;) (type 5) (param i32) (result i32)
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
      i32.const 132212
      i32.const 8
      call $_ZN257_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_owned..ManagedVecOwnedIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hac996104c3ac07e6E
      local.tee 0
      call $mBufferGetLength
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.const 132212
        i32.const 8
        call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hf2e848fa99011af5E
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
      i32.const 132212
      i32.const 8
      i32.const 131072
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h15253db9ce9923c8E
      unreachable
    end
    i32.const 132212
    i32.const 8
    i32.const 132152
    i32.const 13
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h15253db9ce9923c8E
    unreachable
  )
  (func $_ZN19dharitri_chain_core5types5flags15dcdt_local_role13DcdtLocalRole12as_role_name17h70f7a7dfdad9bf65E (;212;) (type 2) (param i32 i32)
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
                                i32.const 133076
                                local.set 2
                                br 12 (;@2;)
                              end
                              i32.const 133093
                              local.set 2
                              br 11 (;@2;)
                            end
                            i32.const 133110
                            local.set 2
                            br 10 (;@2;)
                          end
                          i32.const 133127
                          local.set 2
                          i32.const 22
                          local.set 1
                          br 10 (;@1;)
                        end
                        i32.const 133149
                        local.set 2
                        i32.const 15
                        local.set 1
                        br 9 (;@1;)
                      end
                      i32.const 133164
                      local.set 2
                      br 7 (;@2;)
                    end
                    i32.const 133181
                    local.set 2
                    i32.const 27
                    local.set 1
                    br 7 (;@1;)
                  end
                  i32.const 133208
                  local.set 2
                  i32.const 16
                  local.set 1
                  br 6 (;@1;)
                end
                i32.const 133224
                local.set 2
                br 4 (;@2;)
              end
              i32.const 133241
              local.set 2
              i32.const 23
              local.set 1
              br 4 (;@1;)
            end
            i32.const 133264
            local.set 2
            i32.const 21
            local.set 1
            br 3 (;@1;)
          end
          i32.const 133285
          local.set 2
          i32.const 19
          local.set 1
          br 2 (;@1;)
        end
        i32.const 133304
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
  (func $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h0800d05427ee276cE (;213;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    local.tee 5
    local.get 3
    local.get 4
    call $mBufferSetBytes
    drop
    local.get 2
    local.get 5
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$18issue_non_fungible17h004e62118a9895a1E (;214;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hfea0db9accdc05feE
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
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$5issue17h07a613b7f7903698E
    local.get 5
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hfea0db9accdc05feE (;215;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 0
    i64.const 0
    call $bigIntSetInt64
    local.get 0
  )
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$19issue_semi_fungible17h54d6c0976b85796cE (;216;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hfea0db9accdc05feE
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
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$5issue17h07a613b7f7903698E
    local.get 5
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$19unset_special_roles17h2f99e636f2cd4acfE (;217;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 40
    i32.add
    i32.const 131830
    i32.const 16
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 4
    i32.const 32
    i32.add
    local.get 4
    i32.load offset=40
    local.get 4
    i32.load offset=44
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h9e75a3ae8bbaec51E
    local.get 4
    i32.const 24
    i32.add
    local.get 4
    i32.load offset=32
    local.get 4
    i32.load offset=36
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h8de6413318889c57E
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
      call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9d913933d7866a36E
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
      call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h0800d05427ee276cE
      local.get 4
      i32.load offset=12
      local.set 2
      local.get 4
      i32.load offset=8
      local.set 1
      br 0 (;@1;)
    end
  )
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$23issue_and_set_all_roles17h58bea149862e35a3E (;218;) (type 32) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    i32.const 131791
    local.set 7
    i32.const 131849
    local.set 8
    i32.const 22
    local.set 9
    i32.const 3
    local.set 10
    i32.const 131846
    local.set 11
    i32.const 3
    local.set 12
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              local.get 4
              i32.const 255
              i32.and
              br_table 4 (;@1;) 3 (;@2;) 2 (;@3;) 0 (;@5;) 3 (;@2;) 2 (;@3;) 0 (;@5;) 1 (;@4;) 4 (;@1;)
            end
            i32.const 4
            local.set 12
            i32.const 131797
            local.set 7
            br 2 (;@2;)
          end
          i32.const 0
          local.set 10
          i32.const 1
          local.set 11
          i32.const 0
          local.set 9
          i32.const 1
          local.set 8
          br 2 (;@1;)
        end
        i32.const 131794
        local.set 7
        i32.const 3
        local.set 12
      end
      i32.const 131871
      i32.const 131849
      local.get 4
      i32.const -4
      i32.add
      i32.const 255
      i32.and
      i32.const 3
      i32.lt_u
      local.tee 9
      select
      local.set 8
      i32.const 29
      i32.const 22
      local.get 9
      select
      local.set 9
      local.get 7
      local.set 11
      local.get 12
      local.set 10
    end
    local.get 6
    i32.const 8
    i32.add
    local.get 8
    local.get 9
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 6
    local.get 1
    i32.store offset=40
    local.get 6
    local.get 6
    i64.load offset=8
    i64.store offset=32 align=4
    local.get 6
    i32.const 20
    i32.add
    local.get 6
    i32.const 32
    i32.add
    local.get 2
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hfd36f34906f9429cE
    local.get 6
    i32.const 32
    i32.add
    local.get 6
    i32.const 20
    i32.add
    local.get 3
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hfd36f34906f9429cE
    local.get 6
    i32.const 20
    i32.add
    local.get 6
    i32.const 32
    i32.add
    local.get 11
    local.get 10
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hb9d50264c7ad0176E
    block ;; label = @1
      local.get 4
      i32.const 6
      i32.and
      i32.const 4
      i32.eq
      br_if 0 (;@1;)
      local.get 6
      i32.const 32
      i32.add
      i32.const 8
      i32.add
      local.get 6
      i32.const 20
      i32.add
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get 6
      local.get 6
      i64.load offset=20 align=4
      i64.store offset=32
      local.get 6
      i32.const 20
      i32.add
      local.get 6
      i32.const 32
      i32.add
      local.get 5
      call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17heb13a95060f42f7cE
    end
    local.get 0
    local.get 6
    i32.load offset=28
    i32.store offset=8
    local.get 0
    local.get 6
    i64.load offset=20 align=4
    i64.store align=4
    local.get 6
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hb724c39f16019b5cE (;219;) (type 1) (param i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h652b932c25016bcfE
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
  (func $_ZN11dharitri_sc5types11interaction16callback_closure22cb_closure_storage_key17hed044ddc3e7a179dE (;220;) (type 3) (result i32)
    (local i32 i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 0
    call $managedGetOriginalTxHash
    i32.const 131954
    i32.const 10
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he82ecb04dfff02bfE
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h30e612e06580ca2bE (;221;) (type 7) (param i32 i32 i32) (result i32)
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
  (func $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h11c761faf85e299bE (;222;) (type 2) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h0264625766d6480bE
    local.tee 6
    local.get 2
    i32.const 16
    i32.add
    i32.const 32
    call $_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hddc4951a156bae73E
    local.get 1
    i32.const 0
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h98cdb8559eb36907E
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h0264625766d6480bE (;223;) (type 5) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h98cdb8559eb36907E (;224;) (type 16) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17he59cf7a5329a8f5dE
  )
  (func $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h215f3b192500221fE (;225;) (type 1) (param i32 i32 i32)
    block ;; label = @1
      local.get 1
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h41004dcd331a4bb5E
    end
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h41004dcd331a4bb5E (;226;) (type 2) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    drop
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1a231d3a20798b2aE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
  )
  (func $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h9280d18afedc37fbE (;227;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    i32.store offset=12
    local.get 3
    local.get 4
    i32.const 12
    i32.add
    call $_ZN139_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h22713e0998912130E
    local.get 2
    local.get 4
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN139_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h22713e0998912130E (;228;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.load
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1a231d3a20798b2aE
    local.set 3
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
      call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h34483fd6d1c3df8bE
      block ;; label = @2
        local.get 2
        i32.load offset=8
        br_if 0 (;@2;)
        local.get 1
        local.get 3
        i32.store
        local.get 2
        i32.const 32
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 2
      i32.load offset=12
      local.get 3
      call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h401123b5bfad9f5dE
      br 0 (;@1;)
    end
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h01f47da771026525E (;229;) (type 2) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17hcb4c3e91b9043599E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hd8e843cd262c7ab8E (;230;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    local.tee 4
    local.get 3
    i64.extend_i32_u
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h09de22244a8909f4E
    local.get 2
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h5c9ed9a40d0984b0E (;231;) (type 22) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h41004dcd331a4bb5E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h2386a24254600caeE (;232;) (type 2) (param i32 i32)
    local.get 1
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h27bf0cdf9bd4e8dfE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h7644df0c4dcacff1E (;233;) (type 9) (param i32)
    local.get 0
    call $_ZN11dharitri_sc5types11interaction9annotated14AnnotatedValue14with_value_ref17hf338eb95ef895898E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated14AnnotatedValue14with_value_ref17hf338eb95ef895898E (;234;) (type 9) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    call $_ZN329_$LT$dharitri_sc..types..interaction..markers..dcdt_system_sc_address..DCDTSystemSCAddress$u20$as$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$8to_value17h996e86169178bdfeE
    i32.store offset=12
    local.get 0
    local.get 1
    i32.const 12
    i32.add
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17ha62e73538156973dE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h8990ca3090c8793dE (;235;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h105b50cd29546e49E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h105b50cd29546e49E (;236;) (type 2) (param i32 i32)
    local.get 1
    local.get 0
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17ha62e73538156973dE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17he5b315c3d10ff447E (;237;) (type 1) (param i32 i32 i32)
    local.get 1
    local.get 2
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h5f897789fed0e203E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17ha98a7733973c7667E (;238;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17hb019e6ce2a769b4cE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17hb019e6ce2a769b4cE (;239;) (type 2) (param i32 i32)
    local.get 1
    local.get 0
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h1a5fffd51a07be98E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated14AnnotatedValue14with_value_ref17h3161a830c6d76243E (;240;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN329_$LT$dharitri_sc..types..interaction..markers..dcdt_system_sc_address..DCDTSystemSCAddress$u20$as$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$8to_value17h996e86169178bdfeE
    call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h5f897789fed0e203E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h1336ec1f6107f0acE (;241;) (type 2) (param i32 i32)
    local.get 1
    local.get 0
    call $_ZN11dharitri_sc5types11interaction10tx_payment29tx_payment_multi_rewa_or_dcdt416_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17hf8a54bfa100f4716E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hdc9ab5a11a939fd3E (;242;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block ;; label = @1
      local.get 3
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17hffab4404830fe2a7E
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h41004dcd331a4bb5E
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
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h34483fd6d1c3df8bE
        local.get 5
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        local.get 5
        i32.load offset=12
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h41004dcd331a4bb5E
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
  (func $_ZN174_$LT$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$M$GT$$u20$as$u20$dharitri_sc..types..managed..wrapped..managed_vec_item..ManagedVecItem$GT$19borrow_from_payload17hecc599a306c312faE (;243;) (type 2) (param i32 i32)
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
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hced03b6ccbb1e76dE (;244;) (type 22) (param i32 i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    drop
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17hbe4acbbf5b21fb94E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hbb9c82bd9251423cE (;245;) (type 2) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17he3c5943545688ddbE (;246;) (type 0) (param i32 i64)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    local.tee 2
    local.get 1
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h09de22244a8909f4E
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h7c4e565134499741E (;247;) (type 2) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    drop
    local.get 0
    local.get 1
    i32.load
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17hbe4acbbf5b21fb94E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
  )
  (func $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h345a84db45cd36f7E (;248;) (type 2) (param i32 i32)
    block ;; label = @1
      local.get 0
      call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h934f0dafccc28bcfE
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1a231d3a20798b2aE
      i32.store
      return
    end
    local.get 1
    i32.load
    i32.const 132143
    i32.const 4
    call $_ZN11dharitri_sc5types7managed10codec_util28managed_buffer_top_en_output174_$LT$impl$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$u20$for$u20$$RF$mut$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$12set_slice_u817h42403c6d76a524ddE
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h7fccccfa034b706fE (;249;) (type 2) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    drop
    local.get 0
    local.get 1
    i32.load
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1a231d3a20798b2aE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hc569b7447a547bcfE (;250;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    i32.store offset=12
    local.get 1
    i32.load
    local.get 2
    i32.const 12
    i32.add
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h345a84db45cd36f7E
    local.get 0
    local.get 2
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hbe2a2f9ea6ee0073E (;251;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    local.get 3
    call $mBufferGetLength
    i32.store offset=28
    local.get 4
    i32.const 0
    i32.store offset=24
    local.get 4
    local.get 3
    i32.store offset=20
    block ;; label = @1
      loop ;; label = @2
        local.get 4
        i32.const 8
        i32.add
        local.get 4
        i32.const 20
        i32.add
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h34483fd6d1c3df8bE
        local.get 4
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        local.get 4
        i32.load offset=12
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h41004dcd331a4bb5E
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 4
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17hbe4acbbf5b21fb94E (;252;) (type 5) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h09de22244a8909f4E (;253;) (type 0) (param i32 i64)
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
    call $_ZN11dharitri_sc5types7managed10codec_util28managed_buffer_top_en_output174_$LT$impl$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$u20$for$u20$$RF$mut$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$12set_slice_u817h42403c6d76a524ddE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17h2b42357007a004ecE (;254;) (type 9) (param i32)
    (local i32 i64 i32)
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load offset=8
          local.tee 1
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17hffab4404830fe2a7E
          br_if 0 (;@3;)
          call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h0dfde525ea928006E
          local.set 2
          local.get 0
          i32.load offset=4
          local.set 3
          br 1 (;@2;)
        end
        i64.const 0
        local.set 2
        local.get 0
        i32.load offset=4
        local.tee 3
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h0264625766d6480bE
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 3
      local.get 0
      i32.load
      i32.load
      local.get 2
      local.get 1
      local.get 0
      i32.load offset=12
      call $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt398_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$24perform_transfer_execute17ha7a82a8e24e7f375E
    end
  )
  (func $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h0dfde525ea928006E (;255;) (type 14) (result i64)
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
  (func $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17h6d5ec03d920ed8fdE (;256;) (type 9) (param i32)
    (local i32 i32 i64 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load offset=16
          local.tee 2
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17hffab4404830fe2a7E
          br_if 0 (;@3;)
          call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h0dfde525ea928006E
          local.set 3
          br 1 (;@2;)
        end
        i64.const 0
        local.set 3
        local.get 0
        i32.load offset=12
        call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17hdbcd228f645e1212E
        br_if 1 (;@1;)
      end
      local.get 1
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.get 0
      i32.const 8
      i32.add
      i64.load
      local.tee 4
      i64.store
      local.get 1
      local.get 0
      i64.load
      i64.store offset=8
      local.get 0
      i32.load offset=24
      local.set 5
      local.get 0
      i32.load offset=20
      local.set 0
      block ;; label = @2
        local.get 4
        i32.wrap_i64
        local.tee 6
        call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h934f0dafccc28bcfE
        br_if 0 (;@2;)
        local.get 1
        local.get 6
        i32.store offset=28
        local.get 1
        local.get 1
        i32.const 20
        i32.add
        i32.store offset=60
        local.get 1
        local.get 1
        i64.load offset=8
        i64.store offset=48
        local.get 1
        local.get 0
        i32.store offset=40
        local.get 1
        local.get 2
        i32.store offset=36
        local.get 1
        local.get 1
        i32.const 28
        i32.add
        i32.store offset=56
        local.get 1
        local.get 5
        i32.store offset=32
        local.get 1
        i32.const 48
        i32.add
        local.get 5
        i32.load
        local.get 3
        local.get 2
        local.get 0
        call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17h03c13df554da87b9E
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=20
      local.get 5
      i32.load
      local.get 3
      local.get 2
      local.get 0
      call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$24perform_transfer_execute17h7002fd7771e45988E
    end
    local.get 1
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17hdbcd228f645e1212E (;257;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic11big_num_cmp10bi_cmp_i6417hdb72bded69d69e48E
    i32.const 255
    i32.and
    i32.eqz
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17h70109ce6992efaf9E (;258;) (type 9) (param i32)
    (local i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load offset=8
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17hffab4404830fe2a7E
          br_if 0 (;@3;)
          local.get 0
          i64.load
          local.set 2
          br 1 (;@2;)
        end
        i64.const 0
        local.set 2
        local.get 0
        i32.load offset=28
        i32.load
        call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17hdbcd228f645e1212E
        br_if 1 (;@1;)
      end
      local.get 1
      local.get 0
      i32.const 40
      call $memcpy
      local.tee 3
      local.get 2
      i64.store offset=40
      local.get 3
      i32.const 64
      i32.add
      local.get 0
      i32.const 24
      i32.add
      i64.load
      i64.store
      local.get 3
      local.get 3
      i32.const 36
      i32.add
      i32.store offset=72
      local.get 3
      local.get 3
      i32.load offset=12
      local.tee 4
      i32.store offset=52
      local.get 3
      local.get 3
      i32.load offset=8
      local.tee 5
      i32.store offset=48
      local.get 3
      local.get 0
      i64.load offset=16
      i64.store offset=56
      local.get 3
      local.get 3
      i32.const 40
      i32.add
      i32.store offset=76
      local.get 3
      i32.const 56
      i32.add
      local.get 3
      i32.load offset=32
      i32.load
      local.get 2
      local.get 5
      local.get 4
      call $_ZN11dharitri_sc5types11interaction10tx_payment28tx_payment_rewa_or_dcdt_refs270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17h021bc8ee30773c0fE
    end
    local.get 1
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te191_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$$LP$$RP$$C$$LP$$RP$$C$$LP$$RP$$GT$$GT$8transfer17hbd1da493e4dd6763E (;259;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h94052e9433022aa5E
    local.get 1
    local.get 0
    i64.const 0
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load offset=12
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$24perform_transfer_execute17h7002fd7771e45988E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h94052e9433022aa5E (;260;) (type 9) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hbb9c82bd9251423cE
    local.get 1
    i32.load offset=12
    local.set 2
    local.get 0
    local.get 1
    i32.load offset=8
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te191_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$$LP$$RP$$C$$LP$$RP$$C$$LP$$RP$$GT$$GT$8transfer17hc358d9d6cbd4bb39E (;261;) (type 9) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i64.const 0
    i64.store offset=16
    local.get 1
    i32.const 24
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
    i32.const 20
    i32.add
    i32.store offset=40
    local.get 1
    local.get 0
    i64.load
    i64.store offset=24
    local.get 1
    local.get 1
    i32.const 16
    i32.add
    i32.store offset=44
    local.get 0
    i32.load offset=16
    local.set 0
    local.get 1
    i32.const 8
    i32.add
    call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h94052e9433022aa5E
    local.get 1
    i32.const 24
    i32.add
    local.get 0
    i32.load
    i64.const 0
    local.get 1
    i32.load offset=8
    local.get 1
    i32.load offset=12
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17h03c13df554da87b9E
    local.get 1
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h0ef96419146397d6E (;262;) (type 31) (param i64 i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17haae5e18ee28e6fb7E
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h669cc27942bded19E (;263;) (type 35) (param i64 i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17haae5e18ee28e6fb7E
    drop
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17hbc92af6761c01c6bE (;264;) (type 5) (param i32) (result i32)
    (local i32 i32 i32 i64 i32)
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
    local.set 4
    local.get 0
    i32.load offset=16
    local.set 0
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E
    local.set 5
    local.get 4
    local.get 0
    i32.load
    local.get 5
    local.get 3
    local.get 2
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17haae5e18ee28e6fb7E
    local.set 0
    call $cleanReturnData
    local.get 1
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h761bf0300273afeeE
    local.tee 3
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
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
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17ha185cdf7763cdd11E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
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
  (func $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17ha185cdf7763cdd11E (;265;) (type 5) (param i32) (result i32)
    local.get 0
    i32.const 132043
    i32.const 11
    call $_ZN257_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_owned..ManagedVecOwnedIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hac996104c3ac07e6E
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1a231d3a20798b2aE
  )
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h9cbe0acc705e02efE (;266;) (type 20) (param i32 i32 i32) (result i64)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN257_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_owned..ManagedVecOwnedIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hac996104c3ac07e6E
    local.get 1
    local.get 2
    call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hf2e848fa99011af5E
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h2851516ebe0d664fE (;267;) (type 9) (param i32)
    local.get 0
    i32.const 4
    i32.add
    call $_ZN185_$LT$dharitri_sc..types..interaction..callback_closure..CallbackClosure$LT$Api$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_exec..tx_exec_async..TxAsyncCallCallback$LT$Api$GT$$GT$32save_callback_closure_to_storage17h7df3734f780ab092E
    local.get 0
    i32.load
    local.get 0
    i32.load offset=16
    local.get 0
    i32.load offset=20
    call $_ZN165_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_not_payable..NotPayable$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h702992e00977533eE
    unreachable
  )
  (func $_ZN185_$LT$dharitri_sc..types..interaction..callback_closure..CallbackClosure$LT$Api$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_exec..tx_exec_async..TxAsyncCallCallback$LT$Api$GT$$GT$32save_callback_closure_to_storage17h7df3734f780ab092E (;268;) (type 9) (param i32)
    (local i32 i32)
    call $_ZN11dharitri_sc5types11interaction16callback_closure22cb_closure_storage_key17hed044ddc3e7a179dE
    local.set 1
    call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hc234684ca2c4cdd2E
    local.set 2
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types10impl_slice96_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$$u5b$T$u5d$$GT$24dep_encode_or_handle_err17hd031ffc2679fa2ffE
    local.get 0
    i32.load offset=8
    local.get 2
    call $_ZN145_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h992efbd6c6ab19c8E
    local.get 1
    local.get 2
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hb2fdf587dc2d5a3bE
  )
  (func $_ZN165_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_not_payable..NotPayable$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h702992e00977533eE (;269;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h7bc0ade2d329aa4dE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h29831eae6496e0edE (;270;) (type 9) (param i32)
    local.get 0
    call $_ZN185_$LT$dharitri_sc..types..interaction..callback_closure..CallbackClosure$LT$Api$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_exec..tx_exec_async..TxAsyncCallCallback$LT$Api$GT$$GT$32save_callback_closure_to_storage17h7df3734f780ab092E
    local.get 0
    i32.load offset=12
    local.get 0
    i32.load offset=16
    call $_ZN165_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_not_payable..NotPayable$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h072a68d3c5c74479E
    unreachable
  )
  (func $_ZN165_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_not_payable..NotPayable$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h072a68d3c5c74479E (;271;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h0697f663fea3c2a2E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h3dd63f63c075c482E (;272;) (type 9) (param i32)
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h7eed006eff3f3ef2E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h3eb5b41f27d2730aE (;273;) (type 9) (param i32)
    local.get 0
    call $_ZN185_$LT$dharitri_sc..types..interaction..callback_closure..CallbackClosure$LT$Api$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_exec..tx_exec_async..TxAsyncCallCallback$LT$Api$GT$$GT$32save_callback_closure_to_storage17h7df3734f780ab092E
    local.get 0
    i32.load offset=12
    local.get 0
    i32.const 24
    i32.add
    local.get 0
    i32.load offset=16
    local.get 0
    i32.load offset=20
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h77adca5eb08456ddE
    unreachable
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h77adca5eb08456ddE (;274;) (type 22) (param i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h7644df0c4dcacff1E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hbc946d55a1562042E (;275;) (type 9) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i32.const 24
    i32.add
    call $_ZN185_$LT$dharitri_sc..types..interaction..callback_closure..CallbackClosure$LT$Api$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_exec..tx_exec_async..TxAsyncCallCallback$LT$Api$GT$$GT$32save_callback_closure_to_storage17h7df3734f780ab092E
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 1
    local.get 0
    i64.load offset=8
    i64.store
    local.get 1
    local.get 0
    i32.const 40
    i32.add
    local.tee 2
    local.get 2
    local.get 0
    i32.load offset=36
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN11dharitri_sc5types11interaction10tx_payment28tx_payment_rewa_or_dcdt_refs270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h2abdf4b711d4d1e4E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hd8cffa1e8e9177b9E (;276;) (type 9) (param i32)
    (local i32)
    local.get 0
    i32.load offset=4
    local.get 0
    i32.const 16
    i32.add
    local.tee 1
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc5types11interaction10tx_payment29tx_payment_multi_rewa_or_dcdt412_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized17hcaf227d14d2ba33bE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hed048db3a14c933eE (;277;) (type 9) (param i32)
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
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 1
    local.get 0
    i64.load offset=8
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
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN11dharitri_sc5types11interaction10tx_payment28tx_payment_rewa_or_dcdt_refs270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h2abdf4b711d4d1e4E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hf949902e8d63e5d2E (;278;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN165_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_not_payable..NotPayable$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h072a68d3c5c74479E
    unreachable
  )
  (func $_ZN329_$LT$dharitri_sc..types..interaction..markers..dcdt_system_sc_address..DCDTSystemSCAddress$u20$as$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$8to_value17h996e86169178bdfeE (;279;) (type 3) (result i32)
    i32.const 131964
    i32.const 32
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he82ecb04dfff02bfE
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17ha62e73538156973dE (;280;) (type 2) (param i32 i32)
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
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h8892c7aceeb151b6E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated23annotated_impl_big_uint381_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h0fabaa5d1bccd36aE (;281;) (type 2) (param i32 i32)
    local.get 1
    local.get 0
    i32.load
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h8892c7aceeb151b6E
    unreachable
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h8892c7aceeb151b6E (;282;) (type 2) (param i32 i32)
    local.get 0
    i32.load
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h1400fe0dd9ee92cfE
    unreachable
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h1a5fffd51a07be98E (;283;) (type 2) (param i32 i32)
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
    local.get 3
    i32.load
    local.get 2
    i32.const 4
    i32.add
    call $_ZN11dharitri_sc5types11interaction9annotated23annotated_impl_big_uint381_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h0fabaa5d1bccd36aE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util28managed_buffer_top_en_output174_$LT$impl$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$u20$for$u20$$RF$mut$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$12set_slice_u817h42403c6d76a524ddE (;284;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferSetBytes
    drop
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h19a72261c07067ebE (;285;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17hfaad4356718ce9ccE
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
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h2c590c622ca74e9bE
    block ;; label = @1
      local.get 2
      i32.load offset=8
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      i32.const 132054
      i32.const 15
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h8527bac5c16eb702E
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17hfaad4356718ce9ccE (;286;) (type 4) (param i32 i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h6cc622ec9fd13b36E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h2c590c622ca74e9bE (;287;) (type 22) (param i32 i32 i32 i32)
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
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h8527bac5c16eb702E (;288;) (type 1) (param i32 i32 i32)
    (local i32)
    i32.const 132165
    i32.const 27
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he82ecb04dfff02bfE
    local.tee 3
    local.get 0
    call $mBufferAppend
    drop
    local.get 3
    i32.const 131329
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
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hf1eb4d33bbe89681E (;289;) (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    local.get 1
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17hdb8f9517e6a62029E
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
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h2c590c622ca74e9bE
    block ;; label = @1
      local.get 3
      i32.load offset=8
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 132054
      i32.const 15
      call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h570d3708f8e88542E
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17hdb8f9517e6a62029E (;290;) (type 7) (param i32 i32 i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17ha4c9b8cc6caf135cE
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
  (func $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h570d3708f8e88542E (;291;) (type 22) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he82ecb04dfff02bfE
    local.tee 1
    local.get 2
    local.get 3
    call $mBufferAppendBytes
    drop
    local.get 1
    call $managedSignalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17hcb4c3e91b9043599E (;292;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferAppendBytes
    drop
  )
  (func $_ZN11dharitri_sc5types7managed11multi_value19multi_value_encoded30MultiValueEncoded$LT$M$C$T$GT$6to_vec17h2bd3c7eafc473875E (;293;) (type 5) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    local.set 2
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
    loop (result i32) ;; label = @1
      local.get 1
      i32.const 8
      i32.add
      local.get 1
      i32.const 20
      i32.add
      call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h34483fd6d1c3df8bE
      block ;; label = @2
        local.get 1
        i32.load offset=8
        br_if 0 (;@2;)
        local.get 1
        i32.const 32
        i32.add
        global.set $__stack_pointer
        local.get 2
        return
      end
      local.get 2
      local.get 1
      i32.load offset=12
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1a231d3a20798b2aE
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1a231d3a20798b2aE
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
      br 0 (;@1;)
    end
  )
  (func $_ZN11dharitri_sc5types7managed5basic11big_num_cmp10bi_cmp_i6417hdb72bded69d69e48E (;294;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$7bi_sign17h12474b880d747599E
    i32.const 255
    i32.and
    i32.const -1
    i32.add
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17hd1fdca0d63bc9a1aE (;295;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferAppend
    drop
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$16from_single_item17h49a5f3292592a7f8E (;296;) (type 5) (param i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    local.tee 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$17load_item_payload17he04f3fe5667097d4E (;297;) (type 4) (param i32 i32) (result i32)
    local.get 0
    i32.const 0
    local.get 1
    i32.const 16
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h98cdb8559eb36907E
    i32.const 1
    i32.xor
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped16token_identifier24TokenIdentifier$LT$M$GT$7try_new17hcc159319e2fe3780E (;298;) (type 2) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h934f0dafccc28bcfE
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
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17hbe6861fcfb2b8c16E (;299;) (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc3api13managed_types11big_int_api13BigIntApiImpl15bi_sub_unsigned17hec6c6b4b82746295E
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h9814ddb86990d5f1E (;300;) (type 5) (param i32) (result i32)
    i32.const -11
    i64.const 2
    call $bigIntSetInt64
    local.get 0
    local.get 0
    i32.const -11
    call $bigIntTDiv
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u64$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h6059ddec400584a4E (;301;) (type 5) (param i32) (result i32)
    i32.const -11
    i64.const 10000
    call $bigIntSetInt64
    local.get 0
    local.get 0
    i32.const -11
    call $bigIntTDiv
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators196_$LT$impl$u20$core..ops..arith..Mul$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3mul17h954de9909aa4e30aE (;302;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 2
    local.get 0
    local.get 1
    call $bigIntMul
    local.get 2
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators196_$LT$impl$u20$core..ops..arith..Sub$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h26f14f70db9ba4ceE (;303;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc3api13managed_types11big_int_api13BigIntApiImpl15bi_sub_unsigned17hec6c6b4b82746295E
    local.get 2
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h419d0b236349b4b2E (;304;) (type 16) (param i32 i32 i32 i32) (result i32)
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
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h0264625766d6480bE
                local.tee 7
                i32.const 10000
                i32.gt_u
                i32.const 0
                i32.load8_u offset=143512
                i32.or
                local.tee 8
                i32.const 1
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 7
                i32.store offset=143508
                i32.const 0
                i32.const 1
                i32.store8 offset=143512
                local.get 4
                i32.const 8
                i32.add
                local.get 7
                i32.const 133508
                i32.const 10000
                call $_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hddc4951a156bae73E
                local.get 6
                i32.const 0
                local.get 4
                i32.load offset=8
                local.get 4
                i32.load offset=12
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h98cdb8559eb36907E
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
                i32.store offset=143508
                i32.const 0
                i32.const 0
                i32.store8 offset=143512
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
            i32.load offset=143508
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
            i32.const 133508
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
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h98cdb8559eb36907E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$11map_or_else17h60eddb27109526d6E (;305;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block ;; label = @1
      local.get 0
      call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h934f0dafccc28bcfE
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
      call $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$16map_rewa_or_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17hf9c90cf3b87d79feE
      unreachable
    end
    local.get 2
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$16map_rewa_or_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17hd88f141635fd429fE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$16map_rewa_or_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17hd88f141635fd429fE (;306;) (type 2) (param i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17hc6ffb83ae79b7a26E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$16map_rewa_or_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17hf9c90cf3b87d79feE (;307;) (type 1) (param i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h2f73ee26e96c793aE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$15map_ref_or_else17h0db9b24a00c13138E (;308;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block ;; label = @1
      local.get 0
      call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h934f0dafccc28bcfE
      br_if 0 (;@1;)
      local.get 5
      local.get 0
      i32.store offset=12
      local.get 5
      i32.const 16
      i32.add
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
      i64.store offset=16
      local.get 5
      local.get 5
      i32.const 12
      i32.add
      i32.store offset=28
      local.get 4
      local.get 5
      i32.const 16
      i32.add
      local.get 5
      i32.const 12
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment35RewaOrDcdtTokenPaymentRefs$LT$M$GT$16map_rewa_or_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17h27bb48f105e11b7aE
      unreachable
    end
    local.get 2
    local.get 3
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment35RewaOrDcdtTokenPaymentRefs$LT$M$GT$16map_rewa_or_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17h74621d3196fd1f1dE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment35RewaOrDcdtTokenPaymentRefs$LT$M$GT$16map_rewa_or_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17h27bb48f105e11b7aE (;309;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32)
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
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 3
    local.get 2
    i32.store offset=24
    local.get 3
    local.get 1
    i64.load align=4
    i64.store
    local.get 3
    local.get 0
    i32.load offset=12
    i32.store offset=28
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment28tx_payment_rewa_or_dcdt_refs270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17hdecd4b572ddcbebbE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment35RewaOrDcdtTokenPaymentRefs$LT$M$GT$16map_rewa_or_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17h74621d3196fd1f1dE (;310;) (type 1) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 3
    local.get 1
    i32.store offset=12
    local.get 3
    local.get 2
    i64.load align=4
    i64.store
    local.get 0
    local.get 3
    local.get 1
    call $_ZN11dharitri_sc5types11interaction10tx_payment28tx_payment_rewa_or_dcdt_refs270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h119fd7b919eb5c76E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$11unwrap_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17hb67846b0605d6063E (;311;) (type 15)
    i32.const 132130
    i32.const 13
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h7059c70463acda7aE (;312;) (type 5) (param i32) (result i32)
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
      call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$4rewa17h0ed248f736479bf9E
      local.set 0
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h39e8ee89cc7b5fc3E (;313;) (type 5) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_set11storage_set17h5f1e9031efea917eE (;314;) (type 2) (param i32 i32)
    block ;; label = @1
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h934f0dafccc28bcfE
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_ZN11dharitri_sc7storage11storage_set25StorageSetOutput$LT$A$GT$18set_managed_buffer17h62c9dabc6508beb4E
      return
    end
    local.get 0
    i32.const 132143
    i32.const 4
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h7f5feff1b26ff1ceE
  )
  (func $_ZN11dharitri_sc7storage11storage_set25StorageSetOutput$LT$A$GT$18set_managed_buffer17h62c9dabc6508beb4E (;315;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferStorageStore
    drop
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h7f5feff1b26ff1ceE (;316;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he82ecb04dfff02bfE
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage11storage_set13storage_clear17ha1cf96fd4a02c6cbE (;317;) (type 9) (param i32)
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
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17h3dae6873f82bfc21E (;318;) (type 2) (param i32 i32)
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
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h7f5feff1b26ff1ceE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec8num_conv17top_encode_number17he16fb69829eeed2eE (;319;) (type 23) (param i32 i64 i32)
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
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$13get_unchecked17hc409ebf26e476270E (;320;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h9640aef07aeed913E
    local.tee 1
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h39e8ee89cc7b5fc3E
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
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h19a72261c07067ebE
    local.set 5
    local.get 3
    i32.const 4
    i32.add
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h19a72261c07067ebE
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h7059c70463acda7aE
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h6cc622ec9fd13b36E
    local.get 3
    i64.load offset=24
    local.set 7
    local.get 3
    i32.const 4
    i32.add
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h19a72261c07067ebE
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17hb4f8febeddbdb1feE
    local.set 8
    local.get 3
    i32.const 4
    i32.add
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17hfaad4356718ce9ccE
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
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
        call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h19a72261c07067ebE
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
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
        i32.store offset=143508
        i32.const 0
        i32.const 0
        i32.store8 offset=143512
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
    i32.const 131072
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h8527bac5c16eb702E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h9640aef07aeed913E (;321;) (type 4) (param i32 i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1a231d3a20798b2aE
    local.tee 0
    i32.const 132147
    i32.const 5
    call $mBufferAppendBytes
    drop
    local.get 1
    local.get 0
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h29599ef627bf6126E
    local.get 0
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h6cc622ec9fd13b36E (;322;) (type 22) (param i32 i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h419d0b236349b4b2E
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h1a71a03a8570ca9aE
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17hd244ac7d719d78d9E (;323;) (type 5) (param i32) (result i32)
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
        call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h39e8ee89cc7b5fc3E
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
      i32.const 131072
      i32.const 14
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h8527bac5c16eb702E
      unreachable
    end
    local.get 0
    i32.const 131072
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h8527bac5c16eb702E
    unreachable
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h29599ef627bf6126E (;324;) (type 2) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17hcb4c3e91b9043599E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h049df649b560826aE (;325;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_set25StorageSetOutput$LT$A$GT$18set_managed_buffer17h62c9dabc6508beb4E
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17h2c84b66ae5c043dcE (;326;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h7c4e565134499741E
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17hb8a881e95f88b177E (;327;) (type 0) (param i32 i64)
    local.get 0
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17he3c5943545688ddbE
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17hcf9dc21ade4e0a94E (;328;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hc569b7447a547bcfE
  )
  (func $_ZN11dharitri_sc8log_util23event_topic_accumulator17ha793922880535d00E (;329;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    local.tee 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he82ecb04dfff02bfE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
    local.get 2
  )
  (func $_ZN122_$LT$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4ed58603abe673e1E (;330;) (type 2) (param i32 i32)
    (local i32 i64)
    local.get 1
    i32.load offset=8
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1a231d3a20798b2aE
    local.set 2
    local.get 1
    i64.load
    local.set 3
    local.get 0
    local.get 1
    i32.load offset=12
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae9780430f891b94E
    i32.store offset=12
    local.get 0
    local.get 3
    i64.store
    local.get 0
    local.get 2
    i32.store offset=8
  )
  (func $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hc234684ca2c4cdd2E (;331;) (type 3) (result i32)
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he82ecb04dfff02bfE
  )
  (func $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hb4af8bb98bfade2aE (;332;) (type 9) (param i32)
    local.get 0
    call $mBufferFinish
    drop
  )
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h5999cc4e628f6677E (;333;) (type 2) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17hbe4acbbf5b21fb94E
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h401123b5bfad9f5dE
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h401123b5bfad9f5dE (;334;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h0264625766d6480bE
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17hcb4c3e91b9043599E
    local.get 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17hd1fdca0d63bc9a1aE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hb2fdf587dc2d5a3bE (;335;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferStorageStore
    drop
  )
  (func $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17hd9724ba96bed86edE (;336;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h39e8ee89cc7b5fc3E
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h992efbd6c6ab19c8E (;337;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h0264625766d6480bE
    i32.const 2
    i32.shr_u
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h29599ef627bf6126E
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
      call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h34483fd6d1c3df8bE
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
      call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h401123b5bfad9f5dE
      br 0 (;@1;)
    end
  )
  (func $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h73012bb03c051b22E (;338;) (type 2) (param i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 31
    i32.add
    local.get 1
    call $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h324475e27ea02625E
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i32.load8_u offset=31
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 2
        i32.const 8
        i32.add
        i32.const 8
        i32.add
        local.get 2
        i32.const 40
        i32.add
        i64.load align=1
        i64.store
        local.get 2
        local.get 2
        i64.load offset=32 align=1
        i64.store offset=8
        local.get 0
        i32.const 8
        i32.add
        local.get 2
        i32.const 8
        i32.add
        call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$M$GT$$u20$as$u20$dharitri_sc..types..managed..wrapped..managed_vec_item..ManagedVecItem$GT$19borrow_from_payload17hecc599a306c312faE
        i64.const 1
        local.set 3
        br 1 (;@1;)
      end
      i64.const 0
      local.set 3
    end
    local.get 0
    local.get 3
    i64.store
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74e846980171c148E (;339;) (type 2) (param i32 i32)
    (local i64 i32)
    i64.const 0
    local.set 2
    block ;; label = @1
      local.get 1
      i32.load offset=4
      local.get 1
      i32.load offset=8
      i32.ge_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 132212
      i32.const 8
      call $_ZN257_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_owned..ManagedVecOwnedIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hac996104c3ac07e6E
      call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17hdd836ec0c1f3b596E
      local.set 3
      local.get 1
      i32.const 132212
      i32.const 8
      call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h9cbe0acc705e02efE
      local.set 2
      local.get 0
      local.get 1
      call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h340e6cbab587c1efE
      i32.store offset=20
      local.get 0
      local.get 3
      i32.store offset=16
      local.get 0
      local.get 2
      i64.store offset=8
      i64.const 1
      local.set 2
    end
    local.get 0
    local.get 2
    i64.store
  )
  (func $_ZN257_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_owned..ManagedVecOwnedIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hac996104c3ac07e6E (;340;) (type 7) (param i32 i32 i32) (result i32)
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
    call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h34483fd6d1c3df8bE
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
    i32.const 131332
    i32.const 17
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h15253db9ce9923c8E
    unreachable
  )
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h340e6cbab587c1efE (;341;) (type 5) (param i32) (result i32)
    local.get 0
    i32.const 132212
    i32.const 8
    call $_ZN257_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_owned..ManagedVecOwnedIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hac996104c3ac07e6E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17hb4f8febeddbdb1feE
  )
  (func $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hf2e848fa99011af5E (;342;) (type 20) (param i32 i32 i32) (result i64)
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
      i32.const 131072
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h15253db9ce9923c8E
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
  (func $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he4474a11514917d1E (;343;) (type 2) (param i32 i32)
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
        i32.const 132212
        i32.const 8
        call $_ZN257_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_owned..ManagedVecOwnedIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hac996104c3ac07e6E
        call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17hdd836ec0c1f3b596E
        call $_ZN11dharitri_sc5types7managed7wrapped16token_identifier24TokenIdentifier$LT$M$GT$7try_new17hcc159319e2fe3780E
        local.get 2
        i32.load offset=8
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=12
        local.set 4
        local.get 1
        i32.const 132212
        i32.const 8
        call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h9cbe0acc705e02efE
        local.set 3
        local.get 0
        local.get 1
        call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h340e6cbab587c1efE
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
    i32.const 132212
    i32.const 8
    i32.const 132130
    i32.const 13
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h15253db9ce9923c8E
    unreachable
  )
  (func $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h86813e7ff9418922E (;344;) (type 9) (param i32)
    block ;; label = @1
      local.get 0
      call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h934f0dafccc28bcfE
      br_if 0 (;@1;)
      local.get 0
      call $mBufferFinish
      drop
      return
    end
    i32.const 132143
    i32.const 4
    call $finish
  )
  (func $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h629f00f5b80b9709E (;345;) (type 2) (param i32 i32)
    block ;; label = @1
      local.get 0
      call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h934f0dafccc28bcfE
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h401123b5bfad9f5dE
      return
    end
    i32.const 132143
    i32.const 4
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types10impl_slice96_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$$u5b$T$u5d$$GT$24dep_encode_or_handle_err17hd031ffc2679fa2ffE
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types10impl_slice96_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$$u5b$T$u5d$$GT$24dep_encode_or_handle_err17hd031ffc2679fa2ffE (;346;) (type 1) (param i32 i32 i32)
    local.get 1
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h29599ef627bf6126E
    local.get 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17hcb4c3e91b9043599E
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17hc787f77e99fe0dd2E (;347;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 132054
    i32.const 15
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h15253db9ce9923c8E
    unreachable
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h978383d2f9c68c6fE (;348;) (type 36) (param i64 i32)
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17hcb4c3e91b9043599E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17ha4c9b8cc6caf135cE (;349;) (type 33) (param i32 i32 i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h419d0b236349b4b2E
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 4
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h83c384909fb5ed10E
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h1a71a03a8570ca9aE (;350;) (type 9) (param i32)
    local.get 0
    i32.const 132054
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h8527bac5c16eb702E
    unreachable
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h83c384909fb5ed10E (;351;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 132054
    i32.const 15
    call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h570d3708f8e88542E
    unreachable
  )
  (func $_ZN258_$LT$dharitri_sc..types..interaction..tx_result_handler_list..tx_result_handler_list_cons..ConsRet$LT$Env$C$Head$C$Tail$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_result_handler_list..tx_result_handler_list_exec..RHListExec$LT$RawResult$C$Env$GT$$GT$19list_process_result17hff0fe65fa7fd0980E (;352;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1a231d3a20798b2aE
    local.set 1
    local.get 3
    local.get 2
    call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h761bf0300273afeeE
    local.tee 4
    call $mBufferGetLength
    local.tee 5
    i32.store offset=12
    i32.const 0
    local.set 2
    local.get 3
    i32.const 0
    i32.store offset=8
    local.get 3
    local.get 4
    i32.store offset=4
    block ;; label = @1
      block ;; label = @2
        local.get 5
        br_if 0 (;@2;)
        i32.const 1
        local.set 2
        br 1 (;@1;)
      end
      local.get 3
      i32.const 4
      i32.add
      call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17ha185cdf7763cdd11E
      local.set 4
    end
    local.get 0
    local.get 4
    i32.store offset=8
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN4core3cmp10PartialOrd2gt17h28c03c1285021d3aE (;353;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic11big_num_cmp10bi_cmp_i6417hdb72bded69d69e48E
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
  )
  (func $_ZN68_$LT$C$u20$as$u20$forwarder..fwd_storage..ForwarderStorageModule$GT$17last_issued_token17hee5ac7a34bbd99cbE (;354;) (type 3) (result i32)
    i32.const 132291
    i32.const 15
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he82ecb04dfff02bfE
  )
  (func $_ZN68_$LT$C$u20$as$u20$forwarder..fwd_storage..ForwarderStorageModule$GT$18last_error_message17ha8d98b44fa3adc18E (;355;) (type 3) (result i32)
    i32.const 132306
    i32.const 16
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he82ecb04dfff02bfE
  )
  (func $_ZN71_$LT$C$u20$as$u20$forwarder..fwd_call_sync..ForwarderSyncCallModule$GT$36execute_on_dest_context_result_event17hda5b760c8d75b2a8E (;356;) (type 9) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 132346
    i32.const 26
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17ha793922880535d00E
    local.set 2
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    i32.store offset=12
    local.get 0
    local.get 1
    i32.const 12
    i32.add
    call $_ZN139_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h22713e0998912130E
    local.get 2
    local.get 1
    i32.load offset=12
    call $managedWriteLog
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN73_$LT$C$u20$as$u20$forwarder..fwd_call_async..ForwarderAsyncCallModule$GT$13callback_data17h0761864367e11722E (;357;) (type 9) (param i32)
    (local i32 i32)
    i32.const 132372
    i32.const 13
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he82ecb04dfff02bfE
    local.tee 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1a231d3a20798b2aE
    local.tee 2
    i32.const 132192
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
  (func $_ZN9forwarder10fwd_deploy20DeployContractModule20perform_deploy_vault17hac48b05d01b5a7d4E (;358;) (type 22) (param i32 i32 i32 i32)
    (local i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 2
    local.get 3
    call $_ZN9forwarder11vault_proxy52VaultProxyMethods$LT$Env$C$From$C$$LP$$RP$$C$Gas$GT$4init17habf7cd75957a11acE
    local.set 3
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1a231d3a20798b2aE
    local.set 1
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h0dfde525ea928006E
    local.set 5
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hfea0db9accdc05feE
    local.set 2
    i32.const 256
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17h815dec9838ae7791E
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
    i32.const 4
    i32.add
    local.get 6
    local.get 7
    call $_ZN258_$LT$dharitri_sc..types..interaction..tx_result_handler_list..tx_result_handler_list_cons..ConsRet$LT$Env$C$Head$C$Tail$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_result_handler_list..tx_result_handler_list_exec..RHListExec$LT$RawResult$C$Env$GT$$GT$19list_process_result17hff0fe65fa7fd0980E
    local.get 0
    local.get 4
    i32.load offset=12
    i32.store offset=8
    local.get 0
    local.get 4
    i64.load offset=4 align=4
    i64.store align=4
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN9forwarder11vault_proxy52VaultProxyMethods$LT$Env$C$From$C$$LP$$RP$$C$Gas$GT$4init17habf7cd75957a11acE (;359;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    local.tee 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h215f3b192500221fE
    local.get 2
  )
  (func $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$12accept_funds17hc57ad3abdf248939E (;360;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    i32.const 132512
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 0
    local.get 2
    i64.load offset=8
    i64.store offset=4 align=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14echo_arguments17h0f32f38da4b41585E (;361;) (type 37) (param i32 i64 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 8
    i32.add
    i32.const 132536
    i32.const 14
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 4
    local.get 4
    i32.load offset=8
    local.get 4
    i32.load offset=12
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hbe2a2f9ea6ee0073E
    local.get 4
    i32.load
    local.set 3
    local.get 0
    local.get 2
    i32.store offset=16
    local.get 0
    local.get 4
    i32.load offset=4
    i32.store offset=12
    local.get 0
    local.get 3
    i32.store offset=8
    local.get 0
    local.get 1
    i64.store
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14echo_arguments17h6ce1cde335f447d2E (;362;) (type 1) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    i32.const 132536
    i32.const 14
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 3
    local.get 3
    i32.load offset=8
    local.get 3
    i32.load offset=12
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hbe2a2f9ea6ee0073E
    local.get 0
    local.get 3
    i64.load
    i64.store offset=4 align=4
    local.get 0
    local.get 1
    i32.store
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14retrieve_funds17ha0595b2329919ca9E (;363;) (type 10) (param i32 i32 i32 i64 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 16
    i32.add
    i32.const 132550
    i32.const 14
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 5
    i32.load offset=16
    local.set 6
    local.get 5
    i32.load offset=20
    local.set 7
    local.get 5
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    i32.store offset=28
    local.get 2
    local.get 5
    i32.const 28
    i32.add
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h345a84db45cd36f7E
    local.get 7
    local.get 5
    i32.load offset=28
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
    local.get 5
    i32.const 8
    i32.add
    local.get 6
    local.get 7
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h0d2871c002d7fc4fE
    local.get 5
    local.get 5
    i32.load offset=8
    local.get 5
    i32.load offset=12
    local.get 4
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hced03b6ccbb1e76dE
    local.get 0
    local.get 5
    i64.load
    i64.store offset=4 align=4
    local.get 0
    local.get 1
    i32.store
    local.get 5
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN9forwarder14fwd_call_async13CallbackProxy25send_funds_twice_callback17hed0a3b5f711053d8E (;364;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    local.tee 4
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h7fccccfa034b706fE
    local.get 4
    local.get 2
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hc569b7447a547bcfE
    local.get 4
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h7c4e565134499741E
    local.get 0
    local.get 4
    i32.store offset=8
    local.get 0
    i32.const 25
    i32.store offset=4
    local.get 0
    i32.const 132758
    i32.store
  )
  (func $_ZN9forwarder19vault_upgrade_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$7upgrade17h191893b344074c75E (;365;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    local.tee 4
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h215f3b192500221fE
    local.get 0
    i32.const 0
    i32.store16 offset=4
    local.get 0
    local.get 4
    i32.store
    local.get 0
    local.get 1
    i32.store offset=8
  )
  (func $_ZN9forwarder7fwd_nft13CallbackProxy18nft_issue_callback17h3e4d36dc779ab343E (;366;) (type 2) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    local.tee 2
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h7fccccfa034b706fE
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    i32.const 18
    i32.store offset=4
    local.get 0
    i32.const 132894
    i32.store
  )
  (func $_ZN9forwarder7fwd_nft16EndpointWrappers17callback_selector17hc6dfd9b28997c4a3E (;367;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 16
    i32.add
    local.get 0
    call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h11c761faf85e299bE
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i32.load offset=48
        i32.eqz
        br_if 0 (;@2;)
        block ;; label = @3
          block ;; label = @4
            local.get 2
            i32.const 16
            i32.add
            i32.const 132894
            i32.const 18
            call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h30e612e06580ca2bE
            i32.eqz
            br_if 0 (;@4;)
            call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
            i32.const 0
            call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc4deb71796a2a81aE
            local.get 2
            i32.const 0
            i32.store offset=64
            local.get 2
            i32.const 68
            i32.add
            local.get 2
            i32.const 64
            i32.add
            call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h5e583aa0c9057bdeE
            local.get 2
            i32.load offset=64
            call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5830c7af5e96c711E
            local.get 2
            i32.load offset=76
            local.set 3
            local.get 2
            i32.load offset=72
            local.set 4
            local.get 2
            i32.load offset=68
            local.set 0
            local.get 2
            local.get 1
            call $mBufferGetLength
            i32.store offset=60
            local.get 2
            i32.const 0
            i32.store offset=56
            local.get 2
            local.get 1
            i32.store offset=52
            call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
            local.get 2
            i32.const 52
            i32.add
            i32.const 132923
            i32.const 6
            call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17ha2c9623a80c77b99E
            local.set 1
            local.get 2
            i32.load offset=56
            local.get 2
            i32.load offset=60
            call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h9f593610fae37bd4E
            block ;; label = @5
              local.get 0
              i32.const 1
              i32.and
              br_if 0 (;@5;)
              call $_ZN68_$LT$C$u20$as$u20$forwarder..fwd_storage..ForwarderStorageModule$GT$17last_issued_token17hee5ac7a34bbd99cbE
              local.get 4
              call $_ZN11dharitri_sc7storage11storage_set11storage_set17h5f1e9031efea917eE
              call $_ZN68_$LT$C$u20$as$u20$forwarder..fwd_storage..ForwarderStorageModule$GT$18last_error_message17ha8d98b44fa3adc18E
              call $_ZN11dharitri_sc7storage11storage_set13storage_clear17ha1cf96fd4a02c6cbE
              br 3 (;@2;)
            end
            local.get 2
            i32.const 8
            i32.add
            call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17hae04a1efcc5a3fd0E
            local.get 2
            i32.load offset=12
            local.set 0
            local.get 2
            i32.load offset=8
            call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h934f0dafccc28bcfE
            i32.eqz
            br_if 1 (;@3;)
            local.get 0
            call $_ZN4core3cmp10PartialOrd2gt17h28c03c1285021d3aE
            i32.eqz
            br_if 1 (;@3;)
            local.get 1
            local.get 0
            call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te191_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$$LP$$RP$$C$$LP$$RP$$C$$LP$$RP$$GT$$GT$8transfer17hbd1da493e4dd6763E
            br 1 (;@3;)
          end
          i32.const 1
          local.set 0
          br 2 (;@1;)
        end
        call $_ZN68_$LT$C$u20$as$u20$forwarder..fwd_storage..ForwarderStorageModule$GT$18last_error_message17ha8d98b44fa3adc18E
        local.get 3
        call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h049df649b560826aE
      end
      i32.const 0
      local.set 0
    end
    local.get 2
    i32.const 80
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN9forwarder7fwd_nft18ForwarderNftModule10nft_create17hed735391515a8262E (;368;) (type 25) (param i32 i32 i32 i32 i32 i32 i32) (result i64)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    local.tee 5
    local.get 6
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
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
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_nft_create17hd25c1e988aba8471E
    local.set 8
    i32.const 132285
    i32.const 6
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17ha793922880535d00E
    local.tee 5
    local.get 7
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17hcf9dc21ade4e0a94E
    local.get 5
    local.get 8
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17hb8a881e95f88b177E
    local.get 5
    local.get 7
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17h2c84b66ae5c043dcE
    local.get 5
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    call $managedWriteLog
    local.get 7
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 8
  )
  (func $_ZN9forwarder7fwd_sft13CallbackProxy18sft_issue_callback17h8eb8807ea0637bc3E (;369;) (type 2) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    local.tee 2
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h7fccccfa034b706fE
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    i32.const 18
    i32.store offset=4
    local.get 0
    i32.const 132972
    i32.store
  )
  (func $_ZN9forwarder8fwd_dcdt13CallbackProxy19dcdt_issue_callback17hcf9d6dabde656ee1E (;370;) (type 2) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    local.tee 2
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h7fccccfa034b706fE
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    i32.const 19
    i32.store offset=4
    local.get 0
    i32.const 132990
    i32.store
  )
  (func $rust_begin_unwind (;371;) (type 15)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17hbce93cd107d2a5cdE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17hbce93cd107d2a5cdE (;372;) (type 15)
    i32.const 133352
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;373;) (type 15)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
  )
  (func $send_rewa (;374;) (type 15)
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9901b688586819e7E
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te191_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$$LP$$RP$$C$$LP$$RP$$C$$LP$$RP$$GT$$GT$8transfer17hbd1da493e4dd6763E
  )
  (func $echo_arguments_sync (;375;) (type 15)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc4deb71796a2a81aE
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=40
    local.get 0
    i32.const 40
    i32.add
    i32.const 132698
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h3ae927d8ddfeb84aE
    local.set 2
    local.get 0
    i32.load offset=40
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5830c7af5e96c711E
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    i32.const 40
    i32.add
    call $getGasLeft
    i64.const 1
    i64.shr_u
    local.get 0
    i32.const 12
    i32.add
    local.get 2
    call $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14echo_arguments17h0f32f38da4b41585E
    local.get 0
    local.get 0
    i32.load offset=56
    i32.store offset=32
    local.get 0
    local.get 0
    i64.load offset=48
    i64.store offset=24
    local.get 0
    local.get 0
    i64.load offset=40
    i64.store offset=16
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17hbc92af6761c01c6bE
    call $_ZN71_$LT$C$u20$as$u20$forwarder..fwd_call_sync..ForwarderSyncCallModule$GT$36execute_on_dest_context_result_event17hda5b760c8d75b2a8E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $echo_arguments_sync_twice (;376;) (type 15)
    (local i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc4deb71796a2a81aE
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=40
    local.get 0
    i32.const 40
    i32.add
    i32.const 132698
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h3ae927d8ddfeb84aE
    local.set 2
    local.get 0
    i32.load offset=40
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5830c7af5e96c711E
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    i32.const 40
    i32.add
    call $getGasLeft
    i64.const 3
    i64.div_u
    local.tee 3
    local.get 0
    i32.const 12
    i32.add
    local.get 2
    call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h761bf0300273afeeE
    call $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14echo_arguments17h0f32f38da4b41585E
    local.get 0
    local.get 0
    i32.load offset=56
    i32.store offset=32
    local.get 0
    local.get 0
    i64.load offset=48
    i64.store offset=24
    local.get 0
    local.get 0
    i64.load offset=40
    i64.store offset=16
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17hbc92af6761c01c6bE
    call $_ZN71_$LT$C$u20$as$u20$forwarder..fwd_call_sync..ForwarderSyncCallModule$GT$36execute_on_dest_context_result_event17hda5b760c8d75b2a8E
    local.get 0
    i32.const 40
    i32.add
    local.get 3
    local.get 0
    i32.const 12
    i32.add
    local.get 2
    call $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14echo_arguments17h0f32f38da4b41585E
    local.get 0
    local.get 0
    i32.load offset=56
    i32.store offset=32
    local.get 0
    local.get 0
    i64.load offset=48
    i64.store offset=24
    local.get 0
    local.get 0
    i64.load offset=40
    i64.store offset=16
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17hbc92af6761c01c6bE
    call $_ZN71_$LT$C$u20$as$u20$forwarder..fwd_call_sync..ForwarderSyncCallModule$GT$36execute_on_dest_context_result_event17hda5b760c8d75b2a8E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_accept_funds (;377;) (type 15)
    (local i32 i64 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 160
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    local.get 0
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    i32.store offset=36
    local.get 0
    i32.const 40
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h9e4182d4648808c7E
    call $getGasLeft
    local.set 1
    local.get 0
    i32.const 24
    i32.add
    i32.const 132581
    i32.const 25
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 0
    local.get 1
    i64.const 1
    i64.shr_u
    local.tee 1
    i64.store offset=56
    local.get 0
    local.get 0
    i32.load offset=28
    local.tee 2
    i32.store offset=68
    local.get 0
    local.get 0
    i32.load offset=24
    local.tee 3
    i32.store offset=64
    local.get 0
    local.get 0
    i32.const 36
    i32.add
    i32.store offset=72
    local.get 0
    local.get 1
    i64.store offset=80
    local.get 0
    i32.load offset=52
    local.set 4
    local.get 0
    i64.load offset=40
    local.set 5
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load offset=48
        local.tee 6
        call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h934f0dafccc28bcfE
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        i32.store offset=116
        local.get 0
        local.get 6
        i32.store offset=112
        local.get 0
        local.get 5
        i64.store offset=104
        local.get 0
        local.get 2
        i32.store offset=96
        local.get 0
        local.get 3
        i32.store offset=92
        local.get 0
        local.get 0
        i32.const 80
        i32.add
        i32.store offset=100
        local.get 0
        local.get 0
        i32.const 36
        i32.add
        i32.store offset=88
        local.get 0
        local.get 0
        i32.const 116
        i32.add
        local.tee 6
        i32.store offset=140
        local.get 0
        local.get 0
        i32.const 112
        i32.add
        local.tee 7
        i32.store offset=136
        local.get 0
        local.get 5
        i64.store offset=128
        local.get 0
        local.get 0
        i32.const 76
        i32.add
        local.tee 4
        i32.store offset=152
        local.get 0
        local.get 4
        i32.store offset=148
        local.get 0
        local.get 2
        i32.store offset=124
        local.get 0
        local.get 3
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
          local.get 3
          local.get 2
          local.get 7
          local.get 6
          call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h125a0fab9bc6901eE
          local.get 0
          i32.load offset=12
          local.set 2
          local.get 0
          i32.load offset=8
          local.set 3
          call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E
          local.set 4
          local.get 0
          i64.load offset=80
          local.get 0
          i32.load offset=36
          local.get 4
          local.get 3
          local.get 2
          call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h0ef96419146397d6E
          local.set 2
          br 2 (;@1;)
        end
        local.get 0
        i32.const 16
        i32.add
        local.get 3
        local.get 2
        local.get 0
        i32.load offset=36
        local.get 0
        i32.const 128
        i32.add
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h9fdb101a9ba5b3f5E
        local.get 0
        i32.load offset=20
        local.set 2
        local.get 0
        i32.load offset=16
        local.set 3
        call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hbf9cb670948b1b75E
        local.set 4
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E
        local.set 6
        local.get 0
        i64.load offset=80
        local.get 4
        local.get 6
        local.get 3
        local.get 2
        call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h0ef96419146397d6E
        local.set 2
        br 1 (;@1;)
      end
      local.get 1
      local.get 0
      i32.load offset=36
      local.get 4
      local.get 3
      local.get 2
      call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h0ef96419146397d6E
      local.set 2
    end
    call $cleanReturnData
    local.get 0
    local.get 2
    call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h761bf0300273afeeE
    local.tee 4
    call $mBufferGetLength
    local.tee 2
    i32.store offset=128
    i32.const 0
    local.set 3
    local.get 0
    i32.const 0
    i32.store offset=124
    local.get 0
    local.get 4
    i32.store offset=120
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    local.set 4
    block ;; label = @1
      loop ;; label = @2
        local.get 3
        local.get 2
        i32.ge_u
        br_if 1 (;@1;)
        local.get 4
        local.get 0
        i32.const 120
        i32.add
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17ha185cdf7763cdd11E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
        local.get 0
        i32.load offset=128
        local.set 2
        local.get 0
        i32.load offset=124
        local.set 3
        br 0 (;@2;)
      end
    end
    i32.const 132322
    i32.const 24
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17ha793922880535d00E
    local.set 2
    local.get 0
    local.get 4
    call $mBufferGetLength
    i32.store offset=128
    local.get 0
    i32.const 0
    i32.store offset=124
    local.get 0
    local.get 4
    i32.store offset=120
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        local.get 0
        i32.const 120
        i32.add
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h34483fd6d1c3df8bE
        local.get 0
        i32.load
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        local.get 0
        i32.load offset=4
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h41004dcd331a4bb5E
        br 0 (;@2;)
      end
    end
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    call $managedWriteLog
    local.get 0
    i32.const 160
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_accept_funds_rh_rewa (;378;) (type 15)
    (local i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$4rewa17hfd6a7fd3072f2a13E
    drop
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    local.set 1
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$4rewa17hfd6a7fd3072f2a13E
    local.set 2
    call $getGasLeft
    local.set 3
    local.get 0
    i32.const 8
    i32.add
    i32.const 132664
    i32.const 34
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 3
    i64.const 1
    i64.shr_u
    local.get 1
    local.get 2
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17haae5e18ee28e6fb7E
    drop
    call $cleanReturnData
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$18get_back_transfers17h6bcce985a29ae290E
    local.get 0
    i32.load
    call $bigIntFinishUnsigned
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_accept_funds_rh_single_dcdt (;379;) (type 15)
    (local i32 i32 i64 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 160
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    local.get 0
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    local.tee 1
    i32.store offset=60
    local.get 0
    i32.const 64
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$11single_dcdt17hffae3beaa9dcf296E
    call $getGasLeft
    local.set 2
    local.get 0
    i32.const 32
    i32.add
    i32.const 132664
    i32.const 34
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 0
    i32.const 104
    i32.add
    local.tee 3
    local.get 0
    i32.const 64
    i32.add
    i32.const 8
    i32.add
    i32.store
    local.get 0
    local.get 0
    i32.const 76
    i32.add
    i32.store offset=108
    local.get 0
    local.get 2
    i64.const 1
    i64.shr_u
    local.tee 4
    i64.store offset=80
    local.get 0
    local.get 0
    i64.load offset=64
    local.tee 2
    i64.store offset=96
    local.get 0
    local.get 0
    i32.load offset=36
    local.tee 5
    i32.store offset=92
    local.get 0
    local.get 0
    i32.load offset=32
    local.tee 6
    i32.store offset=88
    local.get 0
    local.get 0
    i32.const 60
    i32.add
    i32.store offset=112
    local.get 0
    local.get 4
    i64.store offset=40
    local.get 0
    i32.const 136
    i32.add
    local.get 3
    i64.load
    i64.store
    local.get 0
    local.get 2
    i64.store offset=128
    local.get 0
    local.get 0
    i32.const 116
    i32.add
    local.tee 3
    i32.store offset=152
    local.get 0
    local.get 3
    i32.store offset=148
    local.get 0
    local.get 5
    i32.store offset=124
    local.get 0
    local.get 6
    i32.store offset=120
    local.get 0
    local.get 0
    i32.const 40
    i32.add
    i32.store offset=144
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 16
        i32.add
        local.get 6
        local.get 5
        local.get 0
        i32.load offset=136
        local.get 0
        i32.load offset=140
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h125a0fab9bc6901eE
        local.get 0
        i32.load offset=20
        local.set 5
        local.get 0
        i32.load offset=16
        local.set 6
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E
        local.set 3
        local.get 0
        i64.load offset=40
        local.get 0
        i32.load offset=60
        local.get 3
        local.get 6
        local.get 5
        call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h669cc27942bded19E
        br 1 (;@1;)
      end
      local.get 0
      i32.const 24
      i32.add
      local.get 6
      local.get 5
      local.get 1
      local.get 0
      i32.const 120
      i32.add
      i32.const 8
      i32.add
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h9fdb101a9ba5b3f5E
      local.get 0
      i32.load offset=28
      local.set 5
      local.get 0
      i32.load offset=24
      local.set 6
      call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hbf9cb670948b1b75E
      local.set 3
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E
      local.set 1
      local.get 0
      i64.load offset=40
      local.get 3
      local.get 1
      local.get 6
      local.get 5
      call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h669cc27942bded19E
    end
    call $cleanReturnData
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$18get_back_transfers17h6bcce985a29ae290E
    block ;; label = @1
      local.get 0
      i32.load offset=12
      local.tee 5
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h012205b17d79ef57E
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      i32.const 132238
      i32.const 43
      call $signalError
      unreachable
    end
    local.get 0
    i32.const 120
    i32.add
    local.get 5
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h1404481bbed1f152E
    local.get 0
    i32.const 40
    i32.add
    local.get 0
    i32.const 120
    i32.add
    call $_ZN122_$LT$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4ed58603abe673e1E
    call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hc234684ca2c4cdd2E
    local.set 5
    local.get 0
    i32.load offset=48
    local.get 5
    call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h629f00f5b80b9709E
    local.get 0
    i64.load offset=40
    local.get 5
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h978383d2f9c68c6fE
    local.get 0
    i32.load offset=52
    local.get 5
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h5999cc4e628f6677E
    local.get 5
    call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hb4af8bb98bfade2aE
    local.get 0
    i32.const 160
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_accept_funds_rh_multi_dcdt (;380;) (type 15)
    (local i32 i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 144
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    local.get 0
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    i32.store offset=52
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17hbf749366dcc0acffE
    local.set 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    local.set 2
    local.get 0
    local.get 1
    call $mBufferGetLength
    i32.store offset=96
    local.get 0
    i32.const 0
    i32.store offset=92
    local.get 0
    local.get 1
    i32.store offset=88
    local.get 0
    i32.const 112
    i32.add
    local.set 1
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 104
        i32.add
        local.get 0
        i32.const 88
        i32.add
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h73012bb03c051b22E
        local.get 0
        i32.load offset=104
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 0
        i32.const 56
        i32.add
        local.get 1
        call $_ZN122_$LT$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4ed58603abe673e1E
        local.get 2
        local.get 0
        i32.const 56
        i32.add
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h64a478281fb2f0eeE
        br 0 (;@2;)
      end
    end
    call $getGasLeft
    local.set 3
    local.get 0
    i32.const 40
    i32.add
    i32.const 132606
    i32.const 25
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 0
    local.get 2
    i32.store offset=72
    local.get 0
    local.get 3
    i64.const 1
    i64.shr_u
    local.tee 3
    i64.store offset=56
    local.get 0
    local.get 0
    i32.load offset=44
    local.tee 1
    i32.store offset=68
    local.get 0
    local.get 0
    i32.load offset=40
    local.tee 4
    i32.store offset=64
    local.get 0
    local.get 0
    i32.const 52
    i32.add
    i32.store offset=76
    local.get 0
    local.get 3
    i64.store offset=80
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 2
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h012205b17d79ef57E
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          local.get 0
          i32.const 16
          i32.add
          local.get 4
          local.get 1
          local.get 0
          i32.const 52
          i32.add
          local.get 2
          call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17h6b800ef9caebe721E
          local.get 0
          i32.load offset=20
          local.set 2
          local.get 0
          i32.load offset=16
          local.set 1
          local.get 3
          call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hbf9cb670948b1b75E
          call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E
          local.get 1
          local.get 2
          call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h669cc27942bded19E
          br 2 (;@1;)
        end
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E
        local.set 2
        local.get 3
        local.get 0
        i32.load offset=52
        local.get 2
        local.get 4
        local.get 1
        call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h669cc27942bded19E
        br 1 (;@1;)
      end
      local.get 0
      i32.const 88
      i32.add
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h1404481bbed1f152E
      local.get 0
      i64.load offset=88
      local.set 3
      local.get 0
      local.get 0
      i32.const 100
      i32.add
      local.tee 5
      i32.store offset=124
      local.get 0
      local.get 0
      i32.const 88
      i32.add
      i32.const 8
      i32.add
      local.tee 6
      i32.store offset=120
      local.get 0
      local.get 3
      i64.store offset=112
      local.get 0
      local.get 0
      i32.const 80
      i32.add
      local.tee 2
      i32.store offset=136
      local.get 0
      local.get 2
      i32.store offset=132
      local.get 0
      local.get 1
      i32.store offset=108
      local.get 0
      local.get 4
      i32.store offset=104
      local.get 0
      local.get 0
      i32.const 80
      i32.add
      i32.store offset=128
      block ;; label = @2
        local.get 3
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 24
        i32.add
        local.get 4
        local.get 1
        local.get 6
        local.get 5
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h125a0fab9bc6901eE
        local.get 0
        i32.load offset=28
        local.set 2
        local.get 0
        i32.load offset=24
        local.set 1
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E
        local.set 4
        local.get 0
        i64.load offset=80
        local.get 0
        i32.load offset=52
        local.get 4
        local.get 1
        local.get 2
        call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h669cc27942bded19E
        br 1 (;@1;)
      end
      local.get 0
      i32.const 32
      i32.add
      local.get 4
      local.get 1
      local.get 0
      i32.load offset=52
      local.get 0
      i32.const 104
      i32.add
      i32.const 8
      i32.add
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h9fdb101a9ba5b3f5E
      local.get 0
      i32.load offset=36
      local.set 2
      local.get 0
      i32.load offset=32
      local.set 1
      call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hbf9cb670948b1b75E
      local.set 4
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E
      local.set 5
      local.get 0
      i64.load offset=80
      local.get 4
      local.get 5
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h669cc27942bded19E
    end
    call $cleanReturnData
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$18get_back_transfers17h6bcce985a29ae290E
    local.get 0
    i32.load offset=12
    local.set 1
    call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hc234684ca2c4cdd2E
    local.set 2
    local.get 0
    local.get 1
    call $mBufferGetLength
    i32.store offset=64
    local.get 0
    i32.const 0
    i32.store offset=60
    local.get 0
    local.get 1
    i32.store offset=56
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 104
        i32.add
        local.get 0
        i32.const 56
        i32.add
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h73012bb03c051b22E
        local.get 0
        i32.load offset=104
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=124
        local.set 1
        local.get 0
        i32.load offset=120
        local.get 2
        call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h629f00f5b80b9709E
        local.get 0
        i64.load offset=112
        local.get 2
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h978383d2f9c68c6fE
        local.get 1
        local.get 2
        call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h5999cc4e628f6677E
        br 0 (;@2;)
      end
    end
    local.get 2
    call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hb4af8bb98bfade2aE
    local.get 0
    i32.const 144
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_accept_funds_with_fees (;381;) (type 15)
    (local i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9901b688586819e7E
    local.set 2
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17hae04a1efcc5a3fd0E
    local.get 0
    i32.load offset=16
    local.set 3
    local.get 0
    i32.load offset=20
    local.set 4
    local.get 0
    local.get 4
    local.get 4
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators196_$LT$impl$u20$core..ops..arith..Mul$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3mul17h954de9909aa4e30aE
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u64$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h6059ddec400584a4E
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17hbe6861fcfb2b8c16E
    local.tee 5
    i32.store offset=24
    local.get 0
    i32.const 8
    i32.add
    i32.const 132512
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 0
    i32.load offset=12
    local.set 4
    local.get 0
    i32.load offset=8
    local.set 2
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h0dfde525ea928006E
    local.set 6
    block ;; label = @1
      block ;; label = @2
        local.get 3
        call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h934f0dafccc28bcfE
        br_if 0 (;@2;)
        local.get 0
        local.get 3
        i32.store offset=28
        local.get 0
        local.get 2
        local.get 4
        local.get 0
        i32.const 28
        i32.add
        local.get 0
        i32.const 24
        i32.add
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h125a0fab9bc6901eE
        local.get 0
        i32.load offset=4
        local.set 4
        local.get 0
        i32.load
        local.set 3
        local.get 6
        local.get 1
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E
        local.get 3
        local.get 4
        call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h0ef96419146397d6E
        local.set 4
        br 1 (;@1;)
      end
      local.get 6
      local.get 1
      local.get 5
      local.get 2
      local.get 4
      call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h0ef96419146397d6E
      local.set 4
    end
    call $cleanReturnData
    local.get 4
    call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h761bf0300273afeeE
    call $mBufferGetLength
    drop
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_accept_funds_then_read (;382;) (type 15)
    (local i32 i32 i32 i64 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 160
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    local.get 0
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    i32.store offset=44
    local.get 0
    i32.const 48
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h9e4182d4648808c7E
    local.get 0
    i32.const 32
    i32.add
    i32.const 132512
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 0
    local.get 0
    i32.load offset=36
    local.tee 1
    i32.store offset=68
    local.get 0
    local.get 0
    i32.load offset=32
    local.tee 2
    i32.store offset=64
    local.get 0
    local.get 0
    i32.const 44
    i32.add
    i32.store offset=72
    local.get 0
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h0dfde525ea928006E
    local.tee 3
    i64.store offset=80
    local.get 0
    i32.load offset=60
    local.set 4
    local.get 0
    i64.load offset=48
    local.set 5
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load offset=56
        local.tee 6
        call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h934f0dafccc28bcfE
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        i32.store offset=116
        local.get 0
        local.get 6
        i32.store offset=112
        local.get 0
        local.get 5
        i64.store offset=104
        local.get 0
        local.get 1
        i32.store offset=96
        local.get 0
        local.get 2
        i32.store offset=92
        local.get 0
        local.get 0
        i32.const 80
        i32.add
        i32.store offset=100
        local.get 0
        local.get 0
        i32.const 44
        i32.add
        i32.store offset=88
        local.get 0
        local.get 0
        i32.const 88
        i32.add
        i32.const 28
        i32.add
        local.tee 6
        i32.store offset=140
        local.get 0
        local.get 0
        i32.const 112
        i32.add
        local.tee 7
        i32.store offset=136
        local.get 0
        local.get 5
        i64.store offset=128
        local.get 0
        local.get 0
        i32.const 48
        i32.add
        i32.const 28
        i32.add
        local.tee 4
        i32.store offset=152
        local.get 0
        local.get 4
        i32.store offset=148
        local.get 0
        local.get 1
        i32.store offset=124
        local.get 0
        local.get 2
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
          i32.const 16
          i32.add
          local.get 2
          local.get 1
          local.get 7
          local.get 6
          call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h125a0fab9bc6901eE
          local.get 0
          i32.load offset=20
          local.set 1
          local.get 0
          i32.load offset=16
          local.set 2
          call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E
          local.set 4
          local.get 0
          i64.load offset=80
          local.get 0
          i32.load offset=44
          local.get 4
          local.get 2
          local.get 1
          call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h669cc27942bded19E
          br 2 (;@1;)
        end
        local.get 0
        i32.const 24
        i32.add
        local.get 2
        local.get 1
        local.get 0
        i32.load offset=44
        local.get 0
        i32.const 128
        i32.add
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h9fdb101a9ba5b3f5E
        local.get 0
        i32.load offset=28
        local.set 1
        local.get 0
        i32.load offset=24
        local.set 2
        call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hbf9cb670948b1b75E
        local.set 4
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E
        local.set 6
        local.get 0
        i64.load offset=80
        local.get 4
        local.get 6
        local.get 2
        local.get 1
        call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h669cc27942bded19E
        br 1 (;@1;)
      end
      local.get 3
      local.get 0
      i32.load offset=44
      local.get 4
      local.get 2
      local.get 1
      call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h669cc27942bded19E
    end
    call $cleanReturnData
    local.get 0
    i32.const 8
    i32.add
    i32.const 132501
    i32.const 11
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 0
    i32.load offset=8
    local.set 2
    local.get 0
    i32.load offset=12
    local.set 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    local.tee 4
    i32.const 132512
    i32.const 12
    call $mBufferSetBytes
    drop
    local.get 1
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h0dfde525ea928006E
    local.set 5
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E
    local.set 4
    local.get 5
    local.get 0
    i32.load offset=44
    local.get 4
    local.get 2
    local.get 1
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17haae5e18ee28e6fb7E
    local.set 1
    call $cleanReturnData
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h761bf0300273afeeE
    local.tee 1
    call $mBufferGetLength
    i32.store offset=128
    local.get 0
    i32.const 0
    i32.store offset=124
    local.get 0
    local.get 1
    i32.store offset=120
    block ;; label = @1
      local.get 0
      i32.const 120
      i32.add
      i32.const 132043
      i32.const 11
      call $_ZN257_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_owned..ManagedVecOwnedIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hac996104c3ac07e6E
      i32.const 132043
      i32.const 11
      call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hf2e848fa99011af5E
      local.tee 5
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 132043
      i32.const 11
      i32.const 131072
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h15253db9ce9923c8E
      unreachable
    end
    local.get 5
    call $smallIntFinishUnsigned
    local.get 0
    i32.const 160
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_retrieve_funds (;383;) (type 15)
    (local i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h66fd8b1179e8a744E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb80ee9fba32521afE
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9901b688586819e7E
    local.set 4
    local.get 0
    local.get 1
    i32.store
    local.get 0
    i32.const 4
    i32.add
    local.get 0
    local.get 2
    local.get 3
    local.get 4
    call $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14retrieve_funds17ha0595b2329919ca9E
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h0dfde525ea928006E
    local.set 3
    local.get 0
    i32.load offset=12
    local.set 1
    local.get 0
    i32.load offset=8
    local.set 2
    local.get 0
    i32.load offset=4
    local.set 4
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E
    local.set 5
    local.get 3
    local.get 4
    i32.load
    local.get 5
    local.get 2
    local.get 1
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17haae5e18ee28e6fb7E
    drop
    call $cleanReturnData
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_retrieve_funds_with_accept_func (;384;) (type 15)
    (local i32 i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 144
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    local.set 1
    i32.const 1
    i32.const 132704
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9901b688586819e7E
    local.set 3
    local.get 0
    local.get 1
    i32.store offset=60
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17hbf749366dcc0acffE
    local.set 1
    i32.const 132723
    i32.const 17
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he82ecb04dfff02bfE
    local.set 4
    local.get 0
    i32.const 48
    i32.add
    i32.const 132631
    i32.const 33
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 0
    i32.const 40
    i32.add
    local.get 0
    i32.load offset=48
    local.get 0
    i32.load offset=52
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h55fd12b0f78e2bf9E
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    i32.load offset=40
    local.get 0
    i32.load offset=44
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hced03b6ccbb1e76dE
    local.get 0
    i32.load offset=32
    local.set 2
    local.get 0
    i32.load offset=36
    local.tee 3
    i32.const 0
    local.get 4
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h215f3b192500221fE
    local.get 0
    local.get 3
    i32.store offset=76
    local.get 0
    local.get 2
    i32.store offset=72
    local.get 0
    local.get 1
    i32.store offset=68
    local.get 0
    local.get 0
    i32.const 60
    i32.add
    i32.store offset=64
    local.get 0
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h0dfde525ea928006E
    local.tee 5
    i64.store offset=80
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 1
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h012205b17d79ef57E
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          local.get 0
          i32.const 8
          i32.add
          local.get 2
          local.get 3
          local.get 0
          i32.const 60
          i32.add
          local.get 1
          call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17h6b800ef9caebe721E
          local.get 0
          i32.load offset=12
          local.set 1
          local.get 0
          i32.load offset=8
          local.set 2
          local.get 5
          call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hbf9cb670948b1b75E
          call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E
          local.get 2
          local.get 1
          call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h669cc27942bded19E
          br 2 (;@1;)
        end
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E
        local.set 1
        local.get 5
        local.get 0
        i32.load offset=60
        local.get 1
        local.get 2
        local.get 3
        call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h669cc27942bded19E
        br 1 (;@1;)
      end
      local.get 0
      i32.const 88
      i32.add
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h1404481bbed1f152E
      local.get 0
      i64.load offset=88
      local.set 5
      local.get 0
      local.get 0
      i32.const 100
      i32.add
      local.tee 4
      i32.store offset=124
      local.get 0
      local.get 0
      i32.const 88
      i32.add
      i32.const 8
      i32.add
      local.tee 6
      i32.store offset=120
      local.get 0
      local.get 5
      i64.store offset=112
      local.get 0
      local.get 0
      i32.const 80
      i32.add
      local.tee 1
      i32.store offset=136
      local.get 0
      local.get 1
      i32.store offset=132
      local.get 0
      local.get 3
      i32.store offset=108
      local.get 0
      local.get 2
      i32.store offset=104
      local.get 0
      local.get 0
      i32.const 80
      i32.add
      i32.store offset=128
      block ;; label = @2
        local.get 5
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 16
        i32.add
        local.get 2
        local.get 3
        local.get 6
        local.get 4
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h125a0fab9bc6901eE
        local.get 0
        i32.load offset=20
        local.set 1
        local.get 0
        i32.load offset=16
        local.set 2
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E
        local.set 3
        local.get 0
        i64.load offset=80
        local.get 0
        i32.load offset=60
        local.get 3
        local.get 2
        local.get 1
        call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h669cc27942bded19E
        br 1 (;@1;)
      end
      local.get 0
      i32.const 24
      i32.add
      local.get 2
      local.get 3
      local.get 0
      i32.load offset=60
      local.get 0
      i32.const 104
      i32.add
      i32.const 8
      i32.add
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h9fdb101a9ba5b3f5E
      local.get 0
      i32.load offset=28
      local.set 1
      local.get 0
      i32.load offset=24
      local.set 2
      call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hbf9cb670948b1b75E
      local.set 3
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E
      local.set 4
      local.get 0
      i64.load offset=80
      local.get 3
      local.get 4
      local.get 2
      local.get 1
      call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h669cc27942bded19E
    end
    call $cleanReturnData
    local.get 0
    i32.const 144
    i32.add
    global.set $__stack_pointer
  )
  (func $accept_funds_func (;385;) (type 15)
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
  )
  (func $forward_sync_accept_funds_multi_transfer (;386;) (type 15)
    (local i32 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 144
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc4deb71796a2a81aE
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=104
    local.get 0
    i32.const 104
    i32.add
    i32.const 132709
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1afbc05fc57752ebE
    local.set 2
    local.get 0
    i32.load offset=104
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5830c7af5e96c711E
    local.get 0
    local.get 1
    i32.store offset=44
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    local.set 1
    local.get 0
    local.get 2
    call $mBufferGetLength
    i32.store offset=96
    local.get 0
    i32.const 0
    i32.store offset=92
    local.get 0
    local.get 2
    i32.store offset=88
    block ;; label = @1
      block ;; label = @2
        loop ;; label = @3
          local.get 0
          i32.const 104
          i32.add
          local.get 0
          i32.const 88
          i32.add
          call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he4474a11514917d1E
          block ;; label = @4
            local.get 0
            i32.load offset=104
            br_if 0 (;@4;)
            local.get 0
            i32.const 32
            i32.add
            i32.const 132512
            i32.const 12
            call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
            local.get 0
            local.get 1
            i32.store offset=68
            local.get 0
            local.get 0
            i32.load offset=36
            local.tee 2
            i32.store offset=76
            local.get 0
            local.get 0
            i32.load offset=32
            local.tee 3
            i32.store offset=72
            local.get 0
            local.get 0
            i32.const 44
            i32.add
            i32.store offset=64
            local.get 0
            call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h0dfde525ea928006E
            local.tee 4
            i64.store offset=80
            block ;; label = @5
              block ;; label = @6
                local.get 1
                call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h012205b17d79ef57E
                br_table 0 (;@6;) 1 (;@5;) 4 (;@2;)
              end
              call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E
              local.set 1
              local.get 4
              local.get 0
              i32.load offset=44
              local.get 1
              local.get 3
              local.get 2
              call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h669cc27942bded19E
              br 4 (;@1;)
            end
            local.get 0
            i32.const 88
            i32.add
            local.get 1
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h1404481bbed1f152E
            local.get 0
            i64.load offset=88
            local.set 4
            local.get 0
            local.get 0
            i32.const 88
            i32.add
            i32.const 12
            i32.add
            local.tee 5
            i32.store offset=124
            local.get 0
            local.get 0
            i32.const 88
            i32.add
            i32.const 8
            i32.add
            local.tee 6
            i32.store offset=120
            local.get 0
            local.get 4
            i64.store offset=112
            local.get 0
            local.get 0
            i32.const 80
            i32.add
            local.tee 1
            i32.store offset=136
            local.get 0
            local.get 1
            i32.store offset=132
            local.get 0
            local.get 2
            i32.store offset=108
            local.get 0
            local.get 3
            i32.store offset=104
            local.get 0
            local.get 0
            i32.const 80
            i32.add
            i32.store offset=128
            block ;; label = @5
              local.get 4
              i64.const 0
              i64.ne
              br_if 0 (;@5;)
              local.get 0
              i32.const 16
              i32.add
              local.get 3
              local.get 2
              local.get 6
              local.get 5
              call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h125a0fab9bc6901eE
              local.get 0
              i32.load offset=20
              local.set 1
              local.get 0
              i32.load offset=16
              local.set 2
              call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E
              local.set 3
              local.get 0
              i64.load offset=80
              local.get 0
              i32.load offset=44
              local.get 3
              local.get 2
              local.get 1
              call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h669cc27942bded19E
              br 4 (;@1;)
            end
            local.get 0
            i32.const 24
            i32.add
            local.get 3
            local.get 2
            local.get 0
            i32.load offset=44
            local.get 0
            i32.const 104
            i32.add
            i32.const 8
            i32.add
            call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h9fdb101a9ba5b3f5E
            local.get 0
            i32.load offset=28
            local.set 1
            local.get 0
            i32.load offset=24
            local.set 2
            call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hbf9cb670948b1b75E
            local.set 3
            call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E
            local.set 5
            local.get 0
            i64.load offset=80
            local.get 3
            local.get 5
            local.get 2
            local.get 1
            call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h669cc27942bded19E
            br 3 (;@1;)
          end
          local.get 0
          local.get 0
          i64.load offset=120
          i64.store offset=56
          local.get 0
          local.get 0
          i64.load offset=112
          i64.store offset=48
          local.get 1
          local.get 0
          i32.const 48
          i32.add
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h64a478281fb2f0eeE
          br 0 (;@3;)
        end
      end
      local.get 0
      i32.const 8
      i32.add
      local.get 3
      local.get 2
      local.get 0
      i32.const 44
      i32.add
      local.get 1
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17h6b800ef9caebe721E
      local.get 0
      i32.load offset=12
      local.set 1
      local.get 0
      i32.load offset=8
      local.set 2
      local.get 4
      call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hbf9cb670948b1b75E
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E
      local.get 2
      local.get 1
      call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h669cc27942bded19E
    end
    call $cleanReturnData
    local.get 0
    i32.const 144
    i32.add
    global.set $__stack_pointer
  )
  (func $echo_args_async (;387;) (type 15)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc4deb71796a2a81aE
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 132698
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h3ae927d8ddfeb84aE
    local.set 2
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5830c7af5e96c711E
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    i32.const 36
    i32.add
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    call $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14echo_arguments17h6ce1cde335f447d2E
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    i32.store offset=24
    local.get 0
    i32.const 18
    i32.store offset=20
    local.get 0
    i32.const 132740
    i32.store offset=16
    local.get 0
    local.get 0
    i64.load offset=40 align=4
    i64.store offset=28 align=4
    local.get 0
    local.get 0
    i32.load offset=36
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h2851516ebe0d664fE
    unreachable
  )
  (func $forward_async_accept_funds (;388;) (type 15)
    (local i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    local.get 0
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    i32.store offset=12
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h9e4182d4648808c7E
    local.get 0
    i32.const 52
    i32.add
    local.get 0
    i32.const 12
    i32.add
    call $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$12accept_funds17hc57ad3abdf248939E
    local.get 0
    local.get 0
    i32.load offset=52
    i32.store offset=40
    local.get 0
    local.get 0
    i64.load offset=56 align=4
    i64.store offset=32
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h3dd63f63c075c482E
    unreachable
  )
  (func $forward_async_accept_funds_half_payment (;389;) (type 15)
    (local i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    local.get 0
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    i32.store offset=4
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h9e4182d4648808c7E
    local.get 0
    local.get 0
    i32.load offset=20
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h9814ddb86990d5f1E
    i32.store offset=28
    local.get 0
    i32.const 68
    i32.add
    local.get 0
    i32.const 4
    i32.add
    call $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$12accept_funds17hc57ad3abdf248939E
    local.get 0
    local.get 0
    i32.const 16
    i32.add
    i32.store offset=48
    local.get 0
    local.get 0
    i32.load offset=68
    i32.store offset=56
    local.get 0
    local.get 0
    i64.load offset=8
    i64.store offset=40
    local.get 0
    local.get 0
    i64.load offset=72 align=4
    i64.store offset=32
    local.get 0
    local.get 0
    i32.const 28
    i32.add
    i32.store offset=52
    local.get 0
    i32.const 32
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hed048db3a14c933eE
    unreachable
  )
  (func $forward_async_accept_funds_with_fees (;390;) (type 15)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9901b688586819e7E
    local.set 2
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h9e4182d4648808c7E
    local.get 0
    i32.load offset=20
    local.set 1
    local.get 0
    local.get 1
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators196_$LT$impl$u20$core..ops..arith..Mul$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3mul17h954de9909aa4e30aE
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u64$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h6059ddec400584a4E
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators196_$LT$impl$u20$core..ops..arith..Sub$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h26f14f70db9ba4ceE
    i32.store offset=28
    local.get 0
    i32.const 68
    i32.add
    local.get 0
    i32.const 4
    i32.add
    call $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$12accept_funds17hc57ad3abdf248939E
    local.get 0
    local.get 0
    i32.const 16
    i32.add
    i32.store offset=48
    local.get 0
    local.get 0
    i32.load offset=68
    i32.store offset=56
    local.get 0
    local.get 0
    i64.load offset=8
    i64.store offset=40
    local.get 0
    local.get 0
    i64.load offset=72 align=4
    i64.store offset=32
    local.get 0
    local.get 0
    i32.const 28
    i32.add
    i32.store offset=52
    local.get 0
    i32.const 32
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hed048db3a14c933eE
    unreachable
  )
  (func $forward_async_retrieve_funds (;391;) (type 15)
    (local i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h66fd8b1179e8a744E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb80ee9fba32521afE
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9901b688586819e7E
    local.set 4
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    i32.const 36
    i32.add
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    local.get 3
    local.get 4
    call $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14retrieve_funds17ha0595b2329919ca9E
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    i32.store offset=24
    local.get 0
    i32.const 23
    i32.store offset=20
    local.get 0
    i32.const 132385
    i32.store offset=16
    local.get 0
    local.get 0
    i64.load offset=40 align=4
    i64.store offset=28 align=4
    local.get 0
    local.get 0
    i32.load offset=36
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h2851516ebe0d664fE
    unreachable
  )
  (func $send_funds_twice (;392;) (type 15)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h66fd8b1179e8a744E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9901b688586819e7E
    local.set 3
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    local.get 2
    i32.store offset=16
    local.get 0
    local.get 3
    i32.store offset=20
    local.get 0
    i32.const 24
    i32.add
    local.get 0
    i32.const 12
    i32.add
    call $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$12accept_funds17hc57ad3abdf248939E
    local.get 0
    i64.load offset=28 align=4
    local.set 4
    local.get 0
    i32.load offset=24
    local.set 1
    local.get 0
    i32.const 48
    i32.add
    local.get 0
    i32.const 12
    i32.add
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.const 20
    i32.add
    call $_ZN9forwarder14fwd_call_async13CallbackProxy25send_funds_twice_callback17hed0a3b5f711053d8E
    local.get 0
    local.get 1
    i32.store offset=60
    local.get 0
    i64.const 0
    i64.store offset=32
    local.get 0
    local.get 4
    i64.store offset=24
    local.get 0
    local.get 0
    i32.const 20
    i32.add
    i32.store offset=44
    local.get 0
    local.get 0
    i32.const 16
    i32.add
    i32.store offset=40
    local.get 0
    i32.const 24
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hbc946d55a1562042E
    unreachable
  )
  (func $send_async_accept_multi_transfer (;393;) (type 15)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc4deb71796a2a81aE
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i32.const 132709
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1afbc05fc57752ebE
    local.set 2
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5830c7af5e96c711E
    local.get 0
    local.get 1
    i32.store offset=4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    local.set 1
    local.get 0
    local.get 2
    call $mBufferGetLength
    i32.store offset=60
    local.get 0
    i32.const 0
    i32.store offset=56
    local.get 0
    local.get 2
    i32.store offset=52
    loop ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.const 52
      i32.add
      call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74e846980171c148E
      block ;; label = @2
        local.get 0
        i32.load offset=8
        br_if 0 (;@2;)
        local.get 0
        i32.const 52
        i32.add
        local.get 0
        i32.const 4
        i32.add
        call $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$12accept_funds17hc57ad3abdf248939E
        local.get 0
        local.get 1
        i32.store offset=12
        local.get 0
        local.get 0
        i64.load offset=56 align=4
        i64.store offset=16 align=4
        local.get 0
        local.get 0
        i32.load offset=52
        i32.store offset=8
        local.get 0
        i32.const 8
        i32.add
        call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hd8cffa1e8e9177b9E
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
      local.get 1
      local.get 0
      i32.const 32
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h64a478281fb2f0eeE
      br 0 (;@1;)
    end
  )
  (func $callback_data (;394;) (type 15)
    (local i32 i32 i32 i32 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    local.get 0
    i32.const 8
    i32.add
    call $_ZN73_$LT$C$u20$as$u20$forwarder..fwd_call_async..ForwarderAsyncCallModule$GT$13callback_data17h0761864367e11722E
    local.get 0
    i32.const 24
    i32.add
    local.set 1
    local.get 0
    i32.load offset=8
    local.set 2
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17hd244ac7d719d78d9E
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
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$13get_unchecked17hc409ebf26e476270E
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
        call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hc234684ca2c4cdd2E
        local.tee 9
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h401123b5bfad9f5dE
        local.get 8
        local.get 9
        call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h629f00f5b80b9709E
        local.get 7
        local.get 9
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h978383d2f9c68c6fE
        local.get 6
        local.get 9
        call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h5999cc4e628f6677E
        local.get 5
        local.get 9
        call $_ZN145_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h992efbd6c6ab19c8E
        local.get 9
        call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hb4af8bb98bfade2aE
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
  (func $callback_data_at_index (;395;) (type 15)
    (local i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132814
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacfbc8cc8a9848a7E
    local.set 1
    local.get 0
    i32.const 16
    i32.add
    call $_ZN73_$LT$C$u20$as$u20$forwarder..fwd_call_async..ForwarderAsyncCallModule$GT$13callback_data17h0761864367e11722E
    block ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=16
      local.set 2
      local.get 0
      i32.load offset=20
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17hd244ac7d719d78d9E
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 24
      i32.add
      local.get 2
      local.get 1
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$13get_unchecked17hc409ebf26e476270E
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
      call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h86813e7ff9418922E
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
          call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h34483fd6d1c3df8bE
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
    i32.const 133334
    i32.const 18
    call $signalError
    unreachable
  )
  (func $clear_callback_data (;396;) (type 15)
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
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    local.get 0
    i32.const 8
    i32.add
    call $_ZN73_$LT$C$u20$as$u20$forwarder..fwd_call_async..ForwarderAsyncCallModule$GT$13callback_data17h0761864367e11722E
    local.get 0
    i32.load offset=8
    local.set 2
    local.get 0
    i32.load offset=12
    local.tee 3
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17hd244ac7d719d78d9E
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
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h9640aef07aeed913E
        call $_ZN11dharitri_sc7storage11storage_set13storage_clear17ha1cf96fd4a02c6cbE
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
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17h3dae6873f82bfc21E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_exec_accept_funds (;397;) (type 15)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    local.get 0
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    i32.store offset=12
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h9e4182d4648808c7E
    local.get 0
    i32.const 132512
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 0
    local.get 0
    i64.load
    i64.store offset=32
    local.get 0
    local.get 0
    i32.const 12
    i32.add
    i32.store offset=40
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17h6d5ec03d920ed8fdE
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_execu_accept_funds_with_fees (;398;) (type 15)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9901b688586819e7E
    local.set 2
    local.get 0
    local.get 1
    i32.store offset=28
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17hae04a1efcc5a3fd0E
    local.get 0
    i32.load offset=20
    local.set 3
    local.get 0
    local.get 0
    i32.load offset=16
    i32.store offset=32
    local.get 0
    local.get 3
    local.get 3
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators196_$LT$impl$u20$core..ops..arith..Mul$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3mul17h954de9909aa4e30aE
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u64$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h6059ddec400584a4E
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17hbe6861fcfb2b8c16E
    local.tee 4
    i32.store offset=36
    local.get 0
    i32.const 8
    i32.add
    i32.const 132512
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 0
    i32.load offset=12
    local.set 3
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load offset=8
          local.tee 2
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17hffab4404830fe2a7E
          br_if 0 (;@3;)
          call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h0dfde525ea928006E
          local.set 5
          br 1 (;@2;)
        end
        i64.const 0
        local.set 5
        local.get 4
        call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17hdbcd228f645e1212E
        br_if 1 (;@1;)
      end
      local.get 0
      i64.const 0
      i64.store offset=48
      local.get 0
      local.get 3
      i32.store offset=44
      local.get 0
      local.get 2
      i32.store offset=40
      local.get 0
      local.get 0
      i32.const 28
      i32.add
      i32.store offset=64
      local.get 0
      local.get 0
      i32.const 36
      i32.add
      i32.store offset=60
      local.get 0
      local.get 0
      i32.const 32
      i32.add
      i32.store offset=56
      local.get 0
      local.get 5
      i64.store offset=72
      local.get 0
      i64.const 0
      i64.store offset=88
      local.get 0
      local.get 0
      i32.const 68
      i32.add
      i32.store offset=104
      local.get 0
      local.get 3
      i32.store offset=84
      local.get 0
      local.get 2
      i32.store offset=80
      local.get 0
      local.get 0
      i32.const 36
      i32.add
      i32.store offset=100
      local.get 0
      local.get 0
      i32.const 32
      i32.add
      i32.store offset=96
      local.get 0
      local.get 0
      i32.const 72
      i32.add
      i32.store offset=108
      local.get 0
      i32.const 88
      i32.add
      local.get 1
      local.get 5
      local.get 2
      local.get 3
      call $_ZN11dharitri_sc5types11interaction10tx_payment28tx_payment_rewa_or_dcdt_refs270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17h021bc8ee30773c0fE
    end
    local.get 0
    i32.const 112
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_exec_accept_funds_twice (;399;) (type 15)
    (local i32 i64 i32 i64)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    local.get 0
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    i32.store offset=28
    local.get 0
    i32.const 40
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h9e4182d4648808c7E
    local.get 0
    i64.load offset=40
    local.set 1
    local.get 0
    i32.load offset=52
    local.set 2
    local.get 0
    local.get 0
    i32.load offset=48
    i32.store offset=32
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h9814ddb86990d5f1E
    i32.store offset=36
    call $getGasLeft
    local.set 3
    local.get 0
    i32.const 16
    i32.add
    i32.const 132512
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 0
    local.get 1
    i64.store offset=56
    local.get 0
    local.get 3
    i64.const 1
    i64.shr_u
    local.tee 3
    i64.store offset=40
    local.get 0
    local.get 0
    i64.load offset=16
    i64.store offset=48
    local.get 0
    local.get 0
    i32.const 28
    i32.add
    i32.store offset=72
    local.get 0
    local.get 0
    i32.const 36
    i32.add
    i32.store offset=68
    local.get 0
    local.get 0
    i32.const 32
    i32.add
    i32.store offset=64
    local.get 0
    i32.const 40
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17h70109ce6992efaf9E
    local.get 0
    i32.const 8
    i32.add
    i32.const 132512
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 0
    local.get 1
    i64.store offset=56
    local.get 0
    local.get 3
    i64.store offset=40
    local.get 0
    local.get 0
    i64.load offset=8
    i64.store offset=48
    local.get 0
    local.get 0
    i32.const 28
    i32.add
    i32.store offset=72
    local.get 0
    local.get 0
    i32.const 36
    i32.add
    i32.store offset=68
    local.get 0
    local.get 0
    i32.const 32
    i32.add
    i32.store offset=64
    local.get 0
    i32.const 40
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17h70109ce6992efaf9E
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_exec_accept_funds_return_values (;400;) (type 15)
    (local i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    local.get 0
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    i32.store offset=12
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h9e4182d4648808c7E
    local.get 0
    i32.const 16
    i32.add
    i32.const 8
    i32.add
    local.tee 1
    i32.load
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1a231d3a20798b2aE
    local.set 2
    call $getGasLeft
    local.set 3
    local.get 0
    i32.const 132512
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 0
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i64.load
    i64.store
    local.get 0
    local.get 0
    i64.load offset=16
    i64.store offset=32
    local.get 0
    local.get 0
    i64.load
    i64.store offset=48
    local.get 0
    local.get 0
    i32.const 12
    i32.add
    i32.store offset=56
    local.get 0
    i32.const 32
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17h6d5ec03d920ed8fdE
    call $getGasLeft
    local.set 4
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hfea0db9accdc05feE
    local.set 1
    local.get 3
    call $smallIntFinishUnsigned
    local.get 4
    call $smallIntFinishUnsigned
    local.get 1
    call $bigIntFinishUnsigned
    local.get 2
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h86813e7ff9418922E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $transf_exec_multi_accept_funds (;401;) (type 15)
    (local i32 i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc4deb71796a2a81aE
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=24
    local.get 0
    i32.const 24
    i32.add
    i32.const 132709
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1afbc05fc57752ebE
    local.set 2
    local.get 0
    i32.load offset=24
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5830c7af5e96c711E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
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
      block ;; label = @2
        loop ;; label = @3
          local.get 0
          i32.const 24
          i32.add
          local.get 0
          i32.const 48
          i32.add
          call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74e846980171c148E
          block ;; label = @4
            local.get 0
            i32.load offset=24
            br_if 0 (;@4;)
            local.get 0
            i32.const 132512
            i32.const 12
            call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
            local.get 0
            i32.load offset=4
            local.set 2
            block ;; label = @5
              block ;; label = @6
                local.get 0
                i32.load
                local.tee 4
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17hffab4404830fe2a7E
                br_if 0 (;@6;)
                call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h0dfde525ea928006E
                local.set 5
                br 1 (;@5;)
              end
              i64.const 0
              local.set 5
              local.get 3
              call $mBufferGetLength
              i32.eqz
              br_if 4 (;@1;)
            end
            local.get 0
            i32.const 48
            i32.add
            i32.const 8
            i32.add
            i64.const 0
            i64.store
            local.get 0
            i64.const 0
            i64.store offset=48
            local.get 3
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h012205b17d79ef57E
            i32.const 1
            i32.ne
            br_if 2 (;@2;)
            local.get 3
            local.get 0
            i32.const 48
            i32.add
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$17load_item_payload17he04f3fe5667097d4E
            drop
            local.get 0
            i32.const 24
            i32.add
            i32.const 8
            i32.add
            local.get 0
            i32.const 48
            i32.add
            call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$M$GT$$u20$as$u20$dharitri_sc..types..managed..wrapped..managed_vec_item..ManagedVecItem$GT$19borrow_from_payload17hecc599a306c312faE
            local.get 0
            i32.load offset=44
            local.set 6
            local.get 0
            i32.load offset=40
            call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h934f0dafccc28bcfE
            i32.eqz
            br_if 2 (;@2;)
            local.get 1
            local.get 6
            local.get 5
            local.get 4
            local.get 2
            call $managedTransferValueExecute
            drop
            br 3 (;@1;)
          end
          local.get 0
          local.get 0
          i64.load offset=40
          i64.store offset=16
          local.get 0
          local.get 0
          i64.load offset=32
          i64.store offset=8
          local.get 3
          local.get 0
          i32.const 8
          i32.add
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h64a478281fb2f0eeE
          br 0 (;@3;)
        end
      end
      local.get 1
      local.get 3
      local.get 5
      local.get 4
      local.get 2
      call $managedMultiTransferDCDTNFTExecute
      drop
    end
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_exec_reject_funds_multi_transfer (;402;) (type 15)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc4deb71796a2a81aE
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=24
    local.get 0
    i32.const 24
    i32.add
    i32.const 132709
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1afbc05fc57752ebE
    local.set 2
    local.get 0
    i32.load offset=24
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5830c7af5e96c711E
    local.get 0
    local.get 1
    i32.store offset=8
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    local.set 1
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
        call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he4474a11514917d1E
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
        local.get 1
        local.get 0
        i32.const 48
        i32.add
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h64a478281fb2f0eeE
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 132512
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 0
    local.get 1
    i32.store offset=28
    local.get 0
    local.get 0
    i64.load
    i64.store offset=32 align=4
    local.get 0
    local.get 0
    i32.const 8
    i32.add
    i32.store offset=24
    local.get 0
    i32.const 24
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17h2b42357007a004ecE
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $transf_exec_multi_reject_funds (;403;) (type 15)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc4deb71796a2a81aE
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=24
    local.get 0
    i32.const 24
    i32.add
    i32.const 132709
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1afbc05fc57752ebE
    local.set 2
    local.get 0
    i32.load offset=24
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5830c7af5e96c711E
    local.get 0
    local.get 1
    i32.store offset=8
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    local.set 1
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
        call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he4474a11514917d1E
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
        local.get 1
        local.get 0
        i32.const 48
        i32.add
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h64a478281fb2f0eeE
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 132524
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 0
    local.get 1
    i32.store offset=28
    local.get 0
    local.get 0
    i64.load
    i64.store offset=32 align=4
    local.get 0
    local.get 0
    i32.const 8
    i32.add
    i32.store offset=24
    local.get 0
    i32.const 24
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17h2b42357007a004ecE
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $changeOwnerAddress (;404;) (type 15)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132485
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    local.set 1
    local.get 0
    i32.const 1
    i32.const 132885
    i32.const 9
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    i32.store offset=32
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1a231d3a20798b2aE
    local.set 2
    local.get 0
    i32.const 24
    i32.add
    i32.const 131508
    i32.const 18
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.load offset=24
    local.get 0
    i32.load offset=28
    local.get 0
    i32.const 32
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h8de6413318889c57E
    local.get 0
    i32.load offset=20
    local.set 3
    local.get 0
    i32.load offset=16
    local.set 4
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h0dfde525ea928006E
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E
    local.get 4
    local.get 3
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17haae5e18ee28e6fb7E
    drop
    call $cleanReturnData
    local.get 0
    i32.const 8
    i32.add
    i32.const 132564
    i32.const 17
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 0
    i32.load offset=12
    local.set 2
    local.get 0
    i32.load offset=8
    local.set 3
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h0dfde525ea928006E
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h2d9377c5ced423d2E
    local.get 3
    local.get 2
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17haae5e18ee28e6fb7E
    local.set 1
    call $cleanReturnData
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h761bf0300273afeeE
    local.tee 1
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
    i32.const 132043
    i32.const 11
    call $_ZN257_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_owned..ManagedVecOwnedIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hac996104c3ac07e6E
    i32.const 132043
    i32.const 11
    call $_ZN143_$LT$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h9b8a07bd6d9f0d0fE
    call $mBufferFinish
    drop
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $deploy_contract (;405;) (type 15)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc4deb71796a2a81aE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4da779f4fabc90a7E
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
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h99a775bb35f0c258E
    local.get 0
    i32.load offset=12
    local.set 2
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 0
    i32.load offset=20
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5830c7af5e96c711E
    local.get 0
    i32.const 20
    i32.add
    local.get 1
    local.get 3
    local.get 2
    call $_ZN9forwarder10fwd_deploy20DeployContractModule20perform_deploy_vault17hac48b05d01b5a7d4E
    local.get 0
    i32.const 20
    i32.add
    call $_ZN11dharitri_sc2io6finish12finish_multi17h5ee88a58b6564deeE
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $deploy_two_contracts (;406;) (type 15)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    local.get 0
    i32.const 4
    i32.add
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4da779f4fabc90a7E
    local.tee 1
    i32.const 1
    local.get 0
    call $_ZN9forwarder10fwd_deploy20DeployContractModule20perform_deploy_vault17hac48b05d01b5a7d4E
    local.get 0
    i32.load offset=4
    local.set 2
    local.get 0
    i32.const 4
    i32.add
    local.get 1
    i32.const 1
    local.get 0
    call $_ZN9forwarder10fwd_deploy20DeployContractModule20perform_deploy_vault17hac48b05d01b5a7d4E
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
  (func $deploy_vault_from_source (;407;) (type 15)
    (local i32 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc4deb71796a2a81aE
    i32.const 0
    i32.const 132415
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=20
    local.get 0
    local.get 0
    i32.const 20
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h99a775bb35f0c258E
    local.get 0
    i32.load offset=4
    local.set 2
    local.get 0
    i32.load
    local.set 3
    local.get 0
    i32.load offset=20
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5830c7af5e96c711E
    local.get 3
    local.get 2
    call $_ZN9forwarder11vault_proxy52VaultProxyMethods$LT$Env$C$From$C$$LP$$RP$$C$Gas$GT$4init17habf7cd75957a11acE
    local.set 2
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h0dfde525ea928006E
    local.set 4
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hfea0db9accdc05feE
    local.set 3
    i32.const 0
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17h815dec9838ae7791E
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
    i32.const 20
    i32.add
    local.get 5
    local.get 6
    call $_ZN258_$LT$dharitri_sc..types..interaction..tx_result_handler_list..tx_result_handler_list_cons..ConsRet$LT$Env$C$Head$C$Tail$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_result_handler_list..tx_result_handler_list_exec..RHListExec$LT$RawResult$C$Env$GT$$GT$19list_process_result17hff0fe65fa7fd0980E
    local.get 0
    local.get 0
    i32.load offset=28
    i32.store offset=16
    local.get 0
    local.get 0
    i64.load offset=20 align=4
    i64.store offset=8 align=4
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc2io6finish12finish_multi17h5ee88a58b6564deeE
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $upgradeVault (;408;) (type 15)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc4deb71796a2a81aE
    i32.const 0
    i32.const 132485
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4da779f4fabc90a7E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=20
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 20
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h99a775bb35f0c258E
    local.get 0
    i32.load offset=12
    local.set 3
    local.get 0
    i32.load offset=8
    local.set 4
    local.get 0
    i32.load offset=20
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5830c7af5e96c711E
    local.get 0
    i32.const 20
    i32.add
    local.get 1
    local.get 4
    local.get 3
    call $_ZN9forwarder19vault_upgrade_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$7upgrade17h191893b344074c75E
    local.get 0
    i32.load offset=20
    local.set 1
    local.get 0
    i32.load offset=28
    local.set 3
    call $getGasLeft
    local.set 5
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hfea0db9accdc05feE
    local.set 4
    i32.const 256
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17h815dec9838ae7791E
    local.get 3
    local.get 5
    local.get 4
    local.get 2
    i32.const -25
    local.get 1
    i32.const -25
    call $managedUpgradeContract
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $upgrade_vault_from_source (;409;) (type 15)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc4deb71796a2a81aE
    i32.const 0
    i32.const 132485
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    local.set 1
    i32.const 1
    i32.const 132415
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=20
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 20
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h99a775bb35f0c258E
    local.get 0
    i32.load offset=12
    local.set 3
    local.get 0
    i32.load offset=8
    local.set 4
    local.get 0
    i32.load offset=20
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5830c7af5e96c711E
    local.get 0
    i32.const 20
    i32.add
    local.get 1
    local.get 4
    local.get 3
    call $_ZN9forwarder19vault_upgrade_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$7upgrade17h191893b344074c75E
    local.get 0
    i32.load offset=28
    local.set 1
    local.get 0
    i32.load offset=20
    local.set 3
    call $getGasLeft
    local.set 5
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hfea0db9accdc05feE
    local.set 4
    i32.const 256
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17h815dec9838ae7791E
    local.get 1
    local.get 5
    local.get 4
    local.get 2
    i32.const -25
    local.get 3
    i32.const -25
    call $managedUpgradeFromSourceContract
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $getFungibleDcdtBalance (;410;) (type 15)
    (local i32)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132792
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    local.set 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hbf9cb670948b1b75E
    local.get 0
    i64.const 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$16get_dcdt_balance17h9ff8712db610bd31E
    call $bigIntFinishUnsigned
  )
  (func $getCurrentNftNonce (;411;) (type 15)
    (local i32 i32 i32)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132792
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    local.set 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hbf9cb670948b1b75E
    local.set 1
    local.get 0
    call $mBufferGetLength
    local.set 2
    local.get 1
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node26unsafe_buffer_load_address17h162fea53fa3b31a5E
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node35unsafe_buffer_load_token_identifier17hcfcca66f94458f18E
    i32.const 143521
    i32.const 143553
    local.get 2
    call $getCurrentDCDTNFTNonce
    call $smallIntFinishUnsigned
  )
  (func $send_dcdt (;412;) (type 15)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    local.set 1
    i32.const 1
    i32.const 132437
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9901b688586819e7E
    local.set 3
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    local.get 3
    i32.store offset=16
    local.get 0
    local.get 2
    i32.store offset=20
    local.get 0
    i64.const 0
    i64.store offset=24
    local.get 0
    local.get 0
    i32.const 16
    i32.add
    i32.store offset=36
    local.get 0
    local.get 0
    i32.const 20
    i32.add
    i32.store offset=32
    local.get 0
    local.get 0
    i32.const 12
    i32.add
    i32.store offset=40
    local.get 0
    i32.const 24
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te191_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$$LP$$RP$$C$$LP$$RP$$C$$LP$$RP$$GT$$GT$8transfer17hc358d9d6cbd4bb39E
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $send_dcdt_with_fees (;413;) (type 15)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9901b688586819e7E
    local.set 2
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    i32.const 24
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$11single_dcdt17hffae3beaa9dcf296E
    block ;; label = @1
      local.get 0
      i64.load offset=24
      i64.eqz
      br_if 0 (;@1;)
      i32.const 131201
      i32.const 28
      call $signalError
      unreachable
    end
    local.get 0
    i32.load offset=36
    local.set 1
    local.get 0
    local.get 0
    i32.load offset=32
    i32.store offset=16
    local.get 2
    local.get 2
    local.get 1
    call $bigIntMul
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u64$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h6059ddec400584a4E
    local.set 2
    local.get 0
    local.get 1
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae9780430f891b94E
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17hbe6861fcfb2b8c16E
    i32.store offset=20
    local.get 0
    i64.const 0
    i64.store offset=24
    local.get 0
    local.get 0
    i32.const 20
    i32.add
    i32.store offset=36
    local.get 0
    local.get 0
    i32.const 16
    i32.add
    i32.store offset=32
    local.get 0
    local.get 0
    i32.const 12
    i32.add
    i32.store offset=40
    local.get 0
    i32.const 24
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te191_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$$LP$$RP$$C$$LP$$RP$$C$$LP$$RP$$GT$$GT$8transfer17hc358d9d6cbd4bb39E
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $send_dcdt_twice (;414;) (type 15)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    local.set 1
    i32.const 1
    i32.const 132437
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9901b688586819e7E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9901b688586819e7E
    local.set 4
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    local.get 3
    i32.store offset=12
    local.get 0
    local.get 4
    i32.store offset=16
    local.get 0
    local.get 2
    i32.store offset=20
    local.get 0
    i64.const 0
    i64.store offset=24
    local.get 0
    local.get 0
    i32.const 12
    i32.add
    i32.store offset=36
    local.get 0
    local.get 0
    i32.const 20
    i32.add
    i32.store offset=32
    local.get 0
    local.get 0
    i32.const 8
    i32.add
    i32.store offset=40
    local.get 0
    i32.const 24
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te191_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$$LP$$RP$$C$$LP$$RP$$C$$LP$$RP$$GT$$GT$8transfer17hc358d9d6cbd4bb39E
    local.get 0
    i64.const 0
    i64.store offset=24
    local.get 0
    local.get 0
    i32.const 16
    i32.add
    i32.store offset=36
    local.get 0
    local.get 0
    i32.const 20
    i32.add
    i32.store offset=32
    local.get 0
    local.get 0
    i32.const 8
    i32.add
    i32.store offset=40
    local.get 0
    i32.const 24
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te191_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$$LP$$RP$$C$$LP$$RP$$C$$LP$$RP$$GT$$GT$8transfer17hc358d9d6cbd4bb39E
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $send_dcdt_direct_multi_transfer (;415;) (type 15)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc4deb71796a2a81aE
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=24
    local.get 0
    i32.const 24
    i32.add
    i32.const 132709
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1afbc05fc57752ebE
    local.set 2
    local.get 0
    i32.load offset=24
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5830c7af5e96c711E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
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
        call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he4474a11514917d1E
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
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h64a478281fb2f0eeE
        br 0 (;@2;)
      end
    end
    local.get 0
    call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h94052e9433022aa5E
    local.get 3
    local.get 1
    i64.const 0
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt398_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$24perform_transfer_execute17ha7a82a8e24e7f375E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $issue_fungible_token (;416;) (type 15)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h367705837a947d61E
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4da779f4fabc90a7E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4da779f4fabc90a7E
    local.set 2
    local.get 0
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9901b688586819e7E
    i32.store offset=20
    local.get 0
    local.get 2
    i32.store offset=16
    local.get 0
    local.get 1
    i32.store offset=12
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$4rewa17hfd6a7fd3072f2a13E
    local.set 1
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h79880bd6fde944c9E
    i32.store offset=24
    local.get 1
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae9780430f891b94E
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
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14issue_fungible17h17cc95c3edde2021E
    local.get 0
    i32.const 28
    i32.add
    local.get 0
    i32.const 24
    i32.add
    call $_ZN9forwarder8fwd_dcdt13CallbackProxy19dcdt_issue_callback17hcf9d6dabde656ee1E
    local.get 0
    local.get 0
    i32.load offset=56
    i32.store offset=48
    local.get 0
    local.get 0
    i32.load offset=52
    i32.store offset=44
    local.get 0
    local.get 0
    i32.load offset=60
    i32.store offset=40
    local.get 0
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h3eb5b41f27d2730aE
    unreachable
  )
  (func $local_mint (;417;) (type 15)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132792
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    local.set 1
    local.get 0
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9901b688586819e7E
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
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_local_mint17h255ebbc1a39c6278E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $local_burn (;418;) (type 15)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132792
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    local.set 1
    local.get 0
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9901b688586819e7E
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
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_local_burn17hb311ccc392fec580E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $get_dcdt_local_roles (;419;) (type 15)
    (local i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const -13
    local.set 1
    i32.const 0
    i32.const 132437
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    call $getDCDTLocalRoles
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    local.set 3
    loop ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.const 133334
          i32.add
          i32.load8_u
          local.tee 4
          i32.const 3
          i32.shl
          i32.const 133392
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
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he82ecb04dfff02bfE
          call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h41004dcd331a4bb5E
          br 1 (;@2;)
        end
        local.get 3
        call $_ZN11dharitri_sc2io6finish12finish_multi17hfa7bf56b7cc81f4eE
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
  (func $get_dcdt_token_data (;420;) (type 15)
    (local i32 i32 i32 i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    local.get 0
    i32.const 16
    i32.add
    i32.const 0
    i32.const 133009
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    i32.const 1
    i32.const 132437
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb80ee9fba32521afE
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$19get_dcdt_token_data17hb6d0dd894664f1d1E
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
    call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hc234684ca2c4cdd2E
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
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h34483fd6d1c3df8bE
        local.get 0
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=12
        local.get 2
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h401123b5bfad9f5dE
        br 0 (;@2;)
      end
    end
    local.get 2
    call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hb4af8bb98bfade2aE
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $is_dcdt_frozen (;421;) (type 15)
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 133009
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    i32.const 1
    i32.const 132437
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb80ee9fba32521afE
    call $managedIsDCDTFrozen
    i32.const 0
    i32.gt_s
    i64.extend_i32_u
    call $smallIntFinishSigned
  )
  (func $is_dcdt_paused (;422;) (type 15)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132437
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    call $managedIsDCDTPaused
    i32.const 0
    i32.gt_s
    i64.extend_i32_u
    call $smallIntFinishSigned
  )
  (func $is_dcdt_limited_transfer (;423;) (type 15)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132437
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    call $managedIsDCDTLimitedTransfer
    i32.const 0
    i32.gt_s
    i64.extend_i32_u
    call $smallIntFinishSigned
  )
  (func $validate_token_identifier (;424;) (type 15)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132437
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    call $validateTokenIdentifier
    i32.const 0
    i32.ne
    i64.extend_i32_u
    call $smallIntFinishSigned
  )
  (func $sft_issue (;425;) (type 15)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h367705837a947d61E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4da779f4fabc90a7E
    local.set 1
    local.get 0
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4da779f4fabc90a7E
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$4rewa17hfd6a7fd3072f2a13E
    local.set 1
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h79880bd6fde944c9E
    i32.store offset=8
    local.get 1
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae9780430f891b94E
    local.set 1
    local.get 0
    i32.const 16843009
    i32.store offset=15 align=1
    local.get 0
    i32.const 16843009
    i32.store offset=12
    local.get 0
    i32.const 36
    i32.add
    local.get 1
    local.get 0
    local.get 0
    i32.const 4
    i32.add
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$19issue_semi_fungible17h54d6c0976b85796cE
    local.get 0
    i32.const 12
    i32.add
    local.get 0
    i32.const 8
    i32.add
    call $_ZN9forwarder7fwd_sft13CallbackProxy18sft_issue_callback17h8eb8807ea0637bc3E
    local.get 0
    local.get 0
    i32.load offset=40
    i32.store offset=32
    local.get 0
    local.get 0
    i32.load offset=36
    i32.store offset=28
    local.get 0
    local.get 0
    i32.load offset=44
    i32.store offset=24
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h3eb5b41f27d2730aE
    unreachable
  )
  (func $get_nft_balance (;426;) (type 15)
    (local i32 i64)
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132792
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    local.set 0
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb80ee9fba32521afE
    local.set 1
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hbf9cb670948b1b75E
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$16get_dcdt_balance17h9ff8712db610bd31E
    call $bigIntFinishUnsigned
  )
  (func $buy_nft (;427;) (type 15)
    (local i32 i32 i64 i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132912
    i32.const 6
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb80ee9fba32521afE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9901b688586819e7E
    local.set 3
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h9e4182d4648808c7E
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h79880bd6fde944c9E
    local.set 4
    local.get 0
    i64.load
    local.set 5
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hbf9cb670948b1b75E
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$19get_dcdt_token_data17hb6d0dd894664f1d1E
    local.get 0
    i32.load offset=12
    local.tee 6
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae9780430f891b94E
    local.tee 7
    local.get 7
    local.get 0
    i32.load offset=36
    call $bigIntMul
    local.get 7
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u64$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h6059ddec400584a4E
    local.set 7
    local.get 4
    local.get 1
    local.get 2
    local.get 3
    i64.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17hba411cc7ea68bf9aE
    block ;; label = @1
      block ;; label = @2
        local.get 7
        call $_ZN11dharitri_sc5types7managed5basic11big_num_cmp10bi_cmp_i6417hdb72bded69d69e48E
        i32.const 255
        i32.and
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        local.get 6
        call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae9780430f891b94E
        local.set 1
        br 1 (;@1;)
      end
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load offset=8
          local.tee 1
          call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h934f0dafccc28bcfE
          br_if 0 (;@3;)
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
          local.set 3
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
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
            call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21transfer_dcdt_execute17h1acc39a5bb87c68eE
            br 2 (;@2;)
          end
          local.get 8
          local.get 1
          local.get 5
          local.get 7
          i64.const 0
          local.get 3
          local.get 4
          call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17hba411cc7ea68bf9aE
          br 1 (;@2;)
        end
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
        local.set 1
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
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
      call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae9780430f891b94E
      local.get 7
      call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17hbe6861fcfb2b8c16E
      local.set 1
    end
    local.get 1
    call $bigIntFinishUnsigned
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $nft_issue (;428;) (type 15)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h367705837a947d61E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4da779f4fabc90a7E
    local.set 1
    local.get 0
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4da779f4fabc90a7E
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$4rewa17hfd6a7fd3072f2a13E
    local.set 1
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h79880bd6fde944c9E
    i32.store offset=8
    local.get 1
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae9780430f891b94E
    local.set 1
    local.get 0
    i32.const 16843009
    i32.store offset=15 align=1
    local.get 0
    i32.const 16843009
    i32.store offset=12
    local.get 0
    i32.const 36
    i32.add
    local.get 1
    local.get 0
    local.get 0
    i32.const 4
    i32.add
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$18issue_non_fungible17h004e62118a9895a1E
    local.get 0
    i32.const 12
    i32.add
    local.get 0
    i32.const 8
    i32.add
    call $_ZN9forwarder7fwd_nft13CallbackProxy18nft_issue_callback17h3e4d36dc779ab343E
    local.get 0
    local.get 0
    i32.load offset=40
    i32.store offset=32
    local.get 0
    local.get 0
    i32.load offset=36
    i32.store offset=28
    local.get 0
    local.get 0
    i32.load offset=44
    i32.store offset=24
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h3eb5b41f27d2730aE
    unreachable
  )
  (func $nft_create (;429;) (type 15)
    call $checkNoPayment
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132792
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9901b688586819e7E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4da779f4fabc90a7E
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9901b688586819e7E
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4da779f4fabc90a7E
    i32.const 5
    i32.const 132918
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h35da27e1543378b1E
    i32.const 6
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4da779f4fabc90a7E
    call $_ZN9forwarder7fwd_nft18ForwarderNftModule10nft_create17hed735391515a8262E
    call $smallIntFinishUnsigned
  )
  (func $nft_create_compact (;430;) (type 15)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132792
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9901b688586819e7E
    local.set 2
    local.get 0
    i32.const 2
    i32.const 132918
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h35da27e1543378b1E
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    i32.store offset=20
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hfea0db9accdc05feE
    i32.store offset=24
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
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
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_nft_create17hd25c1e988aba8471E
    drop
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $nft_add_uris (;431;) (type 15)
    (local i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc4deb71796a2a81aE
    i32.const 0
    i32.const 132792
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb80ee9fba32521afE
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=52
    local.get 0
    i32.const 52
    i32.add
    i32.const 132445
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h3ae927d8ddfeb84aE
    local.set 3
    local.get 0
    i32.load offset=52
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5830c7af5e96c711E
    local.get 0
    local.get 1
    i32.store offset=48
    block ;; label = @1
      local.get 3
      call $_ZN11dharitri_sc5types7managed11multi_value19multi_value_encoded30MultiValueEncoded$LT$M$C$T$GT$6to_vec17h2bd3c7eafc473875E
      local.tee 4
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17hffab4404830fe2a7E
      br_if 0 (;@1;)
      local.get 0
      i32.const 40
      i32.add
      i32.const 131544
      i32.const 13
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
      local.get 0
      i32.const 32
      i32.add
      local.get 0
      i32.load offset=40
      local.get 0
      i32.load offset=44
      local.get 0
      i32.const 48
      i32.add
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h9e75a3ae8bbaec51E
      local.get 0
      i32.const 24
      i32.add
      local.get 0
      i32.load offset=32
      local.get 0
      i32.load offset=36
      local.get 2
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h0d2871c002d7fc4fE
      local.get 0
      i32.load offset=28
      local.set 1
      local.get 0
      i32.load offset=24
      local.set 3
      local.get 0
      local.get 4
      call $mBufferGetLength
      i32.store offset=60
      local.get 0
      i32.const 0
      i32.store offset=56
      local.get 0
      local.get 4
      i32.store offset=52
      block ;; label = @2
        loop ;; label = @3
          local.get 0
          i32.const 16
          i32.add
          local.get 0
          i32.const 52
          i32.add
          call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h34483fd6d1c3df8bE
          local.get 0
          i32.load offset=16
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.const 8
          i32.add
          local.get 3
          local.get 1
          local.get 0
          i32.load offset=20
          call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h79dab1a6606343d9E
          local.get 0
          i32.load offset=12
          local.set 1
          local.get 0
          i32.load offset=8
          local.set 3
          br 0 (;@3;)
        end
      end
      local.get 3
      local.get 1
      call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17haca49405f7434190E
    end
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $nft_update_attributes (;432;) (type 15)
    (local i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132792
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb80ee9fba32521afE
    local.set 2
    local.get 0
    i32.const 2
    i32.const 132449
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h35da27e1543378b1E
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
    i32.const 131590
    i32.const 23
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h9e75a3ae8bbaec51E
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.load offset=24
    local.get 0
    i32.load offset=28
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h0d2871c002d7fc4fE
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
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hadc751f32b72789aE
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17haca49405f7434190E
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $nft_decode_complex_attributes (;433;) (type 15)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 160
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
    i32.const 6
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc4deb71796a2a81aE
    i32.const 0
    i32.const 132792
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9901b688586819e7E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4da779f4fabc90a7E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9901b688586819e7E
    local.set 4
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4da779f4fabc90a7E
    local.set 5
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4da779f4fabc90a7E
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
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h947b77d7df60709cE
    local.get 0
    i32.load offset=136
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5830c7af5e96c711E
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    local.tee 4
    local.get 6
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
    local.get 0
    i32.const 72
    i32.add
    i32.const 131495
    i32.const 13
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h9e75a3ae8bbaec51E
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h36f6278c7a7c4d0eE
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h652b932c25016bcfE
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h36f6278c7a7c4d0eE
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h652b932c25016bcfE
    local.get 0
    i32.load offset=36
    local.set 1
    local.get 0
    i32.load offset=32
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1a231d3a20798b2aE
    local.set 3
    local.get 11
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17hbe4acbbf5b21fb94E
    local.get 3
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h401123b5bfad9f5dE
    local.get 10
    local.get 3
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h401123b5bfad9f5dE
    block ;; label = @1
      block ;; label = @2
        local.get 9
        call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h934f0dafccc28bcfE
        br_if 0 (;@2;)
        local.get 9
        local.get 3
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h401123b5bfad9f5dE
        br 1 (;@1;)
      end
      i32.const 4
      local.get 3
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h29599ef627bf6126E
      local.get 3
      i32.const 132143
      i32.const 4
      call $mBufferAppendBytes
      drop
    end
    local.get 8
    local.get 3
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h01f47da771026525E
    local.get 7
    local.get 3
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h401123b5bfad9f5dE
    local.get 1
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
    block ;; label = @1
      block ;; label = @2
        local.get 4
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17hffab4404830fe2a7E
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
          call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h34483fd6d1c3df8bE
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
          call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h79dab1a6606343d9E
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
      call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h818888b193d932a3E
      local.get 0
      i32.load offset=12
      local.set 1
      local.get 0
      i32.load offset=8
      local.set 2
    end
    local.get 2
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17hf89209eeffbeb871E
    local.set 12
    local.get 0
    i32.const 104
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hbf9cb670948b1b75E
    local.get 0
    i32.load offset=84
    local.get 12
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$19get_dcdt_token_data17hb6d0dd894664f1d1E
    i32.const 0
    local.set 2
    local.get 0
    i32.load offset=116
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1a231d3a20798b2aE
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
    i32.const 132098
    i32.const 32
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hf1eb4d33bbe89681E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17hb4f8febeddbdb1feE
    local.set 1
    local.get 0
    i32.const 136
    i32.add
    i32.const 132098
    i32.const 32
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hf1eb4d33bbe89681E
    local.set 3
    local.get 0
    local.get 0
    i32.const 136
    i32.add
    i32.const 132098
    i32.const 32
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hf1eb4d33bbe89681E
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h7059c70463acda7aE
    call $_ZN11dharitri_sc5types7managed7wrapped16token_identifier24TokenIdentifier$LT$M$GT$7try_new17hcc159319e2fe3780E
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
          i32.const 132098
          i32.const 32
          call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17ha4c9b8cc6caf135cE
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                local.get 0
                i32.load8_u offset=159
                br_table 2 (;@4;) 1 (;@5;) 0 (;@6;)
              end
              i32.const 132098
              i32.const 32
              i32.const 132152
              i32.const 13
              call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h570d3708f8e88542E
              unreachable
            end
            i32.const 1
            local.set 2
          end
          local.get 0
          i32.const 136
          i32.add
          i32.const 132098
          i32.const 32
          call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hf1eb4d33bbe89681E
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
            i32.store offset=143508
            i32.const 0
            i32.const 0
            i32.store8 offset=143512
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
        i32.const 132098
        i32.const 32
        i32.const 132130
        i32.const 13
        call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h570d3708f8e88542E
        unreachable
      end
      i32.const 132098
      i32.const 32
      i32.const 131072
      i32.const 14
      call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h570d3708f8e88542E
      unreachable
    end
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hdec4978f3f7e0f76E
    unreachable
  )
  (func $nft_add_quantity (;434;) (type 15)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132792
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb80ee9fba32521afE
    local.set 2
    local.get 0
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9901b688586819e7E
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
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_local_mint17h255ebbc1a39c6278E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $nft_burn (;435;) (type 15)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132792
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb80ee9fba32521afE
    local.set 2
    local.get 0
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9901b688586819e7E
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
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_local_burn17hb311ccc392fec580E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $transfer_nft_via_async_call (;436;) (type 15)
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    i32.const 1
    i32.const 132792
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb80ee9fba32521afE
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9901b688586819e7E
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$28transfer_dcdt_via_async_call17hd0c3b3cdd681bb1eE
    unreachable
  )
  (func $transfer_nft_and_execute (;437;) (type 15)
    (local i32 i32 i32 i64 i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc4deb71796a2a81aE
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    local.set 1
    i32.const 1
    i32.const 132792
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb80ee9fba32521afE
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9901b688586819e7E
    local.set 4
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4da779f4fabc90a7E
    local.set 5
    local.get 0
    i32.const 5
    i32.store offset=32
    local.get 0
    i32.const 32
    i32.add
    i32.const 132929
    i32.const 9
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h3ae927d8ddfeb84aE
    local.set 6
    local.get 0
    i32.load offset=32
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5830c7af5e96c711E
    local.get 0
    local.get 4
    i32.store offset=28
    local.get 0
    local.get 2
    i32.store offset=24
    local.get 0
    local.get 1
    i32.store offset=20
    call $getGasLeft
    local.set 7
    local.get 0
    i32.const 8
    i32.add
    local.get 5
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hbb9c82bd9251423cE
    local.get 7
    local.set 8
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load offset=8
        local.tee 2
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17hffab4404830fe2a7E
        i32.eqz
        br_if 0 (;@2;)
        i64.const 0
        local.set 8
        local.get 4
        call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17hdbcd228f645e1212E
        br_if 1 (;@1;)
      end
      local.get 0
      local.get 3
      i64.store offset=48
      local.get 0
      local.get 6
      i32.store offset=44
      local.get 0
      local.get 2
      i32.store offset=40
      local.get 0
      local.get 7
      i64.store offset=32
      local.get 0
      local.get 0
      i32.const 20
      i32.add
      i32.store offset=64
      local.get 0
      local.get 0
      i32.const 28
      i32.add
      i32.store offset=60
      local.get 0
      local.get 0
      i32.const 24
      i32.add
      i32.store offset=56
      local.get 0
      local.get 8
      i64.store offset=72
      local.get 0
      local.get 3
      i64.store offset=88
      local.get 0
      local.get 0
      i32.const 68
      i32.add
      i32.store offset=104
      local.get 0
      local.get 6
      i32.store offset=84
      local.get 0
      local.get 2
      i32.store offset=80
      local.get 0
      local.get 0
      i32.const 28
      i32.add
      i32.store offset=100
      local.get 0
      local.get 0
      i32.const 24
      i32.add
      i32.store offset=96
      local.get 0
      local.get 0
      i32.const 72
      i32.add
      i32.store offset=108
      local.get 0
      i32.const 88
      i32.add
      local.get 1
      local.get 8
      local.get 2
      local.get 6
      call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17h03c13df554da87b9E
    end
    local.get 0
    i32.const 112
    i32.add
    global.set $__stack_pointer
  )
  (func $create_and_send (;438;) (type 15)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132702
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    local.set 1
    i32.const 1
    i32.const 132792
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9901b688586819e7E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4da779f4fabc90a7E
    local.set 4
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9901b688586819e7E
    local.set 5
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4da779f4fabc90a7E
    local.set 6
    i32.const 6
    i32.const 132918
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h35da27e1543378b1E
    local.set 7
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4da779f4fabc90a7E
    local.set 8
    local.get 0
    local.get 3
    i32.store offset=20
    local.get 0
    local.get 2
    i32.store offset=16
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    local.get 2
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1a231d3a20798b2aE
    local.get 3
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae9780430f891b94E
    local.get 4
    local.get 5
    local.get 6
    local.get 7
    local.get 8
    call $_ZN9forwarder7fwd_nft18ForwarderNftModule10nft_create17hed735391515a8262E
    local.tee 9
    i64.store offset=24
    local.get 0
    local.get 0
    i32.const 20
    i32.add
    i32.store offset=36
    local.get 0
    local.get 0
    i32.const 16
    i32.add
    i32.store offset=32
    local.get 0
    local.get 0
    i32.const 12
    i32.add
    i32.store offset=40
    local.get 0
    i32.const 24
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te191_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$$LP$$RP$$C$$LP$$RP$$C$$LP$$RP$$GT$$GT$8transfer17hc358d9d6cbd4bb39E
    i32.const 132281
    i32.const 4
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17ha793922880535d00E
    local.tee 2
    local.get 0
    i32.const 12
    i32.add
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h7fccccfa034b706fE
    local.get 2
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17hcf9dc21ade4e0a94E
    local.get 2
    local.get 9
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17hb8a881e95f88b177E
    local.get 2
    local.get 0
    i32.const 20
    i32.add
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17h2c84b66ae5c043dcE
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
    call $managedWriteLog
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $setLocalRoles (;439;) (type 15)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc4deb71796a2a81aE
    i32.const 0
    i32.const 133009
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    local.set 1
    i32.const 1
    i32.const 132792
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=28
    local.get 0
    i32.const 28
    i32.add
    i32.const 133037
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1afbc05fc57752ebE
    local.set 3
    local.get 0
    i32.load offset=28
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5830c7af5e96c711E
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
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$17set_special_roles17h6576c362c2bbbdd6E
    local.get 0
    i64.load offset=8
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
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
    i32.const 133016
    i32.store offset=28
    local.get 0
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h29831eae6496e0edE
    unreachable
  )
  (func $unsetLocalRoles (;440;) (type 15)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc4deb71796a2a81aE
    i32.const 0
    i32.const 133009
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e72a14c5025df30E
    local.set 1
    i32.const 1
    i32.const 132792
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=28
    local.get 0
    i32.const 28
    i32.add
    i32.const 133037
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1afbc05fc57752ebE
    local.set 3
    local.get 0
    i32.load offset=28
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5830c7af5e96c711E
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
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$19unset_special_roles17h2f99e636f2cd4acfE
    local.get 0
    i64.load offset=8
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
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
    i32.const 133016
    i32.store offset=28
    local.get 0
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h29831eae6496e0edE
    unreachable
  )
  (func $issue_dynamic_token (;441;) (type 15)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h367705837a947d61E
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4da779f4fabc90a7E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4da779f4fabc90a7E
    local.set 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h210aef91ca3fee5aE
    local.set 3
    i32.const 3
    i32.const 132463
    i32.const 12
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacfbc8cc8a9848a7E
    local.set 4
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$4rewa17hfd6a7fd3072f2a13E
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae9780430f891b94E
    local.set 5
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h79880bd6fde944c9E
    i32.store offset=8
    local.get 0
    i32.const 36
    i32.add
    local.get 5
    local.get 1
    local.get 2
    local.get 3
    i32.const 255
    i32.and
    local.get 4
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$13issue_dynamic17hecb013ecb5b91d24E
    local.get 0
    i32.const 12
    i32.add
    local.get 0
    i32.const 8
    i32.add
    call $_ZN9forwarder7fwd_nft13CallbackProxy18nft_issue_callback17h3e4d36dc779ab343E
    local.get 0
    local.get 0
    i32.load offset=40
    i32.store offset=32
    local.get 0
    local.get 0
    i32.load offset=36
    i32.store offset=28
    local.get 0
    local.get 0
    i32.load offset=44
    i32.store offset=24
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h3eb5b41f27d2730aE
    unreachable
  )
  (func $issue_token_all_roles (;442;) (type 15)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h367705837a947d61E
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4da779f4fabc90a7E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4da779f4fabc90a7E
    local.set 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h210aef91ca3fee5aE
    local.set 3
    i32.const 3
    i32.const 132463
    i32.const 12
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacfbc8cc8a9848a7E
    local.set 4
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$4rewa17hfd6a7fd3072f2a13E
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae9780430f891b94E
    local.set 5
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h79880bd6fde944c9E
    i32.store offset=8
    local.get 0
    i32.const 36
    i32.add
    local.get 5
    local.get 1
    local.get 2
    local.get 3
    i32.const 255
    i32.and
    local.get 4
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$23issue_and_set_all_roles17h58bea149862e35a3E
    local.get 0
    i32.const 12
    i32.add
    local.get 0
    i32.const 8
    i32.add
    call $_ZN9forwarder7fwd_nft13CallbackProxy18nft_issue_callback17h3e4d36dc779ab343E
    local.get 0
    local.get 0
    i32.load offset=40
    i32.store offset=32
    local.get 0
    local.get 0
    i32.load offset=36
    i32.store offset=28
    local.get 0
    local.get 0
    i32.load offset=44
    i32.store offset=24
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h3eb5b41f27d2730aE
    unreachable
  )
  (func $change_to_dynamic (;443;) (type 15)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    local.get 0
    i32.const 8
    i32.add
    i32.const 0
    i32.const 132437
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$17change_to_dynamic17h01624a3254103505E
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hf949902e8d63e5d2E
    unreachable
  )
  (func $update_token (;444;) (type 15)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    local.get 0
    i32.const 8
    i32.add
    i32.const 0
    i32.const 132437
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$12update_token17h39c6f8ca0276168bE
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hf949902e8d63e5d2E
    unreachable
  )
  (func $modify_royalties (;445;) (type 15)
    (local i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132437
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb80ee9fba32521afE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb80ee9fba32521afE
    local.set 3
    local.get 0
    local.get 1
    i32.store offset=44
    local.get 0
    i32.const 32
    i32.add
    i32.const 131557
    i32.const 19
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 0
    i32.const 24
    i32.add
    local.get 0
    i32.load offset=32
    local.get 0
    i32.load offset=36
    local.get 0
    i32.const 44
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h9e75a3ae8bbaec51E
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.load offset=24
    local.get 0
    i32.load offset=28
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h0d2871c002d7fc4fE
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.load offset=16
    local.get 0
    i32.load offset=20
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h0d2871c002d7fc4fE
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17haca49405f7434190E
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $set_new_uris (;446;) (type 15)
    (local i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc4deb71796a2a81aE
    i32.const 0
    i32.const 132437
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb80ee9fba32521afE
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=52
    local.get 0
    i32.const 52
    i32.add
    i32.const 132429
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h3ae927d8ddfeb84aE
    local.set 3
    local.get 0
    i32.load offset=52
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5830c7af5e96c711E
    local.get 0
    local.get 1
    i32.store offset=48
    local.get 3
    call $_ZN11dharitri_sc5types7managed11multi_value19multi_value_encoded30MultiValueEncoded$LT$M$C$T$GT$6to_vec17h2bd3c7eafc473875E
    local.set 4
    local.get 0
    i32.const 40
    i32.add
    i32.const 131576
    i32.const 14
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    i32.load offset=40
    local.get 0
    i32.load offset=44
    local.get 0
    i32.const 48
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h9e75a3ae8bbaec51E
    local.get 0
    i32.const 24
    i32.add
    local.get 0
    i32.load offset=32
    local.get 0
    i32.load offset=36
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h0d2871c002d7fc4fE
    local.get 0
    i32.load offset=28
    local.set 1
    local.get 0
    i32.load offset=24
    local.set 3
    block ;; label = @1
      block ;; label = @2
        local.get 4
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17hffab4404830fe2a7E
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        call $mBufferGetLength
        i32.store offset=60
        local.get 0
        i32.const 0
        i32.store offset=56
        local.get 0
        local.get 4
        i32.store offset=52
        loop ;; label = @3
          local.get 0
          i32.const 16
          i32.add
          local.get 0
          i32.const 52
          i32.add
          call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h34483fd6d1c3df8bE
          local.get 0
          i32.load offset=16
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 8
          i32.add
          local.get 3
          local.get 1
          local.get 0
          i32.load offset=20
          call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h79dab1a6606343d9E
          local.get 0
          i32.load offset=12
          local.set 1
          local.get 0
          i32.load offset=8
          local.set 3
          br 0 (;@3;)
        end
      end
      local.get 0
      local.get 3
      local.get 1
      call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h818888b193d932a3E
      local.get 0
      i32.load offset=4
      local.set 1
      local.get 0
      i32.load
      local.set 3
    end
    local.get 3
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17haca49405f7434190E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $modify_creator (;447;) (type 15)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    i32.const 0
    i32.const 132437
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb80ee9fba32521afE
    local.set 2
    local.get 0
    local.get 1
    i32.store offset=28
    local.get 0
    i32.const 16
    i32.add
    i32.const 131633
    i32.const 17
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h9e75a3ae8bbaec51E
    local.get 0
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h0d2871c002d7fc4fE
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17haca49405f7434190E
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $metadata_recreate (;448;) (type 15)
    (local i32 i32 i64 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
    i32.const 6
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc4deb71796a2a81aE
    i32.const 0
    i32.const 132437
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb80ee9fba32521afE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4da779f4fabc90a7E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb80ee9fba32521afE
    local.set 4
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4da779f4fabc90a7E
    local.set 5
    i32.const 5
    i32.const 132449
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h35da27e1543378b1E
    local.set 6
    local.get 0
    i32.const 6
    i32.store offset=76
    local.get 0
    i32.const 76
    i32.add
    i32.const 132445
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h3ae927d8ddfeb84aE
    local.set 7
    local.get 0
    i32.load offset=76
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5830c7af5e96c711E
    local.get 0
    local.get 6
    i32.const 16
    i32.shr_u
    i32.store8 offset=78
    local.get 0
    local.get 6
    i32.store16 offset=76
    local.get 7
    call $_ZN11dharitri_sc5types7managed11multi_value19multi_value_encoded30MultiValueEncoded$LT$M$C$T$GT$6to_vec17h2bd3c7eafc473875E
    local.set 6
    local.get 0
    i32.const 64
    i32.add
    i32.const 131613
    i32.const 20
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 0
    i32.const 56
    i32.add
    local.get 0
    i32.load offset=64
    local.get 0
    i32.load offset=68
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h55fd12b0f78e2bf9E
    local.get 0
    i32.const 48
    i32.add
    local.get 0
    i32.load offset=56
    local.get 0
    i32.load offset=60
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h0d2871c002d7fc4fE
    local.get 0
    i32.const 40
    i32.add
    local.get 0
    i32.load offset=48
    local.get 0
    i32.load offset=52
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h5c9ed9a40d0984b0E
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    i32.load offset=40
    local.get 0
    i32.load offset=44
    local.get 4
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h0d2871c002d7fc4fE
    local.get 0
    i32.const 24
    i32.add
    local.get 0
    i32.load offset=32
    local.get 0
    i32.load offset=36
    local.get 5
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h5c9ed9a40d0984b0E
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.load offset=24
    local.get 0
    i32.load offset=28
    local.get 0
    i32.const 76
    i32.add
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hadc751f32b72789aE
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.load offset=16
    local.get 0
    i32.load offset=20
    local.get 6
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h9280d18afedc37fbE
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17haca49405f7434190E
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $metadata_update (;449;) (type 15)
    (local i32 i32 i64 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
    i32.const 6
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc4deb71796a2a81aE
    i32.const 0
    i32.const 132437
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hacbe14e7bc193719E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb80ee9fba32521afE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4da779f4fabc90a7E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb80ee9fba32521afE
    local.set 4
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4da779f4fabc90a7E
    local.set 5
    i32.const 5
    i32.const 132449
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h35da27e1543378b1E
    local.set 6
    local.get 0
    i32.const 6
    i32.store offset=76
    local.get 0
    i32.const 76
    i32.add
    i32.const 132445
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h3ae927d8ddfeb84aE
    local.set 7
    local.get 0
    i32.load offset=76
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5830c7af5e96c711E
    local.get 0
    local.get 6
    i32.const 16
    i32.shr_u
    i32.store8 offset=78
    local.get 0
    local.get 6
    i32.store16 offset=76
    local.get 7
    call $_ZN11dharitri_sc5types7managed11multi_value19multi_value_encoded30MultiValueEncoded$LT$M$C$T$GT$6to_vec17h2bd3c7eafc473875E
    local.set 6
    local.get 0
    i32.const 64
    i32.add
    i32.const 131526
    i32.const 18
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hc0faf052aef5b0cbE
    local.get 0
    i32.const 56
    i32.add
    local.get 0
    i32.load offset=64
    local.get 0
    i32.load offset=68
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h55fd12b0f78e2bf9E
    local.get 0
    i32.const 48
    i32.add
    local.get 0
    i32.load offset=56
    local.get 0
    i32.load offset=60
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h0d2871c002d7fc4fE
    local.get 0
    i32.const 40
    i32.add
    local.get 0
    i32.load offset=48
    local.get 0
    i32.load offset=52
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h5c9ed9a40d0984b0E
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    i32.load offset=40
    local.get 0
    i32.load offset=44
    local.get 4
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h0d2871c002d7fc4fE
    local.get 0
    i32.const 24
    i32.add
    local.get 0
    i32.load offset=32
    local.get 0
    i32.load offset=36
    local.get 5
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h5c9ed9a40d0984b0E
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.load offset=24
    local.get 0
    i32.load offset=28
    local.get 0
    i32.const 76
    i32.add
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hadc751f32b72789aE
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.load offset=16
    local.get 0
    i32.load offset=20
    local.get 6
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h9280d18afedc37fbE
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17haca49405f7434190E
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $lastIssuedToken (;450;) (type 15)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    local.get 0
    i32.const 8
    i32.add
    call $_ZN68_$LT$C$u20$as$u20$forwarder..fwd_storage..ForwarderStorageModule$GT$17last_issued_token17hee5ac7a34bbd99cbE
    local.tee 1
    call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17hd9724ba96bed86edE
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h7059c70463acda7aE
    call $_ZN11dharitri_sc5types7managed7wrapped16token_identifier24TokenIdentifier$LT$M$GT$7try_new17hcc159319e2fe3780E
    block ;; label = @1
      local.get 0
      i32.load offset=8
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      i32.const 132130
      i32.const 13
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h8527bac5c16eb702E
      unreachable
    end
    local.get 0
    i32.load offset=12
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h86813e7ff9418922E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $lastErrorMessage (;451;) (type 15)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5084d811951e5b22E
    call $_ZN68_$LT$C$u20$as$u20$forwarder..fwd_storage..ForwarderStorageModule$GT$18last_error_message17ha8d98b44fa3adc18E
    call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17hd9724ba96bed86edE
    call $mBufferFinish
    drop
  )
  (func $callBack (;452;) (type 15)
    (local i32 i32 i32 i32 i32 i64 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 176
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block ;; label = @1
      call $_ZN11dharitri_sc5types11interaction16callback_closure22cb_closure_storage_key17hed044ddc3e7a179dE
      local.tee 1
      call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17hd9724ba96bed86edE
      local.tee 2
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17hffab4404830fe2a7E
      br_if 0 (;@1;)
      local.get 2
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1a231d3a20798b2aE
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
      i32.const 131086
      i32.const 25
      call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hf1eb4d33bbe89681E
      local.set 4
      local.get 0
      i32.const 140
      i32.add
      i32.const 131086
      i32.const 25
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17hdb8f9517e6a62029E
      local.set 2
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
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
          i32.const 131086
          i32.const 25
          call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hf1eb4d33bbe89681E
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
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
                    local.get 0
                    i32.load offset=144
                    local.get 0
                    i32.load offset=140
                    i32.ne
                    br_if 0 (;@8;)
                    block ;; label = @9
                      local.get 0
                      i32.load8_u offset=156
                      i32.eqz
                      br_if 0 (;@9;)
                      i32.const 0
                      i32.const 0
                      i32.store offset=143508
                      i32.const 0
                      i32.const 0
                      i32.store8 offset=143512
                    end
                    local.get 1
                    call $_ZN11dharitri_sc7storage11storage_set13storage_clear17ha1cf96fd4a02c6cbE
                    local.get 0
                    i32.const 36
                    i32.add
                    local.get 4
                    call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h11c761faf85e299bE
                    local.get 0
                    i32.load offset=68
                    i32.eqz
                    br_if 7 (;@1;)
                    local.get 0
                    i32.const 140
                    i32.add
                    local.get 4
                    call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h11c761faf85e299bE
                    local.get 0
                    i32.load offset=172
                    i32.eqz
                    br_if 7 (;@1;)
                    block ;; label = @9
                      block ;; label = @10
                        block ;; label = @11
                          local.get 0
                          i32.const 140
                          i32.add
                          i32.const 132740
                          i32.const 18
                          call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h30e612e06580ca2bE
                          br_if 0 (;@11;)
                          local.get 0
                          i32.const 140
                          i32.add
                          i32.const 132385
                          i32.const 23
                          call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h30e612e06580ca2bE
                          br_if 1 (;@10;)
                          local.get 0
                          i32.const 140
                          i32.add
                          i32.const 132758
                          i32.const 25
                          call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h30e612e06580ca2bE
                          i32.eqz
                          br_if 2 (;@9;)
                          local.get 0
                          local.get 3
                          call $mBufferGetLength
                          i32.store offset=92
                          local.get 0
                          i32.const 0
                          i32.store offset=88
                          local.get 0
                          local.get 3
                          i32.store offset=84
                          call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
                          local.get 0
                          i32.const 84
                          i32.add
                          i32.const 132702
                          i32.const 2
                          call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17ha2c9623a80c77b99E
                          local.set 2
                          local.get 0
                          i32.const 84
                          i32.add
                          call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hcf8013bda8a66a16E
                          local.set 3
                          local.get 0
                          i32.const 84
                          i32.add
                          call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17had187b776bb5456dE
                          local.set 1
                          local.get 0
                          i32.load offset=88
                          local.get 0
                          i32.load offset=92
                          call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h9f593610fae37bd4E
                          local.get 0
                          local.get 2
                          i32.store offset=72
                          local.get 0
                          local.get 3
                          i32.store offset=76
                          local.get 0
                          local.get 1
                          i32.store offset=80
                          local.get 0
                          i32.const 128
                          i32.add
                          local.get 0
                          i32.const 72
                          i32.add
                          call $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$12accept_funds17hc57ad3abdf248939E
                          local.get 0
                          i64.const 0
                          i64.store offset=104
                          local.get 0
                          local.get 0
                          i32.load offset=128
                          i32.store offset=120
                          local.get 0
                          local.get 0
                          i64.load offset=132 align=4
                          i64.store offset=96
                          local.get 0
                          local.get 0
                          i32.const 80
                          i32.add
                          i32.store offset=116
                          local.get 0
                          local.get 0
                          i32.const 76
                          i32.add
                          i32.store offset=112
                          local.get 0
                          i32.const 96
                          i32.add
                          call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hed048db3a14c933eE
                          unreachable
                        end
                        call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
                        i32.const 0
                        call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc4deb71796a2a81aE
                        local.get 0
                        i32.const 0
                        i32.store offset=128
                        local.get 0
                        i32.const 96
                        i32.add
                        local.get 0
                        i32.const 128
                        i32.add
                        call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h895c29ae2a69bff5E
                        local.get 0
                        i32.load offset=128
                        call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5830c7af5e96c711E
                        local.get 0
                        i32.load offset=104
                        local.set 4
                        local.get 0
                        i32.load offset=100
                        local.set 2
                        local.get 0
                        i32.load offset=96
                        local.set 1
                        local.get 3
                        call $mBufferGetLength
                        local.set 3
                        call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
                        i32.const 0
                        local.get 3
                        call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h9f593610fae37bd4E
                        block ;; label = @11
                          block ;; label = @12
                            local.get 1
                            i32.const 1
                            i32.and
                            br_if 0 (;@12;)
                            i32.const 132819
                            i32.const 7
                            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he82ecb04dfff02bfE
                            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$16from_single_item17h49a5f3292592a7f8E
                            local.tee 3
                            local.get 2
                            call $mBufferAppend
                            drop
                            br 1 (;@11;)
                          end
                          i32.const 132826
                          i32.const 5
                          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he82ecb04dfff02bfE
                          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$16from_single_item17h49a5f3292592a7f8E
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
                          i32.store offset=96
                          local.get 3
                          local.get 0
                          i32.const 96
                          i32.add
                          i32.const 4
                          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he82ecb04dfff02bfE
                          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
                          local.get 3
                          local.get 4
                          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf142a04b3c8b98cbE
                        end
                        local.get 3
                        call $_ZN11dharitri_sc2io6finish12finish_multi17hfa7bf56b7cc81f4eE
                        br 9 (;@1;)
                      end
                      local.get 3
                      call $mBufferGetLength
                      local.set 2
                      call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
                      i32.const 0
                      local.get 2
                      call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h9f593610fae37bd4E
                      local.get 0
                      i32.const 96
                      i32.add
                      call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h9e4182d4648808c7E
                      local.get 0
                      i64.load offset=96
                      local.set 5
                      local.get 0
                      i32.load offset=108
                      local.set 2
                      local.get 0
                      local.get 0
                      i32.load offset=104
                      i32.store offset=128
                      local.get 0
                      local.get 2
                      i32.store offset=96
                      i32.const 132385
                      i32.const 23
                      call $_ZN11dharitri_sc8log_util23event_topic_accumulator17ha793922880535d00E
                      local.tee 2
                      local.get 0
                      i32.const 128
                      i32.add
                      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hc569b7447a547bcfE
                      local.get 2
                      local.get 5
                      call $_ZN11dharitri_sc8log_util21serialize_event_topic17hb8a881e95f88b177E
                      local.get 2
                      local.get 0
                      i32.const 96
                      i32.add
                      call $_ZN11dharitri_sc8log_util21serialize_event_topic17h2c84b66ae5c043dcE
                      local.get 2
                      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
                      call $managedWriteLog
                      local.get 0
                      i32.const 8
                      i32.add
                      call $_ZN73_$LT$C$u20$as$u20$forwarder..fwd_call_async..ForwarderAsyncCallModule$GT$13callback_data17h0761864367e11722E
                      local.get 0
                      i32.load offset=8
                      local.set 2
                      local.get 0
                      i32.load offset=12
                      local.set 3
                      i32.const 132385
                      i32.const 23
                      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he82ecb04dfff02bfE
                      local.set 1
                      local.get 0
                      i32.load offset=96
                      local.set 4
                      local.get 0
                      i32.load offset=128
                      local.set 6
                      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h442f2552c185f6b4E
                      local.set 7
                      local.get 2
                      local.get 3
                      call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17hd244ac7d719d78d9E
                      i32.const 1
                      i32.add
                      local.tee 8
                      call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h9640aef07aeed913E
                      local.set 9
                      local.get 1
                      call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hc234684ca2c4cdd2E
                      local.tee 2
                      call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h401123b5bfad9f5dE
                      local.get 6
                      local.get 2
                      call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h629f00f5b80b9709E
                      local.get 5
                      local.get 2
                      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h978383d2f9c68c6fE
                      local.get 4
                      local.get 2
                      call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h5999cc4e628f6677E
                      local.get 7
                      local.get 2
                      call $_ZN145_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h992efbd6c6ab19c8E
                      local.get 9
                      local.get 2
                      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hb2fdf587dc2d5a3bE
                      local.get 3
                      local.get 8
                      call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17h3dae6873f82bfc21E
                      br 8 (;@1;)
                    end
                    local.get 0
                    i32.const 140
                    i32.add
                    local.get 4
                    call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h11c761faf85e299bE
                    local.get 0
                    i32.load offset=172
                    i32.eqz
                    br_if 7 (;@1;)
                    block ;; label = @9
                      local.get 0
                      i32.const 140
                      i32.add
                      i32.const 132990
                      i32.const 19
                      call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h30e612e06580ca2bE
                      i32.eqz
                      br_if 0 (;@9;)
                      call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
                      i32.const 0
                      call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc4deb71796a2a81aE
                      local.get 0
                      i32.const 0
                      i32.store offset=84
                      local.get 0
                      i32.const 96
                      i32.add
                      local.get 0
                      i32.const 84
                      i32.add
                      call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h044ba8ea6a280a0bE
                      local.get 0
                      i32.load offset=84
                      call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5830c7af5e96c711E
                      local.get 0
                      i32.load offset=104
                      local.set 4
                      local.get 0
                      i32.load offset=96
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
                      call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
                      local.get 0
                      i32.const 128
                      i32.add
                      i32.const 132923
                      i32.const 6
                      call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17ha2c9623a80c77b99E
                      local.set 3
                      local.get 0
                      i32.load offset=132
                      local.get 0
                      i32.load offset=136
                      call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h9f593610fae37bd4E
                      local.get 0
                      i32.const 16
                      i32.add
                      call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17hae04a1efcc5a3fd0E
                      local.get 0
                      i32.load offset=16
                      local.set 2
                      block ;; label = @10
                        local.get 1
                        i32.const 1
                        i32.and
                        br_if 0 (;@10;)
                        call $_ZN68_$LT$C$u20$as$u20$forwarder..fwd_storage..ForwarderStorageModule$GT$17last_issued_token17hee5ac7a34bbd99cbE
                        local.set 3
                        local.get 2
                        call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h934f0dafccc28bcfE
                        br_if 3 (;@7;)
                        local.get 3
                        local.get 2
                        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h5f1e9031efea917eE
                        call $_ZN68_$LT$C$u20$as$u20$forwarder..fwd_storage..ForwarderStorageModule$GT$18last_error_message17ha8d98b44fa3adc18E
                        call $_ZN11dharitri_sc7storage11storage_set13storage_clear17ha1cf96fd4a02c6cbE
                        br 9 (;@1;)
                      end
                      local.get 0
                      i32.load offset=20
                      local.set 1
                      local.get 2
                      call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h934f0dafccc28bcfE
                      i32.eqz
                      br_if 7 (;@2;)
                      local.get 1
                      call $_ZN4core3cmp10PartialOrd2gt17h28c03c1285021d3aE
                      br_if 3 (;@6;)
                      br 7 (;@2;)
                    end
                    local.get 0
                    i32.const 140
                    i32.add
                    local.get 4
                    call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h11c761faf85e299bE
                    local.get 0
                    i32.load offset=172
                    i32.eqz
                    br_if 7 (;@1;)
                    block ;; label = @9
                      local.get 0
                      i32.const 140
                      i32.add
                      i32.const 132972
                      i32.const 18
                      call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h30e612e06580ca2bE
                      i32.eqz
                      br_if 0 (;@9;)
                      call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
                      i32.const 0
                      call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc4deb71796a2a81aE
                      local.get 0
                      i32.const 0
                      i32.store offset=84
                      local.get 0
                      i32.const 96
                      i32.add
                      local.get 0
                      i32.const 84
                      i32.add
                      call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h5e583aa0c9057bdeE
                      local.get 0
                      i32.load offset=84
                      call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5830c7af5e96c711E
                      local.get 0
                      i32.load offset=104
                      local.set 1
                      local.get 0
                      i32.load offset=100
                      local.set 4
                      local.get 0
                      i32.load offset=96
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
                      call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
                      local.get 0
                      i32.const 128
                      i32.add
                      i32.const 132923
                      i32.const 6
                      call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17ha2c9623a80c77b99E
                      local.set 3
                      local.get 0
                      i32.load offset=132
                      local.get 0
                      i32.load offset=136
                      call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h9f593610fae37bd4E
                      block ;; label = @10
                        local.get 2
                        i32.const 1
                        i32.and
                        br_if 0 (;@10;)
                        call $_ZN68_$LT$C$u20$as$u20$forwarder..fwd_storage..ForwarderStorageModule$GT$17last_issued_token17hee5ac7a34bbd99cbE
                        local.get 4
                        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h5f1e9031efea917eE
                        call $_ZN68_$LT$C$u20$as$u20$forwarder..fwd_storage..ForwarderStorageModule$GT$18last_error_message17ha8d98b44fa3adc18E
                        call $_ZN11dharitri_sc7storage11storage_set13storage_clear17ha1cf96fd4a02c6cbE
                        br 9 (;@1;)
                      end
                      local.get 0
                      i32.const 24
                      i32.add
                      call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17hae04a1efcc5a3fd0E
                      local.get 0
                      i32.load offset=28
                      local.set 2
                      local.get 0
                      i32.load offset=24
                      call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h934f0dafccc28bcfE
                      i32.eqz
                      br_if 6 (;@3;)
                      local.get 2
                      call $_ZN4core3cmp10PartialOrd2gt17h28c03c1285021d3aE
                      br_if 4 (;@5;)
                      br 6 (;@3;)
                    end
                    local.get 4
                    local.get 3
                    call $_ZN9forwarder7fwd_nft16EndpointWrappers17callback_selector17hc6dfd9b28997c4a3E
                    i32.eqz
                    br_if 7 (;@1;)
                    local.get 0
                    i32.const 140
                    i32.add
                    local.get 4
                    call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h11c761faf85e299bE
                    local.get 0
                    i32.load offset=172
                    i32.eqz
                    br_if 7 (;@1;)
                    block ;; label = @9
                      local.get 0
                      i32.const 140
                      i32.add
                      i32.const 133016
                      i32.const 21
                      call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h30e612e06580ca2bE
                      i32.eqz
                      br_if 0 (;@9;)
                      call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
                      i32.const 0
                      call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc4deb71796a2a81aE
                      local.get 0
                      i32.const 0
                      i32.store offset=128
                      local.get 0
                      i32.const 96
                      i32.add
                      local.get 0
                      i32.const 128
                      i32.add
                      call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h044ba8ea6a280a0bE
                      local.get 0
                      i32.load offset=128
                      call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5830c7af5e96c711E
                      local.get 0
                      i32.load offset=104
                      local.set 1
                      local.get 0
                      i32.load offset=96
                      local.set 2
                      local.get 3
                      call $mBufferGetLength
                      local.set 3
                      call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf150374817c5a266E
                      i32.const 0
                      local.get 3
                      call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h9f593610fae37bd4E
                      call $_ZN68_$LT$C$u20$as$u20$forwarder..fwd_storage..ForwarderStorageModule$GT$18last_error_message17ha8d98b44fa3adc18E
                      local.set 3
                      block ;; label = @10
                        local.get 2
                        i32.const 1
                        i32.and
                        br_if 0 (;@10;)
                        local.get 3
                        call $_ZN11dharitri_sc7storage11storage_set13storage_clear17ha1cf96fd4a02c6cbE
                        br 9 (;@1;)
                      end
                      local.get 3
                      local.get 1
                      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h049df649b560826aE
                      br 8 (;@1;)
                    end
                    local.get 0
                    i32.const 140
                    i32.add
                    local.get 4
                    call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h11c761faf85e299bE
                    local.get 0
                    i32.load offset=172
                    i32.eqz
                    br_if 7 (;@1;)
                    local.get 4
                    local.get 3
                    call $_ZN9forwarder7fwd_nft16EndpointWrappers17callback_selector17hc6dfd9b28997c4a3E
                    br_if 4 (;@4;)
                    br 7 (;@1;)
                  end
                  i32.const 131086
                  i32.const 25
                  i32.const 131072
                  i32.const 14
                  call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h570d3708f8e88542E
                  unreachable
                end
                call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$11unwrap_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17hb67846b0605d6063E
                unreachable
              end
              local.get 3
              local.get 1
              call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te191_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$$LP$$RP$$C$$LP$$RP$$C$$LP$$RP$$GT$$GT$8transfer17hbd1da493e4dd6763E
              br 3 (;@2;)
            end
            local.get 3
            local.get 2
            call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te191_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$$LP$$RP$$C$$LP$$RP$$C$$LP$$RP$$GT$$GT$8transfer17hbd1da493e4dd6763E
            br 1 (;@3;)
          end
          i32.const 132831
          i32.const 54
          call $signalError
          unreachable
        end
        call $_ZN68_$LT$C$u20$as$u20$forwarder..fwd_storage..ForwarderStorageModule$GT$18last_error_message17ha8d98b44fa3adc18E
        local.get 1
        call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h049df649b560826aE
        br 1 (;@1;)
      end
      call $_ZN68_$LT$C$u20$as$u20$forwarder..fwd_storage..ForwarderStorageModule$GT$18last_error_message17ha8d98b44fa3adc18E
      local.get 4
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h049df649b560826aE
    end
    local.get 0
    i32.const 176
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN4core9panicking9panic_fmt17h931ec2537c26fa22E (;453;) (type 15)
    call $rust_begin_unwind
    unreachable
  )
  (func $_ZN4core5slice5index22slice_index_order_fail8do_panic7runtime17h3eb440503b756a77E (;454;) (type 2) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17h931ec2537c26fa22E
    unreachable
  )
  (func $memcpy (;455;) (type 7) (param i32 i32 i32) (result i32)
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
  (func $memcmp (;456;) (type 7) (param i32 i32 i32) (result i32)
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
  (data $.rodata (;0;) (i32.const 131072) "input too longserializer decode error: \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00incorrect number of DCDT transfersunexpected REWA transferfungible DCDT token expectedfunction does not accept DCDT paymentincorrect number of transfersREWA-000000argument decode error (): too few argumentstoo many argumentswrong number of argumentscannot subtract because result would be negativeDCDTLocalBurnDCDTNFTBurnDCDTLocalMintDCDTNFTAddQuantityDCDTNFTCreateChangeOwnerAddressDCDTMetaDataUpdateDCDTNFTAddURIDCDTModifyRoyaltiesDCDTSetNewURIsDCDTNFTUpdateAttributesDCDTMetaDataRecreateDCDTModifyCreatorfalsetruecanFreezecanWipecanPausecanTransferNFTCreateRolecanMintcanBurncanChangeOwnercanUpgradecanAddSpecialRolesupdateTokenIDregisterDynamicNFTSFTMETAchangeToDynamicsetSpecialRoleunSetSpecialRoleFNGregisterAndSetAllRolesregisterAndSetAllRolesDynamicissueissueNonFungibleissueSemiFungibleregisterMetaDCDTCB_CLOSURE#3\00\00\00\00\00\00\00\00\00\00\00\00\00#3\00\00\00\00\00\00\00\00\00\00\00\00\02\ff\ffMultiDCDTNFTTransferDCDTNFTTransferDCDTTransfersync resultinput too shortManagedVec index out of rangeerror decoding DCDT attributes: DCDT expectedREWA.iteminvalid valuestorage decode error (key: .lenbad array lengthvar argsinput out of rangeBack transfers expected to be a single DCDTsendcreatelastIssuedTokenlastErrorMessageaccept_funds_sync_resultecho_arguments_sync_resultcallback_dataretrieve_funds_callbackopt_argsource_addressnew_uristoken_idurisnew_attributesnum_decimalstoken_typechild_sc_addresscall_countsaccept_fundsreject_fundsecho_argumentsretrieve_fundsget_owner_addressaccept_funds_echo_paymentretrieve_funds_multi_dcdtretrieve_funds_with_transfer_execretrieve_funds_rewa_or_single_dcdtargstotokentoken_paymentsaccept_funds_funcecho_args_callbacksend_funds_twice_callbackcb_amounttoken_identifierresultindexsuccesserrorno callback function with that name exists in contractnew_ownernft_issue_callbacknft_idcolorcallerargumentsattrs_argorig_attr != decoded_attrsft_issue_callbackdcdt_issue_callbackaddresschange_roles_callbackroles\00\00\05\00\00\00\10\00\00\00\11\00\00\00\10\00\00\00<\03\02\00A\03\02\00Q\03\02\00b\03\02\00DCDTRoleLocalMintDCDTRoleLocalBurnDCDTRoleNFTCreateDCDTRoleNFTAddQuantityDCDTRoleNFTBurnDCDTRoleNFTAddURIDCDTRoleNFTUpdateAttributesDCDTTransferRoleDCDTRoleSetNewURIDCDTRoleModifyRoyaltiesDCDTRoleModifyCreatorDCDTRoleNFTRecreateDCDTRoleNFTUpdate\01\02\03\04\05\06\07\08\09\0a\0b\0c\0dindex out of rangepanic occurred\00\00\cf\02\02\00\d2\02\02\00\d5\02\02\00\03\00\00\00\03\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00 \00\00\00\00\00\00\00@\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\10\00\00\00\00\00\00")
  (data $.data (;1;) (i32.const 133504) "8\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.84.1 (e71f9a9a9 2025-01-27)")
  )
  (@custom "target_features" (after data) "\04+\0amultivalue+\0fmutable-globals+\0freference-types+\08sign-ext")
)
