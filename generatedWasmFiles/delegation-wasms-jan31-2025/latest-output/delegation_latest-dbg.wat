(module $delegation_latest_wasm.wasm
  (type (;0;) (func (param i32 i64)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (result i32)))
  (type (;5;) (func (param i32 i32) (result i32)))
  (type (;6;) (func (param i32)))
  (type (;7;) (func (param i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32) (result i64)))
  (type (;9;) (func (param i64)))
  (type (;10;) (func (param i32 i32 i64 i32 i32) (result i32)))
  (type (;11;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;12;) (func (param i32 i32 i32 i64 i32)))
  (type (;13;) (func (result i64)))
  (type (;14;) (func))
  (type (;15;) (func (param i32 i32 i32 i32)))
  (type (;16;) (func (param i32 i32 i32 i32 i32)))
  (type (;17;) (func (param i32 i64) (result i32)))
  (type (;18;) (func (param i32 i32) (result i64)))
  (type (;19;) (func (param i32 i64 i32 i32)))
  (type (;20;) (func (param i64 i64 i64 i64) (result i32)))
  (type (;21;) (func (param i32 i64 i64)))
  (type (;22;) (func (param i32 i64 i64 i32)))
  (type (;23;) (func (param i64 i32)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;0;) (type 0)))
  (import "env" "bigIntAdd" (func $bigIntAdd (;1;) (type 1)))
  (import "env" "signalError" (func $signalError (;2;) (type 2)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;3;) (type 3)))
  (import "env" "mBufferNew" (func $mBufferNew (;4;) (type 4)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;5;) (type 5)))
  (import "env" "managedCaller" (func $managedCaller (;6;) (type 6)))
  (import "env" "managedSCAddress" (func $managedSCAddress (;7;) (type 6)))
  (import "env" "managedOwnerAddress" (func $managedOwnerAddress (;8;) (type 6)))
  (import "env" "bigIntGetCallValue" (func $bigIntGetCallValue (;9;) (type 6)))
  (import "env" "managedGetMultiDCDTCallValue" (func $managedGetMultiDCDTCallValue (;10;) (type 6)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;11;) (type 5)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;12;) (type 7)))
  (import "env" "managedSignalError" (func $managedSignalError (;13;) (type 6)))
  (import "env" "smallIntGetUnsignedArgument" (func $smallIntGetUnsignedArgument (;14;) (type 8)))
  (import "env" "bigIntGetUnsignedArgument" (func $bigIntGetUnsignedArgument (;15;) (type 2)))
  (import "env" "getNumArguments" (func $getNumArguments (;16;) (type 4)))
  (import "env" "finish" (func $finish (;17;) (type 2)))
  (import "env" "smallIntFinishUnsigned" (func $smallIntFinishUnsigned (;18;) (type 9)))
  (import "env" "bigIntFinishUnsigned" (func $bigIntFinishUnsigned (;19;) (type 6)))
  (import "env" "bigIntSub" (func $bigIntSub (;20;) (type 1)))
  (import "env" "managedGetOriginalTxHash" (func $managedGetOriginalTxHash (;21;) (type 6)))
  (import "env" "managedTransferValueExecute" (func $managedTransferValueExecute (;22;) (type 10)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;23;) (type 7)))
  (import "env" "bigIntMul" (func $bigIntMul (;24;) (type 1)))
  (import "env" "bigIntTDiv" (func $bigIntTDiv (;25;) (type 1)))
  (import "env" "mBufferCopyByteSlice" (func $mBufferCopyByteSlice (;26;) (type 11)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;27;) (type 5)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;28;) (type 5)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;29;) (type 5)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;30;) (type 5)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;31;) (type 3)))
  (import "env" "mBufferGetBytes" (func $mBufferGetBytes (;32;) (type 5)))
  (import "env" "bigIntGetDCDTExternalBalance" (func $bigIntGetDCDTExternalBalance (;33;) (type 12)))
  (import "env" "bigIntGetExternalBalance" (func $bigIntGetExternalBalance (;34;) (type 2)))
  (import "env" "managedWriteLog" (func $managedWriteLog (;35;) (type 2)))
  (import "env" "getGasLeft" (func $getGasLeft (;36;) (type 13)))
  (import "env" "getBlockNonce" (func $getBlockNonce (;37;) (type 13)))
  (import "env" "bigIntCmp" (func $bigIntCmp (;38;) (type 5)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;39;) (type 14)))
  (import "env" "smallIntFinishSigned" (func $smallIntFinishSigned (;40;) (type 9)))
  (import "env" "bigIntSign" (func $bigIntSign (;41;) (type 3)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;42;) (type 11)))
  (import "env" "mBufferEq" (func $mBufferEq (;43;) (type 5)))
  (import "env" "managedAsyncCall" (func $managedAsyncCall (;44;) (type 15)))
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 144133)
  (global (;2;) i32 i32.const 144144)
  (export "memory" (memory 0))
  (export "init" (func $init))
  (export "upgrade" (func $upgrade))
  (export "version" (func $version))
  (export "getNumNodes" (func $getNumNodes))
  (export "getNodeId" (func $getNodeId))
  (export "getNodeSignature" (func $getNodeSignature))
  (export "getNodeState" (func $getNodeState))
  (export "getAllNodeStates" (func $getAllNodeStates))
  (export "getNodeBlockNonceOfUnstake" (func $getNodeBlockNonceOfUnstake))
  (export "addNodes" (func $addNodes))
  (export "removeNodes" (func $removeNodes))
  (export "getUserId" (func $getUserId))
  (export "getUserAddress" (func $getUserAddress))
  (export "getNumUsers" (func $getNumUsers))
  (export "updateUserAddress" (func $updateUserAddress))
  (export "userIdsWithoutAddress" (func $userIdsWithoutAddress))
  (export "fundById" (func $fundById))
  (export "totalStake" (func $totalStake))
  (export "getUserStake" (func $getUserStake))
  (export "getUserWithdrawOnlyStake" (func $getUserWithdrawOnlyStake))
  (export "getUserWaitingStake" (func $getUserWaitingStake))
  (export "getUserActiveStake" (func $getUserActiveStake))
  (export "getUserUnstakedStake" (func $getUserUnstakedStake))
  (export "getUserDeferredPaymentStake" (func $getUserDeferredPaymentStake))
  (export "getTotalWithdrawOnlyStake" (func $getTotalWithdrawOnlyStake))
  (export "getTotalWaitingStake" (func $getTotalWaitingStake))
  (export "getTotalActiveStake" (func $getTotalActiveStake))
  (export "getTotalUnstakedStake" (func $getTotalUnstakedStake))
  (export "getTotalDeferredPaymentStake" (func $getTotalDeferredPaymentStake))
  (export "getUserStakeByType" (func $getUserStakeByType))
  (export "getTotalStakeByType" (func $getTotalStakeByType))
  (export "getAllUserStakeByType" (func $getAllUserStakeByType))
  (export "getUserDeferredPaymentList" (func $getUserDeferredPaymentList))
  (export "getFullWaitingList" (func $getFullWaitingList))
  (export "getFullActiveList" (func $getFullActiveList))
  (export "stakeNodes" (func $stakeNodes))
  (export "unStakeNodes" (func $unStakeNodes))
  (export "unStakeNodesAndTokens" (func $unStakeNodesAndTokens))
  (export "forceNodeUnBondPeriod" (func $forceNodeUnBondPeriod))
  (export "unBondNodes" (func $unBondNodes))
  (export "unBondAllPossibleNodes" (func $unBondAllPossibleNodes))
  (export "claimUnusedFunds" (func $claimUnusedFunds))
  (export "unJailNodes" (func $unJailNodes))
  (export "unStakeTokens" (func $unStakeTokens))
  (export "unBondTokens" (func $unBondTokens))
  (export "getAuctionContractAddress" (func $getAuctionContractAddress))
  (export "getServiceFee" (func $getServiceFee))
  (export "getTotalDelegationCap" (func $getTotalDelegationCap))
  (export "isBootstrapMode" (func $isBootstrapMode))
  (export "getOwnerMinStakeShare" (func $getOwnerMinStakeShare))
  (export "getNumBlocksBeforeUnBond" (func $getNumBlocksBeforeUnBond))
  (export "setNumBlocksBeforeUnBond" (func $setNumBlocksBeforeUnBond))
  (export "getMinimumStake" (func $getMinimumStake))
  (export "setMinimumStake" (func $setMinimumStake))
  (export "getGlobalOperationCheckpoint" (func $getGlobalOperationCheckpoint))
  (export "isGlobalOperationInProgress" (func $isGlobalOperationInProgress))
  (export "getTotalCumulatedRewards" (func $getTotalCumulatedRewards))
  (export "getClaimableRewards" (func $getClaimableRewards))
  (export "getTotalUnclaimedRewards" (func $getTotalUnclaimedRewards))
  (export "getTotalUnProtected" (func $getTotalUnProtected))
  (export "validateOwnerStakeShare" (func $validateOwnerStakeShare))
  (export "validateDelegationCapInvariant" (func $validateDelegationCapInvariant))
  (export "continueGlobalOperation" (func $continueGlobalOperation))
  (export "modifyTotalDelegationCap" (func $modifyTotalDelegationCap))
  (export "setServiceFee" (func $setServiceFee))
  (export "claimRewards" (func $claimRewards))
  (export "stake" (func $stake))
  (export "unStake" (func $unStake))
  (export "getUnStakeable" (func $getUnStakeable))
  (export "unBond" (func $unBond))
  (export "getUnBondable" (func $getUnBondable))
  (export "dustCleanupCheckpoint" (func $dustCleanupCheckpoint))
  (export "countDustItemsWaitingList" (func $countDustItemsWaitingList))
  (export "countDustItemsActive" (func $countDustItemsActive))
  (export "dustCleanupWaitingList" (func $dustCleanupWaitingList))
  (export "dustCleanupActive" (func $dustCleanupActive))
  (export "dnsRegister" (func $dnsRegister))
  (export "setFeatureFlag" (func $setFeatureFlag))
  (export "pause" (func $pause))
  (export "unpause" (func $unpause))
  (export "isPaused" (func $isPaused))
  (export "callBack" (func $callBack))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (func $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd0a835fd57d408bfE (;45;) (type 3) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17hf56efd14a1055dd7E
    local.tee 1
    i64.const 0
    call $bigIntSetInt64
    local.get 1
    local.get 1
    local.get 0
    call $bigIntAdd
    local.get 1
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17hf56efd14a1055dd7E (;46;) (type 4) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=134052
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=134052
    local.get 0
  )
  (func $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17h7cb01155033ae9e7E (;47;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $signalError
    unreachable
  )
  (func $_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1edf5513049bdce6E (;48;) (type 15) (param i32 i32 i32 i32)
    block ;; label = @1
      local.get 1
      local.get 3
      i32.le_u
      br_if 0 (;@1;)
      local.get 1
      local.get 3
      call $_ZN4core5slice5index22slice_index_order_fail17h45c0711bdbeba6b0E
      unreachable
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN4core5slice5index22slice_index_order_fail17h45c0711bdbeba6b0E (;49;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN4core5slice5index22slice_index_order_fail8do_panic7runtime17h88e230a95f697701E
    unreachable
  )
  (func $_ZN110_$LT$node_storage..types..bls_key..BLSKey$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h06eefee3c5d430b9E (;50;) (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hfd7481472d791401E
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
    call $_ZN158_$LT$dharitri_sc..types..managed..wrapped..managed_byte_array..ManagedByteArray$LT$M$C$_$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17hc7e769c1491813e9E
    local.set 0
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
        i32.store offset=144056
        i32.const 0
        i32.const 0
        i32.store8 offset=144060
      end
      local.get 3
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 0
      return
    end
    local.get 1
    local.get 2
    i32.const 131085
    i32.const 14
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hc8de599bcba76279E
    unreachable
  )
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hfd7481472d791401E (;51;) (type 3) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17hf56efd14a1055dd7E
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN158_$LT$dharitri_sc..types..managed..wrapped..managed_byte_array..ManagedByteArray$LT$M$C$_$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17hc7e769c1491813e9E (;52;) (type 7) (param i32 i32 i32) (result i32)
    local.get 0
    i32.const 96
    local.get 1
    local.get 2
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$16read_specialized17h4bffc667410596efE
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hc8de599bcba76279E (;53;) (type 15) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131231
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    local.tee 4
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 4
    i32.const 131254
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
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h454322d51d5bc21eE (;54;) (type 3) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN117_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..convert..From$LT$usize$GT$$GT$4from17h81131e176f07200fE (;55;) (type 3) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17hf56efd14a1055dd7E
    local.tee 1
    local.get 0
    i64.extend_i32_u
    call $bigIntSetInt64
    local.get 1
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h76e0d641b9290ffdE (;56;) (type 6) (param i32)
    local.get 0
    call $_ZN98_$LT$B$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17h36d65c7f9611e913E
    unreachable
  )
  (func $_ZN98_$LT$B$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17h36d65c7f9611e913E (;57;) (type 6) (param i32)
    local.get 0
    call $managedSignalError
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E (;58;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17h7cb01155033ae9e7E
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17h5712c7019792a35eE (;59;) (type 15) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17h5983e641c5efbdf8E
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17h5983e641c5efbdf8E (;60;) (type 15) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $managedAsyncCall
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h76a88aa9d5d37497E (;61;) (type 4) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17hf56efd14a1055dd7E
    local.tee 0
    call $managedCaller
    local.get 0
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hc7bcf386267cf59fE (;62;) (type 4) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17hf56efd14a1055dd7E
    local.tee 0
    call $managedSCAddress
    local.get 0
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17h6a5689ee4d3fe6fcE (;63;) (type 14)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17hf56efd14a1055dd7E
    local.tee 0
    call $managedOwnerAddress
    block ;; label = @1
      local.get 0
      call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h76a88aa9d5d37497E
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h76b488457fcb7077E
      i32.eqz
      br_if 0 (;@1;)
      return
    end
    i32.const 133968
    i32.const 36
    call $signalError
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h76b488457fcb7077E (;64;) (type 5) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $mBufferEq
    i32.const 0
    i32.gt_s
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$22rewa_direct_non_strict17h7f3a35ed3029a058E (;65;) (type 4) (result i32)
    block ;; label = @1
      i32.const 1
      call $_ZN11dharitri_sc3api13managed_types14static_var_api16StaticVarApiImpl21flag_is_set_or_update17hc3a137a8bbdd1355E
      br_if 0 (;@1;)
      i32.const -35
      call $bigIntGetCallValue
    end
    i32.const -35
  )
  (func $_ZN11dharitri_sc3api13managed_types14static_var_api16StaticVarApiImpl21flag_is_set_or_update17hc3a137a8bbdd1355E (;66;) (type 3) (param i32) (result i32)
    (local i32 i32)
    block ;; label = @1
      i32.const 0
      i32.load8_u offset=144068
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
      i32.store8 offset=144068
    end
    local.get 2
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28all_dcdt_transfers_unchecked17h5cc8d7f3e5dc98dfE (;67;) (type 4) (result i32)
    block ;; label = @1
      i32.const 2
      call $_ZN11dharitri_sc3api13managed_types14static_var_api16StaticVarApiImpl21flag_is_set_or_update17hc3a137a8bbdd1355E
      br_if 0 (;@1;)
      i32.const -38
      call $managedGetMultiDCDTCallValue
    end
    i32.const -38
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$4rewa17h439c5c42be6889f8E (;68;) (type 4) (result i32)
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
            call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28all_dcdt_transfers_unchecked17h5cc8d7f3e5dc98dfE
            local.tee 1
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h95fa5cefb4ed963eE
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          i32.const 131202
          i32.const 29
          call $signalError
          unreachable
        end
        call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$22rewa_direct_non_strict17h7f3a35ed3029a058E
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17hcbc1d41124c3df86E
      block ;; label = @2
        local.get 0
        i32.load offset=8
        call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17hf42b15548523f5a6E
        br_if 0 (;@2;)
        i32.const 131165
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h95fa5cefb4ed963eE (;69;) (type 3) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h91350dbdcc7c07a2E
    i32.const 4
    i32.shr_u
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17hcbc1d41124c3df86E (;70;) (type 2) (param i32 i32)
    (local i32 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    i64.const 0
    i64.store
    local.get 2
    i64.const 0
    i64.store
    block ;; label = @1
      local.get 1
      i32.const 0
      local.get 2
      i32.const 16
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hfdb534422325a2f6E
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131390
      i32.const 29
      call $signalError
      unreachable
    end
    local.get 2
    i64.load offset=4 align=4
    local.set 3
    local.get 2
    i32.load
    local.set 1
    local.get 0
    local.get 2
    i32.load offset=12
    local.tee 4
    i32.const 24
    i32.shl
    local.get 4
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 4
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 4
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 0
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
    i32.store offset=8
    local.get 0
    local.get 3
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
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17hf42b15548523f5a6E (;71;) (type 3) (param i32) (result i32)
    i32.const -40
    i32.const 131451
    i32.const 11
    call $mBufferSetBytes
    drop
    i32.const -40
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h76b488457fcb7077E
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE (;72;) (type 5) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17hf56efd14a1055dd7E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h5922826f57e0a435E (;73;) (type 14)
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$4rewa17h439c5c42be6889f8E
    drop
  )
  (func $_ZN11dharitri_sc2io15call_value_init18arg_payment_amount17h7034500026657fc7E (;74;) (type 4) (result i32)
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
            call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28all_dcdt_transfers_unchecked17h5cc8d7f3e5dc98dfE
            local.tee 1
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h95fa5cefb4ed963eE
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          i32.const 131131
          i32.const 34
          call $signalError
          unreachable
        end
        call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$4rewa17h7864cc8849251b12E
        drop
        call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$22rewa_direct_non_strict17h7f3a35ed3029a058E
        call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd0a835fd57d408bfE
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17hcbc1d41124c3df86E
      local.get 0
      i32.load offset=8
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h454322d51d5bc21eE
      drop
      local.get 0
      i32.load offset=12
      call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd0a835fd57d408bfE
      local.set 1
    end
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$4rewa17h7864cc8849251b12E (;75;) (type 4) (result i32)
    i32.const 131451
    i32.const 11
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h59cc8d5be431b477E (;76;) (type 2) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 848
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    local.get 1
    call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3da7bb117a9a755eE
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i32.load offset=8
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 2
        i32.load offset=12
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h454322d51d5bc21eE
        local.set 1
        local.get 2
        i32.const 0
        i32.store offset=424
        local.get 1
        call $mBufferGetLength
        local.set 3
        local.get 2
        i32.const 0
        i32.store8 offset=844
        local.get 2
        local.get 3
        i32.store offset=840
        local.get 2
        local.get 1
        i32.store offset=836
        local.get 2
        local.get 3
        i32.store offset=832
        local.get 2
        i32.const 0
        i32.store offset=828
        local.get 2
        i32.const 828
        i32.add
        i32.const 8
        i32.add
        local.set 4
        i32.const 0
        local.set 3
        block ;; label = @3
          loop ;; label = @4
            local.get 2
            i32.load offset=832
            local.get 3
            i32.eq
            br_if 1 (;@3;)
            local.get 2
            i32.const 0
            i32.store offset=20
            local.get 4
            local.get 3
            local.get 2
            i32.const 20
            i32.add
            i32.const 4
            call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h228f43acaef9e02eE
            br_if 3 (;@1;)
            local.get 2
            local.get 2
            i32.load offset=828
            i32.const 4
            i32.add
            local.tee 3
            i32.store offset=828
            local.get 2
            local.get 2
            i32.const 424
            i32.add
            local.get 2
            i32.load offset=20
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
            call $_ZN8arrayvec13arrayvec_impl12ArrayVecImpl8try_push17h808d517ddb7f97a5E
            local.get 2
            i32.load
            i32.const 1
            i32.ne
            br_if 0 (;@4;)
          end
          i32.const 131807
          i32.const 8
          i32.const 133388
          i32.const 17
          call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hc8de599bcba76279E
          unreachable
        end
        local.get 2
        i32.const 20
        i32.add
        local.get 2
        i32.const 424
        i32.add
        i32.const 404
        call $memcpy
        drop
        block ;; label = @3
          local.get 2
          i32.load8_u offset=844
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.const 0
          i32.store offset=144056
          i32.const 0
          i32.const 0
          i32.store8 offset=144060
        end
        local.get 0
        local.get 2
        i32.const 20
        i32.add
        i32.const 404
        call $memcpy
        drop
        local.get 2
        i32.const 848
        i32.add
        global.set $__stack_pointer
        return
      end
      i32.const 131807
      i32.const 8
      i32.const 131257
      i32.const 17
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hc8de599bcba76279E
      unreachable
    end
    i32.const 131807
    i32.const 8
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17hdab87178da196d41E
    unreachable
  )
  (func $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3da7bb117a9a755eE (;77;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 11
    i32.add
    local.get 1
    call $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h509769ab263ec766E
    i32.const 1
    local.set 1
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i32.load8_u offset=11
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 2
        i32.load offset=12 align=1
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
        local.set 3
        br 1 (;@1;)
      end
      i32.const 0
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
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h228f43acaef9e02eE (;78;) (type 11) (param i32 i32 i32 i32) (result i32)
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
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h91350dbdcc7c07a2E
                local.tee 7
                i32.const 10000
                i32.gt_u
                i32.const 0
                i32.load8_u offset=144060
                i32.or
                local.tee 8
                i32.const 1
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 7
                i32.store offset=144056
                i32.const 0
                i32.const 1
                i32.store8 offset=144060
                local.get 4
                i32.const 8
                i32.add
                local.get 7
                i32.const 134056
                i32.const 10000
                call $_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1edf5513049bdce6E
                local.get 6
                i32.const 0
                local.get 4
                i32.load offset=8
                local.get 4
                i32.load offset=12
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hfdb534422325a2f6E
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
                i32.store offset=144056
                i32.const 0
                i32.const 0
                i32.store8 offset=144060
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
            i32.load offset=144056
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
            i32.const 134056
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
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hfdb534422325a2f6E
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
      call $_ZN4core5slice5index22slice_index_order_fail17h45c0711bdbeba6b0E
      unreachable
    end
    local.get 5
    i32.const 10000
    call $_ZN4core5slice5index22slice_index_order_fail17h45c0711bdbeba6b0E
    unreachable
  )
  (func $_ZN8arrayvec13arrayvec_impl12ArrayVecImpl8try_push17h808d517ddb7f97a5E (;79;) (type 1) (param i32 i32 i32)
    (local i32 i32)
    i32.const 1
    local.set 3
    block ;; label = @1
      local.get 1
      i32.load
      local.tee 4
      i32.const 99
      i32.gt_u
      br_if 0 (;@1;)
      local.get 1
      local.get 4
      i32.const 2
      i32.shl
      i32.add
      i32.const 4
      i32.add
      local.get 2
      i32.store
      local.get 1
      local.get 4
      i32.const 1
      i32.add
      i32.store
      i32.const 0
      local.set 3
    end
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17hdab87178da196d41E (;80;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 131375
    i32.const 15
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hc8de599bcba76279E
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h680bffcbccf697ebE (;81;) (type 7) (param i32 i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
    local.set 3
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.load
        i32.const 0
        i32.load offset=144064
        i32.ge_s
        br_if 1 (;@1;)
        local.get 3
        local.get 0
        local.get 1
        local.get 2
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h8ba0ac949a36be5bE
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4ac91cc2b70259beE
        br 0 (;@2;)
      end
    end
    local.get 3
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E (;82;) (type 4) (result i32)
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
  )
  (func $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h8ba0ac949a36be5bE (;83;) (type 7) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hd57d686df4912da7E
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hfd7481472d791401E
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4ac91cc2b70259beE (;84;) (type 2) (param i32 i32)
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h8ac94e267d02d467E (;85;) (type 2) (param i32 i32)
    (local i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      local.get 1
      i32.const 131796
      i32.const 11
      call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hd57d686df4912da7E
      call $smallIntGetUnsignedArgument
      local.tee 3
      i64.const 4294967296
      i64.ge_u
      br_if 0 (;@1;)
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 3
            i32.wrap_i64
            local.tee 4
            i32.const 28523
            i32.eq
            br_if 0 (;@4;)
            local.get 4
            br_if 1 (;@3;)
          end
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
          local.set 5
          loop ;; label = @4
            i32.const 0
            local.set 4
            block ;; label = @5
              local.get 1
              i32.load
              i32.const 0
              i32.load offset=144064
              i32.lt_s
              br_if 0 (;@5;)
              local.get 2
              i32.const 12
              i32.add
              local.set 1
              br 3 (;@2;)
            end
            local.get 5
            local.get 1
            i32.const 131796
            i32.const 11
            call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h8ba0ac949a36be5bE
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4ac91cc2b70259beE
            br 0 (;@4;)
          end
        end
        block ;; label = @3
          block ;; label = @4
            local.get 1
            i32.load
            i32.const 0
            i32.load offset=144064
            i32.lt_s
            br_if 0 (;@4;)
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
            local.set 5
            br 1 (;@3;)
          end
          local.get 1
          i32.const 131796
          i32.const 11
          call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h8ba0ac949a36be5bE
          local.set 5
        end
        local.get 2
        local.get 4
        i32.store offset=12
        local.get 2
        i32.const 8
        i32.add
        local.set 1
        i32.const 1
        local.set 4
      end
      local.get 1
      local.get 5
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
      return
    end
    i32.const 131796
    i32.const 11
    i32.const 131085
    i32.const 14
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hc8de599bcba76279E
    unreachable
  )
  (func $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hd57d686df4912da7E (;86;) (type 7) (param i32 i32 i32) (result i32)
    (local i32)
    block ;; label = @1
      local.get 0
      i32.load
      local.tee 3
      i32.const 0
      i32.load offset=144064
      i32.lt_s
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131257
      i32.const 17
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hc8de599bcba76279E
      unreachable
    end
    local.get 0
    local.get 3
    i32.const 1
    i32.add
    i32.store
    local.get 3
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17he9e1f82211bea922E (;87;) (type 3) (param i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
    local.set 1
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.load
        i32.const 0
        i32.load offset=144064
        i32.ge_s
        br_if 1 (;@1;)
        local.get 1
        local.get 0
        i32.const 131488
        i32.const 8
        call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hd57d686df4912da7E
        i32.const 131488
        i32.const 8
        call $_ZN110_$LT$node_storage..types..bls_key..BLSKey$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h06eefee3c5d430b9E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4ac91cc2b70259beE
        br 0 (;@2;)
      end
    end
    local.get 1
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0d12e968c953460eE (;88;) (type 4) (result i32)
    i32.const 0
    i32.const 131481
    i32.const 7
    call $_ZN110_$LT$node_storage..types..bls_key..BLSKey$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h06eefee3c5d430b9E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h13fef3507539b176E (;89;) (type 7) (param i32 i32 i32) (result i32)
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
      i32.const 131085
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hc8de599bcba76279E
      unreachable
    end
    local.get 3
    i32.wrap_i64
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7d73fbb6d1e28e97E (;90;) (type 3) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hfd7481472d791401E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb9a6530cf9838099E (;91;) (type 4) (result i32)
    (local i64 i32)
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          i32.const 1
          call $smallIntGetUnsignedArgument
          local.tee 0
          i64.const 1
          i64.gt_u
          br_if 0 (;@3;)
          i32.const 0
          local.set 1
          local.get 0
          i32.wrap_i64
          br_table 2 (;@1;) 1 (;@2;) 2 (;@1;)
        end
        i32.const 133509
        i32.const 5
        i32.const 133405
        i32.const 18
        call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hc8de599bcba76279E
        unreachable
      end
      i32.const 1
      local.set 1
    end
    local.get 1
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbf27df68fc427cceE (;92;) (type 5) (param i32 i32) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 0
      call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hfd7481472d791401E
      local.tee 2
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.const 131599
      i32.const 16
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hc8de599bcba76279E
      unreachable
    end
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc87c253e189fb0afE (;93;) (type 3) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17hf56efd14a1055dd7E
    local.tee 1
    call $bigIntGetUnsignedArgument
    local.get 1
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17he0044aee39e22080E (;94;) (type 8) (param i32) (result i64)
    local.get 0
    call $smallIntGetUnsignedArgument
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hd00659993951929dE (;95;) (type 2) (param i32 i32)
    block ;; label = @1
      local.get 0
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
      return
    end
    i32.const 131274
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hf1b4eba2371c2fccE (;96;) (type 6) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=144064
      local.get 0
      i32.gt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131274
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE (;97;) (type 6) (param i32)
    block ;; label = @1
      call $getNumArguments
      local.get 0
      i32.ne
      br_if 0 (;@1;)
      return
    end
    i32.const 131292
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hf5045d7af47ce291E (;98;) (type 6) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=144064
      local.get 0
      i32.lt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131257
    i32.const 17
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h229a5d43db11014fE (;99;) (type 14)
    i32.const 0
    call $getNumArguments
    i32.store offset=144064
  )
  (func $_ZN11dharitri_sc2io6finish12finish_multi17h4bbec2dc2e4cd3f0E (;100;) (type 6) (param i32)
    i32.const 134025
    i32.const 134016
    local.get 0
    i32.const 1
    i32.and
    local.tee 0
    select
    i32.const 11
    i32.const 9
    local.get 0
    select
    call $finish
  )
  (func $_ZN11dharitri_sc2io6finish12finish_multi17h921c9916bd3df3ccE (;101;) (type 6) (param i32)
    local.get 0
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h19dde772d7663d50E
    i64.extend_i32_u
    call $smallIntFinishUnsigned
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h19dde772d7663d50E (;102;) (type 3) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_get11storage_get17hb502f2b686e193c1E
  )
  (func $_ZN11dharitri_sc2io6finish12finish_multi17ha482b1c9d054b43fE (;103;) (type 6) (param i32)
    local.get 0
    i32.load
    call $bigIntFinishUnsigned
    local.get 0
    i32.load offset=4
    call $bigIntFinishUnsigned
    local.get 0
    i32.load offset=8
    call $bigIntFinishUnsigned
    local.get 0
    i32.load offset=12
    call $bigIntFinishUnsigned
    local.get 0
    i32.load offset=16
    call $bigIntFinishUnsigned
  )
  (func $_ZN11dharitri_sc3api13managed_types11big_int_api13BigIntApiImpl15bi_sub_unsigned17h62d2d2f3f9150870E (;104;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $bigIntSub
    block ;; label = @1
      local.get 0
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$7bi_sign17hcc8d762c28e3fcfdE
      i32.const 255
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      return
    end
    i32.const 131317
    i32.const 48
    call $signalError
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$7bi_sign17hcc8d762c28e3fcfdE (;105;) (type 3) (param i32) (result i32)
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
  (func $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h05d4b74460b9c48cE (;106;) (type 1) (param i32 i32 i32)
    local.get 1
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h471a24eb58202118E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h471a24eb58202118E (;107;) (type 1) (param i32 i32 i32)
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h9364b4d568b9ff0cE
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h048bd499c7ca4c09E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h9364b4d568b9ff0cE (;108;) (type 4) (result i32)
    i32.const -10
    i64.const 0
    call $bigIntSetInt64
    i32.const -10
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h048bd499c7ca4c09E (;109;) (type 15) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17h5712c7019792a35eE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction16callback_closure22cb_closure_storage_key17h916459b76903a393E (;110;) (type 4) (result i32)
    (local i32 i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17hf56efd14a1055dd7E
    local.tee 0
    call $managedGetOriginalTxHash
    i32.const 131365
    i32.const 10
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types11interaction16callback_closure24CallbackClosure$LT$M$GT$17push_endpoint_arg17h91e0f6e026d8f43dE (;111;) (type 2) (param i32 i32)
    (local i32 i32)
    local.get 1
    i32.const 4
    i32.add
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
    local.set 3
    local.get 1
    i32.load
    i32.const 2
    i32.shl
    local.set 1
    local.get 3
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h454322d51d5bc21eE
    local.set 3
    block ;; label = @1
      loop ;; label = @2
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load
        local.get 3
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h244dd97c16de4444E
        local.get 1
        i32.const -4
        i32.add
        local.set 1
        local.get 2
        i32.const 4
        i32.add
        local.set 2
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4ac91cc2b70259beE
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h244dd97c16de4444E (;112;) (type 2) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h8fa4038eff2a919cE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17hd523d552556f28f6E (;113;) (type 7) (param i32 i32 i32) (result i32)
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
  (func $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h24d7ef7390f86a3aE (;114;) (type 2) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h91350dbdcc7c07a2E
    local.tee 6
    local.get 2
    i32.const 16
    i32.add
    i32.const 32
    call $_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1edf5513049bdce6E
    local.get 1
    i32.const 0
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hfdb534422325a2f6E
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h91350dbdcc7c07a2E (;115;) (type 3) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hfdb534422325a2f6E (;116;) (type 11) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17h84c6954c9b5ffeaeE
  )
  (func $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h0e3fc7321a1e12deE (;117;) (type 1) (param i32 i32 i32)
    (local i32)
    local.get 1
    i32.load offset=4
    local.set 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
    drop
    local.get 3
    local.get 2
    i32.load
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h987de79744e4ac4bE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4ac91cc2b70259beE
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
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h987de79744e4ac4bE (;118;) (type 3) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17hf56efd14a1055dd7E
    local.tee 1
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h17da1796d5a43b3bE (;119;) (type 1) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 1
    i32.load offset=4
    local.set 4
    local.get 3
    local.get 2
    call $mBufferGetLength
    i32.store offset=28
    local.get 3
    i32.const 0
    i32.store offset=24
    local.get 3
    local.get 2
    i32.store offset=20
    block ;; label = @1
      loop ;; label = @2
        local.get 3
        i32.const 8
        i32.add
        local.get 3
        i32.const 20
        i32.add
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3da7bb117a9a755eE
        local.get 3
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 3
        i32.load offset=12
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17he1298c6bcb990363E
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 1
    i64.load align=4
    i64.store align=4
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17he1298c6bcb990363E (;120;) (type 2) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h454322d51d5bc21eE
    local.tee 2
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17ha103ef643015dc7cE
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4ac91cc2b70259beE
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h567b29756ac17c8dE (;121;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h75d73ee04e12a932E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h75d73ee04e12a932E (;122;) (type 2) (param i32 i32)
    local.get 1
    local.get 0
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h0e967a9f276d8c72E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h20724989590dc39cE (;123;) (type 1) (param i32 i32 i32)
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    local.set 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te191_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$$LP$$RP$$C$$LP$$RP$$C$$LP$$RP$$GT$$GT$8transfer17h1c3fcdb7f7f22cf9E (;124;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i64.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
    call $managedTransferValueExecute
    drop
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h927a94a4738382cfE (;125;) (type 6) (param i32)
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h05d4b74460b9c48cE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17ha1194954fd1635b0E (;126;) (type 6) (param i32)
    local.get 0
    i32.load offset=12
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h2acfa9f8a356e202E
    unreachable
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h2acfa9f8a356e202E (;127;) (type 16) (param i32 i32 i32 i32 i32)
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
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h0e967a9f276d8c72E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hb042a8fd05ee3a69E (;128;) (type 6) (param i32)
    local.get 0
    call $_ZN185_$LT$dharitri_sc..types..interaction..callback_closure..CallbackClosure$LT$Api$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_exec..tx_exec_async..TxAsyncCallCallback$LT$Api$GT$$GT$32save_callback_closure_to_storage17hfe256dba4cd3d985E
    local.get 0
    i32.load offset=16
    local.get 0
    i32.const 28
    i32.add
    local.get 0
    i32.load offset=12
    local.get 0
    i32.load offset=20
    local.get 0
    i32.load offset=24
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h2acfa9f8a356e202E
    unreachable
  )
  (func $_ZN185_$LT$dharitri_sc..types..interaction..callback_closure..CallbackClosure$LT$Api$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_exec..tx_exec_async..TxAsyncCallCallback$LT$Api$GT$$GT$32save_callback_closure_to_storage17hfe256dba4cd3d985E (;129;) (type 6) (param i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types11interaction16callback_closure22cb_closure_storage_key17h916459b76903a393E
    local.set 2
    call $_ZN11dharitri_sc5types7managed7wrapped7builder22managed_buffer_builder36ManagedBufferBuilder$LT$M$C$Impl$GT$14new_from_slice17h7d5e49533a4cf43fE
    local.set 3
    local.get 0
    i32.load
    local.set 4
    local.get 0
    i32.load offset=4
    local.tee 5
    local.get 3
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h244dd97c16de4444E
    local.get 3
    local.get 4
    local.get 5
    call $mBufferAppendBytes
    drop
    local.get 0
    i32.load offset=8
    local.tee 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h91350dbdcc7c07a2E
    i32.const 2
    i32.shr_u
    local.get 3
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h244dd97c16de4444E
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
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3da7bb117a9a755eE
        local.get 1
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.load offset=12
        local.get 3
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h07e0d1732153f0e3E
        br 0 (;@2;)
      end
    end
    local.get 2
    local.get 3
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h0ae8598c972d0e9fE
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hb5a2c681ab858abbE (;130;) (type 6) (param i32)
    local.get 0
    call $_ZN185_$LT$dharitri_sc..types..interaction..callback_closure..CallbackClosure$LT$Api$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_exec..tx_exec_async..TxAsyncCallCallback$LT$Api$GT$$GT$32save_callback_closure_to_storage17hfe256dba4cd3d985E
    local.get 0
    i32.load offset=12
    local.get 0
    i32.load offset=16
    local.get 0
    i32.load offset=20
    call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h05d4b74460b9c48cE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hc3106c23a08a8ae9E (;131;) (type 6) (param i32)
    local.get 0
    i32.load offset=4
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.load
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17hfc1382d8b1d32394E
    unreachable
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17hfc1382d8b1d32394E (;132;) (type 16) (param i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h567b29756ac17c8dE
    unreachable
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h0e967a9f276d8c72E (;133;) (type 2) (param i32 i32)
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
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h81539c493c935fa0E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$13read_big_uint17hd92b6c0d84f10247E (;134;) (type 5) (param i32 i32) (result i32)
    local.get 0
    local.get 0
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17ha0189dbe4c9fc0aeE
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$27read_managed_buffer_of_size17ha4126cb7bca1c73fE
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h05291e5c73e34726E
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17ha0189dbe4c9fc0aeE (;135;) (type 5) (param i32 i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h8c597da11a85b64eE
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
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$27read_managed_buffer_of_size17ha4126cb7bca1c73fE (;136;) (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load
    local.tee 4
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h2417f21d3b2a6613E
    block ;; label = @1
      local.get 3
      i32.load offset=8
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=12
      local.set 2
      local.get 0
      local.get 4
      local.get 1
      i32.add
      i32.store
      local.get 3
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 2
      return
    end
    local.get 2
    i32.const 131375
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4b17a10d42f51edcE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h05291e5c73e34726E (;137;) (type 3) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17hf56efd14a1055dd7E
    local.tee 1
    call $mBufferToBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h2417f21d3b2a6613E (;138;) (type 15) (param i32 i32 i32 i32)
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
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4b17a10d42f51edcE (;139;) (type 1) (param i32 i32 i32)
    (local i32)
    i32.const 131572
    i32.const 27
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    local.tee 3
    local.get 0
    call $mBufferAppend
    drop
    local.get 3
    i32.const 131254
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
  (func $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h8fa4038eff2a919cE (;140;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferAppendBytes
    drop
  )
  (func $_ZN11dharitri_sc5types7managed5basic11big_num_cmp10bi_cmp_i6417h6df9609d51c9c50eE (;141;) (type 17) (param i32 i64) (result i32)
    block ;; label = @1
      local.get 1
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
      local.get 0
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$7bi_sign17hcc8d762c28e3fcfdE
      i32.const 255
      i32.and
      i32.const -1
      i32.add
      return
    end
    i32.const -11
    local.get 1
    call $bigIntSetInt64
    local.get 0
    i32.const -11
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$6bi_cmp17hbed56c773c3bb346E
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$6bi_cmp17hbed56c773c3bb346E (;142;) (type 5) (param i32 i32) (result i32)
    i32.const -1
    local.get 0
    local.get 1
    call $bigIntCmp
    local.tee 1
    i32.const 0
    i32.ne
    local.get 1
    i32.const 0
    i32.lt_s
    select
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17h84c6954c9b5ffeaeE (;143;) (type 11) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17ha103ef643015dc7cE (;144;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferAppend
    drop
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp109_$LT$impl$u20$core..cmp..Ord$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3cmp17h40e00373de08d106E (;145;) (type 5) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$6bi_cmp17hbed56c773c3bb346E
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp115_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17hf54dbd14825fa8f2E (;146;) (type 5) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$6bi_cmp17hbed56c773c3bb346E
    i32.const 255
    i32.and
    i32.eqz
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$i32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h41b32bc4b1a3cdaeE (;147;) (type 3) (param i32) (result i32)
    local.get 0
    i64.const 0
    call $_ZN11dharitri_sc5types7managed5basic11big_num_cmp10bi_cmp_i6417h6df9609d51c9c50eE
    i32.const 255
    i32.and
    i32.eqz
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Add$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3add17h3bf14f649a62c8e0E (;148;) (type 5) (param i32 i32) (result i32)
    local.get 0
    local.get 0
    local.get 1
    call $bigIntAdd
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Mul$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3mul17hb2c2c58834ec661aE (;149;) (type 5) (param i32 i32) (result i32)
    local.get 0
    local.get 0
    local.get 1
    call $bigIntMul
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators120_$LT$impl$u20$core..ops..arith..Add$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3add17ha5329ea46e263d45E (;150;) (type 5) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17hf56efd14a1055dd7E
    local.tee 2
    local.get 0
    local.get 1
    call $bigIntAdd
    local.get 2
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators120_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h80a5e700536f6f31E (;151;) (type 5) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17hf56efd14a1055dd7E
    local.tee 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc3api13managed_types11big_int_api13BigIntApiImpl15bi_sub_unsigned17h62d2d2f3f9150870E
    local.get 2
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators122_$LT$impl$u20$core..ops..arith..AddAssign$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17hb34bbfa79562e0bcE (;152;) (type 2) (param i32 i32)
    local.get 0
    local.get 0
    local.get 1
    call $bigIntAdd
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators122_$LT$impl$u20$core..ops..arith..SubAssign$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10sub_assign17h90f9346ea5ce9a16E (;153;) (type 2) (param i32 i32)
    local.get 0
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc3api13managed_types11big_int_api13BigIntApiImpl15bi_sub_unsigned17h62d2d2f3f9150870E
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..AddAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17h07c6e548e8930de6E (;154;) (type 2) (param i32 i32)
    local.get 0
    local.get 0
    local.get 1
    call $bigIntAdd
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..DivAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10div_assign17h37107642eddbde9aE (;155;) (type 2) (param i32 i32)
    local.get 0
    local.get 0
    local.get 1
    call $bigIntTDiv
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..MulAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10mul_assign17h63359a1fd80951efE (;156;) (type 2) (param i32 i32)
    local.get 0
    local.get 0
    local.get 1
    call $bigIntMul
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..SubAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10sub_assign17h7a3eb15dcb00d3d7E (;157;) (type 2) (param i32 i32)
    local.get 0
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc3api13managed_types11big_int_api13BigIntApiImpl15bi_sub_unsigned17h62d2d2f3f9150870E
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped7builder22managed_buffer_builder36ManagedBufferBuilder$LT$M$C$Impl$GT$14new_from_slice17h7d5e49533a4cf43fE (;158;) (type 4) (result i32)
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E (;159;) (type 4) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17hf56efd14a1055dd7E
    local.tee 0
    i64.const 0
    call $bigIntSetInt64
    local.get 0
  )
  (func $_ZN11dharitri_sc7storage11storage_get11storage_get17h56c76cd1c2da67a3E (;160;) (type 3) (param i32) (result i32)
    (local i32)
    block ;; label = @1
      local.get 0
      call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h67ca6e1b8298397dE
      local.tee 1
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.const 131599
      i32.const 16
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4b17a10d42f51edcE
      unreachable
    end
    local.get 1
  )
  (func $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h67ca6e1b8298397dE (;161;) (type 3) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h4a4ad2dabb72757aE
  )
  (func $_ZN11dharitri_sc7storage11storage_get11storage_get17h77ec744d08073be6E (;162;) (type 3) (param i32) (result i32)
    (local i64)
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          local.get 0
          call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417h421893f3dcd8a92eE
          local.tee 1
          i64.const 1
          i64.gt_u
          br_if 0 (;@3;)
          i32.const 0
          local.set 0
          local.get 1
          i32.wrap_i64
          br_table 2 (;@1;) 1 (;@2;) 2 (;@1;)
        end
        local.get 0
        i32.const 133405
        i32.const 18
        call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4b17a10d42f51edcE
        unreachable
      end
      i32.const 1
      local.set 0
    end
    local.get 0
  )
  (func $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417h421893f3dcd8a92eE (;163;) (type 18) (param i32 i32) (result i64)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i64.const 0
    i64.store offset=8
    block ;; label = @1
      local.get 0
      call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h4a4ad2dabb72757aE
      local.tee 3
      call $mBufferGetLength
      local.tee 0
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 131085
      i32.const 14
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4b17a10d42f51edcE
      unreachable
    end
    local.get 3
    i32.const 0
    local.get 2
    i32.const 8
    i32.add
    local.get 0
    i32.sub
    i32.const 8
    i32.add
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17h84c6954c9b5ffeaeE
    drop
    local.get 2
    i64.load offset=8
    local.set 4
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 4
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
  )
  (func $_ZN11dharitri_sc7storage11storage_get11storage_get17hb502f2b686e193c1E (;164;) (type 3) (param i32) (result i32)
    (local i64)
    block ;; label = @1
      local.get 0
      local.get 0
      call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417h421893f3dcd8a92eE
      local.tee 1
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 131085
      i32.const 14
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4b17a10d42f51edcE
      unreachable
    end
    local.get 1
    i32.wrap_i64
  )
  (func $_ZN11dharitri_sc7storage11storage_get11storage_get17hd87949a3f9650e43E (;165;) (type 3) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h4a4ad2dabb72757aE
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h05291e5c73e34726E
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h4a4ad2dabb72757aE (;166;) (type 3) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17hf56efd14a1055dd7E
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_get11storage_get17hf6af4b39ab7abe80E (;167;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$23load_len_managed_buffer17h9e9135e7bf89b7faE
          br_if 0 (;@3;)
          i32.const 0
          local.set 3
          call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E
          local.set 4
          i32.const 0
          local.set 5
          br 1 (;@2;)
        end
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17hc3607e4372d588fbE
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$13read_big_uint17hd92b6c0d84f10247E
        local.set 4
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17ha0189dbe4c9fc0aeE
        local.set 3
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17ha0189dbe4c9fc0aeE
        local.set 5
        local.get 2
        i32.load offset=16
        local.get 2
        i32.load offset=12
        i32.ne
        br_if 1 (;@1;)
        local.get 2
        i32.load8_u offset=28
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        i32.store offset=144056
        i32.const 0
        i32.const 0
        i32.store8 offset=144060
      end
      local.get 0
      local.get 5
      i32.store offset=8
      local.get 0
      local.get 3
      i32.store offset=4
      local.get 0
      local.get 4
      i32.store
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 1
    i32.const 131085
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4b17a10d42f51edcE
    unreachable
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$23load_len_managed_buffer17h9e9135e7bf89b7faE (;168;) (type 3) (param i32) (result i32)
    local.get 0
    i32.const -25
    call $mBufferStorageLoad
    drop
    i32.const -25
    call $mBufferGetLength
  )
  (func $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17hc3607e4372d588fbE (;169;) (type 2) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h4a4ad2dabb72757aE
    local.tee 2
    call $mBufferGetLength
    local.set 1
    local.get 0
    i32.const 0
    i32.store8 offset=16
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    i32.const 0
    i32.store
  )
  (func $_ZN11dharitri_sc7storage11storage_get15storage_get_len17hac71900ce8a0d6ebE (;170;) (type 3) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$23load_len_managed_buffer17h9e9135e7bf89b7faE
  )
  (func $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h36aa766e859c2dbaE (;171;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    i32.const 133940
    i32.add
    i32.load
    i32.load8_u
    i32.store8 offset=15
    local.get 0
    local.get 2
    i32.const 15
    i32.add
    i32.const 1
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h8fa4038eff2a919cE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h5984eed832415bb3E (;172;) (type 2) (param i32 i32)
    local.get 1
    local.get 0
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h244dd97c16de4444E
  )
  (func $_ZN11dharitri_sc7storage11storage_set11storage_set17h342378c99542af09E (;173;) (type 2) (param i32 i32)
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
    i64.const 255
    i64.and
    i32.const 1
    local.get 2
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hecdef361e3bb1bc1E
    local.get 0
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h758125a2eb0f095bE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hecdef361e3bb1bc1E (;174;) (type 19) (param i32 i64 i32 i32)
    (local i64 i64 i32 i32 i32 i32)
    local.get 3
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
    local.tee 4
    i64.const 65280
    i64.and
    local.get 1
    i64.const 56
    i64.shr_u
    local.tee 5
    i64.or
    i64.or
    i64.or
    i64.store align=1
    local.get 0
    i32.const 8
    i32.const 0
    local.get 1
    i64.const 0
    i64.lt_s
    local.tee 6
    local.get 2
    i32.and
    i32.sub
    i32.const 255
    i32.and
    local.tee 7
    local.get 5
    i32.wrap_i64
    i32.eq
    local.tee 8
    i32.const 0
    local.get 7
    local.get 1
    i64.const 48
    i64.shr_u
    i32.wrap_i64
    i32.const 255
    i32.and
    i32.eq
    select
    local.tee 9
    local.get 8
    i32.add
    local.get 9
    i32.const 0
    local.get 7
    local.get 4
    i32.wrap_i64
    i32.const 255
    i32.and
    i32.eq
    select
    local.tee 8
    i32.add
    local.get 8
    i32.const 0
    local.get 7
    local.get 1
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    i32.const 255
    i32.and
    i32.eq
    select
    local.tee 9
    i32.add
    local.get 9
    i32.const 0
    local.get 7
    local.get 1
    i32.wrap_i64
    local.tee 8
    i32.const 24
    i32.shr_u
    i32.eq
    select
    local.tee 9
    i32.add
    local.get 9
    i32.const 0
    local.get 7
    local.get 8
    i32.const 16
    i32.shr_u
    i32.const 255
    i32.and
    i32.eq
    select
    local.tee 9
    i32.add
    local.get 9
    i32.const 0
    local.get 7
    local.get 8
    i32.const 8
    i32.shr_u
    i32.const 255
    i32.and
    i32.eq
    select
    local.tee 7
    i32.add
    local.get 7
    i32.const 0
    local.get 1
    i64.eqz
    select
    i32.add
    local.tee 7
    local.get 7
    i32.const 0
    i32.ne
    local.get 6
    local.get 3
    local.get 7
    i32.const 7
    i32.and
    i32.add
    i32.load8_s
    i32.const 0
    i32.lt_s
    i32.xor
    i32.and
    local.get 2
    i32.and
    i32.sub
    local.tee 7
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 3
    local.get 7
    i32.add
    i32.store
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h758125a2eb0f095bE (;175;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage11storage_set11storage_set17h4929da203671d234E (;176;) (type 2) (param i32 i32)
    (local i32)
    block ;; label = @1
      local.get 1
      call $_ZN123_$LT$user_fund_storage..types..fund_item..FundItem$LT$M$GT$$u20$as$u20$dharitri_sc_codec..default_traits..EncodeDefault$GT$10is_default17h00950f7cce70cebeE
      br_if 0 (;@1;)
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped7builder22managed_buffer_builder36ManagedBufferBuilder$LT$M$C$Impl$GT$14new_from_slice17h7d5e49533a4cf43fE
      local.tee 2
      call $_ZN123_$LT$user_fund_storage..types..fund_type..FundDescription$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h1f9e16ad9bc7d8b0E
      local.get 1
      i32.load offset=16
      local.get 2
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h244dd97c16de4444E
      local.get 1
      i32.load offset=20
      local.get 2
      call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hb5a146f546b739e9E
      local.get 1
      i32.load offset=24
      local.get 2
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h244dd97c16de4444E
      local.get 1
      i32.load offset=28
      local.get 2
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h244dd97c16de4444E
      local.get 1
      i32.load offset=32
      local.get 2
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h244dd97c16de4444E
      local.get 1
      i32.load offset=36
      local.get 2
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h244dd97c16de4444E
      local.get 0
      local.get 2
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h0ae8598c972d0e9fE
      return
    end
    local.get 0
    i32.const 1
    i32.const 0
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h758125a2eb0f095bE
  )
  (func $_ZN123_$LT$user_fund_storage..types..fund_item..FundItem$LT$M$GT$$u20$as$u20$dharitri_sc_codec..default_traits..EncodeDefault$GT$10is_default17h00950f7cce70cebeE (;177;) (type 3) (param i32) (result i32)
    (local i32)
    i32.const 0
    local.set 1
    block ;; label = @1
      local.get 0
      i32.load offset=20
      call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$i32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h41b32bc4b1a3cdaeE
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=24
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=28
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=32
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=36
      i32.eqz
      local.set 1
    end
    local.get 1
  )
  (func $_ZN123_$LT$user_fund_storage..types..fund_type..FundDescription$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h1f9e16ad9bc7d8b0E (;178;) (type 2) (param i32 i32)
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  local.get 0
                  i32.load
                  br_table 0 (;@7;) 1 (;@6;) 2 (;@5;) 3 (;@4;) 4 (;@3;) 5 (;@2;) 6 (;@1;) 0 (;@7;)
                end
                i32.const 0
                local.get 1
                call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h22758c0eaf71226fE
                return
              end
              i32.const 1
              local.get 1
              call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h22758c0eaf71226fE
              local.get 0
              i32.const 8
              i32.add
              local.get 1
              call $_ZN17dharitri_sc_codec14impl_for_types8impl_ref86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$T$GT$24dep_encode_or_handle_err17hdbba49f4986dff5dE
              return
            end
            i32.const 2
            local.get 1
            call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h22758c0eaf71226fE
            return
          end
          i32.const 3
          local.get 1
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h22758c0eaf71226fE
          return
        end
        i32.const 4
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h22758c0eaf71226fE
        return
      end
      i32.const 5
      local.get 1
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h22758c0eaf71226fE
      local.get 0
      i32.const 8
      i32.add
      local.get 1
      call $_ZN17dharitri_sc_codec14impl_for_types8impl_ref86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$T$GT$24dep_encode_or_handle_err17hdbba49f4986dff5dE
      return
    end
    i32.const 6
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h22758c0eaf71226fE
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types8impl_ref86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$T$GT$24dep_encode_or_handle_err17hdbba49f4986dff5dE
  )
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hb5a146f546b739e9E (;179;) (type 2) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h987de79744e4ac4bE
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h07e0d1732153f0e3E
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h0ae8598c972d0e9fE (;180;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage11storage_set11storage_set17hd681dc570e5cfccfE (;181;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i32.load
    call $_ZN11dharitri_sc7storage11storage_set25StorageSetOutput$LT$A$GT$18set_managed_buffer17h996e070af445f31fE
  )
  (func $_ZN11dharitri_sc7storage11storage_set25StorageSetOutput$LT$A$GT$18set_managed_buffer17h996e070af445f31fE (;182;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hb43b84d3834209a8E (;183;) (type 2) (param i32 i32)
    (local i32)
    block ;; label = @1
      local.get 1
      call $_ZN133_$LT$user_fund_storage..types..fund_list_info..FundsListInfo$LT$M$GT$$u20$as$u20$dharitri_sc_codec..default_traits..EncodeDefault$GT$10is_default17haaa8b74d4844a881E
      br_if 0 (;@1;)
      call $_ZN11dharitri_sc5types7managed7wrapped7builder22managed_buffer_builder36ManagedBufferBuilder$LT$M$C$Impl$GT$14new_from_slice17h7d5e49533a4cf43fE
      local.set 2
      local.get 1
      i32.load
      local.get 2
      call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hb5a146f546b739e9E
      local.get 1
      i32.load offset=4
      local.get 2
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h244dd97c16de4444E
      local.get 1
      i32.load offset=8
      local.get 2
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h244dd97c16de4444E
      local.get 0
      local.get 2
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h0ae8598c972d0e9fE
      return
    end
    local.get 0
    i32.const 1
    i32.const 0
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h758125a2eb0f095bE
  )
  (func $_ZN133_$LT$user_fund_storage..types..fund_list_info..FundsListInfo$LT$M$GT$$u20$as$u20$dharitri_sc_codec..default_traits..EncodeDefault$GT$10is_default17haaa8b74d4844a881E (;184;) (type 3) (param i32) (result i32)
    (local i32)
    i32.const 0
    local.set 1
    block ;; label = @1
      local.get 0
      i32.load
      call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$i32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h41b32bc4b1a3cdaeE
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=8
      i32.eqz
      local.set 1
    end
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hed53681d8dc70c84E (;185;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i64.extend_i32_u
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h7b3ab429e8ba8004E
  )
  (func $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h7b3ab429e8ba8004E (;186;) (type 0) (param i32 i64)
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
    i32.const 0
    local.get 2
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hecdef361e3bb1bc1E
    local.get 0
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h758125a2eb0f095bE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h9a7af5e9efb969adE (;187;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$23load_len_managed_buffer17h9e9135e7bf89b7faE
          br_if 0 (;@3;)
          i32.const 4
          local.set 3
          br 1 (;@2;)
        end
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17hc3607e4372d588fbE
        i32.const 4
        local.set 3
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                local.get 2
                i32.const 12
                i32.add
                local.get 1
                call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h0dd9200a27651c5dE
                i32.const 255
                i32.and
                br_table 3 (;@3;) 1 (;@5;) 2 (;@4;) 0 (;@6;)
              end
              local.get 1
              i32.const 131072
              i32.const 13
              call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4b17a10d42f51edcE
              unreachable
            end
            local.get 2
            i32.const 12
            i32.add
            local.get 1
            call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$13read_big_uint17hd92b6c0d84f10247E
            local.set 4
            local.get 2
            i32.const 12
            i32.add
            local.get 1
            call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$13read_big_uint17hd92b6c0d84f10247E
            local.set 5
            local.get 2
            i32.const 12
            i32.add
            local.get 1
            call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$13read_big_uint17hd92b6c0d84f10247E
            local.set 6
            local.get 2
            i32.const 12
            i32.add
            local.get 1
            call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$13read_big_uint17hd92b6c0d84f10247E
            local.set 7
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  block ;; label = @8
                    local.get 2
                    i32.const 12
                    i32.add
                    local.get 1
                    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h0dd9200a27651c5dE
                    i32.const 255
                    i32.and
                    local.tee 3
                    br_table 1 (;@7;) 5 (;@3;) 2 (;@6;) 3 (;@5;) 0 (;@8;)
                  end
                  local.get 1
                  i32.const 131072
                  i32.const 13
                  call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4b17a10d42f51edcE
                  unreachable
                end
                local.get 2
                i32.const 36
                i32.add
                local.get 2
                i32.const 12
                i32.add
                local.get 1
                call $_ZN144_$LT$delegation_latest..reset_checkpoint_types..ComputeAllRewardsData$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h9ce9d5fa70abef4aE
                i32.const 0
                local.set 3
                local.get 2
                i64.load offset=40 align=4
                local.set 8
                local.get 2
                i32.load offset=36
                local.set 9
                br 3 (;@3;)
              end
              i32.const 2
              local.set 3
              br 2 (;@3;)
            end
            i32.const 3
            local.set 3
            br 1 (;@3;)
          end
          local.get 2
          i32.const 12
          i32.add
          local.get 1
          call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$13read_big_uint17hd92b6c0d84f10247E
          local.set 9
          local.get 2
          i32.const 32
          i32.add
          local.get 2
          i32.const 12
          i32.add
          local.get 1
          call $_ZN144_$LT$delegation_latest..reset_checkpoint_types..ComputeAllRewardsData$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h9ce9d5fa70abef4aE
          local.get 2
          i32.load offset=40
          local.set 4
          local.get 2
          i64.load offset=32
          local.set 8
          i32.const 6
          local.set 3
        end
        local.get 2
        i32.load offset=16
        local.get 2
        i32.load offset=12
        i32.ne
        br_if 1 (;@1;)
        local.get 2
        i32.load8_u offset=28
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        i32.store offset=144056
        i32.const 0
        i32.const 0
        i32.store8 offset=144060
      end
      local.get 0
      local.get 7
      i32.store offset=28
      local.get 0
      local.get 6
      i32.store offset=24
      local.get 0
      local.get 5
      i32.store offset=20
      local.get 0
      local.get 4
      i32.store offset=16
      local.get 0
      local.get 8
      i64.store offset=8 align=4
      local.get 0
      local.get 9
      i32.store offset=4
      local.get 0
      local.get 3
      i32.store
      local.get 2
      i32.const 48
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 1
    i32.const 131085
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4b17a10d42f51edcE
    unreachable
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h0dd9200a27651c5dE (;188;) (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 0
    i32.store8 offset=15
    local.get 0
    local.get 2
    i32.const 15
    i32.add
    i32.const 1
    local.get 1
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h8c597da11a85b64eE
    local.get 2
    i32.load8_u offset=15
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $_ZN144_$LT$delegation_latest..reset_checkpoint_types..ComputeAllRewardsData$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h9ce9d5fa70abef4aE (;189;) (type 1) (param i32 i32 i32)
    (local i32 i32)
    local.get 1
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17ha0189dbe4c9fc0aeE
    local.set 3
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$13read_big_uint17hd92b6c0d84f10247E
    local.set 4
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$13read_big_uint17hd92b6c0d84f10247E
    i32.store offset=8
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he9b9f9d3e0b60c89E (;190;) (type 2) (param i32 i32)
    (local i32 i64 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$23load_len_managed_buffer17h9e9135e7bf89b7faE
          br_if 0 (;@3;)
          i64.const 0
          local.set 3
          i32.const 0
          local.set 4
          call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E
          local.set 5
          i32.const 0
          local.set 6
          i32.const 0
          local.set 7
          i32.const 0
          local.set 8
          i32.const 0
          local.set 9
          br 1 (;@2;)
        end
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17hc3607e4372d588fbE
        i64.const 0
        local.set 3
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  block ;; label = @8
                    block ;; label = @9
                      block ;; label = @10
                        local.get 2
                        i32.const 12
                        i32.add
                        local.get 1
                        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h0dd9200a27651c5dE
                        i32.const 255
                        i32.and
                        br_table 7 (;@3;) 1 (;@9;) 2 (;@8;) 3 (;@7;) 4 (;@6;) 5 (;@5;) 6 (;@4;) 0 (;@10;)
                      end
                      local.get 1
                      i32.const 131072
                      i32.const 13
                      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4b17a10d42f51edcE
                      unreachable
                    end
                    i64.const 1
                    local.set 3
                    local.get 2
                    i32.const 12
                    i32.add
                    local.get 1
                    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h2504d853a0b73e9fE
                    local.set 10
                    br 5 (;@3;)
                  end
                  i64.const 2
                  local.set 3
                  br 4 (;@3;)
                end
                i64.const 3
                local.set 3
                br 3 (;@3;)
              end
              i64.const 4
              local.set 3
              br 2 (;@3;)
            end
            i64.const 5
            local.set 3
            local.get 2
            i32.const 12
            i32.add
            local.get 1
            call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h2504d853a0b73e9fE
            local.set 10
            br 1 (;@3;)
          end
          i64.const 6
          local.set 3
          local.get 2
          i32.const 12
          i32.add
          local.get 1
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h2504d853a0b73e9fE
          local.set 10
        end
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17ha0189dbe4c9fc0aeE
        local.set 8
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$13read_big_uint17hd92b6c0d84f10247E
        local.set 5
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17ha0189dbe4c9fc0aeE
        local.set 9
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17ha0189dbe4c9fc0aeE
        local.set 4
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17ha0189dbe4c9fc0aeE
        local.set 6
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17ha0189dbe4c9fc0aeE
        local.set 7
        local.get 2
        i32.load offset=16
        local.get 2
        i32.load offset=12
        i32.ne
        br_if 1 (;@1;)
        local.get 2
        i32.load8_u offset=28
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        i32.store offset=144056
        i32.const 0
        i32.const 0
        i32.store8 offset=144060
      end
      local.get 0
      local.get 7
      i32.store offset=36
      local.get 0
      local.get 6
      i32.store offset=32
      local.get 0
      local.get 4
      i32.store offset=28
      local.get 0
      local.get 9
      i32.store offset=24
      local.get 0
      local.get 5
      i32.store offset=20
      local.get 0
      local.get 8
      i32.store offset=16
      local.get 0
      local.get 10
      i64.store offset=8
      local.get 0
      local.get 3
      i64.store
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 1
    i32.const 131085
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4b17a10d42f51edcE
    unreachable
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h2504d853a0b73e9fE (;191;) (type 18) (param i32 i32) (result i64)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i64.const 0
    i64.store offset=8
    local.get 0
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    local.get 1
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h8c597da11a85b64eE
    local.get 2
    i64.load offset=8
    local.set 3
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3
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
  )
  (func $_ZN11dharitri_sc8log_util18serialize_log_data17h341074791aaa8b58E (;192;) (type 3) (param i32) (result i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
    drop
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h987de79744e4ac4bE
  )
  (func $_ZN11dharitri_sc8log_util18serialize_log_data17hc77cd657ce1160fdE (;193;) (type 3) (param i32) (result i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
    drop
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h454322d51d5bc21eE
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17hf71adf642156cb4fE (;194;) (type 2) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
    drop
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h454322d51d5bc21eE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4ac91cc2b70259beE
  )
  (func $_ZN11dharitri_sc8log_util23event_topic_accumulator17h398569d3a7140991E (;195;) (type 5) (param i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
    local.tee 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4ac91cc2b70259beE
    local.get 2
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h22758c0eaf71226fE (;196;) (type 2) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h8fa4038eff2a919cE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types8impl_ref86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$T$GT$24dep_encode_or_handle_err17hdbba49f4986dff5dE (;197;) (type 2) (param i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i64.load
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
    i64.store offset=8
    local.get 1
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h8fa4038eff2a919cE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hd777fdfe78ea699cE (;198;) (type 6) (param i32)
    local.get 0
    call $mBufferFinish
    drop
  )
  (func $_ZN129_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h1eb9ce70ff858d2cE (;199;) (type 2) (param i32 i32)
    local.get 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h987de79744e4ac4bE
    call $mBufferStorageStore
    drop
  )
  (func $_ZN12node_storage11node_config16NodeConfigModule21split_node_ids_by_err17hf6859f34fb7b7e12E (;200;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 432
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 0
    i32.store offset=8
    local.get 3
    local.get 2
    call $mBufferGetLength
    local.tee 4
    i32.store offset=420
    local.get 3
    i32.const 0
    i32.store offset=416
    local.get 3
    local.get 2
    i32.store offset=412
    local.get 1
    i32.const 4
    i32.add
    local.set 5
    i32.const 0
    local.set 2
    loop ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                local.get 2
                local.get 4
                i32.ge_u
                br_if 0 (;@6;)
                local.get 3
                i32.const 412
                i32.add
                call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h898be320277c8d75E
                local.set 6
                local.get 3
                i32.const 412
                i32.add
                call $_ZN257_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_owned..ManagedVecOwnedIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hff90d8418f695175E
                local.set 4
                local.get 3
                i64.const 0
                i64.store offset=424
                local.get 4
                call $mBufferGetLength
                local.tee 2
                i32.const 9
                i32.ge_u
                br_if 2 (;@4;)
                local.get 4
                i32.const 0
                local.get 3
                i32.const 424
                i32.add
                local.get 2
                i32.sub
                i32.const 8
                i32.add
                local.get 2
                call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17h84c6954c9b5ffeaeE
                drop
                local.get 3
                i64.load offset=424
                local.tee 7
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
                i64.const 4294967296
                i64.lt_u
                br_if 1 (;@5;)
                i32.const 131615
                i32.const 8
                i32.const 131085
                i32.const 14
                call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hc8de599bcba76279E
                unreachable
              end
              local.get 0
              local.get 1
              i32.const 404
              call $memcpy
              i32.const 404
              i32.add
              local.get 3
              i32.const 8
              i32.add
              i32.const 404
              call $memcpy
              drop
              local.get 3
              i32.const 432
              i32.add
              global.set $__stack_pointer
              return
            end
            local.get 7
            i64.const 0
            i64.eq
            br_if 2 (;@2;)
            local.get 6
            call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$11get_node_id17hf07bb3092cab1d3eE
            local.set 8
            local.get 1
            i32.load
            i32.const 2
            i32.shl
            local.set 6
            i32.const 0
            local.set 4
            i32.const 0
            local.set 2
            loop ;; label = @5
              local.get 6
              local.get 4
              i32.eq
              br_if 3 (;@2;)
              block ;; label = @6
                local.get 1
                local.get 4
                i32.add
                i32.const 4
                i32.add
                i32.load
                local.get 8
                i32.eq
                br_if 0 (;@6;)
                local.get 4
                i32.const 4
                i32.add
                local.set 4
                local.get 2
                i32.const 1
                i32.add
                local.set 2
                br 1 (;@5;)
              end
            end
            local.get 5
            local.get 2
            i32.const 2
            i32.shl
            i32.add
            local.tee 4
            i32.load
            local.set 2
            local.get 4
            local.get 1
            local.get 6
            i32.add
            local.tee 6
            i32.load
            i32.store
            local.get 6
            local.get 2
            i32.store
            local.get 1
            i32.load
            local.tee 4
            i32.eqz
            br_if 1 (;@3;)
            local.get 1
            local.get 4
            i32.const -1
            i32.add
            i32.store
            local.get 3
            i32.const 8
            i32.add
            local.get 8
            call $_ZN8arrayvec8arrayvec21ArrayVec$LT$T$C$_$GT$4push17h40a57745c5b9ddfaE
            br 2 (;@2;)
          end
          i32.const 131615
          i32.const 8
          i32.const 131085
          i32.const 14
          call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hc8de599bcba76279E
          unreachable
        end
        call $_ZN4core9panicking9panic_fmt17h6f4dae69dcc1a6d2E
        unreachable
      end
      local.get 3
      i32.load offset=420
      local.set 4
      local.get 3
      i32.load offset=416
      local.set 2
      br 0 (;@1;)
    end
  )
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h898be320277c8d75E (;201;) (type 3) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    call $_ZN257_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_owned..ManagedVecOwnedIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hff90d8418f695175E
    local.tee 2
    call $mBufferGetLength
    local.set 0
    local.get 1
    i32.const 0
    i32.store8 offset=28
    local.get 1
    local.get 0
    i32.store offset=24
    local.get 1
    local.get 2
    i32.store offset=20
    local.get 1
    local.get 0
    i32.store offset=16
    local.get 1
    i32.const 0
    i32.store offset=12
    local.get 1
    i32.const 12
    i32.add
    i32.const 131615
    i32.const 8
    call $_ZN158_$LT$dharitri_sc..types..managed..wrapped..managed_byte_array..ManagedByteArray$LT$M$C$_$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17hc7e769c1491813e9E
    local.set 0
    block ;; label = @1
      local.get 1
      i32.load offset=16
      local.get 1
      i32.load offset=12
      i32.ne
      br_if 0 (;@1;)
      block ;; label = @2
        local.get 1
        i32.load8_u offset=28
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        i32.store offset=144056
        i32.const 0
        i32.const 0
        i32.store8 offset=144060
      end
      local.get 1
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 0
      return
    end
    i32.const 131615
    i32.const 8
    i32.const 131085
    i32.const 14
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hc8de599bcba76279E
    unreachable
  )
  (func $_ZN257_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_owned..ManagedVecOwnedIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hff90d8418f695175E (;202;) (type 3) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 11
    i32.add
    local.get 0
    call $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h509769ab263ec766E
    block ;; label = @1
      local.get 1
      i32.load8_u offset=11
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=12 align=1
      local.set 0
      local.get 1
      i32.const 16
      i32.add
      global.set $__stack_pointer
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
      return
    end
    i32.const 131615
    i32.const 8
    i32.const 131257
    i32.const 17
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hc8de599bcba76279E
    unreachable
  )
  (func $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$11get_node_id17hf07bb3092cab1d3eE (;203;) (type 3) (param i32) (result i32)
    (local i32)
    i32.const 133783
    i32.const 14
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    local.tee 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17ha103ef643015dc7cE
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_get11storage_get17hb502f2b686e193c1E
  )
  (func $_ZN8arrayvec8arrayvec21ArrayVec$LT$T$C$_$GT$4push17h40a57745c5b9ddfaE (;204;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    local.get 1
    call $_ZN8arrayvec13arrayvec_impl12ArrayVecImpl8try_push17h808d517ddb7f97a5E
    block ;; label = @1
      local.get 2
      i32.load
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 12
      i32.add
      call $_ZN4core6result13unwrap_failed17he8f1ea0683e142ebE
      unreachable
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN4core9panicking9panic_fmt17h6f4dae69dcc1a6d2E (;205;) (type 14)
    call $rust_begin_unwind
    unreachable
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h07e0d1732153f0e3E (;206;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h91350dbdcc7c07a2E
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h8fa4038eff2a919cE
    local.get 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17ha103ef643015dc7cE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17ha91872578f9b3ac1E (;207;) (type 3) (param i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17h600c2e5a3dcfb3b3E
    local.set 2
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load
    local.tee 3
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h2417f21d3b2a6613E
    block ;; label = @1
      local.get 1
      i32.load offset=8
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      i32.const 131106
      i32.const 25
      i32.const 131375
      i32.const 15
      call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hdddaf3d56c672f2cE
      unreachable
    end
    local.get 1
    i32.load offset=12
    local.set 4
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 4
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17h600c2e5a3dcfb3b3E (;208;) (type 3) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 0
    i32.store offset=12
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      i32.const 12
      i32.add
      i32.const 4
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h228f43acaef9e02eE
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131106
      i32.const 25
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h32092f3cf7900d96E
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    i32.const 4
    i32.add
    i32.store
    local.get 1
    i32.load offset=12
    local.set 0
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
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
  )
  (func $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hdddaf3d56c672f2cE (;209;) (type 15) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    local.tee 1
    local.get 2
    local.get 3
    call $mBufferAppendBytes
    drop
    local.get 1
    call $managedSignalError
    unreachable
  )
  (func $_ZN149_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u3b$$u20$N$u5d$$GT$$GT$4from17h20e60bac623c0b90E (;210;) (type 3) (param i32) (result i32)
    local.get 0
    i32.const 31
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
  )
  (func $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h509769ab263ec766E (;211;) (type 2) (param i32 i32)
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
      i32.const 0
      i32.store offset=12
      local.get 1
      i32.load
      local.get 4
      local.get 2
      i32.const 12
      i32.add
      i32.const 4
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17h84c6954c9b5ffeaeE
      drop
      local.get 1
      local.get 4
      i32.const 4
      i32.add
      i32.store offset=4
      local.get 0
      local.get 2
      i32.load offset=12
      i32.store offset=1 align=1
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
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$16read_specialized17h4bffc667410596efE (;212;) (type 11) (param i32 i32 i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 8
    i32.add
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load
    local.tee 5
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h2417f21d3b2a6613E
    block ;; label = @1
      local.get 4
      i32.load offset=8
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      i32.const 131375
      i32.const 15
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hc8de599bcba76279E
      unreachable
    end
    local.get 4
    i32.load offset=12
    local.set 3
    local.get 0
    local.get 5
    local.get 1
    i32.add
    i32.store
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h81539c493c935fa0E (;213;) (type 2) (param i32 i32)
    local.get 0
    i32.load
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h048bd499c7ca4c09E
    unreachable
  )
  (func $_ZN175_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$GT$$u20$as$u20$dharitri_sc..formatter..formatter_traits..FormatBuffer$GT$12append_ascii17he54cecad30792cb1E (;214;) (type 6) (param i32)
    local.get 0
    i32.const 133490
    i32.const 19
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h8fa4038eff2a919cE
  )
  (func $_ZN175_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$GT$$u20$as$u20$dharitri_sc..formatter..formatter_traits..FormatBuffer$GT$14append_display17h07c47c6e7f5a6511E (;215;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h8fa4038eff2a919cE
  )
  (func $_ZN17delegation_latest13auction_proxy48AuctionProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$12unbond_nodes17he4966e8ee83f03c2E (;216;) (type 1) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 131623
    i32.const 11
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h20724989590dc39cE
    local.get 3
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 3
    i64.load
    i64.store offset=20 align=4
    local.get 3
    i32.const 8
    i32.add
    local.get 3
    i32.const 20
    i32.add
    local.get 2
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h17da1796d5a43b3bE
    local.get 0
    local.get 3
    i32.load offset=16
    i32.store offset=8
    local.get 0
    local.get 3
    i64.load offset=8 align=4
    i64.store align=4
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17delegation_latest13auction_proxy48AuctionProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$13unbond_tokens17h045000230cbd0a11E (;217;) (type 1) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 131634
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h20724989590dc39cE
    local.get 3
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 3
    i64.load
    i64.store offset=20 align=4
    local.get 3
    i32.const 8
    i32.add
    local.get 3
    i32.const 20
    i32.add
    local.get 2
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h0e3fc7321a1e12deE
    local.get 0
    local.get 3
    i32.load offset=16
    i32.store offset=8
    local.get 0
    local.get 3
    i64.load offset=8 align=4
    i64.store align=4
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17delegation_latest13auction_proxy48AuctionProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$13unstake_nodes17h7c0e15fcfa197b97E (;218;) (type 1) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 131646
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h20724989590dc39cE
    local.get 3
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 3
    i64.load
    i64.store offset=20 align=4
    local.get 3
    i32.const 8
    i32.add
    local.get 3
    i32.const 20
    i32.add
    local.get 2
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h17da1796d5a43b3bE
    local.get 0
    local.get 3
    i32.load offset=16
    i32.store offset=8
    local.get 0
    local.get 3
    i64.load offset=8 align=4
    i64.store align=4
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17delegation_latest13auction_proxy48AuctionProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14unstake_tokens17h7b71abd5bfae3b36E (;219;) (type 1) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 131658
    i32.const 13
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h20724989590dc39cE
    local.get 3
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 3
    i64.load
    i64.store offset=20 align=4
    local.get 3
    i32.const 8
    i32.add
    local.get 3
    i32.const 20
    i32.add
    local.get 2
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h0e3fc7321a1e12deE
    local.get 0
    local.get 3
    i32.load offset=16
    i32.store offset=8
    local.get 0
    local.get 3
    i64.load offset=8 align=4
    i64.store align=4
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17delegation_latest13auction_proxy48AuctionProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$5claim17h0f35ceaf327850ffE (;220;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    i32.const 131671
    i32.const 5
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h20724989590dc39cE
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
  (func $_ZN17delegation_latest13auction_proxy48AuctionProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$5stake17h1872bd7d3e271305E (;221;) (type 15) (param i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 8
    i32.add
    i32.const 131676
    i32.const 5
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h20724989590dc39cE
    local.get 4
    i32.load offset=8
    local.set 5
    local.get 4
    i32.load offset=12
    local.tee 6
    local.get 2
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h5601705709a972acE
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
        local.get 4
        i32.const 20
        i32.add
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3da7bb117a9a755eE
        local.get 4
        i32.load
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i32.load offset=4
        local.set 3
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
        drop
        local.get 6
        local.get 3
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h454322d51d5bc21eE
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4ac91cc2b70259beE
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 6
    i32.store offset=4
    local.get 0
    local.get 5
    i32.store
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 4
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h5601705709a972acE (;222;) (type 2) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
    local.tee 2
    local.get 1
    i64.extend_i32_u
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417hdd79536a0e446643E
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4ac91cc2b70259beE
  )
  (func $_ZN17delegation_latest13auction_proxy48AuctionProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$6unjail17h42bacb832ad1e577E (;223;) (type 1) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 131681
    i32.const 6
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h20724989590dc39cE
    local.get 3
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 3
    i64.load
    i64.store offset=20 align=4
    local.get 3
    i32.const 8
    i32.add
    local.get 3
    i32.const 20
    i32.add
    local.get 2
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h17da1796d5a43b3bE
    local.get 0
    local.get 3
    i32.load offset=16
    i32.store offset=8
    local.get 0
    local.get 3
    i64.load offset=8 align=4
    i64.store align=4
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17delegation_latest13auction_proxy48AuctionProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$7unstake17hb6387e40d8abbf85E (;224;) (type 1) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 131687
    i32.const 7
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h20724989590dc39cE
    local.get 3
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 3
    i64.load
    i64.store offset=20 align=4
    local.get 3
    i32.const 8
    i32.add
    local.get 3
    i32.const 20
    i32.add
    local.get 2
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h17da1796d5a43b3bE
    local.get 0
    local.get 3
    i32.load offset=16
    i32.store offset=8
    local.get 0
    local.get 3
    i64.load offset=8 align=4
    i64.store align=4
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17delegation_latest13rewards_state16EndpointWrappers17callback_selector17h4d17322f291a0227E (;225;) (type 3) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 12
    i32.add
    local.get 0
    call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h24d7ef7390f86a3aE
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load offset=44
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        call $_ZN17user_fund_storage16fund_view_module16EndpointWrappers17callback_selector17hc38ed2fce32552c7E
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 0
        br 1 (;@1;)
      end
      i32.const 0
      local.set 0
    end
    local.get 1
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN17user_fund_storage16fund_view_module16EndpointWrappers17callback_selector17hc38ed2fce32552c7E (;226;) (type 3) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 12
    i32.add
    local.get 0
    call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h24d7ef7390f86a3aE
    local.get 1
    i32.load offset=44
    local.set 0
    local.get 1
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 0
    i32.const 0
    i32.ne
  )
  (func $_ZN17delegation_latest13rewards_state17RewardStateModule17total_unprotected17h83f87d9a7a8e4069E (;227;) (type 4) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    call $_ZN73_$LT$C$u20$as$u20$delegation_latest..rewards_state..RewardStateModule$GT$16get_sent_rewards17hbe99356cb6528a2fE
    local.set 0
    call $_ZN17delegation_latest13rewards_state17RewardStateModule27get_total_cumulated_rewards17hb0627139b9970b1aE
    local.set 1
    i32.const 0
    i32.const 1
    call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
    local.set 2
    i32.const 0
    i32.const 6
    call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
    local.set 3
    i32.const 0
    i32.const 0
    call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
    local.set 4
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$4rewa17h7864cc8849251b12E
    local.tee 5
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17hf42b15548523f5a6E
    local.set 6
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hc7bcf386267cf59fE
    local.set 7
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17hf56efd14a1055dd7E
    local.set 8
    block ;; label = @1
      block ;; label = @2
        local.get 6
        br_if 0 (;@2;)
        local.get 5
        call $mBufferGetLength
        local.set 6
        local.get 7
        call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node26unsafe_buffer_load_address17hbc29c885172888e8E
        local.get 5
        i32.const 144101
        call $mBufferGetBytes
        drop
        i32.const 144069
        i32.const 144101
        local.get 6
        i64.const 0
        local.get 8
        call $bigIntGetDCDTExternalBalance
        br 1 (;@1;)
      end
      local.get 7
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node26unsafe_buffer_load_address17hbc29c885172888e8E
      i32.const 144069
      local.get 8
      call $bigIntGetExternalBalance
    end
    local.get 8
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Add$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3add17h3bf14f649a62c8e0E
    local.tee 8
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators122_$LT$impl$u20$core..ops..arith..SubAssign$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10sub_assign17h90f9346ea5ce9a16E
    local.get 8
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators122_$LT$impl$u20$core..ops..arith..SubAssign$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10sub_assign17h90f9346ea5ce9a16E
    local.get 8
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators122_$LT$impl$u20$core..ops..arith..SubAssign$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10sub_assign17h90f9346ea5ce9a16E
    local.get 8
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators122_$LT$impl$u20$core..ops..arith..SubAssign$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10sub_assign17h90f9346ea5ce9a16E
    local.get 8
  )
  (func $_ZN73_$LT$C$u20$as$u20$delegation_latest..rewards_state..RewardStateModule$GT$16get_sent_rewards17hbe99356cb6528a2fE (;228;) (type 4) (result i32)
    i32.const 133858
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    call $_ZN11dharitri_sc7storage11storage_get11storage_get17hd87949a3f9650e43E
  )
  (func $_ZN17delegation_latest13rewards_state17RewardStateModule27get_total_cumulated_rewards17hb0627139b9970b1aE (;229;) (type 4) (result i32)
    (local i32)
    i32.const -25
    i32.const 134004
    i32.const 12
    call $mBufferSetBytes
    drop
    i32.const -25
    i32.const -26
    call $mBufferStorageLoad
    drop
    i32.const -26
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17hf56efd14a1055dd7E
    local.tee 0
    call $mBufferToBigIntUnsigned
    drop
    local.get 0
  )
  (func $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE (;230;) (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const 4
        i32.add
        local.get 0
        local.get 1
        call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$17fund_list_by_user17hf4ed2b79213eae10E
        call $_ZN11dharitri_sc7storage11storage_get11storage_get17hf6af4b39ab7abe80E
        br 1 (;@1;)
      end
      local.get 2
      i32.const 4
      i32.add
      local.get 1
      call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$21get_fund_list_by_type17h46b24c0fb000ba69E
    end
    local.get 2
    i32.load offset=4
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node26unsafe_buffer_load_address17hbc29c885172888e8E (;231;) (type 6) (param i32)
    local.get 0
    i32.const 144069
    call $mBufferGetBytes
    drop
  )
  (func $_ZN17delegation_latest13rewards_state17RewardStateModule22store_user_reward_data17h5940c400bf6fbff6E (;232;) (type 2) (param i32 i32)
    (local i32)
    i32.const 133882
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    local.tee 2
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h5984eed832415bb3E
    local.get 1
    i32.load
    local.get 2
    call $_ZN129_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h1eb9ce70ff858d2cE
    local.get 0
    local.get 1
    i32.const 4
    i32.add
    call $_ZN73_$LT$C$u20$as$u20$delegation_latest..rewards_state..RewardStateModule$GT$22set_user_rew_unclaimed17hb8b02d303f566bdfE
  )
  (func $_ZN73_$LT$C$u20$as$u20$delegation_latest..rewards_state..RewardStateModule$GT$22set_user_rew_unclaimed17hb8b02d303f566bdfE (;233;) (type 2) (param i32 i32)
    (local i32)
    i32.const 133870
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    local.tee 2
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h5984eed832415bb3E
    local.get 1
    i32.load
    local.get 2
    call $_ZN129_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h1eb9ce70ff858d2cE
  )
  (func $_ZN17delegation_latest13rewards_state17RewardStateModule23compute_one_user_reward17haf7fbf9321ccb399E (;234;) (type 6) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    call $_ZN17delegation_latest13rewards_state17RewardStateModule25load_updated_user_rewards17hcf438bf56fc24b68E
    local.get 1
    local.get 1
    i64.load
    i64.store offset=8 align=4
    local.get 0
    local.get 1
    i32.const 8
    i32.add
    call $_ZN17delegation_latest13rewards_state17RewardStateModule22store_user_reward_data17h5940c400bf6fbff6E
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17delegation_latest13rewards_state17RewardStateModule25load_updated_user_rewards17hcf438bf56fc24b68E (;235;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    i32.const 133882
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    local.tee 2
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h5984eed832415bb3E
    local.get 2
    call $_ZN11dharitri_sc7storage11storage_get11storage_get17hd87949a3f9650e43E
    local.set 2
    local.get 1
    call $_ZN73_$LT$C$u20$as$u20$delegation_latest..rewards_state..RewardStateModule$GT$22get_user_rew_unclaimed17h8b55d6e7e95ce6ceE
    local.set 3
    block ;; label = @1
      call $_ZN17delegation_latest13rewards_state17RewardStateModule27get_total_cumulated_rewards17hb0627139b9970b1aE
      local.tee 4
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators120_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h80a5e700536f6f31E
      local.tee 5
      call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$i32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h41b32bc4b1a3cdaeE
      br_if 0 (;@1;)
      call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$15get_service_fee17h22136a6896d1f30cE
      local.set 6
      i32.const 10000
      call $_ZN117_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..convert..From$LT$usize$GT$$GT$4from17h81131e176f07200fE
      local.set 2
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17hf56efd14a1055dd7E
      local.tee 7
      local.get 6
      local.get 5
      call $bigIntMul
      local.get 7
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..DivAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10div_assign17h37107642eddbde9aE
      local.get 2
      local.get 6
      call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators120_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h80a5e700536f6f31E
      local.tee 6
      local.get 5
      call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..MulAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10mul_assign17h63359a1fd80951efE
      local.get 6
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..DivAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10div_assign17h37107642eddbde9aE
      call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$24get_total_delegation_cap17hae62de003d66c4a4E
      local.set 2
      block ;; label = @2
        local.get 1
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 3
        local.get 7
        call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..AddAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17h07c6e548e8930de6E
        i32.const 0
        i32.const 4
        call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
        local.tee 5
        local.get 2
        call $_ZN4core3cmp10PartialOrd2lt17hc42555b6cd67fb1eE
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 5
        call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators120_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h80a5e700536f6f31E
        local.set 7
        local.get 6
        call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd0a835fd57d408bfE
        local.tee 5
        local.get 7
        call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..MulAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10mul_assign17h63359a1fd80951efE
        local.get 5
        local.get 2
        call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..DivAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10div_assign17h37107642eddbde9aE
        local.get 3
        local.get 5
        call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..AddAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17h07c6e548e8930de6E
      end
      block ;; label = @2
        local.get 1
        i32.const 4
        call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
        local.tee 1
        call $_ZN4core3cmp10PartialOrd2gt17hd9d509c4ac11a852E
        i32.eqz
        br_if 0 (;@2;)
        local.get 6
        local.get 1
        call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..MulAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10mul_assign17h63359a1fd80951efE
        local.get 6
        local.get 2
        call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..DivAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10div_assign17h37107642eddbde9aE
        local.get 3
        local.get 6
        call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..AddAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17h07c6e548e8930de6E
      end
      local.get 4
      local.set 2
    end
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN73_$LT$C$u20$as$u20$delegation_latest..rewards_state..RewardStateModule$GT$22get_user_rew_unclaimed17h8b55d6e7e95ce6ceE (;236;) (type 3) (param i32) (result i32)
    (local i32)
    i32.const 133870
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    local.tee 1
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h5984eed832415bb3E
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_get11storage_get17hd87949a3f9650e43E
  )
  (func $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$15get_service_fee17h22136a6896d1f30cE (;237;) (type 4) (result i32)
    i32.const 133716
    i32.const 11
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    call $_ZN11dharitri_sc7storage11storage_get11storage_get17hd87949a3f9650e43E
  )
  (func $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$24get_total_delegation_cap17hae62de003d66c4a4E (;238;) (type 4) (result i32)
    i32.const 132242
    i32.const 20
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    call $_ZN11dharitri_sc7storage11storage_get11storage_get17hd87949a3f9650e43E
  )
  (func $_ZN4core3cmp10PartialOrd2lt17hc42555b6cd67fb1eE (;239;) (type 5) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp109_$LT$impl$u20$core..cmp..Ord$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3cmp17h40e00373de08d106E
    i32.const 255
    i32.and
    i32.const 255
    i32.eq
  )
  (func $_ZN4core3cmp10PartialOrd2gt17hd9d509c4ac11a852E (;240;) (type 3) (param i32) (result i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$7bi_sign17hcc8d762c28e3fcfdE
    i32.const 255
    i32.and
    i32.const 2
    i32.eq
  )
  (func $_ZN17delegation_latest15node_activation13CallbackProxy22auction_stake_callback17h0315543bd602ebdbE (;241;) (type 2) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
    local.tee 2
    local.get 1
    call $_ZN11dharitri_sc5types11interaction16callback_closure24CallbackClosure$LT$M$GT$17push_endpoint_arg17h91e0f6e026d8f43dE
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    i32.const 22
    i32.store offset=4
    local.get 0
    i32.const 131727
    i32.store
    block ;; label = @1
      local.get 1
      i32.load
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 0
      i32.store
    end
  )
  (func $_ZN17delegation_latest15node_activation13CallbackProxy23auction_unbond_callback17he95920897c2cc5a7E (;242;) (type 2) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
    local.tee 2
    local.get 1
    call $_ZN11dharitri_sc5types11interaction16callback_closure24CallbackClosure$LT$M$GT$17push_endpoint_arg17h91e0f6e026d8f43dE
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    i32.const 23
    i32.store offset=4
    local.get 0
    i32.const 131749
    i32.store
    block ;; label = @1
      local.get 1
      i32.load
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 0
      i32.store
    end
  )
  (func $_ZN17delegation_latest15node_activation13CallbackProxy24auction_unstake_callback17h1474371f80a399b7E (;243;) (type 2) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
    local.tee 2
    local.get 1
    call $_ZN11dharitri_sc5types11interaction16callback_closure24CallbackClosure$LT$M$GT$17push_endpoint_arg17h91e0f6e026d8f43dE
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    i32.const 24
    i32.store offset=4
    local.get 0
    i32.const 131772
    i32.store
    block ;; label = @1
      local.get 1
      i32.load
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 0
      i32.store
    end
  )
  (func $_ZN17delegation_latest15node_activation20NodeActivationModule13unstake_nodes17hbb8649f1aad193a1E (;244;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 1264
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            call $_ZN17delegation_latest22reset_checkpoint_state26ResetCheckpointStateModule24is_global_op_in_progress17hb2123a554bee1c97E
            br_if 0 (;@4;)
            local.get 2
            i32.const 0
            i32.store offset=12
            local.get 2
            local.get 1
            call $mBufferGetLength
            i32.store offset=864
            local.get 2
            i32.const 0
            i32.store offset=860
            local.get 2
            local.get 1
            i32.store offset=856
            loop ;; label = @5
              local.get 2
              local.get 2
              i32.const 856
              i32.add
              call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3da7bb117a9a755eE
              block ;; label = @6
                local.get 2
                i32.load
                br_if 0 (;@6;)
                local.get 2
                i32.const 416
                i32.add
                local.get 2
                i32.const 12
                i32.add
                i32.const 404
                call $memcpy
                drop
                local.get 2
                i32.load offset=416
                i32.const 2
                i32.shl
                local.set 3
                i32.const 0
                local.set 4
                loop ;; label = @7
                  block ;; label = @8
                    local.get 3
                    local.get 4
                    i32.ne
                    br_if 0 (;@8;)
                    call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$28get_auction_contract_address17hc29ca24046880535E
                    local.set 4
                    local.get 0
                    i32.eqz
                    br_if 5 (;@3;)
                    local.get 2
                    i32.const 844
                    i32.add
                    local.get 4
                    local.get 1
                    call $_ZN17delegation_latest13auction_proxy48AuctionProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$7unstake17hb6387e40d8abbf85E
                    local.get 2
                    i32.const 856
                    i32.add
                    local.get 2
                    i32.const 416
                    i32.add
                    i32.const 404
                    call $memcpy
                    drop
                    local.get 2
                    i32.const 820
                    i32.add
                    local.get 2
                    i32.const 856
                    i32.add
                    call $_ZN17delegation_latest15node_activation13CallbackProxy24auction_unstake_callback17h1474371f80a399b7E
                    local.get 2
                    local.get 2
                    i32.load offset=848
                    i32.store offset=840
                    local.get 2
                    local.get 2
                    i32.load offset=844
                    i32.store offset=836
                    local.get 2
                    local.get 2
                    i32.load offset=852
                    i32.store offset=832
                    local.get 2
                    i32.const 820
                    i32.add
                    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hb5a2c681ab858abbE
                    unreachable
                  end
                  local.get 2
                  i32.const 856
                  i32.add
                  local.get 2
                  i32.const 416
                  i32.add
                  local.get 4
                  i32.add
                  i32.const 4
                  i32.add
                  i32.load
                  local.tee 5
                  call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$14get_node_state17h33d2320c53e1cb72E
                  local.get 2
                  i64.load offset=856
                  local.get 2
                  i64.load offset=864
                  i64.const 3
                  local.get 6
                  call $_ZN83_$LT$node_storage..types..node_state..NodeState$u20$as$u20$core..cmp..PartialEq$GT$2eq17h0346db99ac50b005E
                  i32.eqz
                  br_if 5 (;@2;)
                  local.get 5
                  i64.const 4
                  local.get 6
                  call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$14set_node_state17h59eecf249503eff7E
                  local.get 4
                  i32.const 4
                  i32.add
                  local.set 4
                  br 0 (;@7;)
                end
              end
              local.get 2
              i32.load offset=4
              call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$11get_node_id17hf07bb3092cab1d3eE
              local.tee 4
              i32.eqz
              br_if 4 (;@1;)
              local.get 2
              i32.const 12
              i32.add
              local.get 4
              call $_ZN8arrayvec8arrayvec21ArrayVec$LT$T$C$_$GT$4push17h40a57745c5b9ddfaE
              br 0 (;@5;)
            end
          end
          i32.const 131900
          i32.const 61
          call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
          unreachable
        end
        local.get 2
        i32.const 844
        i32.add
        local.get 4
        local.get 1
        call $_ZN17delegation_latest13auction_proxy48AuctionProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$13unstake_nodes17h7c0e15fcfa197b97E
        local.get 2
        i32.const 856
        i32.add
        local.get 2
        i32.const 416
        i32.add
        i32.const 404
        call $memcpy
        drop
        local.get 2
        i32.const 820
        i32.add
        local.get 2
        i32.const 856
        i32.add
        call $_ZN17delegation_latest15node_activation13CallbackProxy24auction_unstake_callback17h1474371f80a399b7E
        local.get 2
        local.get 2
        i32.load offset=848
        i32.store offset=840
        local.get 2
        local.get 2
        i32.load offset=844
        i32.store offset=836
        local.get 2
        local.get 2
        i32.load offset=852
        i32.store offset=832
        local.get 2
        i32.const 820
        i32.add
        call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hb5a2c681ab858abbE
        unreachable
      end
      i32.const 132016
      i32.const 15
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
      unreachable
    end
    i32.const 131858
    i32.const 21
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
    unreachable
  )
  (func $_ZN17delegation_latest22reset_checkpoint_state26ResetCheckpointStateModule24is_global_op_in_progress17hb2123a554bee1c97E (;245;) (type 4) (result i32)
    call $_ZN91_$LT$C$u20$as$u20$delegation_latest..reset_checkpoint_state..ResetCheckpointStateModule$GT$20global_op_checkpoint17hf4b577f07d9e93f7E
    call $_ZN11dharitri_sc7storage11storage_get15storage_get_len17hac71900ce8a0d6ebE
    i32.const 0
    i32.ne
  )
  (func $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$28get_auction_contract_address17hc29ca24046880535E (;246;) (type 4) (result i32)
    i32.const 133727
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    call $_ZN11dharitri_sc7storage11storage_get11storage_get17h56c76cd1c2da67a3E
  )
  (func $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$14get_node_state17h33d2320c53e1cb72E (;247;) (type 2) (param i32 i32)
    (local i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.const 133797
    i32.const 10
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    local.tee 3
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h244dd97c16de4444E
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 3
          call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$23load_len_managed_buffer17h9e9135e7bf89b7faE
          br_if 0 (;@3;)
          i64.const 0
          local.set 4
          br 1 (;@2;)
        end
        local.get 2
        i32.const 12
        i32.add
        local.get 3
        call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17hc3607e4372d588fbE
        i64.const 0
        local.set 4
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
                            local.get 2
                            i32.const 12
                            i32.add
                            local.get 3
                            call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h0dd9200a27651c5dE
                            i32.const 255
                            i32.and
                            br_table 9 (;@3;) 1 (;@11;) 2 (;@10;) 3 (;@9;) 4 (;@8;) 5 (;@7;) 6 (;@6;) 7 (;@5;) 0 (;@12;)
                          end
                          local.get 3
                          i32.const 131072
                          i32.const 13
                          call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4b17a10d42f51edcE
                          unreachable
                        end
                        i64.const 1
                        local.set 4
                        br 6 (;@4;)
                      end
                      i64.const 2
                      local.set 4
                      br 5 (;@4;)
                    end
                    i64.const 3
                    local.set 4
                    br 4 (;@4;)
                  end
                  i64.const 4
                  local.set 4
                  br 3 (;@4;)
                end
                i64.const 5
                local.set 4
                local.get 2
                i32.const 12
                i32.add
                local.get 3
                call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h2504d853a0b73e9fE
                local.set 5
                br 3 (;@3;)
              end
              i64.const 6
              local.set 4
              local.get 2
              i32.const 12
              i32.add
              local.get 3
              call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h2504d853a0b73e9fE
              local.set 5
              br 2 (;@3;)
            end
            i64.const 7
            local.set 4
          end
        end
        local.get 2
        i32.load offset=16
        local.get 2
        i32.load offset=12
        i32.ne
        br_if 1 (;@1;)
        local.get 2
        i32.load8_u offset=28
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        i32.store offset=144056
        i32.const 0
        i32.const 0
        i32.store8 offset=144060
      end
      local.get 0
      local.get 5
      i64.store offset=8
      local.get 0
      local.get 4
      i64.store
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 3
    i32.const 131085
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4b17a10d42f51edcE
    unreachable
  )
  (func $_ZN83_$LT$node_storage..types..node_state..NodeState$u20$as$u20$core..cmp..PartialEq$GT$2eq17h0346db99ac50b005E (;248;) (type 20) (param i64 i64 i64 i64) (result i32)
    (local i32)
    block ;; label = @1
      block ;; label = @2
        local.get 0
        local.get 2
        i64.eq
        br_if 0 (;@2;)
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      i32.const 1
      local.set 4
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.wrap_i64
          i32.const -5
          i32.add
          br_table 1 (;@2;) 0 (;@3;) 2 (;@1;)
        end
        local.get 0
        i64.const 6
        i64.ne
        local.get 1
        local.get 3
        i64.eq
        i32.or
        return
      end
      local.get 0
      i64.const 5
      i64.ne
      local.get 1
      local.get 3
      i64.eq
      i32.or
      return
    end
    local.get 4
  )
  (func $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$14set_node_state17h59eecf249503eff7E (;249;) (type 21) (param i32 i64 i64)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 2
    i64.store offset=8
    local.get 3
    local.get 1
    i64.store
    local.get 0
    i32.const 133797
    i32.const 10
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    local.tee 4
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h244dd97c16de4444E
    local.get 3
    i32.const 8
    i32.add
    local.set 0
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  block ;; label = @8
                    block ;; label = @9
                      local.get 1
                      i32.wrap_i64
                      br_table 0 (;@9;) 1 (;@8;) 2 (;@7;) 3 (;@6;) 4 (;@5;) 5 (;@4;) 6 (;@3;) 7 (;@2;) 0 (;@9;)
                    end
                    local.get 4
                    i64.const 0
                    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h7b3ab429e8ba8004E
                    br 7 (;@1;)
                  end
                  local.get 4
                  i64.const 1
                  call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h7b3ab429e8ba8004E
                  br 6 (;@1;)
                end
                local.get 4
                i64.const 2
                call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h7b3ab429e8ba8004E
                br 5 (;@1;)
              end
              local.get 4
              i64.const 3
              call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h7b3ab429e8ba8004E
              br 4 (;@1;)
            end
            local.get 4
            i64.const 4
            call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h7b3ab429e8ba8004E
            br 3 (;@1;)
          end
          i32.const 5
          call $_ZN11dharitri_sc5types7managed7wrapped7builder22managed_buffer_builder36ManagedBufferBuilder$LT$M$C$Impl$GT$14new_from_slice17h7d5e49533a4cf43fE
          local.tee 5
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h22758c0eaf71226fE
          local.get 0
          local.get 5
          call $_ZN17dharitri_sc_codec14impl_for_types8impl_ref86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$T$GT$24dep_encode_or_handle_err17hdbba49f4986dff5dE
          local.get 4
          local.get 5
          call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h0ae8598c972d0e9fE
          br 2 (;@1;)
        end
        i32.const 6
        call $_ZN11dharitri_sc5types7managed7wrapped7builder22managed_buffer_builder36ManagedBufferBuilder$LT$M$C$Impl$GT$14new_from_slice17h7d5e49533a4cf43fE
        local.tee 5
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h22758c0eaf71226fE
        local.get 0
        local.get 5
        call $_ZN17dharitri_sc_codec14impl_for_types8impl_ref86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$T$GT$24dep_encode_or_handle_err17hdbba49f4986dff5dE
        local.get 4
        local.get 5
        call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h0ae8598c972d0e9fE
        br 1 (;@1;)
      end
      local.get 4
      i64.const 7
      call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h7b3ab429e8ba8004E
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17delegation_latest15node_activation20NodeActivationModule14perform_unbond17hef56e24858cb11a0E (;250;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 36
    i32.add
    call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$28get_auction_contract_address17hc29ca24046880535E
    local.get 1
    call $_ZN17delegation_latest13auction_proxy48AuctionProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$12unbond_nodes17he4966e8ee83f03c2E
    local.get 2
    i32.const 12
    i32.add
    local.get 0
    call $_ZN17delegation_latest15node_activation13CallbackProxy23auction_unbond_callback17he95920897c2cc5a7E
    local.get 2
    local.get 2
    i32.load offset=40
    i32.store offset=32
    local.get 2
    local.get 2
    i32.load offset=36
    i32.store offset=28
    local.get 2
    local.get 2
    i32.load offset=44
    i32.store offset=24
    local.get 2
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hb5a2c681ab858abbE
    unreachable
  )
  (func $_ZN17delegation_latest15node_activation20NodeActivationModule27auction_stake_callback_fail17h6c147c1e99ed4773E (;251;) (type 2) (param i32 i32)
    (local i32 i64)
    block ;; label = @1
      local.get 0
      i32.load
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 2
      i32.shl
      local.set 2
      local.get 0
      i32.const 4
      i32.add
      local.set 0
      loop ;; label = @2
        block ;; label = @3
          local.get 2
          br_if 0 (;@3;)
          i32.const 133595
          i32.const 13
          call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h398569d3a7140991E
          local.get 1
          call $_ZN11dharitri_sc8log_util18serialize_log_data17hc77cd657ce1160fdE
          call $managedWriteLog
          br 2 (;@1;)
        end
        local.get 0
        i32.load
        i64.const 0
        local.get 3
        call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$14set_node_state17h59eecf249503eff7E
        local.get 2
        i32.const -4
        i32.add
        local.set 2
        local.get 0
        i32.const 4
        i32.add
        local.set 0
        br 0 (;@2;)
      end
    end
  )
  (func $_ZN17delegation_latest15node_activation20NodeActivationModule28auction_unbond_callback_fail17h42b3420f00126921E (;252;) (type 2) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      local.get 0
      i32.load
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 2
      i32.shl
      local.set 3
      local.get 0
      i32.const 4
      i32.add
      local.set 0
      loop ;; label = @2
        block ;; label = @3
          local.get 3
          br_if 0 (;@3;)
          i32.const 133621
          i32.const 14
          call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h398569d3a7140991E
          local.get 1
          call $_ZN11dharitri_sc8log_util18serialize_log_data17hc77cd657ce1160fdE
          call $managedWriteLog
          br 2 (;@1;)
        end
        local.get 2
        local.get 0
        i32.load
        local.tee 4
        call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$14get_node_state17h33d2320c53e1cb72E
        block ;; label = @3
          local.get 2
          i64.load
          i64.const 6
          i64.eq
          br_if 0 (;@3;)
          i32.const 132122
          i32.const 23
          call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
          unreachable
        end
        local.get 4
        i64.const 5
        local.get 2
        i64.load offset=8
        call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$14set_node_state17h59eecf249503eff7E
        local.get 3
        i32.const -4
        i32.add
        local.set 3
        local.get 0
        i32.const 4
        i32.add
        local.set 0
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17delegation_latest15node_activation20NodeActivationModule29auction_unstake_callback_fail17hca69262b7327c370E (;253;) (type 2) (param i32 i32)
    (local i32 i64)
    block ;; label = @1
      local.get 0
      i32.load
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 2
      i32.shl
      local.set 2
      local.get 0
      i32.const 4
      i32.add
      local.set 0
      loop ;; label = @2
        block ;; label = @3
          local.get 2
          br_if 0 (;@3;)
          i32.const 133635
          i32.const 15
          call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h398569d3a7140991E
          local.get 1
          call $_ZN11dharitri_sc8log_util18serialize_log_data17hc77cd657ce1160fdE
          call $managedWriteLog
          br 2 (;@1;)
        end
        local.get 0
        i32.load
        i64.const 3
        local.get 3
        call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$14set_node_state17h59eecf249503eff7E
        local.get 2
        i32.const -4
        i32.add
        local.set 2
        local.get 0
        i32.const 4
        i32.add
        local.set 0
        br 0 (;@2;)
      end
    end
  )
  (func $_ZN17delegation_latest15node_activation20NodeActivationModule35prepare_node_for_unbond_if_possible17hd41f3275b4b791ceE (;254;) (type 3) (param i32) (result i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$14get_node_state17h33d2320c53e1cb72E
    block ;; label = @1
      local.get 1
      i64.load
      local.tee 2
      i64.const 5
      i64.ne
      br_if 0 (;@1;)
      local.get 0
      i64.const 6
      local.get 1
      i64.load offset=8
      call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$14set_node_state17h59eecf249503eff7E
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    i64.const 5
    i64.eq
  )
  (func $_ZN17delegation_latest16user_stake_state16EndpointWrappers17callback_selector17he74522ac3601d5f4E (;255;) (type 3) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 12
    i32.add
    local.get 0
    call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h24d7ef7390f86a3aE
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load offset=44
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        call $_ZN17user_fund_storage16fund_view_module16EndpointWrappers17callback_selector17hc38ed2fce32552c7E
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        call $_ZN17user_fund_storage16fund_view_module16EndpointWrappers17callback_selector17hc38ed2fce32552c7E
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        call $_ZN17delegation_latest13rewards_state16EndpointWrappers17callback_selector17h4d17322f291a0227E
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 0
        br 1 (;@1;)
      end
      i32.const 0
      local.set 0
    end
    local.get 1
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN17delegation_latest16user_stake_state20UserStakeStateModule26validate_owner_stake_share17h98eb67813bed2f0cE (;256;) (type 14)
    block ;; label = @1
      i32.const 1
      i32.const 4
      call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
      i32.const 10000
      call $_ZN117_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..convert..From$LT$usize$GT$$GT$4from17h81131e176f07200fE
      call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Mul$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3mul17hb2c2c58834ec661aE
      i32.const 0
      i32.const 4
      call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
      call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$25get_owner_min_stake_share17h8b638c97a099e01dE
      call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Mul$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3mul17hb2c2c58834ec661aE
      call $_ZN4core3cmp10PartialOrd2ge17h7eafa998844dc333E
      br_if 0 (;@1;)
      i32.const 132451
      i32.const 47
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
      unreachable
    end
  )
  (func $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$25get_owner_min_stake_share17h8b638c97a099e01dE (;257;) (type 4) (result i32)
    i32.const 133762
    i32.const 21
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    call $_ZN11dharitri_sc7storage11storage_get11storage_get17hd87949a3f9650e43E
  )
  (func $_ZN4core3cmp10PartialOrd2ge17h7eafa998844dc333E (;258;) (type 5) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp109_$LT$impl$u20$core..cmp..Ord$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3cmp17h40e00373de08d106E
    i32.const 255
    i32.and
    i32.const 2
    i32.lt_u
  )
  (func $_ZN17delegation_latest16user_stake_state20UserStakeStateModule31use_waiting_to_replace_unstaked17h69c038e8bed00281E (;259;) (type 14)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 80112
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    i32.const 1
    call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
    local.set 1
    local.get 0
    i32.const 0
    i32.const 5
    call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
    local.tee 2
    i32.store offset=8
    block ;; label = @1
      block ;; label = @2
        call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$17is_bootstrap_mode17h899d217996a24467E
        br_if 0 (;@2;)
        local.get 2
        local.get 1
        local.get 1
        local.get 2
        call $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$6bi_cmp17hbed56c773c3bb346E
        i32.const 255
        i32.and
        i32.const 1
        i32.eq
        select
        local.tee 3
        call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$i32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h41b32bc4b1a3cdaeE
        br_if 1 (;@1;)
        local.get 0
        local.get 3
        call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd0a835fd57d408bfE
        i32.store offset=12
        local.get 0
        i32.const 0
        i32.store offset=40020
        local.get 0
        i32.const 40020
        i32.add
        i32.const 4
        i32.add
        local.set 4
        i32.const 5
        i32.const 0
        call $_ZN17user_fund_storage11fund_module10FundModule16first_id_of_type17h6b122609f0f13829E
        local.set 2
        i32.const 1
        local.set 1
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  block ;; label = @8
                    block ;; label = @9
                      loop ;; label = @10
                        block ;; label = @11
                          block ;; label = @12
                            local.get 2
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 0
                            i32.load offset=12
                            call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$i32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h41b32bc4b1a3cdaeE
                            i32.eqz
                            br_if 1 (;@11;)
                          end
                          local.get 0
                          i32.const 40020
                          i32.add
                          call $_ZN17user_fund_storage5types20affected_user_id_vec25affected_users_sort_dedup17h66dfee68489d736aE
                          local.get 0
                          i32.load offset=12
                          call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$i32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h41b32bc4b1a3cdaeE
                          br_if 2 (;@9;)
                          i32.const 132556
                          i32.const 43
                          call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
                          unreachable
                        end
                        local.get 0
                        i32.const 80072
                        i32.add
                        local.get 2
                        call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
                        local.tee 5
                        call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he9b9f9d3e0b60c89E
                        local.get 1
                        i32.const 10001
                        i32.eq
                        br_if 2 (;@8;)
                        local.get 4
                        local.get 0
                        i32.load offset=80088
                        i32.store
                        local.get 0
                        local.get 1
                        i32.store offset=40020
                        local.get 0
                        i32.load offset=80096
                        local.set 2
                        block ;; label = @11
                          local.get 0
                          i64.load offset=80072
                          i64.const 5
                          i64.ne
                          br_if 0 (;@11;)
                          local.get 0
                          i32.const 12
                          i32.add
                          i64.const 6
                          local.get 0
                          i64.load offset=80080
                          local.get 0
                          i32.const 80072
                          i32.add
                          call $_ZN17user_fund_storage11fund_module10FundModule29split_convert_individual_fund17h9edc34c65a90fba5E
                        end
                        local.get 0
                        i32.const 16
                        i32.add
                        local.get 0
                        i32.const 80072
                        i32.add
                        i32.const 40
                        call $memcpy
                        drop
                        local.get 5
                        local.get 0
                        i32.const 16
                        i32.add
                        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4929da203671d234E
                        local.get 4
                        i32.const 4
                        i32.add
                        local.set 4
                        local.get 1
                        i32.const 1
                        i32.add
                        local.set 1
                        br 0 (;@10;)
                      end
                    end
                    local.get 3
                    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd0a835fd57d408bfE
                    local.set 2
                    local.get 0
                    i32.const 0
                    i32.store offset=40020
                    local.get 0
                    i32.const 40020
                    i32.add
                    i32.const 4
                    i32.add
                    local.set 5
                    i32.const 1
                    i32.const 0
                    call $_ZN17user_fund_storage11fund_module10FundModule16first_id_of_type17h6b122609f0f13829E
                    local.set 4
                    i32.const 1
                    local.set 1
                    block ;; label = @9
                      loop ;; label = @10
                        local.get 4
                        i32.eqz
                        br_if 1 (;@9;)
                        local.get 2
                        call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$i32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h41b32bc4b1a3cdaeE
                        br_if 1 (;@9;)
                        local.get 0
                        i32.const 80072
                        i32.add
                        local.get 4
                        call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
                        local.tee 6
                        call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he9b9f9d3e0b60c89E
                        local.get 1
                        i32.const 10001
                        i32.eq
                        br_if 3 (;@7;)
                        local.get 5
                        local.get 0
                        i32.load offset=80088
                        i32.store
                        local.get 0
                        local.get 1
                        i32.store offset=40020
                        local.get 0
                        i32.load offset=80096
                        local.set 4
                        block ;; label = @11
                          block ;; label = @12
                            local.get 0
                            i32.load offset=80092
                            local.tee 7
                            local.get 2
                            call $_ZN4core3cmp10PartialOrd2ge17h7eafa998844dc333E
                            br_if 0 (;@12;)
                            local.get 2
                            local.get 7
                            call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..SubAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10sub_assign17h7a3eb15dcb00d3d7E
                            br 1 (;@11;)
                          end
                          call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E
                          local.set 2
                        end
                        local.get 0
                        i32.const 16
                        i32.add
                        local.get 0
                        i32.const 80072
                        i32.add
                        i32.const 40
                        call $memcpy
                        drop
                        local.get 6
                        local.get 0
                        i32.const 16
                        i32.add
                        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4929da203671d234E
                        local.get 5
                        i32.const 4
                        i32.add
                        local.set 5
                        local.get 1
                        i32.const 1
                        i32.add
                        local.set 1
                        br 0 (;@10;)
                      end
                    end
                    local.get 0
                    i32.const 40020
                    i32.add
                    call $_ZN17user_fund_storage5types20affected_user_id_vec25affected_users_sort_dedup17h66dfee68489d736aE
                    local.get 0
                    i32.const 16
                    i32.add
                    local.get 0
                    i32.const 40020
                    i32.add
                    i32.const 40004
                    call $memcpy
                    drop
                    local.get 2
                    call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$i32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h41b32bc4b1a3cdaeE
                    i32.eqz
                    br_if 2 (;@6;)
                    i32.const 1
                    call $_ZN17delegation_latest13rewards_state17RewardStateModule23compute_one_user_reward17haf7fbf9321ccb399E
                    local.get 0
                    i32.const 40020
                    i32.add
                    i32.const 4
                    i32.add
                    local.get 0
                    i32.const 16
                    i32.add
                    i32.const 40004
                    call $memcpy
                    drop
                    local.get 0
                    i32.const 40028
                    i32.add
                    local.set 2
                    i32.const 0
                    local.set 1
                    local.get 0
                    i32.load offset=40024
                    local.set 5
                    block ;; label = @9
                      loop ;; label = @10
                        block ;; label = @11
                          local.get 5
                          local.get 1
                          i32.ne
                          br_if 0 (;@11;)
                          local.get 0
                          local.get 3
                          call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd0a835fd57d408bfE
                          i32.store offset=80028
                          local.get 0
                          i32.const 0
                          i32.store offset=40020
                          local.get 0
                          i32.const 40020
                          i32.add
                          i32.const 4
                          i32.add
                          local.set 4
                          i32.const 1
                          i32.const 0
                          call $_ZN17user_fund_storage11fund_module10FundModule16first_id_of_type17h6b122609f0f13829E
                          local.set 2
                          i32.const 1
                          local.set 1
                          loop ;; label = @12
                            local.get 2
                            i32.eqz
                            br_if 3 (;@9;)
                            local.get 0
                            i32.load offset=80028
                            call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$i32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h41b32bc4b1a3cdaeE
                            br_if 3 (;@9;)
                            local.get 0
                            i32.const 80032
                            i32.add
                            local.get 2
                            call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
                            local.tee 5
                            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he9b9f9d3e0b60c89E
                            local.get 1
                            i32.const 10001
                            i32.eq
                            br_if 7 (;@5;)
                            local.get 4
                            local.get 0
                            i32.load offset=80048
                            i32.store
                            local.get 0
                            local.get 1
                            i32.store offset=40020
                            local.get 0
                            i32.load offset=80056
                            local.set 2
                            local.get 0
                            i32.const 80028
                            i32.add
                            i64.const 4
                            local.get 8
                            local.get 0
                            i32.const 80032
                            i32.add
                            call $_ZN17user_fund_storage11fund_module10FundModule29split_convert_individual_fund17h9edc34c65a90fba5E
                            local.get 0
                            i32.const 80072
                            i32.add
                            local.get 0
                            i32.const 80032
                            i32.add
                            i32.const 40
                            call $memcpy
                            drop
                            local.get 5
                            local.get 0
                            i32.const 80072
                            i32.add
                            call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4929da203671d234E
                            local.get 4
                            i32.const 4
                            i32.add
                            local.set 4
                            local.get 1
                            i32.const 1
                            i32.add
                            local.set 1
                            br 0 (;@12;)
                          end
                        end
                        local.get 0
                        local.get 1
                        i32.const 1
                        i32.add
                        local.tee 1
                        i32.store offset=40020
                        local.get 2
                        i32.load
                        local.tee 4
                        i32.eqz
                        br_if 6 (;@4;)
                        local.get 4
                        call $_ZN17delegation_latest13rewards_state17RewardStateModule23compute_one_user_reward17haf7fbf9321ccb399E
                        local.get 2
                        i32.const 4
                        i32.add
                        local.set 2
                        br 0 (;@10;)
                      end
                    end
                    local.get 0
                    i32.const 40020
                    i32.add
                    call $_ZN17user_fund_storage5types20affected_user_id_vec25affected_users_sort_dedup17h66dfee68489d736aE
                    local.get 0
                    i32.load offset=80028
                    call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$i32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h41b32bc4b1a3cdaeE
                    i32.eqz
                    br_if 5 (;@3;)
                    br 7 (;@1;)
                  end
                  i32.const 133423
                  i32.const 31
                  call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
                  unreachable
                end
                i32.const 133423
                i32.const 31
                call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
                unreachable
              end
              i32.const 132632
              i32.const 32
              call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
              unreachable
            end
            i32.const 133423
            i32.const 31
            call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
            unreachable
          end
          i32.const 132664
          i32.const 11
          call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
          unreachable
        end
        i32.const 132632
        i32.const 32
        call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
        unreachable
      end
      local.get 0
      i32.const 0
      i32.store offset=40020
      local.get 0
      i32.const 40020
      i32.add
      i32.const 4
      i32.add
      local.set 4
      i32.const 5
      i32.const 0
      call $_ZN17user_fund_storage11fund_module10FundModule16first_id_of_type17h6b122609f0f13829E
      local.set 2
      i32.const 1
      local.set 1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              loop ;; label = @6
                local.get 2
                i32.eqz
                br_if 1 (;@5;)
                local.get 0
                i32.load offset=8
                call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$i32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h41b32bc4b1a3cdaeE
                br_if 1 (;@5;)
                local.get 0
                i32.const 80072
                i32.add
                local.get 2
                call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
                local.tee 5
                call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he9b9f9d3e0b60c89E
                local.get 1
                i32.const 10001
                i32.eq
                br_if 2 (;@4;)
                local.get 4
                local.get 0
                i32.load offset=80088
                i32.store
                local.get 0
                local.get 1
                i32.store offset=40020
                local.get 0
                i32.load offset=80096
                local.set 2
                block ;; label = @7
                  local.get 0
                  i64.load offset=80072
                  i64.const 5
                  i64.ne
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 8
                  i32.add
                  i64.const 6
                  local.get 0
                  i64.load offset=80080
                  local.get 0
                  i32.const 80072
                  i32.add
                  call $_ZN17user_fund_storage11fund_module10FundModule29split_convert_individual_fund17h9edc34c65a90fba5E
                end
                local.get 0
                i32.const 16
                i32.add
                local.get 0
                i32.const 80072
                i32.add
                i32.const 40
                call $memcpy
                drop
                local.get 5
                local.get 0
                i32.const 16
                i32.add
                call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4929da203671d234E
                local.get 4
                i32.const 4
                i32.add
                local.set 4
                local.get 1
                i32.const 1
                i32.add
                local.set 1
                br 0 (;@6;)
              end
            end
            local.get 0
            i32.const 40020
            i32.add
            call $_ZN17user_fund_storage5types20affected_user_id_vec25affected_users_sort_dedup17h66dfee68489d736aE
            local.get 0
            i32.load offset=8
            call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$i32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h41b32bc4b1a3cdaeE
            i32.eqz
            br_if 1 (;@3;)
            i32.const 0
            i32.const 4
            call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
            local.set 1
            local.get 0
            call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$24get_total_delegation_cap17hae62de003d66c4a4E
            local.get 1
            call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators120_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h80a5e700536f6f31E
            i32.store offset=80032
            local.get 0
            i32.const 0
            i32.store offset=40020
            local.get 0
            i32.const 40020
            i32.add
            i32.const 4
            i32.add
            local.set 4
            i32.const 1
            i32.const 0
            call $_ZN17user_fund_storage11fund_module10FundModule16first_id_of_type17h6b122609f0f13829E
            local.set 2
            i32.const 1
            local.set 1
            block ;; label = @5
              loop ;; label = @6
                local.get 2
                i32.eqz
                br_if 1 (;@5;)
                local.get 0
                i32.load offset=80032
                call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$i32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h41b32bc4b1a3cdaeE
                br_if 1 (;@5;)
                local.get 0
                i32.const 80072
                i32.add
                local.get 2
                call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
                local.tee 5
                call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he9b9f9d3e0b60c89E
                local.get 1
                i32.const 10001
                i32.eq
                br_if 4 (;@2;)
                local.get 4
                local.get 0
                i32.load offset=80088
                i32.store
                local.get 0
                local.get 1
                i32.store offset=40020
                local.get 0
                i32.load offset=80096
                local.set 2
                local.get 0
                i32.const 80032
                i32.add
                i64.const 4
                local.get 8
                local.get 0
                i32.const 80072
                i32.add
                call $_ZN17user_fund_storage11fund_module10FundModule29split_convert_individual_fund17h9edc34c65a90fba5E
                local.get 0
                i32.const 16
                i32.add
                local.get 0
                i32.const 80072
                i32.add
                i32.const 40
                call $memcpy
                drop
                local.get 5
                local.get 0
                i32.const 16
                i32.add
                call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4929da203671d234E
                local.get 4
                i32.const 4
                i32.add
                local.set 4
                local.get 1
                i32.const 1
                i32.add
                local.set 1
                br 0 (;@6;)
              end
            end
            local.get 0
            i32.const 40020
            i32.add
            call $_ZN17user_fund_storage5types20affected_user_id_vec25affected_users_sort_dedup17h66dfee68489d736aE
            local.get 0
            i32.load offset=80032
            call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$i32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h41b32bc4b1a3cdaeE
            i32.eqz
            br_if 3 (;@1;)
            i32.const 0
            call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$18set_bootstrap_mode17h9fd32ed552345cd8E
            br 3 (;@1;)
          end
          i32.const 133423
          i32.const 31
          call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
          unreachable
        end
        i32.const 132556
        i32.const 43
        call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
        unreachable
      end
      i32.const 133423
      i32.const 31
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
      unreachable
    end
    local.get 0
    i32.const 80112
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$17is_bootstrap_mode17h899d217996a24467E (;260;) (type 4) (result i32)
    i32.const 133748
    i32.const 14
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    call $_ZN11dharitri_sc7storage11storage_get11storage_get17h77ec744d08073be6E
  )
  (func $_ZN17user_fund_storage11fund_module10FundModule16first_id_of_type17h6b122609f0f13829E (;261;) (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 4
    i32.add
    local.get 0
    call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$21get_fund_list_by_type17h46b24c0fb000ba69E
    local.get 2
    i32.const 4
    i32.add
    i32.const 8
    i32.const 4
    local.get 1
    select
    i32.add
    i32.load
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN17user_fund_storage5types20affected_user_id_vec25affected_users_sort_dedup17h66dfee68489d736aE (;262;) (type 6) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block ;; label = @1
      local.get 0
      i32.load
      local.tee 2
      i32.const 1
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.add
      local.set 3
      block ;; label = @2
        block ;; label = @3
          local.get 2
          i32.const 21
          i32.lt_u
          br_if 0 (;@3;)
          local.get 3
          local.get 2
          local.get 1
          i32.const 15
          i32.add
          call $_ZN4core5slice4sort8unstable7ipnsort17h202ecddc2bf2ef39E
          br 1 (;@2;)
        end
        local.get 3
        local.get 2
        i32.const 1
        call $_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h596f6b9326386de1E
      end
      block ;; label = @2
        local.get 0
        i32.load
        local.tee 4
        i32.const 2
        i32.ge_u
        br_if 0 (;@2;)
        local.get 4
        local.set 2
        br 1 (;@1;)
      end
      local.get 0
      i32.const 8
      i32.add
      local.set 5
      i32.const 1
      local.set 2
      i32.const 1
      local.set 6
      loop ;; label = @2
        block ;; label = @3
          local.get 4
          local.get 6
          i32.ne
          br_if 0 (;@3;)
          local.get 2
          local.get 4
          i32.le_u
          br_if 2 (;@1;)
          call $_ZN4core9panicking9panic_fmt17h6f4dae69dcc1a6d2E
          unreachable
        end
        block ;; label = @3
          local.get 5
          i32.load
          local.tee 7
          local.get 3
          local.get 2
          i32.const 2
          i32.shl
          i32.add
          local.tee 8
          i32.const -4
          i32.add
          i32.load
          i32.eq
          br_if 0 (;@3;)
          block ;; label = @4
            local.get 6
            local.get 2
            i32.eq
            br_if 0 (;@4;)
            local.get 5
            local.get 8
            i32.load
            i32.store
            local.get 8
            local.get 7
            i32.store
          end
          local.get 2
          i32.const 1
          i32.add
          local.set 2
        end
        local.get 5
        i32.const 4
        i32.add
        local.set 5
        local.get 6
        i32.const 1
        i32.add
        local.set 6
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 2
    i32.store
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE (;263;) (type 3) (param i32) (result i32)
    (local i32)
    local.get 0
    i32.const 133697
    i32.const 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    local.tee 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h244dd97c16de4444E
    local.get 1
  )
  (func $_ZN17user_fund_storage11fund_module10FundModule29split_convert_individual_fund17h9edc34c65a90fba5E (;264;) (type 22) (param i32 i64 i64 i32)
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 3
        call $_ZN17user_fund_storage11fund_module10FundModule21decrease_fund_balance17h589a8272d8f86c85E
        local.set 0
        br 1 (;@1;)
      end
      local.get 3
      call $_ZN17user_fund_storage11fund_module10FundModule11delete_fund17h5844e8fe646eb298E
      local.set 0
    end
    local.get 3
    i32.load offset=16
    local.get 1
    local.get 2
    local.get 0
    call $_ZN17user_fund_storage11fund_module10FundModule21increase_fund_balance17h03f71147decccc6fE
  )
  (func $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$18set_bootstrap_mode17h9fd32ed552345cd8E (;265;) (type 6) (param i32)
    i32.const 133748
    i32.const 14
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_set11storage_set17h342378c99542af09E
  )
  (func $_ZN17delegation_latest16user_stake_state20UserStakeStateModule33validate_delegation_cap_invariant17ha3c4f97f371fb86eE (;266;) (type 14)
    (local i32 i32 i32 i32)
    i32.const 0
    i32.const 4
    call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
    local.set 0
    i32.const 0
    i32.const 5
    call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
    local.set 1
    call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$24get_total_delegation_cap17hae62de003d66c4a4E
    local.set 2
    call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$17is_bootstrap_mode17h899d217996a24467E
    local.set 3
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators120_$LT$impl$u20$core..ops..arith..Add$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3add17ha5329ea46e263d45E
    local.set 0
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 3
          br_if 0 (;@3;)
          local.get 0
          local.get 2
          call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp115_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17hf54dbd14825fa8f2E
          br_if 1 (;@2;)
          i32.const 132599
          i32.const 33
          call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
          unreachable
        end
        local.get 0
        local.get 2
        call $_ZN4core3cmp10PartialOrd2lt17hc42555b6cd67fb1eE
        i32.eqz
        br_if 1 (;@1;)
      end
      return
    end
    i32.const 132599
    i32.const 33
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
    unreachable
  )
  (func $_ZN91_$LT$C$u20$as$u20$delegation_latest..reset_checkpoint_state..ResetCheckpointStateModule$GT$20global_op_checkpoint17hf4b577f07d9e93f7E (;267;) (type 4) (result i32)
    i32.const 133894
    i32.const 20
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
  )
  (func $_ZN17delegation_latest26reset_checkpoint_endpoints22ResetCheckpointsModule19compute_all_rewards17h8143e5d9e7e7654dE (;268;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    call $_ZN17delegation_latest13rewards_state17RewardStateModule27get_total_cumulated_rewards17hb0627139b9970b1aE
    local.set 3
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load offset=8
        local.get 3
        call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp115_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17hf54dbd14825fa8f2E
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=4
        local.set 4
        local.get 1
        i32.load
        local.set 5
        br 1 (;@1;)
      end
      i32.const 0
      local.set 5
      local.get 1
      i32.const 0
      i32.store
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E
      local.set 4
      local.get 1
      local.get 3
      i32.store offset=8
      local.get 1
      local.get 4
      i32.store offset=4
    end
    call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$13get_num_users17h796f9a08dadd0dcdE
    local.tee 3
    local.get 5
    local.get 3
    local.get 5
    i32.gt_u
    select
    local.set 6
    block ;; label = @1
      loop ;; label = @2
        block ;; label = @3
          local.get 6
          local.get 5
          i32.ne
          br_if 0 (;@3;)
          call $_ZN17delegation_latest13rewards_state17RewardStateModule27get_total_cumulated_rewards17hb0627139b9970b1aE
          local.get 1
          i32.load offset=4
          call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators120_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h80a5e700536f6f31E
          local.tee 3
          local.get 3
          call $_ZN73_$LT$C$u20$as$u20$delegation_latest..rewards_state..RewardStateModule$GT$16get_sent_rewards17hbe99356cb6528a2fE
          call $_ZN11dharitri_sc3api13managed_types11big_int_api13BigIntApiImpl15bi_sub_unsigned17h62d2d2f3f9150870E
          i32.const 0
          local.set 5
          local.get 3
          call $_ZN4core3cmp10PartialOrd2gt17hd9d509c4ac11a852E
          i32.eqz
          br_if 2 (;@1;)
          local.get 2
          i32.const 1
          call $_ZN73_$LT$C$u20$as$u20$delegation_latest..rewards_state..RewardStateModule$GT$22get_user_rew_unclaimed17h8b55d6e7e95ce6ceE
          local.tee 1
          i32.store offset=8
          local.get 1
          local.get 3
          call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..AddAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17h07c6e548e8930de6E
          i32.const 1
          local.get 2
          i32.const 8
          i32.add
          call $_ZN73_$LT$C$u20$as$u20$delegation_latest..rewards_state..RewardStateModule$GT$22set_user_rew_unclaimed17hb8b02d303f566bdfE
          br 2 (;@1;)
        end
        block ;; label = @3
          call $getGasLeft
          i64.const 100000000
          i64.lt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 5
          i32.const 1
          i32.add
          local.tee 5
          call $_ZN17delegation_latest13rewards_state17RewardStateModule25load_updated_user_rewards17hcf438bf56fc24b68E
          local.get 2
          local.get 2
          i32.load offset=4
          local.tee 3
          i32.store offset=12
          local.get 2
          local.get 2
          i32.load
          i32.store offset=8
          local.get 5
          local.get 2
          i32.const 8
          i32.add
          call $_ZN17delegation_latest13rewards_state17RewardStateModule22store_user_reward_data17h5940c400bf6fbff6E
          local.get 4
          local.get 3
          call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators122_$LT$impl$u20$core..ops..arith..AddAssign$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17hb34bbfa79562e0bcE
          local.get 1
          local.get 5
          i32.store
          br 1 (;@2;)
        end
      end
      local.get 0
      local.get 1
      i64.load align=4
      i64.store offset=4 align=4
      local.get 0
      i32.const 12
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i32.load
      i32.store
      i32.const 1
      local.set 5
    end
    local.get 0
    local.get 5
    i32.store
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$13get_num_users17h796f9a08dadd0dcdE (;269;) (type 4) (result i32)
    i32.const 133844
    i32.const 9
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    call $_ZN11dharitri_sc7storage11storage_get11storage_get17hb502f2b686e193c1E
  )
  (func $_ZN17delegation_latest26reset_checkpoint_endpoints22ResetCheckpointsModule25continue_global_operation17hc041c2e33b9638aeE (;270;) (type 3) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 40144
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i32.const 20
    i32.add
    local.set 2
    local.get 0
    i32.const 8
    i32.add
    local.set 3
    local.get 1
    i32.const 60
    i32.add
    i32.const 4
    i32.add
    local.set 4
    local.get 0
    i32.load
    local.set 5
    local.get 1
    i32.const 44
    i32.add
    local.set 6
    local.get 1
    i32.const 40
    i32.add
    local.set 7
    local.get 1
    i32.const 16
    i32.add
    i32.const 20
    i32.add
    local.set 8
    local.get 1
    i32.const 16
    i32.add
    i32.const 4
    i32.add
    local.set 9
    i32.const 0
    local.set 10
    loop (result i32) ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 10
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 5
          i32.const 4
          i32.ne
          br_if 1 (;@2;)
        end
        call $_ZN91_$LT$C$u20$as$u20$delegation_latest..reset_checkpoint_state..ResetCheckpointStateModule$GT$20global_op_checkpoint17hf4b577f07d9e93f7E
        local.set 2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                local.get 5
                i32.const -4
                i32.add
                local.tee 5
                i32.const 1
                local.get 5
                i32.const 3
                i32.lt_u
                select
                br_table 0 (;@6;) 1 (;@5;) 2 (;@4;) 0 (;@6;)
              end
              local.get 2
              i64.const 0
              call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h7b3ab429e8ba8004E
              br 2 (;@3;)
            end
            i32.const 1
            call $_ZN11dharitri_sc5types7managed7wrapped7builder22managed_buffer_builder36ManagedBufferBuilder$LT$M$C$Impl$GT$14new_from_slice17h7d5e49533a4cf43fE
            local.tee 5
            call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h22758c0eaf71226fE
            local.get 0
            local.get 5
            call $_ZN17dharitri_sc_codec14impl_for_types8impl_ref86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$T$GT$24dep_encode_or_handle_err17he8d956d18883561dE
            local.get 2
            local.get 5
            call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h0ae8598c972d0e9fE
            br 1 (;@3;)
          end
          i32.const 2
          call $_ZN11dharitri_sc5types7managed7wrapped7builder22managed_buffer_builder36ManagedBufferBuilder$LT$M$C$Impl$GT$14new_from_slice17h7d5e49533a4cf43fE
          local.tee 5
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h22758c0eaf71226fE
          local.get 0
          i32.load offset=4
          local.get 5
          call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hb5a146f546b739e9E
          local.get 3
          local.get 5
          call $_ZN17dharitri_sc_codec14impl_for_types8impl_ref86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$T$GT$24dep_encode_or_handle_err17hac0d1a916271f4e5E
          local.get 2
          local.get 5
          call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h0ae8598c972d0e9fE
        end
        local.get 1
        i32.const 40144
        i32.add
        global.set $__stack_pointer
        local.get 10
        i32.const 1
        i32.and
        return
      end
      local.get 0
      i32.load offset=16
      local.set 11
      local.get 0
      i64.load offset=8 align=4
      local.set 12
      local.get 0
      i32.load offset=4
      local.set 13
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
                            local.get 5
                            i32.const -4
                            i32.add
                            local.tee 10
                            i32.const 1
                            local.get 10
                            i32.const 3
                            i32.lt_u
                            select
                            br_table 0 (;@12;) 1 (;@11;) 2 (;@10;) 0 (;@12;)
                          end
                          local.get 1
                          i32.const 40064
                          i32.add
                          i32.const 8
                          i32.add
                          local.get 2
                          i32.const 8
                          i32.add
                          i32.load
                          i32.store
                          local.get 1
                          local.get 2
                          i64.load align=4
                          i64.store offset=40064
                          i32.const 0
                          local.set 10
                          br 8 (;@3;)
                        end
                        local.get 8
                        local.get 2
                        i64.load align=4
                        i64.store align=4
                        local.get 8
                        i32.const 8
                        i32.add
                        local.tee 14
                        local.get 2
                        i32.const 8
                        i32.add
                        i32.load
                        i32.store
                        local.get 1
                        local.get 11
                        i32.store offset=32
                        local.get 1
                        local.get 12
                        i64.store offset=24 align=4
                        local.get 1
                        local.get 13
                        i32.store offset=20
                        local.get 1
                        local.get 5
                        i32.store offset=16
                        block ;; label = @11
                          block ;; label = @12
                            block ;; label = @13
                              block ;; label = @14
                                block ;; label = @15
                                  block ;; label = @16
                                    block ;; label = @17
                                      local.get 5
                                      br_table 3 (;@14;) 0 (;@17;) 1 (;@16;) 2 (;@15;) 3 (;@14;)
                                    end
                                    local.get 1
                                    i32.const 0
                                    i32.store offset=60
                                    i32.const 1
                                    i32.const 0
                                    call $_ZN17user_fund_storage11fund_module10FundModule16first_id_of_type17h6b122609f0f13829E
                                    local.set 5
                                    loop ;; label = @17
                                      local.get 5
                                      i32.eqz
                                      br_if 4 (;@13;)
                                      call $getGasLeft
                                      i64.const 100000000
                                      i64.lt_u
                                      br_if 4 (;@13;)
                                      local.get 1
                                      i32.load offset=36
                                      call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$i32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h41b32bc4b1a3cdaeE
                                      br_if 4 (;@13;)
                                      local.get 1
                                      i32.const 40064
                                      i32.add
                                      local.get 5
                                      call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
                                      local.tee 13
                                      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he9b9f9d3e0b60c89E
                                      local.get 1
                                      i32.load offset=60
                                      local.tee 5
                                      i32.const 10000
                                      i32.ge_u
                                      br_if 9 (;@8;)
                                      local.get 4
                                      local.get 5
                                      i32.const 2
                                      i32.shl
                                      i32.add
                                      local.get 1
                                      i32.load offset=40080
                                      i32.store
                                      local.get 1
                                      local.get 5
                                      i32.const 1
                                      i32.add
                                      i32.store offset=60
                                      local.get 1
                                      i32.load offset=40088
                                      local.set 5
                                      local.get 8
                                      i64.const 4
                                      local.get 12
                                      local.get 1
                                      i32.const 40064
                                      i32.add
                                      call $_ZN17user_fund_storage11fund_module10FundModule29split_convert_individual_fund17h9edc34c65a90fba5E
                                      local.get 1
                                      i32.const 40104
                                      i32.add
                                      local.get 1
                                      i32.const 40064
                                      i32.add
                                      i32.const 40
                                      call $memcpy
                                      drop
                                      local.get 13
                                      local.get 1
                                      i32.const 40104
                                      i32.add
                                      call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4929da203671d234E
                                      br 0 (;@17;)
                                    end
                                  end
                                  local.get 1
                                  i32.const 0
                                  i32.store offset=60
                                  i32.const 5
                                  i32.const 0
                                  call $_ZN17user_fund_storage11fund_module10FundModule16first_id_of_type17h6b122609f0f13829E
                                  local.set 5
                                  loop ;; label = @16
                                    local.get 5
                                    i32.eqz
                                    br_if 4 (;@12;)
                                    call $getGasLeft
                                    i64.const 100000000
                                    i64.lt_u
                                    br_if 4 (;@12;)
                                    local.get 1
                                    i32.load offset=44
                                    call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$i32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h41b32bc4b1a3cdaeE
                                    br_if 4 (;@12;)
                                    local.get 1
                                    i32.const 40064
                                    i32.add
                                    local.get 5
                                    call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
                                    local.tee 13
                                    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he9b9f9d3e0b60c89E
                                    local.get 1
                                    i32.load offset=60
                                    local.tee 5
                                    i32.const 10000
                                    i32.ge_u
                                    br_if 9 (;@7;)
                                    local.get 4
                                    local.get 5
                                    i32.const 2
                                    i32.shl
                                    i32.add
                                    local.get 1
                                    i32.load offset=40080
                                    i32.store
                                    local.get 1
                                    local.get 5
                                    i32.const 1
                                    i32.add
                                    i32.store offset=60
                                    local.get 1
                                    i32.load offset=40088
                                    local.set 5
                                    block ;; label = @17
                                      local.get 1
                                      i64.load offset=40064
                                      i64.const 5
                                      i64.ne
                                      br_if 0 (;@17;)
                                      local.get 6
                                      i64.const 6
                                      local.get 1
                                      i64.load offset=40072
                                      local.get 1
                                      i32.const 40064
                                      i32.add
                                      call $_ZN17user_fund_storage11fund_module10FundModule29split_convert_individual_fund17h9edc34c65a90fba5E
                                    end
                                    local.get 1
                                    i32.const 40104
                                    i32.add
                                    local.get 1
                                    i32.const 40064
                                    i32.add
                                    i32.const 40
                                    call $memcpy
                                    drop
                                    local.get 13
                                    local.get 1
                                    i32.const 40104
                                    i32.add
                                    call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4929da203671d234E
                                    br 0 (;@16;)
                                  end
                                end
                                call $getBlockNonce
                                local.set 12
                                local.get 1
                                i32.const 0
                                i32.store offset=60
                                i32.const 4
                                i32.const 1
                                call $_ZN17user_fund_storage11fund_module10FundModule16first_id_of_type17h6b122609f0f13829E
                                local.set 5
                                loop ;; label = @15
                                  local.get 5
                                  i32.eqz
                                  br_if 4 (;@11;)
                                  call $getGasLeft
                                  i64.const 100000000
                                  i64.lt_u
                                  br_if 4 (;@11;)
                                  local.get 1
                                  i32.load offset=40
                                  call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$i32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h41b32bc4b1a3cdaeE
                                  br_if 4 (;@11;)
                                  local.get 1
                                  i32.const 40064
                                  i32.add
                                  local.get 5
                                  call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
                                  local.tee 13
                                  call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he9b9f9d3e0b60c89E
                                  local.get 1
                                  i32.load offset=60
                                  local.tee 5
                                  i32.const 10000
                                  i32.ge_u
                                  br_if 9 (;@6;)
                                  local.get 4
                                  local.get 5
                                  i32.const 2
                                  i32.shl
                                  i32.add
                                  local.get 1
                                  i32.load offset=40080
                                  i32.store
                                  local.get 1
                                  local.get 5
                                  i32.const 1
                                  i32.add
                                  i32.store offset=60
                                  local.get 1
                                  i32.load offset=40092
                                  local.set 5
                                  local.get 7
                                  i64.const 6
                                  local.get 12
                                  local.get 1
                                  i32.const 40064
                                  i32.add
                                  call $_ZN17user_fund_storage11fund_module10FundModule29split_convert_individual_fund17h9edc34c65a90fba5E
                                  local.get 1
                                  i32.const 40104
                                  i32.add
                                  local.get 1
                                  i32.const 40064
                                  i32.add
                                  i32.const 40
                                  call $memcpy
                                  drop
                                  local.get 13
                                  local.get 1
                                  i32.const 40104
                                  i32.add
                                  call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4929da203671d234E
                                  br 0 (;@15;)
                                end
                              end
                              local.get 1
                              local.get 12
                              i64.store offset=52 align=4
                              local.get 1
                              local.get 13
                              i32.store offset=48
                              local.get 1
                              i32.const 60
                              i32.add
                              local.get 1
                              i32.const 48
                              i32.add
                              call $_ZN17delegation_latest26reset_checkpoint_endpoints22ResetCheckpointsModule19compute_all_rewards17h8143e5d9e7e7654dE
                              i32.const 1
                              local.set 5
                              block ;; label = @14
                                local.get 1
                                i32.load offset=60
                                local.tee 10
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 9
                                local.get 4
                                i64.load align=4
                                i64.store align=4
                                local.get 9
                                i32.const 8
                                i32.add
                                local.get 4
                                i32.const 8
                                i32.add
                                i32.load
                                i32.store
                                i32.const 0
                                local.set 5
                                local.get 1
                                i64.load offset=24 align=4
                                local.set 12
                                local.get 1
                                i32.load offset=20
                                local.set 13
                              end
                              local.get 1
                              i32.const 40064
                              i32.add
                              i32.const 8
                              i32.add
                              local.get 14
                              i32.load
                              i32.store
                              local.get 1
                              local.get 5
                              i32.store offset=16
                              local.get 1
                              local.get 8
                              i64.load align=4
                              i64.store offset=40064
                              br 10 (;@3;)
                            end
                            local.get 1
                            i32.const 60
                            i32.add
                            call $_ZN17user_fund_storage5types20affected_user_id_vec25affected_users_sort_dedup17h66dfee68489d736aE
                            block ;; label = @13
                              local.get 1
                              i32.load offset=36
                              call $_ZN4core3cmp10PartialOrd2gt17hd9d509c4ac11a852E
                              br_if 0 (;@13;)
                              local.get 1
                              i32.const 40064
                              i32.add
                              i32.const 8
                              i32.add
                              local.get 14
                              i32.load
                              i32.store
                              local.get 1
                              local.get 8
                              i64.load align=4
                              i64.store offset=40064
                              i32.const 0
                              local.set 10
                              i32.const 2
                              local.set 5
                              br 9 (;@4;)
                            end
                            local.get 1
                            i32.const 40064
                            i32.add
                            i32.const 8
                            i32.add
                            local.get 14
                            i32.load
                            i32.store
                            local.get 1
                            local.get 8
                            i64.load align=4
                            i64.store offset=40064
                            br 7 (;@5;)
                          end
                          local.get 1
                          i32.const 60
                          i32.add
                          call $_ZN17user_fund_storage5types20affected_user_id_vec25affected_users_sort_dedup17h66dfee68489d736aE
                          block ;; label = @12
                            local.get 1
                            i32.load offset=44
                            call $_ZN4core3cmp10PartialOrd2gt17hd9d509c4ac11a852E
                            br_if 0 (;@12;)
                            local.get 1
                            i32.const 40064
                            i32.add
                            i32.const 8
                            i32.add
                            local.get 14
                            i32.load
                            i32.store
                            i32.const 3
                            local.set 5
                            local.get 1
                            i32.const 3
                            i32.store offset=16
                            local.get 1
                            local.get 8
                            i64.load align=4
                            i64.store offset=40064
                            i32.const 0
                            local.set 10
                            br 8 (;@4;)
                          end
                          local.get 1
                          i32.const 40064
                          i32.add
                          i32.const 8
                          i32.add
                          local.get 14
                          i32.load
                          i32.store
                          local.get 1
                          local.get 8
                          i64.load align=4
                          i64.store offset=40064
                          br 6 (;@5;)
                        end
                        local.get 1
                        i32.const 60
                        i32.add
                        call $_ZN17user_fund_storage5types20affected_user_id_vec25affected_users_sort_dedup17h66dfee68489d736aE
                        block ;; label = @11
                          local.get 1
                          i32.load offset=40
                          call $_ZN4core3cmp10PartialOrd2gt17hd9d509c4ac11a852E
                          br_if 0 (;@11;)
                          local.get 1
                          i32.load offset=32
                          call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$24set_total_delegation_cap17haf8427cf1acbecc3E
                          i32.const 0
                          local.set 10
                          br 2 (;@9;)
                        end
                        local.get 1
                        i32.const 40064
                        i32.add
                        i32.const 8
                        i32.add
                        local.get 14
                        i32.load
                        i32.store
                        local.get 1
                        local.get 8
                        i64.load align=4
                        i64.store offset=40064
                        br 5 (;@5;)
                      end
                      local.get 1
                      local.get 11
                      i32.store offset=40112
                      local.get 1
                      local.get 12
                      i64.store offset=40104
                      local.get 1
                      i32.const 60
                      i32.add
                      local.get 1
                      i32.const 40104
                      i32.add
                      call $_ZN17delegation_latest26reset_checkpoint_endpoints22ResetCheckpointsModule19compute_all_rewards17h8143e5d9e7e7654dE
                      block ;; label = @10
                        local.get 1
                        i32.load offset=60
                        local.tee 10
                        i32.const 1
                        i32.ne
                        br_if 0 (;@10;)
                        i32.const 6
                        local.set 5
                        local.get 1
                        i32.load offset=72
                        local.set 15
                        local.get 1
                        i64.load offset=64 align=4
                        local.set 16
                        local.get 13
                        local.set 17
                        br 8 (;@2;)
                      end
                      local.get 13
                      call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$15set_service_fee17h76ab9b7714482571E
                    end
                    i32.const 4
                    local.set 5
                    br 6 (;@2;)
                  end
                  i32.const 133423
                  i32.const 31
                  call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
                  unreachable
                end
                i32.const 133423
                i32.const 31
                call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
                unreachable
              end
              i32.const 133423
              i32.const 31
              call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
              unreachable
            end
            i32.const 1
            local.set 10
            local.get 1
            i32.load offset=32
            local.set 15
            local.get 1
            i64.load offset=24 align=4
            local.set 16
            local.get 1
            i32.load offset=20
            local.set 17
            local.get 1
            i32.load offset=16
            local.set 5
            br 2 (;@2;)
          end
          local.get 1
          i32.load offset=32
          local.set 15
          local.get 1
          i64.load offset=24 align=4
          local.set 16
          local.get 1
          i32.load offset=20
          local.set 17
          br 1 (;@2;)
        end
        local.get 12
        local.set 16
        local.get 11
        local.set 15
        local.get 13
        local.set 17
      end
      local.get 1
      i32.const 8
      i32.add
      local.get 1
      i32.const 40064
      i32.add
      i32.const 8
      i32.add
      i32.load
      local.tee 13
      i32.store
      local.get 1
      local.get 1
      i64.load offset=40064
      local.tee 12
      i64.store
      local.get 0
      local.get 15
      i32.store offset=16
      local.get 0
      local.get 16
      i64.store offset=8 align=4
      local.get 0
      local.get 17
      i32.store offset=4
      local.get 0
      local.get 5
      i32.store
      local.get 2
      local.get 12
      i64.store align=4
      local.get 2
      i32.const 8
      i32.add
      local.get 13
      i32.store
      br 0 (;@1;)
    end
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types8impl_ref86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$T$GT$24dep_encode_or_handle_err17he8d956d18883561dE (;271;) (type 2) (param i32 i32)
    local.get 0
    i32.load offset=16
    local.get 1
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hb5a146f546b739e9E
    local.get 0
    i32.load offset=20
    local.get 1
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hb5a146f546b739e9E
    local.get 0
    i32.load offset=24
    local.get 1
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hb5a146f546b739e9E
    local.get 0
    i32.load offset=28
    local.get 1
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hb5a146f546b739e9E
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 0
            i32.load
            br_table 0 (;@4;) 1 (;@3;) 2 (;@2;) 3 (;@1;) 0 (;@4;)
          end
          i32.const 0
          local.get 1
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h22758c0eaf71226fE
          local.get 0
          i32.const 4
          i32.add
          local.get 1
          call $_ZN17dharitri_sc_codec14impl_for_types8impl_ref86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$T$GT$24dep_encode_or_handle_err17hac0d1a916271f4e5E
          return
        end
        i32.const 1
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h22758c0eaf71226fE
        return
      end
      i32.const 2
      local.get 1
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h22758c0eaf71226fE
      return
    end
    i32.const 3
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h22758c0eaf71226fE
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types8impl_ref86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$T$GT$24dep_encode_or_handle_err17hac0d1a916271f4e5E (;272;) (type 2) (param i32 i32)
    local.get 0
    i32.load
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h244dd97c16de4444E
    local.get 0
    i32.load offset=4
    local.get 1
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hb5a146f546b739e9E
    local.get 0
    i32.load offset=8
    local.get 1
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hb5a146f546b739e9E
  )
  (func $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$24set_total_delegation_cap17haf8427cf1acbecc3E (;273;) (type 6) (param i32)
    local.get 0
    i32.const 132242
    i32.const 20
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    call $_ZN129_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h1eb9ce70ff858d2cE
  )
  (func $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$15set_service_fee17h76ab9b7714482571E (;274;) (type 6) (param i32)
    local.get 0
    i32.const 133716
    i32.const 11
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    call $_ZN129_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h1eb9ce70ff858d2cE
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h8c597da11a85b64eE (;275;) (type 15) (param i32 i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h228f43acaef9e02eE
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h658041ad6eaf452eE
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h32092f3cf7900d96E (;276;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 131375
    i32.const 15
    call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hdddaf3d56c672f2cE
    unreachable
  )
  (func $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417hdd79536a0e446643E (;277;) (type 0) (param i32 i64)
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
    i32.const 0
    local.get 2
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hecdef361e3bb1bc1E
    local.get 0
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call $mBufferSetBytes
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17user_fund_storage11fund_module10FundModule11delete_fund17h5844e8fe646eb298E (;278;) (type 3) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 12
    i32.add
    local.get 0
    i32.load8_u
    local.tee 2
    call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$17fund_list_by_type17hffd9311abbd2c757E
    local.tee 3
    call $_ZN11dharitri_sc7storage11storage_get11storage_get17hf6af4b39ab7abe80E
    local.get 1
    i32.load offset=12
    local.get 0
    i32.load offset=20
    local.tee 4
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..SubAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10sub_assign17h7a3eb15dcb00d3d7E
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load offset=28
        local.tee 5
        br_if 0 (;@2;)
        local.get 1
        local.get 0
        i32.load offset=24
        local.tee 6
        i32.store offset=16
        br 1 (;@1;)
      end
      local.get 1
      i32.const 24
      i32.add
      local.get 5
      call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
      local.tee 7
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he9b9f9d3e0b60c89E
      local.get 1
      local.get 0
      i32.load offset=24
      local.tee 6
      i32.store offset=48
      local.get 7
      local.get 1
      i32.const 24
      i32.add
      call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4929da203671d234E
    end
    block ;; label = @1
      block ;; label = @2
        local.get 6
        br_if 0 (;@2;)
        local.get 1
        local.get 5
        i32.store offset=20
        br 1 (;@1;)
      end
      local.get 1
      i32.const 24
      i32.add
      local.get 6
      call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
      local.tee 6
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he9b9f9d3e0b60c89E
      local.get 1
      local.get 5
      i32.store offset=52
      local.get 6
      local.get 1
      i32.const 24
      i32.add
      call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4929da203671d234E
    end
    local.get 0
    i64.const 0
    i64.store offset=24
    local.get 3
    local.get 1
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hb43b84d3834209a8E
    local.get 1
    i32.const 12
    i32.add
    local.get 0
    i32.load offset=16
    local.get 2
    call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$17fund_list_by_user17hf4ed2b79213eae10E
    local.tee 2
    call $_ZN11dharitri_sc7storage11storage_get11storage_get17hf6af4b39ab7abe80E
    local.get 1
    i32.load offset=12
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..SubAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10sub_assign17h7a3eb15dcb00d3d7E
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load offset=36
        local.tee 5
        br_if 0 (;@2;)
        local.get 1
        local.get 0
        i32.load offset=32
        local.tee 6
        i32.store offset=16
        br 1 (;@1;)
      end
      local.get 1
      i32.const 24
      i32.add
      local.get 5
      call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
      local.tee 3
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he9b9f9d3e0b60c89E
      local.get 1
      local.get 0
      i32.load offset=32
      local.tee 6
      i32.store offset=56
      local.get 3
      local.get 1
      i32.const 24
      i32.add
      call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4929da203671d234E
    end
    block ;; label = @1
      block ;; label = @2
        local.get 6
        br_if 0 (;@2;)
        local.get 1
        local.get 5
        i32.store offset=20
        br 1 (;@1;)
      end
      local.get 1
      i32.const 24
      i32.add
      local.get 6
      call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
      local.tee 6
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he9b9f9d3e0b60c89E
      local.get 1
      local.get 5
      i32.store offset=60
      local.get 6
      local.get 1
      i32.const 24
      i32.add
      call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4929da203671d234E
    end
    local.get 0
    i64.const 0
    i64.store offset=32
    local.get 2
    local.get 1
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hb43b84d3834209a8E
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E
    i32.store offset=20
    local.get 1
    i32.const 64
    i32.add
    global.set $__stack_pointer
    local.get 4
  )
  (func $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$17fund_list_by_type17hffd9311abbd2c757E (;279;) (type 3) (param i32) (result i32)
    (local i32)
    i32.const 133706
    i32.const 5
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    local.tee 1
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h36aa766e859c2dbaE
    local.get 1
  )
  (func $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$17fund_list_by_user17hf4ed2b79213eae10E (;280;) (type 5) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.const 133711
    i32.const 5
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    local.tee 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h244dd97c16de4444E
    local.get 2
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h36aa766e859c2dbaE
    local.get 2
  )
  (func $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$21get_fund_list_by_type17h46b24c0fb000ba69E (;281;) (type 2) (param i32 i32)
    (local i32)
    i32.const 133706
    i32.const 5
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    local.tee 2
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h36aa766e859c2dbaE
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc7storage11storage_get11storage_get17hf6af4b39ab7abe80E
  )
  (func $_ZN17user_fund_storage11fund_module10FundModule21decrease_fund_balance17h589a8272d8f86c85E (;282;) (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load
        local.tee 3
        local.get 1
        i32.load offset=20
        local.tee 4
        call $_ZN4core3cmp10PartialOrd2ge17h7eafa998844dc333E
        br_if 0 (;@2;)
        local.get 4
        local.get 3
        call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..SubAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10sub_assign17h7a3eb15dcb00d3d7E
        local.get 2
        i32.const 4
        i32.add
        local.get 1
        i32.load8_u
        local.tee 4
        call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$17fund_list_by_type17hffd9311abbd2c757E
        local.tee 5
        call $_ZN11dharitri_sc7storage11storage_get11storage_get17hf6af4b39ab7abe80E
        local.get 2
        i32.load offset=4
        local.get 3
        call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..SubAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10sub_assign17h7a3eb15dcb00d3d7E
        local.get 5
        local.get 2
        i32.const 4
        i32.add
        call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hb43b84d3834209a8E
        local.get 2
        i32.const 4
        i32.add
        local.get 1
        i32.load offset=16
        local.get 4
        call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$17fund_list_by_user17hf4ed2b79213eae10E
        local.tee 1
        call $_ZN11dharitri_sc7storage11storage_get11storage_get17hf6af4b39ab7abe80E
        local.get 2
        i32.load offset=4
        local.get 3
        call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..SubAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10sub_assign17h7a3eb15dcb00d3d7E
        local.get 1
        local.get 2
        i32.const 4
        i32.add
        call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hb43b84d3834209a8E
        local.get 0
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E
        i32.store
        br 1 (;@1;)
      end
      local.get 3
      local.get 4
      call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..SubAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10sub_assign17h7a3eb15dcb00d3d7E
      local.get 1
      call $_ZN17user_fund_storage11fund_module10FundModule11delete_fund17h5844e8fe646eb298E
      local.set 3
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3
  )
  (func $_ZN17user_fund_storage11fund_module10FundModule21first_id_of_user_type17h67f54b6293e8c93dE (;283;) (type 7) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 4
    i32.add
    local.get 0
    local.get 1
    call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$17fund_list_by_user17hf4ed2b79213eae10E
    call $_ZN11dharitri_sc7storage11storage_get11storage_get17hf6af4b39ab7abe80E
    local.get 3
    i32.const 4
    i32.add
    i32.const 8
    i32.const 4
    local.get 2
    select
    i32.add
    i32.load
    local.set 1
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $_ZN17user_fund_storage11fund_module10FundModule21increase_fund_balance17h03f71147decccc6fE (;284;) (type 22) (param i32 i64 i64 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block ;; label = @1
      local.get 3
      call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$i32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h41b32bc4b1a3cdaeE
      br_if 0 (;@1;)
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.wrap_i64
          local.tee 5
          i32.const 255
          i32.and
          local.tee 6
          i32.const 6
          i32.eq
          br_if 0 (;@3;)
          local.get 6
          br_if 1 (;@2;)
        end
        local.get 4
        i32.const 44
        i32.add
        local.get 0
        local.get 5
        call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$17fund_list_by_user17hf4ed2b79213eae10E
        local.tee 6
        call $_ZN11dharitri_sc7storage11storage_get11storage_get17hf6af4b39ab7abe80E
        block ;; label = @3
          block ;; label = @4
            local.get 4
            i32.const 44
            i32.add
            call $_ZN133_$LT$user_fund_storage..types..fund_list_info..FundsListInfo$LT$M$GT$$u20$as$u20$dharitri_sc_codec..default_traits..EncodeDefault$GT$10is_default17haaa8b74d4844a881E
            br_if 0 (;@4;)
            local.get 4
            i32.const 56
            i32.add
            local.get 4
            i32.load offset=52
            call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
            local.tee 7
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he9b9f9d3e0b60c89E
            local.get 4
            i64.load offset=56
            local.get 1
            i64.ne
            br_if 1 (;@3;)
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  block ;; label = @8
                    local.get 5
                    i32.const -1
                    i32.add
                    br_table 0 (;@8;) 3 (;@5;) 3 (;@5;) 3 (;@5;) 1 (;@7;) 2 (;@6;) 3 (;@5;)
                  end
                  local.get 1
                  i64.const 1
                  i64.ne
                  br_if 2 (;@5;)
                  local.get 4
                  i64.load offset=64
                  local.get 2
                  i64.ne
                  br_if 4 (;@3;)
                  br 2 (;@5;)
                end
                local.get 1
                i64.const 5
                i64.ne
                br_if 1 (;@5;)
                local.get 4
                i64.load offset=64
                local.get 2
                i64.eq
                br_if 1 (;@5;)
                br 3 (;@3;)
              end
              local.get 1
              i64.const 6
              i64.ne
              br_if 0 (;@5;)
              local.get 4
              i64.load offset=64
              local.get 2
              i64.ne
              br_if 2 (;@3;)
            end
            local.get 4
            i32.load offset=76
            local.get 3
            call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..AddAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17h07c6e548e8930de6E
            local.get 4
            i32.load offset=44
            local.get 3
            call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..AddAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17h07c6e548e8930de6E
            local.get 4
            local.get 5
            call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$17fund_list_by_type17hffd9311abbd2c757E
            local.tee 0
            call $_ZN11dharitri_sc7storage11storage_get11storage_get17hf6af4b39ab7abe80E
            local.get 4
            i32.load
            local.get 3
            call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..AddAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17h07c6e548e8930de6E
            local.get 0
            local.get 4
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hb43b84d3834209a8E
            local.get 7
            local.get 4
            i32.const 56
            i32.add
            call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4929da203671d234E
            local.get 6
            local.get 4
            i32.const 44
            i32.add
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hb43b84d3834209a8E
            br 3 (;@1;)
          end
          local.get 6
          local.get 4
          i32.const 44
          i32.add
          call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hb43b84d3834209a8E
          br 1 (;@2;)
        end
        local.get 7
        local.get 4
        i32.const 56
        i32.add
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4929da203671d234E
        local.get 6
        local.get 4
        i32.const 44
        i32.add
        call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hb43b84d3834209a8E
      end
      local.get 3
      call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$i32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h41b32bc4b1a3cdaeE
      br_if 0 (;@1;)
      i32.const 133698
      i32.const 8
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
      call $_ZN11dharitri_sc7storage11storage_get11storage_get17hb502f2b686e193c1E
      local.set 6
      i32.const 133698
      i32.const 8
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
      local.get 6
      i32.const 1
      i32.add
      local.tee 6
      i64.extend_i32_u
      call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h7b3ab429e8ba8004E
      local.get 4
      i32.const 32
      i32.add
      i64.const 0
      i64.store
      local.get 4
      i64.const 0
      i64.store offset=24
      local.get 4
      local.get 3
      i32.store offset=20
      local.get 4
      local.get 0
      i32.store offset=16
      local.get 4
      local.get 2
      i64.store offset=8
      local.get 4
      local.get 1
      i64.store
      local.get 4
      i32.const 44
      i32.add
      local.get 5
      call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$17fund_list_by_type17hffd9311abbd2c757E
      local.tee 7
      call $_ZN11dharitri_sc7storage11storage_get11storage_get17hf6af4b39ab7abe80E
      block ;; label = @2
        block ;; label = @3
          local.get 4
          i32.const 44
          i32.add
          call $_ZN133_$LT$user_fund_storage..types..fund_list_info..FundsListInfo$LT$M$GT$$u20$as$u20$dharitri_sc_codec..default_traits..EncodeDefault$GT$10is_default17haaa8b74d4844a881E
          br_if 0 (;@3;)
          local.get 4
          local.get 4
          i32.load offset=52
          local.tee 8
          i32.store offset=28
          local.get 4
          i32.const 56
          i32.add
          local.get 8
          call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
          local.tee 8
          call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he9b9f9d3e0b60c89E
          local.get 4
          local.get 6
          i32.store offset=80
          local.get 8
          local.get 4
          i32.const 56
          i32.add
          call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4929da203671d234E
          br 1 (;@2;)
        end
        local.get 4
        local.get 6
        i32.store offset=48
      end
      local.get 4
      local.get 6
      i32.store offset=52
      local.get 4
      i32.load offset=44
      local.get 3
      call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..AddAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17h07c6e548e8930de6E
      local.get 7
      local.get 4
      i32.const 44
      i32.add
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hb43b84d3834209a8E
      local.get 4
      i32.const 44
      i32.add
      local.get 0
      local.get 5
      call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$17fund_list_by_user17hf4ed2b79213eae10E
      local.tee 0
      call $_ZN11dharitri_sc7storage11storage_get11storage_get17hf6af4b39ab7abe80E
      block ;; label = @2
        block ;; label = @3
          local.get 4
          i32.const 44
          i32.add
          call $_ZN133_$LT$user_fund_storage..types..fund_list_info..FundsListInfo$LT$M$GT$$u20$as$u20$dharitri_sc_codec..default_traits..EncodeDefault$GT$10is_default17haaa8b74d4844a881E
          br_if 0 (;@3;)
          local.get 4
          local.get 4
          i32.load offset=52
          local.tee 5
          i32.store offset=36
          local.get 4
          i32.const 56
          i32.add
          local.get 5
          call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
          local.tee 5
          call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he9b9f9d3e0b60c89E
          local.get 4
          local.get 6
          i32.store offset=88
          local.get 5
          local.get 4
          i32.const 56
          i32.add
          call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4929da203671d234E
          br 1 (;@2;)
        end
        local.get 4
        local.get 6
        i32.store offset=48
      end
      local.get 4
      local.get 6
      i32.store offset=52
      local.get 4
      i32.load offset=44
      local.get 3
      call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..AddAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17h07c6e548e8930de6E
      local.get 0
      local.get 4
      i32.const 44
      i32.add
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hb43b84d3834209a8E
      local.get 6
      call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
      local.get 4
      call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4929da203671d234E
    end
    local.get 4
    i32.const 96
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17user_fund_storage16fund_view_module14FundViewModule20get_user_total_stake17h04d9bc9c71c27624E (;285;) (type 3) (param i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E
    local.tee 1
    local.get 0
    i32.const 0
    call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators122_$LT$impl$u20$core..ops..arith..AddAssign$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17hb34bbfa79562e0bcE
    local.get 1
    local.get 0
    i32.const 1
    call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators122_$LT$impl$u20$core..ops..arith..AddAssign$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17hb34bbfa79562e0bcE
    local.get 1
    local.get 0
    i32.const 4
    call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators122_$LT$impl$u20$core..ops..arith..AddAssign$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17hb34bbfa79562e0bcE
    local.get 1
    local.get 0
    i32.const 5
    call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators122_$LT$impl$u20$core..ops..arith..AddAssign$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17hb34bbfa79562e0bcE
    local.get 1
    local.get 0
    i32.const 6
    call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators122_$LT$impl$u20$core..ops..arith..AddAssign$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17hb34bbfa79562e0bcE
    local.get 1
  )
  (func $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_by_type17h0c36df539b780769E (;286;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    local.get 1
    i32.const 0
    call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
    local.set 2
    local.get 1
    i32.const 1
    call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
    local.set 3
    local.get 1
    i32.const 4
    call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
    local.set 4
    local.get 1
    i32.const 5
    call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
    local.set 5
    local.get 0
    local.get 1
    i32.const 6
    call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
    i32.store offset=16
    local.get 0
    local.get 5
    i32.store offset=12
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
  (func $_ZN17user_fund_storage16fund_view_module14FundViewModule33get_user_stake_of_type_by_address17h84fe799da510cc6bE (;287;) (type 5) (param i32 i32) (result i32)
    block ;; label = @1
      local.get 0
      call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$11get_user_id17h53d2b84c81f83ac0E
      local.tee 0
      br_if 0 (;@1;)
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E
      return
    end
    local.get 0
    local.get 1
    call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
  )
  (func $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$11get_user_id17h53d2b84c81f83ac0E (;288;) (type 3) (param i32) (result i32)
    (local i32)
    i32.const 133463
    i32.const 7
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    local.tee 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17ha103ef643015dc7cE
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_get11storage_get17hb502f2b686e193c1E
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h658041ad6eaf452eE (;289;) (type 6) (param i32)
    local.get 0
    i32.const 131375
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4b17a10d42f51edcE
    unreachable
  )
  (func $_ZN19dharitri_sc_modules5pause11PauseModule10not_paused17h5cbc54bc80d69f44E (;290;) (type 4) (result i32)
    call $_ZN61_$LT$C$u20$as$u20$dharitri_sc_modules..pause..PauseModule$GT$13paused_status17hb6b229e9a23bc968E
    call $_ZN11dharitri_sc7storage11storage_get11storage_get17h77ec744d08073be6E
    i32.const 1
    i32.xor
  )
  (func $_ZN61_$LT$C$u20$as$u20$dharitri_sc_modules..pause..PauseModule$GT$13paused_status17hb6b229e9a23bc968E (;291;) (type 4) (result i32)
    i32.const 133663
    i32.const 19
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
  )
  (func $_ZN19dharitri_sc_modules5pause11PauseModule10set_paused17h4ae7334c529ca4b6E (;292;) (type 6) (param i32)
    call $_ZN61_$LT$C$u20$as$u20$dharitri_sc_modules..pause..PauseModule$GT$13paused_status17hb6b229e9a23bc968E
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_set11storage_set17h342378c99542af09E
  )
  (func $_ZN19dharitri_sc_modules8features14FeaturesModule16check_feature_on17h791532f54211e5c6E (;293;) (type 2) (param i32 i32)
    (local i32 i64)
    block ;; label = @1
      block ;; label = @2
        local.get 0
        local.get 1
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
        call $_ZN67_$LT$C$u20$as$u20$dharitri_sc_modules..features..FeaturesModule$GT$12feature_flag17hb340ad9ce0c7638aE
        local.tee 2
        local.get 2
        call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417h421893f3dcd8a92eE
        local.tee 3
        i64.const 256
        i64.ge_u
        br_if 0 (;@2;)
        local.get 3
        i64.const 2
        i64.ge_u
        br_if 1 (;@1;)
        return
      end
      local.get 2
      i32.const 131085
      i32.const 14
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4b17a10d42f51edcE
      unreachable
    end
    call $_ZN11dharitri_sc5types7managed7wrapped7builder22managed_buffer_builder36ManagedBufferBuilder$LT$M$C$Impl$GT$14new_from_slice17h7d5e49533a4cf43fE
    local.tee 2
    local.get 0
    local.get 1
    call $_ZN175_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$GT$$u20$as$u20$dharitri_sc..formatter..formatter_traits..FormatBuffer$GT$14append_display17h07c47c6e7f5a6511E
    local.get 2
    call $_ZN175_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$GT$$u20$as$u20$dharitri_sc..formatter..formatter_traits..FormatBuffer$GT$12append_ascii17he54cecad30792cb1E
    local.get 2
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h76e0d641b9290ffdE
    unreachable
  )
  (func $_ZN67_$LT$C$u20$as$u20$dharitri_sc_modules..features..FeaturesModule$GT$12feature_flag17hb340ad9ce0c7638aE (;294;) (type 3) (param i32) (result i32)
    (local i32)
    i32.const 133853
    i32.const 5
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    local.tee 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17ha103ef643015dc7cE
    local.get 1
  )
  (func $_ZN19dharitri_sc_modules9dns_proxy44DnsProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$8register17ha267f89d6a1aaab8E (;295;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    i32.const 133514
    i32.const 8
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h20724989590dc39cE
    local.get 3
    i32.load offset=8
    local.set 4
    local.get 3
    i32.load offset=12
    local.set 5
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
    drop
    local.get 5
    local.get 2
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h454322d51d5bc21eE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4ac91cc2b70259beE
    local.get 0
    local.get 5
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
  (func $_ZN4core3cmp10PartialOrd2le17h802028a75051e57fE (;296;) (type 5) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp109_$LT$impl$u20$core..cmp..Ord$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3cmp17h40e00373de08d106E
    i32.const 255
    i32.and
    i32.const 1
    i32.ne
  )
  (func $_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h5dab0c14d47e874dE (;297;) (type 2) (param i32 i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 2
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load8_u offset=8
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      local.get 1
      i32.load
      local.tee 3
      local.get 1
      i32.load offset=4
      local.tee 4
      i32.gt_u
      br_if 0 (;@1;)
      block ;; label = @2
        local.get 3
        local.get 4
        i32.lt_u
        br_if 0 (;@2;)
        i32.const 1
        local.set 2
        local.get 1
        i32.const 1
        i32.store8 offset=8
        br 1 (;@1;)
      end
      i32.const 1
      local.set 2
      local.get 1
      local.get 3
      i32.const 1
      i32.add
      i32.store
    end
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN61_$LT$C$u20$as$u20$delegation_latest..events..EventsModule$GT$19unbond_tokens_event17h81492df088c3c53cE (;298;) (type 6) (param i32)
    i32.const 133558
    i32.const 12
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h398569d3a7140991E
    local.get 0
    call $_ZN11dharitri_sc8log_util18serialize_log_data17h341074791aaa8b58E
    call $managedWriteLog
  )
  (func $_ZN61_$LT$C$u20$as$u20$delegation_latest..events..EventsModule$GT$20unstake_tokens_event17h5e41e1734474f8cbE (;299;) (type 6) (param i32)
    i32.const 133582
    i32.const 13
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h398569d3a7140991E
    local.get 0
    call $_ZN11dharitri_sc8log_util18serialize_log_data17h341074791aaa8b58E
    call $managedWriteLog
  )
  (func $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$17get_minimum_stake17h55e9fc0d6bdf0e13E (;300;) (type 4) (result i32)
    i32.const 133739
    i32.const 9
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    call $_ZN11dharitri_sc7storage11storage_get11storage_get17hd87949a3f9650e43E
  )
  (func $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$17set_minimum_stake17h4e93b476f950e4ecE (;301;) (type 6) (param i32)
    (local i32)
    i32.const 133739
    i32.const 9
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    local.set 1
    local.get 0
    i32.load
    local.get 1
    call $_ZN129_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h1eb9ce70ff858d2cE
  )
  (func $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$26get_n_blocks_before_unbond17h5c54111780710ec4E (;302;) (type 13) (result i64)
    (local i32)
    i32.const 132262
    i32.const 22
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    local.tee 0
    local.get 0
    call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417h421893f3dcd8a92eE
  )
  (func $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$26set_n_blocks_before_unbond17ha7a748099902dd81E (;303;) (type 9) (param i64)
    i32.const 132262
    i32.const 22
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    local.get 0
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h7b3ab429e8ba8004E
  )
  (func $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$18get_node_id_to_bls17hc99130c7d9a05e27E (;304;) (type 3) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i32.const 133807
    i32.const 14
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    local.tee 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h244dd97c16de4444E
    local.get 1
    i32.const 12
    i32.add
    local.get 2
    call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17hc3607e4372d588fbE
    local.get 1
    i32.const 12
    i32.add
    i32.const 96
    local.get 2
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$27read_managed_buffer_of_size17ha4126cb7bca1c73fE
    local.set 0
    block ;; label = @1
      local.get 1
      i32.load offset=16
      local.get 1
      i32.load offset=12
      i32.ne
      br_if 0 (;@1;)
      block ;; label = @2
        local.get 1
        i32.load8_u offset=28
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        i32.store offset=144056
        i32.const 0
        i32.const 0
        i32.store8 offset=144060
      end
      local.get 1
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 0
      return
    end
    local.get 2
    i32.const 131085
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4b17a10d42f51edcE
    unreachable
  )
  (func $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$18get_node_signature17h19ebec67c2737af9E (;305;) (type 3) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i32.const 133821
    i32.const 14
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    local.tee 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h244dd97c16de4444E
    local.get 1
    i32.const 12
    i32.add
    local.get 2
    call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17hc3607e4372d588fbE
    local.get 1
    i32.const 12
    i32.add
    i32.const 48
    local.get 2
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$27read_managed_buffer_of_size17ha4126cb7bca1c73fE
    local.set 0
    block ;; label = @1
      local.get 1
      i32.load offset=16
      local.get 1
      i32.load offset=12
      i32.ne
      br_if 0 (;@1;)
      block ;; label = @2
        local.get 1
        i32.load8_u offset=28
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        i32.store offset=144056
        i32.const 0
        i32.const 0
        i32.store8 offset=144060
      end
      local.get 1
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 0
      return
    end
    local.get 2
    i32.const 131085
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4b17a10d42f51edcE
    unreachable
  )
  (func $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$9num_nodes17h8e66ca94b51751c8E (;306;) (type 4) (result i32)
    i32.const 133835
    i32.const 9
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
  )
  (func $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$11set_user_id17hbe6fef260356204fE (;307;) (type 2) (param i32 i32)
    (local i32)
    i32.const 133463
    i32.const 7
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    local.tee 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17ha103ef643015dc7cE
    local.get 2
    local.get 1
    i64.extend_i32_u
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h7b3ab429e8ba8004E
  )
  (func $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$13set_num_users17h0b2ce356ab5db0efE (;308;) (type 6) (param i32)
    i32.const 133844
    i32.const 9
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    local.get 0
    i64.extend_i32_u
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h7b3ab429e8ba8004E
  )
  (func $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$16get_user_address17h27f4a515de130ab0E (;309;) (type 3) (param i32) (result i32)
    (local i32)
    local.get 0
    i32.const 132774
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    local.tee 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h244dd97c16de4444E
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_get11storage_get17h56c76cd1c2da67a3E
  )
  (func $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$16set_user_address17h10a28b70e7dc85ddE (;310;) (type 2) (param i32 i32)
    (local i32)
    local.get 0
    i32.const 132774
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    local.tee 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h244dd97c16de4444E
    local.get 2
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_set11storage_set17hd681dc570e5cfccfE
  )
  (func $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$21is_empty_user_address17h0eb9abfdad94473cE (;311;) (type 3) (param i32) (result i32)
    (local i32)
    local.get 0
    i32.const 132774
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    local.tee 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h244dd97c16de4444E
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_get15storage_get_len17hac71900ce8a0d6ebE
    i32.eqz
  )
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17ha78fbfca64b9965dE (;312;) (type 2) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
    drop
    local.get 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h987de79744e4ac4bE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4ac91cc2b70259beE
  )
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17he2ebdc054870bc35E (;313;) (type 2) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
    drop
    local.get 1
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h454322d51d5bc21eE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4ac91cc2b70259beE
  )
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17hee7a0f9f2d7f9b93E (;314;) (type 23) (param i64 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
    local.tee 2
    local.get 0
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417hdd79536a0e446643E
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4ac91cc2b70259beE
  )
  (func $_ZN4core6result13unwrap_failed17he8f1ea0683e142ebE (;315;) (type 6) (param i32)
    call $_ZN4core9panicking9panic_fmt17h6f4dae69dcc1a6d2E
    unreachable
  )
  (func $_ZN92_$LT$C$u20$as$u20$delegation_latest..user_stake_dust_cleanup..UserStakeDustCleanupModule$GT$23dust_cleanup_checkpoint17h7e085461df055225E (;316;) (type 4) (result i32)
    i32.const 133914
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
  )
  (func $rust_begin_unwind (;317;) (type 14)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h9fb5a89a95453600E
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h9fb5a89a95453600E (;318;) (type 14)
    i32.const 134036
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;319;) (type 14)
    (local i32 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 6
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    i32.const 132336
    i32.const 21
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbf27df68fc427cceE
    local.set 1
    i32.const 1
    i32.const 132315
    i32.const 21
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h13fef3507539b176E
    local.set 2
    i32.const 2
    i32.const 132284
    i32.const 31
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h13fef3507539b176E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17he0044aee39e22080E
    local.set 4
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc87c253e189fb0afE
    local.set 5
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc87c253e189fb0afE
    local.set 6
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 5
    i32.store offset=8
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h76a88aa9d5d37497E
    local.tee 1
    i32.store offset=12
    local.get 1
    i32.const 1
    call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$11set_user_id17hbe6fef260356204fE
    i32.const 1
    local.get 0
    i32.const 12
    i32.add
    call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$16set_user_address17h10a28b70e7dc85ddE
    i32.const 1
    call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$13set_num_users17h0b2ce356ab5db0efE
    i32.const 133727
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
    local.get 0
    i32.const 4
    i32.add
    call $_ZN11dharitri_sc7storage11storage_set11storage_set17hd681dc570e5cfccfE
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i32.const 10001
        i32.ge_u
        br_if 0 (;@2;)
        local.get 2
        call $_ZN117_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..convert..From$LT$usize$GT$$GT$4from17h81131e176f07200fE
        call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$15set_service_fee17h76ab9b7714482571E
        local.get 3
        i32.const 10001
        i32.ge_u
        br_if 1 (;@1;)
        i32.const 133762
        i32.const 21
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
        local.get 3
        i64.extend_i32_u
        call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h7b3ab429e8ba8004E
        local.get 4
        call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$26set_n_blocks_before_unbond17ha7a748099902dd81E
        local.get 0
        i32.const 8
        i32.add
        call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$17set_minimum_stake17h4e93b476f950e4ecE
        local.get 6
        call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$24set_total_delegation_cap17haf8427cf1acbecc3E
        i32.const 1
        call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$18set_bootstrap_mode17h9fd32ed552345cd8E
        local.get 0
        i32.const 16
        i32.add
        global.set $__stack_pointer
        return
      end
      i32.const 131698
      i32.const 24
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
      unreachable
    end
    i32.const 133354
    i32.const 34
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
    unreachable
  )
  (func $upgrade (;320;) (type 14)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    block ;; label = @1
      call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$24get_total_delegation_cap17hae62de003d66c4a4E
      call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$i32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h41b32bc4b1a3cdaeE
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      i32.const 4
      call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
      i32.const 0
      i32.const 5
      call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
      call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Add$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3add17h3bf14f649a62c8e0E
      call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$24set_total_delegation_cap17haf8427cf1acbecc3E
    end
  )
  (func $version (;321;) (type 14)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    i32.const 131722
    i32.const 5
    call $finish
  )
  (func $getNumNodes (;322;) (type 14)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$9num_nodes17h8e66ca94b51751c8E
    call $_ZN11dharitri_sc2io6finish12finish_multi17h921c9916bd3df3ccE
  )
  (func $getNodeId (;323;) (type 14)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0d12e968c953460eE
    call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$11get_node_id17hf07bb3092cab1d3eE
    i64.extend_i32_u
    call $smallIntFinishUnsigned
  )
  (func $getNodeSignature (;324;) (type 14)
    (local i32 i32)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    block ;; label = @1
      call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0d12e968c953460eE
      call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$11get_node_id17hf07bb3092cab1d3eE
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$18get_node_signature17h19ebec67c2737af9E
      local.set 0
      call $_ZN11dharitri_sc5types7managed7wrapped7builder22managed_buffer_builder36ManagedBufferBuilder$LT$M$C$Impl$GT$14new_from_slice17h7d5e49533a4cf43fE
      local.tee 1
      local.get 0
      call $mBufferAppend
      drop
      local.get 1
      call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hd777fdfe78ea699cE
    end
  )
  (func $getNodeState (;325;) (type 14)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    block ;; label = @1
      block ;; label = @2
        call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0d12e968c953460eE
        call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$11get_node_id17hf07bb3092cab1d3eE
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$14get_node_state17h33d2320c53e1cb72E
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  block ;; label = @8
                    block ;; label = @9
                      local.get 0
                      i32.load
                      br_table 0 (;@9;) 1 (;@8;) 2 (;@7;) 3 (;@6;) 4 (;@5;) 5 (;@4;) 6 (;@3;) 7 (;@2;) 0 (;@9;)
                    end
                    i64.const 0
                    call $smallIntFinishUnsigned
                    br 7 (;@1;)
                  end
                  i64.const 1
                  call $smallIntFinishUnsigned
                  br 6 (;@1;)
                end
                i64.const 2
                call $smallIntFinishUnsigned
                br 5 (;@1;)
              end
              i64.const 3
              call $smallIntFinishUnsigned
              br 4 (;@1;)
            end
            i64.const 4
            call $smallIntFinishUnsigned
            br 3 (;@1;)
          end
          i32.const 5
          call $_ZN11dharitri_sc5types7managed7wrapped7builder22managed_buffer_builder36ManagedBufferBuilder$LT$M$C$Impl$GT$14new_from_slice17h7d5e49533a4cf43fE
          local.tee 1
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h22758c0eaf71226fE
          local.get 0
          i32.const 8
          i32.add
          local.get 1
          call $_ZN17dharitri_sc_codec14impl_for_types8impl_ref86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$T$GT$24dep_encode_or_handle_err17hdbba49f4986dff5dE
          local.get 1
          call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hd777fdfe78ea699cE
          br 2 (;@1;)
        end
        i32.const 6
        call $_ZN11dharitri_sc5types7managed7wrapped7builder22managed_buffer_builder36ManagedBufferBuilder$LT$M$C$Impl$GT$14new_from_slice17h7d5e49533a4cf43fE
        local.tee 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h22758c0eaf71226fE
        local.get 0
        i32.const 8
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types8impl_ref86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$T$GT$24dep_encode_or_handle_err17hdbba49f4986dff5dE
        local.get 1
        call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hd777fdfe78ea699cE
        br 1 (;@1;)
      end
      i64.const 7
      call $smallIntFinishUnsigned
    end
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $getAllNodeStates (;326;) (type 14)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$9num_nodes17h8e66ca94b51751c8E
    call $_ZN11dharitri_sc7storage11storage_get11storage_get17hb502f2b686e193c1E
    i32.const 1
    i32.add
    local.tee 1
    i32.const 1
    local.get 1
    i32.const 1
    i32.gt_u
    select
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
    local.set 3
    i32.const 1
    local.set 1
    block ;; label = @1
      loop ;; label = @2
        local.get 2
        local.get 1
        i32.eq
        br_if 1 (;@1;)
        local.get 1
        call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$18get_node_id_to_bls17hc99130c7d9a05e27E
        local.set 4
        local.get 0
        i32.const 16
        i32.add
        local.get 1
        call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$14get_node_state17h33d2320c53e1cb72E
        local.get 0
        i64.load offset=16
        local.set 5
        local.get 3
        local.get 4
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17he1298c6bcb990363E
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
        local.tee 4
        local.get 5
        call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417hdd79536a0e446643E
        local.get 3
        local.get 4
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4ac91cc2b70259beE
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 3
    call $mBufferGetLength
    i32.store offset=24
    local.get 0
    i32.const 0
    i32.store offset=20
    local.get 0
    local.get 3
    i32.store offset=16
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.get 0
        i32.const 16
        i32.add
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3da7bb117a9a755eE
        local.get 0
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=12
        call $mBufferFinish
        drop
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $getNodeBlockNonceOfUnstake (;327;) (type 14)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    block ;; label = @1
      call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0d12e968c953460eE
      call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$11get_node_id17hf07bb3092cab1d3eE
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$14get_node_state17h33d2320c53e1cb72E
      local.get 0
      i64.load
      i64.const 5
      i64.ne
      br_if 0 (;@1;)
      local.get 0
      i64.load offset=8
      call $smallIntFinishUnsigned
    end
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $addNodes (;328;) (type 14)
    (local i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17h6a5689ee4d3fe6fcE
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h229a5d43db11014fE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hf5045d7af47ce291E
    local.get 0
    i32.const 0
    i32.store offset=24
    local.get 0
    i32.const 24
    i32.add
    i32.const 131462
    i32.const 19
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h680bffcbccf697ebE
    local.set 1
    local.get 0
    i32.load offset=24
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hf1b4eba2371c2fccE
    call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$9num_nodes17h8e66ca94b51751c8E
    call $_ZN11dharitri_sc7storage11storage_get11storage_get17hb502f2b686e193c1E
    local.set 2
    local.get 0
    local.get 1
    call $mBufferGetLength
    local.tee 3
    i32.store offset=20
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    local.get 1
    i32.store offset=12
    i32.const 0
    local.set 1
    block ;; label = @1
      block ;; label = @2
        loop ;; label = @3
          local.get 1
          local.get 3
          i32.ge_u
          br_if 1 (;@2;)
          local.get 0
          i32.const 12
          i32.add
          call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h898be320277c8d75E
          local.set 1
          local.get 0
          i32.const 12
          i32.add
          call $_ZN257_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_owned..ManagedVecOwnedIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hff90d8418f695175E
          local.tee 4
          call $mBufferGetLength
          local.set 3
          local.get 0
          i32.const 0
          i32.store8 offset=40
          local.get 0
          local.get 3
          i32.store offset=36
          local.get 0
          local.get 4
          i32.store offset=32
          local.get 0
          local.get 3
          i32.store offset=28
          local.get 0
          i32.const 0
          i32.store offset=24
          local.get 0
          i32.const 24
          i32.add
          i32.const 48
          i32.const 131615
          i32.const 8
          call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$16read_specialized17h4bffc667410596efE
          local.set 4
          local.get 0
          i32.load offset=28
          local.get 0
          i32.load offset=24
          i32.ne
          br_if 2 (;@1;)
          block ;; label = @4
            local.get 0
            i32.load8_u offset=40
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            i32.const 0
            i32.store offset=144056
            i32.const 0
            i32.const 0
            i32.store8 offset=144060
          end
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                local.get 1
                call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$11get_node_id17hf07bb3092cab1d3eE
                local.tee 3
                br_if 0 (;@6;)
                i32.const 133783
                i32.const 14
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
                local.tee 5
                local.get 1
                call $mBufferAppend
                drop
                local.get 5
                local.get 2
                i32.const 1
                i32.add
                local.tee 3
                i64.extend_i32_u
                call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h7b3ab429e8ba8004E
                local.get 3
                i32.const 133807
                i32.const 14
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
                local.tee 2
                call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h244dd97c16de4444E
                call $_ZN11dharitri_sc5types7managed7wrapped7builder22managed_buffer_builder36ManagedBufferBuilder$LT$M$C$Impl$GT$14new_from_slice17h7d5e49533a4cf43fE
                local.tee 5
                local.get 1
                call $mBufferAppend
                drop
                local.get 2
                local.get 5
                call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h0ae8598c972d0e9fE
                local.get 3
                local.set 2
                br 1 (;@5;)
              end
              local.get 0
              i32.const 24
              i32.add
              local.get 3
              call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$14get_node_state17h33d2320c53e1cb72E
              local.get 0
              i64.load offset=24
              local.get 0
              i64.load offset=32
              i64.const 7
              local.get 6
              call $_ZN83_$LT$node_storage..types..node_state..NodeState$u20$as$u20$core..cmp..PartialEq$GT$2eq17h0346db99ac50b005E
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 3
            i64.const 0
            local.get 6
            call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$14set_node_state17h59eecf249503eff7E
            local.get 3
            i32.const 133821
            i32.const 14
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
            local.tee 1
            call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h244dd97c16de4444E
            call $_ZN11dharitri_sc5types7managed7wrapped7builder22managed_buffer_builder36ManagedBufferBuilder$LT$M$C$Impl$GT$14new_from_slice17h7d5e49533a4cf43fE
            local.tee 3
            local.get 4
            call $mBufferAppend
            drop
            local.get 1
            local.get 3
            call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h0ae8598c972d0e9fE
            local.get 0
            i32.load offset=20
            local.set 3
            local.get 0
            i32.load offset=16
            local.set 1
            br 1 (;@3;)
          end
        end
        i32.const 131549
        i32.const 23
        call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
        unreachable
      end
      call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$9num_nodes17h8e66ca94b51751c8E
      local.get 2
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hed53681d8dc70c84E
      local.get 0
      i32.const 48
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131615
    i32.const 8
    i32.const 131085
    i32.const 14
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hc8de599bcba76279E
    unreachable
  )
  (func $removeNodes (;329;) (type 14)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17h6a5689ee4d3fe6fcE
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h229a5d43db11014fE
    i32.const 0
    local.set 1
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hf5045d7af47ce291E
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    i32.const 16
    i32.add
    i32.const 131488
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h680bffcbccf697ebE
    local.set 2
    local.get 0
    i32.load offset=16
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hf1b4eba2371c2fccE
    local.get 0
    local.get 2
    call $mBufferGetLength
    local.tee 3
    i32.store offset=12
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 0
    local.get 2
    i32.store offset=4
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          loop ;; label = @4
            local.get 1
            local.get 3
            i32.ge_u
            br_if 1 (;@3;)
            local.get 0
            i32.const 4
            i32.add
            call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h898be320277c8d75E
            call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$11get_node_id17hf07bb3092cab1d3eE
            local.tee 1
            i32.eqz
            br_if 2 (;@2;)
            local.get 0
            i32.const 16
            i32.add
            local.get 1
            call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$14get_node_state17h33d2320c53e1cb72E
            local.get 0
            i64.load offset=16
            local.get 0
            i64.load offset=24
            i64.const 0
            local.get 4
            call $_ZN83_$LT$node_storage..types..node_state..NodeState$u20$as$u20$core..cmp..PartialEq$GT$2eq17h0346db99ac50b005E
            i32.eqz
            br_if 3 (;@1;)
            local.get 1
            i64.const 7
            local.get 4
            call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$14set_node_state17h59eecf249503eff7E
            local.get 0
            i32.load offset=12
            local.set 3
            local.get 0
            i32.load offset=8
            local.set 1
            br 0 (;@4;)
          end
        end
        local.get 0
        i32.const 32
        i32.add
        global.set $__stack_pointer
        return
      end
      i32.const 131496
      i32.const 19
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
      unreachable
    end
    i32.const 131515
    i32.const 34
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
    unreachable
  )
  (func $getUserId (;330;) (type 14)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    i32.const 133456
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbf27df68fc427cceE
    call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$11get_user_id17h53d2b84c81f83ac0E
    i64.extend_i32_u
    call $smallIntFinishUnsigned
  )
  (func $getUserAddress (;331;) (type 14)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    i32.const 0
    i32.const 133463
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h13fef3507539b176E
    call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$16get_user_address17h27f4a515de130ab0E
    call $mBufferFinish
    drop
  )
  (func $getNumUsers (;332;) (type 14)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$13get_num_users17h796f9a08dadd0dcdE
    i64.extend_i32_u
    call $smallIntFinishUnsigned
  )
  (func $updateUserAddress (;333;) (type 14)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h229a5d43db11014fE
    i32.const 0
    local.set 1
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hf5045d7af47ce291E
    local.get 0
    i32.const 0
    i32.store
    local.get 0
    i32.const 133470
    i32.const 9
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h680bffcbccf697ebE
    local.set 2
    local.get 0
    i32.load
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hf1b4eba2371c2fccE
    local.get 0
    local.get 2
    call $mBufferGetLength
    local.tee 3
    i32.store offset=8
    local.get 0
    i32.const 0
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
    i32.const 0
    local.set 2
    i32.const 0
    local.set 4
    i32.const 0
    local.set 5
    loop ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 1
            local.get 3
            i32.ge_u
            br_if 0 (;@4;)
            local.get 0
            call $_ZN257_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_owned..ManagedVecOwnedIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hff90d8418f695175E
            call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h454322d51d5bc21eE
            local.tee 1
            call $mBufferGetLength
            i32.const 32
            i32.ne
            br_if 1 (;@3;)
            local.get 0
            local.get 1
            i32.store offset=12
            block ;; label = @5
              local.get 1
              call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$11get_user_id17h53d2b84c81f83ac0E
              local.tee 1
              br_if 0 (;@5;)
              local.get 2
              i32.const 1
              i32.add
              local.set 2
              br 3 (;@2;)
            end
            block ;; label = @5
              local.get 1
              call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$21is_empty_user_address17h0eb9abfdad94473cE
              br_if 0 (;@5;)
              local.get 4
              i32.const 1
              i32.add
              local.set 4
              br 3 (;@2;)
            end
            local.get 1
            local.get 0
            i32.const 12
            i32.add
            call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$16set_user_address17h10a28b70e7dc85ddE
            local.get 5
            i32.const 1
            i32.add
            local.set 5
            br 2 (;@2;)
          end
          local.get 5
          i64.extend_i32_u
          call $smallIntFinishUnsigned
          local.get 4
          i64.extend_i32_u
          call $smallIntFinishUnsigned
          local.get 2
          i64.extend_i32_u
          call $smallIntFinishUnsigned
          local.get 0
          i32.const 16
          i32.add
          global.set $__stack_pointer
          return
        end
        i32.const 131615
        i32.const 8
        i32.const 131599
        i32.const 16
        call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hc8de599bcba76279E
        unreachable
      end
      local.get 0
      i32.load offset=8
      local.set 3
      local.get 0
      i32.load offset=4
      local.set 1
      br 0 (;@1;)
    end
  )
  (func $userIdsWithoutAddress (;334;) (type 14)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
    local.set 1
    call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$13get_num_users17h796f9a08dadd0dcdE
    local.set 2
    local.get 0
    i32.const 0
    i32.store8 offset=28
    local.get 0
    local.get 2
    i32.store offset=24
    local.get 0
    i32.const 1
    i32.store offset=20
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.get 0
        i32.const 20
        i32.add
        call $_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h5dab0c14d47e874dE
        local.get 0
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=12
        local.tee 2
        call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$21is_empty_user_address17h0eb9abfdad94473cE
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 2
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h5601705709a972acE
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 1
    call $mBufferGetLength
    i32.store offset=28
    local.get 0
    i32.const 0
    i32.store offset=24
    local.get 0
    local.get 1
    i32.store offset=20
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        local.get 0
        i32.const 20
        i32.add
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3da7bb117a9a755eE
        local.get 0
        i32.load
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=4
        call $mBufferFinish
        drop
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $fundById (;335;) (type 14)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    local.get 0
    i32.const 8
    i32.add
    i32.const 0
    i32.const 133454
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h13fef3507539b176E
    call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he9b9f9d3e0b60c89E
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        call $_ZN123_$LT$user_fund_storage..types..fund_item..FundItem$LT$M$GT$$u20$as$u20$dharitri_sc_codec..default_traits..EncodeDefault$GT$10is_default17h00950f7cce70cebeE
        br_if 0 (;@2;)
        local.get 0
        i32.const 8
        i32.add
        call $_ZN11dharitri_sc5types7managed7wrapped7builder22managed_buffer_builder36ManagedBufferBuilder$LT$M$C$Impl$GT$14new_from_slice17h7d5e49533a4cf43fE
        local.tee 1
        call $_ZN123_$LT$user_fund_storage..types..fund_type..FundDescription$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h1f9e16ad9bc7d8b0E
        local.get 0
        i32.load offset=24
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h244dd97c16de4444E
        local.get 0
        i32.load offset=28
        local.get 1
        call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hb5a146f546b739e9E
        local.get 0
        i32.load offset=32
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h244dd97c16de4444E
        local.get 0
        i32.load offset=36
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h244dd97c16de4444E
        local.get 0
        i32.load offset=40
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h244dd97c16de4444E
        local.get 0
        i32.load offset=44
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h244dd97c16de4444E
        local.get 1
        call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hd777fdfe78ea699cE
        br 1 (;@1;)
      end
      i32.const 1
      i32.const 0
      call $finish
    end
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $totalStake (;336;) (type 14)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    i32.const 0
    call $_ZN17user_fund_storage16fund_view_module14FundViewModule20get_user_total_stake17h04d9bc9c71c27624E
    call $bigIntFinishUnsigned
  )
  (func $getUserStake (;337;) (type 14)
    (local i32)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    block ;; label = @1
      block ;; label = @2
        i32.const 132774
        i32.const 12
        call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbf27df68fc427cceE
        call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$11get_user_id17h53d2b84c81f83ac0E
        local.tee 0
        br_if 0 (;@2;)
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      call $_ZN17user_fund_storage16fund_view_module14FundViewModule20get_user_total_stake17h04d9bc9c71c27624E
      local.set 0
    end
    local.get 0
    call $bigIntFinishUnsigned
  )
  (func $getUserWithdrawOnlyStake (;338;) (type 14)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    i32.const 132774
    i32.const 12
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbf27df68fc427cceE
    i32.const 0
    call $_ZN17user_fund_storage16fund_view_module14FundViewModule33get_user_stake_of_type_by_address17h84fe799da510cc6bE
    call $bigIntFinishUnsigned
  )
  (func $getUserWaitingStake (;339;) (type 14)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    i32.const 132774
    i32.const 12
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbf27df68fc427cceE
    i32.const 1
    call $_ZN17user_fund_storage16fund_view_module14FundViewModule33get_user_stake_of_type_by_address17h84fe799da510cc6bE
    call $bigIntFinishUnsigned
  )
  (func $getUserActiveStake (;340;) (type 14)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    i32.const 132774
    i32.const 12
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbf27df68fc427cceE
    i32.const 4
    call $_ZN17user_fund_storage16fund_view_module14FundViewModule33get_user_stake_of_type_by_address17h84fe799da510cc6bE
    call $bigIntFinishUnsigned
  )
  (func $getUserUnstakedStake (;341;) (type 14)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    i32.const 132774
    i32.const 12
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbf27df68fc427cceE
    i32.const 5
    call $_ZN17user_fund_storage16fund_view_module14FundViewModule33get_user_stake_of_type_by_address17h84fe799da510cc6bE
    call $bigIntFinishUnsigned
  )
  (func $getUserDeferredPaymentStake (;342;) (type 14)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    i32.const 132774
    i32.const 12
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbf27df68fc427cceE
    i32.const 6
    call $_ZN17user_fund_storage16fund_view_module14FundViewModule33get_user_stake_of_type_by_address17h84fe799da510cc6bE
    call $bigIntFinishUnsigned
  )
  (func $getTotalWithdrawOnlyStake (;343;) (type 14)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    i32.const 0
    i32.const 0
    call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
    call $bigIntFinishUnsigned
  )
  (func $getTotalWaitingStake (;344;) (type 14)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    i32.const 0
    i32.const 1
    call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
    call $bigIntFinishUnsigned
  )
  (func $getTotalActiveStake (;345;) (type 14)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    i32.const 0
    i32.const 4
    call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
    call $bigIntFinishUnsigned
  )
  (func $getTotalUnstakedStake (;346;) (type 14)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    i32.const 0
    i32.const 5
    call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
    call $bigIntFinishUnsigned
  )
  (func $getTotalDeferredPaymentStake (;347;) (type 14)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    i32.const 0
    i32.const 6
    call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
    call $bigIntFinishUnsigned
  )
  (func $getUserStakeByType (;348;) (type 14)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    block ;; label = @1
      block ;; label = @2
        i32.const 132774
        i32.const 12
        call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbf27df68fc427cceE
        call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$11get_user_id17h53d2b84c81f83ac0E
        local.tee 1
        br_if 0 (;@2;)
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E
        local.set 1
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E
        local.set 2
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E
        local.set 3
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E
        local.set 4
        local.get 0
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E
        i32.store offset=28
        local.get 0
        local.get 4
        i32.store offset=24
        local.get 0
        local.get 3
        i32.store offset=20
        local.get 0
        local.get 2
        i32.store offset=16
        local.get 0
        local.get 1
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 0
      i32.const 12
      i32.add
      local.get 1
      call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_by_type17h0c36df539b780769E
    end
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io6finish12finish_multi17ha482b1c9d054b43fE
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $getTotalStakeByType (;349;) (type 14)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    local.get 0
    i32.const 12
    i32.add
    i32.const 0
    call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_by_type17h0c36df539b780769E
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io6finish12finish_multi17ha482b1c9d054b43fE
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $getAllUserStakeByType (;350;) (type 14)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
    local.set 1
    call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$13get_num_users17h796f9a08dadd0dcdE
    local.set 2
    local.get 0
    i32.const 0
    i32.store8 offset=36
    local.get 0
    local.get 2
    i32.store offset=32
    local.get 0
    i32.const 1
    i32.store offset=28
    local.get 0
    i32.const 44
    i32.add
    local.set 3
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 16
        i32.add
        local.get 0
        i32.const 28
        i32.add
        call $_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h5dab0c14d47e874dE
        local.get 0
        i32.load offset=16
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=20
        local.tee 2
        call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$16get_user_address17h27f4a515de130ab0E
        local.set 4
        local.get 3
        local.get 2
        call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_by_type17h0c36df539b780769E
        local.get 4
        local.get 1
        call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17he2ebdc054870bc35E
        local.get 0
        i32.load offset=44
        local.get 1
        call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17ha78fbfca64b9965dE
        local.get 0
        i32.load offset=48
        local.get 1
        call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17ha78fbfca64b9965dE
        local.get 0
        i32.load offset=52
        local.get 1
        call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17ha78fbfca64b9965dE
        local.get 0
        i32.load offset=56
        local.get 1
        call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17ha78fbfca64b9965dE
        local.get 0
        i32.load offset=60
        local.get 1
        call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17ha78fbfca64b9965dE
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 1
    call $mBufferGetLength
    i32.store offset=48
    local.get 0
    i32.const 0
    i32.store offset=44
    local.get 0
    local.get 1
    i32.store offset=40
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.get 0
        i32.const 40
        i32.add
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3da7bb117a9a755eE
        local.get 0
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=12
        call $mBufferFinish
        drop
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $getUserDeferredPaymentList (;351;) (type 14)
    (local i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    i32.const 132774
    i32.const 12
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbf27df68fc427cceE
    local.set 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
    local.set 2
    block ;; label = @1
      local.get 1
      call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$11get_user_id17h53d2b84c81f83ac0E
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 12
      i32.add
      local.get 1
      i32.const 6
      call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$17fund_list_by_user17hf4ed2b79213eae10E
      call $_ZN11dharitri_sc7storage11storage_get11storage_get17hf6af4b39ab7abe80E
      local.get 0
      i32.load offset=16
      local.set 1
      loop ;; label = @2
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 24
        i32.add
        local.get 1
        call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
        call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he9b9f9d3e0b60c89E
        local.get 0
        i32.load offset=56
        local.set 1
        local.get 0
        i64.load offset=24
        i64.const 6
        i64.ne
        br_if 0 (;@2;)
        local.get 0
        i64.load offset=32
        local.set 3
        local.get 0
        i32.load offset=44
        local.get 2
        call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17ha78fbfca64b9965dE
        local.get 3
        local.get 2
        call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17hee7a0f9f2d7f9b93E
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 2
    call $mBufferGetLength
    i32.store offset=32
    local.get 0
    i32.const 0
    i32.store offset=28
    local.get 0
    local.get 2
    i32.store offset=24
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        local.get 0
        i32.const 24
        i32.add
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3da7bb117a9a755eE
        local.get 0
        i32.load
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=4
        call $mBufferFinish
        drop
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $getFullWaitingList (;352;) (type 14)
    (local i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
    local.set 1
    local.get 0
    i32.const 12
    i32.add
    i32.const 1
    call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$21get_fund_list_by_type17h46b24c0fb000ba69E
    local.get 0
    i32.load offset=16
    local.set 2
    block ;; label = @1
      loop ;; label = @2
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 24
        i32.add
        local.get 2
        call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
        call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he9b9f9d3e0b60c89E
        local.get 0
        i32.load offset=48
        local.set 2
        local.get 0
        i64.load offset=24
        i64.const 1
        i64.ne
        br_if 0 (;@2;)
        local.get 0
        i64.load offset=32
        local.set 3
        local.get 0
        i32.load offset=44
        local.set 4
        local.get 0
        i32.load offset=40
        call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$16get_user_address17h27f4a515de130ab0E
        local.get 1
        call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17he2ebdc054870bc35E
        local.get 4
        local.get 1
        call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17ha78fbfca64b9965dE
        local.get 3
        local.get 1
        call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17hee7a0f9f2d7f9b93E
        br 0 (;@2;)
      end
    end
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
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        local.get 0
        i32.const 24
        i32.add
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3da7bb117a9a755eE
        local.get 0
        i32.load
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=4
        call $mBufferFinish
        drop
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $getFullActiveList (;353;) (type 14)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
    local.set 1
    local.get 0
    i32.const 12
    i32.add
    i32.const 4
    call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$21get_fund_list_by_type17h46b24c0fb000ba69E
    local.get 0
    i32.load offset=16
    local.set 2
    block ;; label = @1
      loop ;; label = @2
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 24
        i32.add
        local.get 2
        call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
        call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he9b9f9d3e0b60c89E
        local.get 0
        i32.load offset=48
        local.set 2
        local.get 0
        i64.load offset=24
        i64.const 4
        i64.ne
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=44
        local.set 3
        block ;; label = @3
          block ;; label = @4
            local.get 0
            i32.load offset=40
            local.tee 4
            call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$21is_empty_user_address17h0eb9abfdad94473cE
            br_if 0 (;@4;)
            local.get 4
            call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$16get_user_address17h27f4a515de130ab0E
            local.set 4
            br 1 (;@3;)
          end
          i32.const 131419
          i32.const 32
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
          local.set 4
        end
        local.get 4
        local.get 1
        call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17he2ebdc054870bc35E
        local.get 3
        local.get 1
        call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17ha78fbfca64b9965dE
        br 0 (;@2;)
      end
    end
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
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        local.get 0
        i32.const 24
        i32.add
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3da7bb117a9a755eE
        local.get 0
        i32.load
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=4
        call $mBufferFinish
        drop
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $stakeNodes (;354;) (type 14)
    (local i32 i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 848
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17h6a5689ee4d3fe6fcE
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h229a5d43db11014fE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hf5045d7af47ce291E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc87c253e189fb0afE
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=440
    local.get 0
    i32.const 440
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17he9e1f82211bea922E
    local.set 2
    local.get 0
    i32.load offset=440
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hf1b4eba2371c2fccE
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$17is_bootstrap_mode17h899d217996a24467E
                br_if 0 (;@6;)
                call $_ZN17delegation_latest22reset_checkpoint_state26ResetCheckpointStateModule24is_global_op_in_progress17hb2123a554bee1c97E
                br_if 1 (;@5;)
                call $_ZN17delegation_latest13rewards_state17RewardStateModule17total_unprotected17h83f87d9a7a8e4069E
                local.get 1
                call $_ZN4core3cmp10PartialOrd2ge17h7eafa998844dc333E
                i32.eqz
                br_if 2 (;@4;)
                call $_ZN17delegation_latest16user_stake_state20UserStakeStateModule26validate_owner_stake_share17h98eb67813bed2f0cE
                local.get 0
                i32.const 0
                i32.store offset=8
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
                local.set 3
                local.get 0
                local.get 2
                call $mBufferGetLength
                i32.store offset=420
                local.get 0
                i32.const 0
                i32.store offset=416
                local.get 0
                local.get 2
                i32.store offset=412
                loop ;; label = @7
                  local.get 0
                  i32.const 440
                  i32.add
                  local.get 0
                  i32.const 412
                  i32.add
                  call $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h509769ab263ec766E
                  local.get 0
                  i32.load8_u offset=440
                  i32.eqz
                  br_if 4 (;@3;)
                  local.get 0
                  i32.load offset=441 align=1
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
                  local.tee 4
                  call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$11get_node_id17hf07bb3092cab1d3eE
                  local.tee 2
                  i32.eqz
                  br_if 5 (;@2;)
                  local.get 0
                  i32.const 440
                  i32.add
                  local.get 2
                  call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$14get_node_state17h33d2320c53e1cb72E
                  local.get 0
                  i64.load offset=440
                  local.get 0
                  i64.load offset=448
                  i64.const 0
                  local.get 5
                  call $_ZN83_$LT$node_storage..types..node_state..NodeState$u20$as$u20$core..cmp..PartialEq$GT$2eq17h0346db99ac50b005E
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 0
                  i32.const 8
                  i32.add
                  local.get 2
                  call $_ZN8arrayvec8arrayvec21ArrayVec$LT$T$C$_$GT$4push17h40a57745c5b9ddfaE
                  local.get 2
                  call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$18get_node_signature17h19ebec67c2737af9E
                  local.set 6
                  local.get 3
                  local.get 4
                  call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17he1298c6bcb990363E
                  call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
                  call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h454322d51d5bc21eE
                  local.tee 4
                  local.get 6
                  call $mBufferAppend
                  drop
                  local.get 3
                  local.get 4
                  call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4ac91cc2b70259beE
                  local.get 2
                  i64.const 1
                  local.get 5
                  call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$14set_node_state17h59eecf249503eff7E
                  br 0 (;@7;)
                end
              end
              i32.const 131961
              i32.const 36
              call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
              unreachable
            end
            i32.const 131900
            i32.const 61
            call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
            unreachable
          end
          i32.const 131815
          i32.const 43
          call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
          unreachable
        end
        local.get 0
        i32.load offset=8
        local.set 2
        local.get 0
        i32.const 440
        i32.add
        i32.const 4
        i32.add
        local.get 0
        i32.const 8
        i32.add
        i32.const 4
        i32.add
        i32.const 400
        call $memcpy
        drop
        local.get 0
        i32.const 412
        i32.add
        call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$28get_auction_contract_address17hc29ca24046880535E
        local.get 2
        local.get 3
        call $_ZN17delegation_latest13auction_proxy48AuctionProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$5stake17h1872bd7d3e271305E
        local.get 0
        local.get 2
        i32.store offset=440
        local.get 0
        i32.load offset=420
        local.set 2
        local.get 0
        i64.load offset=412 align=4
        local.set 5
        local.get 0
        i32.const 412
        i32.add
        local.get 0
        i32.const 440
        i32.add
        call $_ZN17delegation_latest15node_activation13CallbackProxy22auction_stake_callback17h0315543bd602ebdbE
        local.get 0
        local.get 5
        i64.store offset=432 align=4
        local.get 0
        local.get 1
        i32.store offset=428
        local.get 0
        local.get 2
        i32.store offset=424
        local.get 0
        i32.const 412
        i32.add
        call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hb042a8fd05ee3a69E
        unreachable
      end
      i32.const 131858
      i32.const 21
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
      unreachable
    end
    i32.const 131879
    i32.const 21
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
    unreachable
  )
  (func $unStakeNodes (;355;) (type 14)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17h6a5689ee4d3fe6fcE
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h229a5d43db11014fE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hf5045d7af47ce291E
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17he9e1f82211bea922E
    local.set 1
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hf1b4eba2371c2fccE
    i32.const 0
    local.get 1
    call $_ZN17delegation_latest15node_activation20NodeActivationModule13unstake_nodes17hbb8649f1aad193a1E
    unreachable
  )
  (func $unStakeNodesAndTokens (;356;) (type 14)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17h6a5689ee4d3fe6fcE
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h229a5d43db11014fE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hf5045d7af47ce291E
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17he9e1f82211bea922E
    local.set 1
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hf1b4eba2371c2fccE
    i32.const 1
    local.get 1
    call $_ZN17delegation_latest15node_activation20NodeActivationModule13unstake_nodes17hbb8649f1aad193a1E
    unreachable
  )
  (func $forceNodeUnBondPeriod (;357;) (type 14)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17h6a5689ee4d3fe6fcE
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h229a5d43db11014fE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hf5045d7af47ce291E
    local.get 0
    i32.const 0
    i32.store offset=20
    local.get 0
    i32.const 20
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17he9e1f82211bea922E
    local.set 1
    local.get 0
    i32.load offset=20
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hf1b4eba2371c2fccE
    local.get 0
    local.get 1
    call $mBufferGetLength
    i32.store offset=28
    local.get 0
    i32.const 0
    i32.store offset=24
    local.get 0
    local.get 1
    i32.store offset=20
    block ;; label = @1
      block ;; label = @2
        loop ;; label = @3
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.const 20
          i32.add
          call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3da7bb117a9a755eE
          local.get 0
          i32.load offset=8
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.load offset=12
          call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$11get_node_id17hf07bb3092cab1d3eE
          local.tee 1
          i32.eqz
          br_if 2 (;@1;)
          local.get 1
          i64.const 5
          i64.const 0
          call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$14set_node_state17h59eecf249503eff7E
          br 0 (;@3;)
        end
      end
      local.get 0
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131858
    i32.const 21
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
    unreachable
  )
  (func $unBondNodes (;358;) (type 14)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 816
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17h6a5689ee4d3fe6fcE
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h229a5d43db11014fE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hf5045d7af47ce291E
    local.get 0
    i32.const 0
    i32.store offset=412
    local.get 0
    i32.const 412
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17he9e1f82211bea922E
    local.set 1
    local.get 0
    i32.load offset=412
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hf1b4eba2371c2fccE
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              call $_ZN17delegation_latest22reset_checkpoint_state26ResetCheckpointStateModule24is_global_op_in_progress17hb2123a554bee1c97E
              br_if 0 (;@5;)
              local.get 1
              call $mBufferGetLength
              i32.eqz
              br_if 1 (;@4;)
              local.get 0
              i32.const 0
              i32.store offset=8
              local.get 0
              local.get 1
              call $mBufferGetLength
              i32.store offset=420
              local.get 0
              i32.const 0
              i32.store offset=416
              local.get 0
              local.get 1
              i32.store offset=412
              loop ;; label = @6
                local.get 0
                local.get 0
                i32.const 412
                i32.add
                call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3da7bb117a9a755eE
                local.get 0
                i32.load
                i32.eqz
                br_if 3 (;@3;)
                local.get 0
                i32.load offset=4
                call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$11get_node_id17hf07bb3092cab1d3eE
                local.tee 2
                i32.eqz
                br_if 4 (;@2;)
                local.get 2
                call $_ZN17delegation_latest15node_activation20NodeActivationModule35prepare_node_for_unbond_if_possible17hd41f3275b4b791ceE
                i32.eqz
                br_if 5 (;@1;)
                local.get 0
                i32.const 8
                i32.add
                local.get 2
                call $_ZN8arrayvec8arrayvec21ArrayVec$LT$T$C$_$GT$4push17h40a57745c5b9ddfaE
                br 0 (;@6;)
              end
            end
            i32.const 131900
            i32.const 61
            call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
            unreachable
          end
          i32.const 132168
          i32.const 20
          call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
          unreachable
        end
        local.get 0
        i32.const 412
        i32.add
        local.get 0
        i32.const 8
        i32.add
        i32.const 404
        call $memcpy
        drop
        local.get 0
        i32.const 412
        i32.add
        local.get 1
        call $_ZN17delegation_latest15node_activation20NodeActivationModule14perform_unbond17hef56e24858cb11a0E
        unreachable
      end
      i32.const 131858
      i32.const 21
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
      unreachable
    end
    i32.const 132145
    i32.const 23
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
    unreachable
  )
  (func $unBondAllPossibleNodes (;359;) (type 14)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 816
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17h6a5689ee4d3fe6fcE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    block ;; label = @1
      call $_ZN17delegation_latest22reset_checkpoint_state26ResetCheckpointStateModule24is_global_op_in_progress17hb2123a554bee1c97E
      br_if 0 (;@1;)
      call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$9num_nodes17h8e66ca94b51751c8E
      call $_ZN11dharitri_sc7storage11storage_get11storage_get17hb502f2b686e193c1E
      local.set 1
      local.get 0
      i32.const 0
      i32.store offset=8
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
      local.set 2
      block ;; label = @2
        loop ;; label = @3
          block ;; label = @4
            local.get 1
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=8
            i32.eqz
            br_if 2 (;@2;)
            local.get 0
            i32.const 412
            i32.add
            local.get 0
            i32.const 8
            i32.add
            i32.const 404
            call $memcpy
            drop
            local.get 0
            i32.const 412
            i32.add
            local.get 2
            call $_ZN17delegation_latest15node_activation20NodeActivationModule14perform_unbond17hef56e24858cb11a0E
            unreachable
          end
          block ;; label = @4
            local.get 1
            call $_ZN17delegation_latest15node_activation20NodeActivationModule35prepare_node_for_unbond_if_possible17hd41f3275b4b791ceE
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.const 8
            i32.add
            local.get 1
            call $_ZN8arrayvec8arrayvec21ArrayVec$LT$T$C$_$GT$4push17h40a57745c5b9ddfaE
            local.get 2
            local.get 1
            call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$18get_node_id_to_bls17hc99130c7d9a05e27E
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4ac91cc2b70259beE
          end
          local.get 1
          i32.const -1
          i32.add
          local.set 1
          br 0 (;@3;)
        end
      end
      local.get 0
      i32.const 816
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131900
    i32.const 61
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
    unreachable
  )
  (func $claimUnusedFunds (;360;) (type 14)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17h6a5689ee4d3fe6fcE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    block ;; label = @1
      call $_ZN17delegation_latest22reset_checkpoint_state26ResetCheckpointStateModule24is_global_op_in_progress17hb2123a554bee1c97E
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.add
      call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$28get_auction_contract_address17hc29ca24046880535E
      call $_ZN17delegation_latest13auction_proxy48AuctionProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$5claim17h0f35ceaf327850ffE
      local.get 0
      i32.const 4
      i32.add
      call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h927a94a4738382cfE
      unreachable
    end
    i32.const 131900
    i32.const 61
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
    unreachable
  )
  (func $unJailNodes (;361;) (type 14)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$4rewa17h439c5c42be6889f8E
    drop
    call $_ZN11dharitri_sc2io15call_value_init18arg_payment_amount17h7034500026657fc7E
    local.set 1
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17h6a5689ee4d3fe6fcE
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h229a5d43db11014fE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hf5045d7af47ce291E
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17he9e1f82211bea922E
    local.set 2
    local.get 0
    i32.load offset=16
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hf1b4eba2371c2fccE
    local.get 0
    local.get 2
    call $mBufferGetLength
    i32.store offset=44
    local.get 0
    i32.const 0
    i32.store offset=40
    local.get 0
    local.get 2
    i32.store offset=36
    block ;; label = @1
      block ;; label = @2
        loop ;; label = @3
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.const 36
          i32.add
          call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3da7bb117a9a755eE
          local.get 0
          i32.load offset=8
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.load offset=12
          call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$11get_node_id17hf07bb3092cab1d3eE
          local.tee 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 16
          i32.add
          local.get 3
          call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$14get_node_state17h33d2320c53e1cb72E
          local.get 0
          i64.load offset=16
          local.get 0
          i64.load offset=24
          i64.const 3
          local.get 4
          call $_ZN83_$LT$node_storage..types..node_state..NodeState$u20$as$u20$core..cmp..PartialEq$GT$2eq17h0346db99ac50b005E
          br_if 0 (;@3;)
        end
        i32.const 131997
        i32.const 19
        call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
        unreachable
      end
      local.get 0
      i32.const 36
      i32.add
      call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$28get_auction_contract_address17hc29ca24046880535E
      local.get 2
      call $_ZN17delegation_latest13auction_proxy48AuctionProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$6unjail17h42bacb832ad1e577E
      local.get 0
      local.get 1
      i32.store offset=28
      local.get 0
      local.get 0
      i32.load offset=44
      i32.store offset=24
      local.get 0
      local.get 0
      i64.load offset=36 align=4
      i64.store offset=16 align=4
      local.get 0
      i32.const 16
      i32.add
      call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17ha1194954fd1635b0E
      unreachable
    end
    i32.const 131858
    i32.const 21
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
    unreachable
  )
  (func $unStakeTokens (;362;) (type 14)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    local.get 0
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc87c253e189fb0afE
    local.tee 1
    i32.store
    local.get 1
    call $_ZN61_$LT$C$u20$as$u20$delegation_latest..events..EventsModule$GT$20unstake_tokens_event17h5e41e1734474f8cbE
    local.get 0
    i32.const 4
    i32.add
    call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$28get_auction_contract_address17hc29ca24046880535E
    local.get 0
    call $_ZN17delegation_latest13auction_proxy48AuctionProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14unstake_tokens17h7b71abd5bfae3b36E
    local.get 0
    i32.const 4
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h927a94a4738382cfE
    unreachable
  )
  (func $unBondTokens (;363;) (type 14)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    local.get 0
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc87c253e189fb0afE
    local.tee 1
    i32.store
    local.get 1
    call $_ZN61_$LT$C$u20$as$u20$delegation_latest..events..EventsModule$GT$19unbond_tokens_event17h81492df088c3c53cE
    local.get 0
    i32.const 4
    i32.add
    call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$28get_auction_contract_address17hc29ca24046880535E
    local.get 0
    call $_ZN17delegation_latest13auction_proxy48AuctionProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$13unbond_tokens17h045000230cbd0a11E
    local.get 0
    i32.const 4
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h927a94a4738382cfE
    unreachable
  )
  (func $getAuctionContractAddress (;364;) (type 14)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$28get_auction_contract_address17hc29ca24046880535E
    call $mBufferFinish
    drop
  )
  (func $getServiceFee (;365;) (type 14)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$15get_service_fee17h22136a6896d1f30cE
    call $bigIntFinishUnsigned
  )
  (func $getTotalDelegationCap (;366;) (type 14)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$24get_total_delegation_cap17hae62de003d66c4a4E
    call $bigIntFinishUnsigned
  )
  (func $isBootstrapMode (;367;) (type 14)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$17is_bootstrap_mode17h899d217996a24467E
    i64.extend_i32_u
    call $smallIntFinishSigned
  )
  (func $getOwnerMinStakeShare (;368;) (type 14)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$25get_owner_min_stake_share17h8b638c97a099e01dE
    call $bigIntFinishUnsigned
  )
  (func $getNumBlocksBeforeUnBond (;369;) (type 14)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$26get_n_blocks_before_unbond17h5c54111780710ec4E
    call $smallIntFinishUnsigned
  )
  (func $setNumBlocksBeforeUnBond (;370;) (type 14)
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17h6a5689ee4d3fe6fcE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17he0044aee39e22080E
    call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$26set_n_blocks_before_unbond17ha7a748099902dd81E
  )
  (func $getMinimumStake (;371;) (type 14)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$17get_minimum_stake17h55e9fc0d6bdf0e13E
    call $bigIntFinishUnsigned
  )
  (func $setMinimumStake (;372;) (type 14)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17h6a5689ee4d3fe6fcE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    local.get 0
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc87c253e189fb0afE
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$17set_minimum_stake17h4e93b476f950e4ecE
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $getGlobalOperationCheckpoint (;373;) (type 14)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    local.get 0
    call $_ZN91_$LT$C$u20$as$u20$delegation_latest..reset_checkpoint_state..ResetCheckpointStateModule$GT$20global_op_checkpoint17hf4b577f07d9e93f7E
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h9a7af5e9efb969adE
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 0
            i32.load
            i32.const -4
            i32.add
            local.tee 1
            i32.const 1
            local.get 1
            i32.const 3
            i32.lt_u
            select
            br_table 0 (;@4;) 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          i64.const 0
          call $smallIntFinishUnsigned
          br 2 (;@1;)
        end
        i32.const 1
        call $_ZN11dharitri_sc5types7managed7wrapped7builder22managed_buffer_builder36ManagedBufferBuilder$LT$M$C$Impl$GT$14new_from_slice17h7d5e49533a4cf43fE
        local.tee 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h22758c0eaf71226fE
        local.get 0
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types8impl_ref86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$T$GT$24dep_encode_or_handle_err17he8d956d18883561dE
        local.get 1
        call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hd777fdfe78ea699cE
        br 1 (;@1;)
      end
      i32.const 2
      call $_ZN11dharitri_sc5types7managed7wrapped7builder22managed_buffer_builder36ManagedBufferBuilder$LT$M$C$Impl$GT$14new_from_slice17h7d5e49533a4cf43fE
      local.tee 1
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h22758c0eaf71226fE
      local.get 0
      i32.load offset=4
      local.get 1
      call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hb5a146f546b739e9E
      local.get 0
      i32.const 8
      i32.add
      local.get 1
      call $_ZN17dharitri_sc_codec14impl_for_types8impl_ref86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$T$GT$24dep_encode_or_handle_err17hac0d1a916271f4e5E
      local.get 1
      call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hd777fdfe78ea699cE
    end
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $isGlobalOperationInProgress (;374;) (type 14)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    call $_ZN17delegation_latest22reset_checkpoint_state26ResetCheckpointStateModule24is_global_op_in_progress17hb2123a554bee1c97E
    i64.extend_i32_u
    call $smallIntFinishSigned
  )
  (func $getTotalCumulatedRewards (;375;) (type 14)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    call $_ZN17delegation_latest13rewards_state17RewardStateModule27get_total_cumulated_rewards17hb0627139b9970b1aE
    call $bigIntFinishUnsigned
  )
  (func $getClaimableRewards (;376;) (type 14)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    block ;; label = @1
      block ;; label = @2
        i32.const 131694
        i32.const 4
        call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbf27df68fc427cceE
        call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$11get_user_id17h53d2b84c81f83ac0E
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 8
        i32.add
        local.get 1
        call $_ZN17delegation_latest13rewards_state17RewardStateModule25load_updated_user_rewards17hcf438bf56fc24b68E
        local.get 0
        i32.load offset=12
        local.set 1
        br 1 (;@1;)
      end
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E
      local.set 1
    end
    local.get 1
    call $bigIntFinishUnsigned
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $getTotalUnclaimedRewards (;377;) (type 14)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    local.set 1
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$13get_num_users17h796f9a08dadd0dcdE
    local.set 2
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E
    local.set 3
    block ;; label = @1
      loop ;; label = @2
        local.get 2
        local.get 1
        i32.eq
        br_if 1 (;@1;)
        local.get 0
        i32.const 8
        i32.add
        local.get 1
        i32.const 1
        i32.add
        local.tee 1
        call $_ZN17delegation_latest13rewards_state17RewardStateModule25load_updated_user_rewards17hcf438bf56fc24b68E
        local.get 3
        local.get 0
        i32.load offset=12
        call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators122_$LT$impl$u20$core..ops..arith..AddAssign$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17hb34bbfa79562e0bcE
        br 0 (;@2;)
      end
    end
    local.get 3
    call $bigIntFinishUnsigned
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $getTotalUnProtected (;378;) (type 14)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    call $_ZN17delegation_latest13rewards_state17RewardStateModule17total_unprotected17h83f87d9a7a8e4069E
    call $bigIntFinishUnsigned
  )
  (func $validateOwnerStakeShare (;379;) (type 14)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    call $_ZN17delegation_latest16user_stake_state20UserStakeStateModule26validate_owner_stake_share17h98eb67813bed2f0cE
  )
  (func $validateDelegationCapInvariant (;380;) (type 14)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    call $_ZN17delegation_latest16user_stake_state20UserStakeStateModule33validate_delegation_cap_invariant17ha3c4f97f371fb86eE
  )
  (func $continueGlobalOperation (;381;) (type 14)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    i32.const 133331
    i32.const 23
    call $_ZN19dharitri_sc_modules8features14FeaturesModule16check_feature_on17h791532f54211e5c6E
    local.get 0
    call $_ZN91_$LT$C$u20$as$u20$delegation_latest..reset_checkpoint_state..ResetCheckpointStateModule$GT$20global_op_checkpoint17hf4b577f07d9e93f7E
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h9a7af5e9efb969adE
    local.get 0
    call $_ZN17delegation_latest26reset_checkpoint_endpoints22ResetCheckpointsModule25continue_global_operation17hc041c2e33b9638aeE
    call $_ZN11dharitri_sc2io6finish12finish_multi17h4bbec2dc2e4cd3f0E
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $modifyTotalDelegationCap (;382;) (type 14)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17h6a5689ee4d3fe6fcE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc87c253e189fb0afE
    local.set 1
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                call $_ZN17delegation_latest22reset_checkpoint_state26ResetCheckpointStateModule24is_global_op_in_progress17hb2123a554bee1c97E
                br_if 0 (;@6;)
                i32.const 0
                i32.const 1
                call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
                local.set 2
                i32.const 0
                i32.const 4
                call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
                local.set 3
                i32.const 0
                i32.const 5
                call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
                local.set 4
                local.get 3
                local.get 2
                call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators120_$LT$impl$u20$core..ops..arith..Add$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3add17ha5329ea46e263d45E
                local.get 4
                call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators120_$LT$impl$u20$core..ops..arith..Add$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3add17ha5329ea46e263d45E
                local.set 2
                block ;; label = @7
                  block ;; label = @8
                    block ;; label = @9
                      block ;; label = @10
                        call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$17is_bootstrap_mode17h899d217996a24467E
                        br_if 0 (;@10;)
                        local.get 1
                        local.get 2
                        call $_ZN4core3cmp10PartialOrd2le17h802028a75051e57fE
                        i32.eqz
                        br_if 5 (;@5;)
                        i32.const 0
                        local.set 3
                        local.get 1
                        call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$24get_total_delegation_cap17hae62de003d66c4a4E
                        local.tee 2
                        call $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$6bi_cmp17hbed56c773c3bb346E
                        i32.const 255
                        i32.and
                        br_table 9 (;@1;) 2 (;@8;) 1 (;@9;)
                      end
                      local.get 1
                      local.get 2
                      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$6bi_cmp17hbed56c773c3bb346E
                      i32.const 255
                      i32.and
                      i32.const 1
                      i32.eq
                      br_if 2 (;@7;)
                      i32.const 0
                      local.set 3
                      i32.const 0
                      call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$18set_bootstrap_mode17h9fd32ed552345cd8E
                      local.get 1
                      local.get 2
                      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$6bi_cmp17hbed56c773c3bb346E
                      i32.const 255
                      i32.and
                      br_table 8 (;@1;) 1 (;@8;) 0 (;@9;)
                    end
                    local.get 2
                    local.get 1
                    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators120_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h80a5e700536f6f31E
                    local.tee 3
                    call $_ZN17delegation_latest13rewards_state17RewardStateModule17total_unprotected17h83f87d9a7a8e4069E
                    call $_ZN4core3cmp10PartialOrd2le17h802028a75051e57fE
                    i32.eqz
                    br_if 4 (;@4;)
                    block ;; label = @9
                      block ;; label = @10
                        local.get 4
                        local.get 3
                        call $_ZN4core3cmp10PartialOrd2ge17h7eafa998844dc333E
                        br_if 0 (;@10;)
                        local.get 3
                        local.get 4
                        call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators120_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h80a5e700536f6f31E
                        local.set 2
                        br 1 (;@9;)
                      end
                      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E
                      local.set 2
                      local.get 3
                      local.set 4
                    end
                    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E
                    local.set 3
                    br 6 (;@2;)
                  end
                  local.get 4
                  call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$i32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h41b32bc4b1a3cdaeE
                  i32.eqz
                  br_if 4 (;@3;)
                  local.get 1
                  local.get 2
                  call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators120_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h80a5e700536f6f31E
                  local.set 3
                  call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E
                  local.set 2
                  call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E
                  local.set 4
                  br 5 (;@2;)
                end
                local.get 1
                call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$24set_total_delegation_cap17haf8427cf1acbecc3E
                i32.const 0
                local.set 3
                br 5 (;@1;)
              end
              i32.const 133272
              i32.const 59
              call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
              unreachable
            end
            i32.const 133075
            i32.const 66
            call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
            unreachable
          end
          i32.const 133141
          i32.const 65
          call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
          unreachable
        end
        i32.const 133206
        i32.const 66
        call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
        unreachable
      end
      call $_ZN17delegation_latest13rewards_state17RewardStateModule27get_total_cumulated_rewards17hb0627139b9970b1aE
      local.set 5
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E
      local.set 6
      local.get 0
      local.get 4
      i32.store offset=28
      local.get 0
      local.get 2
      i32.store offset=24
      local.get 0
      local.get 3
      i32.store offset=20
      local.get 0
      local.get 1
      i32.store offset=16
      local.get 0
      local.get 5
      i32.store offset=12
      local.get 0
      local.get 6
      i32.store offset=8
      local.get 0
      i64.const 0
      i64.store align=4
      local.get 0
      call $_ZN17delegation_latest26reset_checkpoint_endpoints22ResetCheckpointsModule25continue_global_operation17hc041c2e33b9638aeE
      local.set 3
    end
    local.get 3
    call $_ZN11dharitri_sc2io6finish12finish_multi17h4bbec2dc2e4cd3f0E
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $setServiceFee (;383;) (type 14)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    block ;; label = @1
      block ;; label = @2
        i32.const 0
        i32.const 132315
        i32.const 21
        call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h13fef3507539b176E
        local.tee 1
        i32.const 10001
        i32.ge_u
        br_if 0 (;@2;)
        call $_ZN17delegation_latest22reset_checkpoint_state26ResetCheckpointStateModule24is_global_op_in_progress17hb2123a554bee1c97E
        br_if 1 (;@1;)
        i32.const 0
        local.set 2
        local.get 1
        call $_ZN117_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..convert..From$LT$usize$GT$$GT$4from17h81131e176f07200fE
        local.set 1
        block ;; label = @3
          call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$15get_service_fee17h22136a6896d1f30cE
          local.get 1
          call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp115_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17hf54dbd14825fa8f2E
          br_if 0 (;@3;)
          block ;; label = @4
            call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$17is_bootstrap_mode17h899d217996a24467E
            br_if 0 (;@4;)
            call $_ZN17delegation_latest13rewards_state17RewardStateModule27get_total_cumulated_rewards17hb0627139b9970b1aE
            local.set 2
            call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E
            local.set 3
            local.get 0
            local.get 2
            i32.store offset=16
            local.get 0
            local.get 3
            i32.store offset=12
            local.get 0
            i32.const 0
            i32.store offset=8
            local.get 0
            local.get 1
            i32.store offset=4
            local.get 0
            i32.const 6
            i32.store
            local.get 0
            call $_ZN17delegation_latest26reset_checkpoint_endpoints22ResetCheckpointsModule25continue_global_operation17hc041c2e33b9638aeE
            local.set 2
            br 1 (;@3;)
          end
          local.get 1
          call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$15set_service_fee17h76ab9b7714482571E
        end
        local.get 2
        call $_ZN11dharitri_sc2io6finish12finish_multi17h4bbec2dc2e4cd3f0E
        local.get 0
        i32.const 32
        i32.add
        global.set $__stack_pointer
        return
      end
      i32.const 131698
      i32.const 24
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
      unreachable
    end
    i32.const 133043
    i32.const 32
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
    unreachable
  )
  (func $claimRewards (;384;) (type 14)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          call $_ZN19dharitri_sc_modules5pause11PauseModule10not_paused17h5cbc54bc80d69f44E
          i32.eqz
          br_if 0 (;@3;)
          i32.const 132690
          i32.const 12
          call $_ZN19dharitri_sc_modules8features14FeaturesModule16check_feature_on17h791532f54211e5c6E
          call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h76a88aa9d5d37497E
          local.tee 1
          call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$11get_user_id17h53d2b84c81f83ac0E
          local.tee 2
          i32.eqz
          br_if 1 (;@2;)
          call $_ZN17delegation_latest22reset_checkpoint_state26ResetCheckpointStateModule24is_global_op_in_progress17hb2123a554bee1c97E
          br_if 2 (;@1;)
          local.get 0
          local.get 2
          call $_ZN17delegation_latest13rewards_state17RewardStateModule25load_updated_user_rewards17hcf438bf56fc24b68E
          local.get 0
          local.get 0
          i32.load offset=4
          local.tee 3
          i32.store offset=12
          local.get 0
          local.get 0
          i32.load
          i32.store offset=8
          block ;; label = @4
            local.get 3
            call $_ZN4core3cmp10PartialOrd2gt17hd9d509c4ac11a852E
            i32.eqz
            br_if 0 (;@4;)
            i32.const 133531
            i32.const 16
            call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h398569d3a7140991E
            local.tee 4
            local.get 1
            call $_ZN11dharitri_sc8log_util21serialize_event_topic17hf71adf642156cb4fE
            local.get 4
            local.get 3
            call $_ZN11dharitri_sc8log_util18serialize_log_data17h341074791aaa8b58E
            call $managedWriteLog
            local.get 1
            local.get 3
            call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te191_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$$LP$$RP$$C$$LP$$RP$$C$$LP$$RP$$GT$$GT$8transfer17h1c3fcdb7f7f22cf9E
            call $_ZN73_$LT$C$u20$as$u20$delegation_latest..rewards_state..RewardStateModule$GT$16get_sent_rewards17hbe99356cb6528a2fE
            local.tee 1
            local.get 3
            call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..AddAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17h07c6e548e8930de6E
            local.get 1
            i32.const 133858
            i32.const 12
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
            call $_ZN129_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h1eb9ce70ff858d2cE
            local.get 0
            call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E
            i32.store offset=12
          end
          local.get 2
          local.get 0
          i32.const 8
          i32.add
          call $_ZN17delegation_latest13rewards_state17RewardStateModule22store_user_reward_data17h5940c400bf6fbff6E
          local.get 0
          i32.const 16
          i32.add
          global.set $__stack_pointer
          return
        end
        i32.const 132675
        i32.const 15
        call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
        unreachable
      end
      i32.const 132760
      i32.const 14
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
      unreachable
    end
    i32.const 132702
    i32.const 58
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
    unreachable
  )
  (func $stake (;385;) (type 14)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$4rewa17h439c5c42be6889f8E
    drop
    call $_ZN11dharitri_sc2io15call_value_init18arg_payment_amount17h7034500026657fc7E
    local.set 1
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          call $_ZN19dharitri_sc_modules5pause11PauseModule10not_paused17h5cbc54bc80d69f44E
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$17get_minimum_stake17h55e9fc0d6bdf0e13E
          call $_ZN4core3cmp10PartialOrd2ge17h7eafa998844dc333E
          i32.eqz
          br_if 1 (;@2;)
          call $_ZN17delegation_latest22reset_checkpoint_state26ResetCheckpointStateModule24is_global_op_in_progress17hb2123a554bee1c97E
          br_if 2 (;@1;)
          local.get 0
          call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h76a88aa9d5d37497E
          local.tee 2
          i32.store offset=12
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                local.get 2
                call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$11get_user_id17h53d2b84c81f83ac0E
                local.tee 3
                br_if 0 (;@6;)
                call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$13get_num_users17h796f9a08dadd0dcdE
                i32.const 1
                i32.add
                local.tee 3
                call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$13set_num_users17h0b2ce356ab5db0efE
                local.get 2
                local.get 3
                call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$11set_user_id17hbe6fef260356204fE
                br 1 (;@5;)
              end
              local.get 3
              call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$21is_empty_user_address17h0eb9abfdad94473cE
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 3
            local.get 0
            i32.const 12
            i32.add
            call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$16set_user_address17h10a28b70e7dc85ddE
          end
          i32.const 133522
          i32.const 9
          call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h398569d3a7140991E
          local.tee 2
          local.get 0
          i32.load offset=12
          call $_ZN11dharitri_sc8log_util21serialize_event_topic17hf71adf642156cb4fE
          local.get 2
          local.get 1
          call $_ZN11dharitri_sc8log_util18serialize_log_data17h341074791aaa8b58E
          call $managedWriteLog
          local.get 3
          i64.const 1
          call $getBlockNonce
          local.get 1
          call $_ZN17user_fund_storage11fund_module10FundModule21increase_fund_balance17h03f71147decccc6fE
          call $_ZN17delegation_latest16user_stake_state20UserStakeStateModule33validate_delegation_cap_invariant17ha3c4f97f371fb86eE
          call $_ZN17delegation_latest16user_stake_state20UserStakeStateModule31use_waiting_to_replace_unstaked17h69c038e8bed00281E
          local.get 0
          i32.const 16
          i32.add
          global.set $__stack_pointer
          return
        end
        i32.const 132675
        i32.const 15
        call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
        unreachable
      end
      i32.const 132786
      i32.const 36
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
      unreachable
    end
    i32.const 132822
    i32.const 52
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
    unreachable
  )
  (func $unStake (;386;) (type 14)
    (local i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc87c253e189fb0afE
    local.set 1
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              call $_ZN19dharitri_sc_modules5pause11PauseModule10not_paused17h5cbc54bc80d69f44E
              i32.eqz
              br_if 0 (;@5;)
              block ;; label = @6
                block ;; label = @7
                  call $_ZN17delegation_latest22reset_checkpoint_state26ResetCheckpointStateModule24is_global_op_in_progress17hb2123a554bee1c97E
                  br_if 0 (;@7;)
                  call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h76a88aa9d5d37497E
                  call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$11get_user_id17h53d2b84c81f83ac0E
                  local.tee 2
                  i32.eqz
                  br_if 3 (;@4;)
                  block ;; label = @8
                    block ;; label = @9
                      block ;; label = @10
                        local.get 1
                        local.get 2
                        i32.const 1
                        call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
                        local.get 2
                        i32.const 4
                        call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
                        call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Add$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3add17h3bf14f649a62c8e0E
                        call $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$6bi_cmp17hbed56c773c3bb346E
                        i32.const 255
                        i32.and
                        br_table 2 (;@8;) 0 (;@10;) 1 (;@9;)
                      end
                      i32.const 132395
                      i32.const 56
                      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
                      unreachable
                    end
                    local.get 1
                    call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$17get_minimum_stake17h55e9fc0d6bdf0e13E
                    call $_ZN4core3cmp10PartialOrd2ge17h7eafa998844dc333E
                    i32.eqz
                    br_if 7 (;@1;)
                  end
                  local.get 0
                  local.get 1
                  i32.store offset=4
                  call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E
                  local.set 3
                  local.get 2
                  i32.const 1
                  i32.const 1
                  call $_ZN17user_fund_storage11fund_module10FundModule21first_id_of_user_type17h67f54b6293e8c93dE
                  local.set 4
                  loop ;; label = @8
                    local.get 4
                    i32.eqz
                    br_if 2 (;@6;)
                    local.get 1
                    call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$i32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h41b32bc4b1a3cdaeE
                    br_if 2 (;@6;)
                    local.get 0
                    i32.const 8
                    i32.add
                    local.get 4
                    call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
                    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he9b9f9d3e0b60c89E
                    local.get 0
                    i32.load offset=44
                    local.set 5
                    local.get 3
                    local.get 0
                    i32.const 4
                    i32.add
                    local.get 0
                    i32.const 8
                    i32.add
                    call $_ZN17user_fund_storage11fund_module10FundModule21decrease_fund_balance17h589a8272d8f86c85E
                    local.tee 1
                    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..AddAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17h07c6e548e8930de6E
                    local.get 0
                    i32.load offset=24
                    i64.const 0
                    local.get 6
                    local.get 1
                    call $_ZN17user_fund_storage11fund_module10FundModule21increase_fund_balance17h03f71147decccc6fE
                    local.get 4
                    call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
                    local.get 0
                    i32.const 8
                    i32.add
                    call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4929da203671d234E
                    local.get 0
                    i32.load offset=4
                    local.set 1
                    local.get 5
                    local.set 4
                    br 0 (;@8;)
                  end
                end
                i32.const 132909
                i32.const 54
                call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
                unreachable
              end
              block ;; label = @6
                local.get 1
                call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$i32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h41b32bc4b1a3cdaeE
                br_if 0 (;@6;)
                i32.const 1
                call $_ZN17delegation_latest13rewards_state17RewardStateModule23compute_one_user_reward17haf7fbf9321ccb399E
                local.get 2
                call $_ZN17delegation_latest13rewards_state17RewardStateModule23compute_one_user_reward17haf7fbf9321ccb399E
                call $getBlockNonce
                local.set 6
                call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E
                local.set 3
                local.get 2
                i32.const 4
                i32.const 0
                call $_ZN17user_fund_storage11fund_module10FundModule21first_id_of_user_type17h67f54b6293e8c93dE
                local.set 4
                block ;; label = @7
                  loop ;; label = @8
                    local.get 4
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 1
                    call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$i32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h41b32bc4b1a3cdaeE
                    br_if 1 (;@7;)
                    local.get 0
                    i32.const 8
                    i32.add
                    local.get 4
                    call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
                    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he9b9f9d3e0b60c89E
                    local.get 0
                    i32.load offset=40
                    local.set 5
                    local.get 3
                    local.get 0
                    i32.const 4
                    i32.add
                    local.get 0
                    i32.const 8
                    i32.add
                    call $_ZN17user_fund_storage11fund_module10FundModule21decrease_fund_balance17h589a8272d8f86c85E
                    local.tee 1
                    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..AddAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17h07c6e548e8930de6E
                    local.get 0
                    i32.load offset=24
                    i64.const 5
                    local.get 6
                    local.get 1
                    call $_ZN17user_fund_storage11fund_module10FundModule21increase_fund_balance17h03f71147decccc6fE
                    local.get 4
                    call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
                    local.get 0
                    i32.const 8
                    i32.add
                    call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4929da203671d234E
                    local.get 0
                    i32.load offset=4
                    local.set 1
                    local.get 5
                    local.set 4
                    br 0 (;@8;)
                  end
                end
                local.get 1
                call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$i32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h41b32bc4b1a3cdaeE
                i32.eqz
                br_if 3 (;@3;)
                call $_ZN17delegation_latest16user_stake_state20UserStakeStateModule31use_waiting_to_replace_unstaked17h69c038e8bed00281E
                local.get 2
                i32.const 1
                call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
                i32.const 0
                i32.const 4
                call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
                call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators120_$LT$impl$u20$core..ops..arith..Add$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3add17ha5329ea46e263d45E
                local.tee 4
                call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$i32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h41b32bc4b1a3cdaeE
                br_if 0 (;@6;)
                local.get 4
                call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$17get_minimum_stake17h55e9fc0d6bdf0e13E
                call $_ZN4core3cmp10PartialOrd2ge17h7eafa998844dc333E
                i32.eqz
                br_if 4 (;@2;)
              end
              local.get 0
              i32.const 48
              i32.add
              global.set $__stack_pointer
              return
            end
            i32.const 132675
            i32.const 15
            call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
            unreachable
          end
          i32.const 132963
          i32.const 27
          call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
          unreachable
        end
        i32.const 132874
        i32.const 35
        call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
        unreachable
      end
      i32.const 132498
      i32.const 58
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
      unreachable
    end
    i32.const 132357
    i32.const 38
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
    unreachable
  )
  (func $getUnStakeable (;387;) (type 14)
    (local i32)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    block ;; label = @1
      block ;; label = @2
        i32.const 132774
        i32.const 12
        call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbf27df68fc427cceE
        call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$11get_user_id17h53d2b84c81f83ac0E
        local.tee 0
        br_if 0 (;@2;)
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      i32.const 1
      call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
      local.get 0
      i32.const 4
      call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
      call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Add$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3add17h3bf14f649a62c8e0E
      local.set 0
    end
    local.get 0
    call $bigIntFinishUnsigned
  )
  (func $unBond (;388;) (type 14)
    (local i32 i32 i32 i64 i64 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    block ;; label = @1
      block ;; label = @2
        call $_ZN19dharitri_sc_modules5pause11PauseModule10not_paused17h5cbc54bc80d69f44E
        i32.eqz
        br_if 0 (;@2;)
        call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h76a88aa9d5d37497E
        local.tee 1
        call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$11get_user_id17h53d2b84c81f83ac0E
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
        call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$26get_n_blocks_before_unbond17h5c54111780710ec4E
        local.set 3
        call $getBlockNonce
        local.set 4
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E
        local.set 5
        local.get 2
        i32.const 6
        i32.const 0
        call $_ZN17user_fund_storage11fund_module10FundModule21first_id_of_user_type17h67f54b6293e8c93dE
        local.set 6
        block ;; label = @3
          loop ;; label = @4
            local.get 6
            i32.eqz
            br_if 1 (;@3;)
            call $getGasLeft
            i64.const 50000000
            i64.lt_u
            br_if 1 (;@3;)
            local.get 0
            i32.const 24
            i32.add
            local.get 6
            call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he9b9f9d3e0b60c89E
            local.get 0
            i32.load offset=56
            local.set 7
            block ;; label = @5
              local.get 0
              i64.load offset=24
              i64.const 6
              i64.ne
              br_if 0 (;@5;)
              local.get 4
              local.get 0
              i64.load offset=32
              local.get 3
              i64.add
              i64.lt_u
              br_if 0 (;@5;)
              local.get 5
              local.get 0
              i32.const 24
              i32.add
              call $_ZN17user_fund_storage11fund_module10FundModule11delete_fund17h5844e8fe646eb298E
              local.tee 8
              call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..AddAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17h07c6e548e8930de6E
              local.get 0
              i32.load offset=40
              i64.const 0
              local.get 3
              local.get 8
              call $_ZN17user_fund_storage11fund_module10FundModule21increase_fund_balance17h03f71147decccc6fE
            end
            local.get 6
            call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
            local.get 0
            i32.const 24
            i32.add
            call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4929da203671d234E
            local.get 7
            local.set 6
            br 0 (;@4;)
          end
        end
        local.get 0
        i32.const 12
        i32.add
        local.get 2
        i32.const 0
        call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$17fund_list_by_user17hf4ed2b79213eae10E
        call $_ZN11dharitri_sc7storage11storage_get11storage_get17hf6af4b39ab7abe80E
        local.get 0
        i32.load offset=16
        local.set 6
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E
        local.set 8
        block ;; label = @3
          loop ;; label = @4
            local.get 6
            i32.eqz
            br_if 1 (;@3;)
            call $getGasLeft
            i64.const 50000000
            i64.lt_u
            br_if 1 (;@3;)
            local.get 0
            i32.const 24
            i32.add
            local.get 6
            call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
            local.tee 7
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he9b9f9d3e0b60c89E
            local.get 0
            i32.load offset=56
            local.set 6
            local.get 8
            local.get 0
            i32.const 24
            i32.add
            call $_ZN17user_fund_storage11fund_module10FundModule11delete_fund17h5844e8fe646eb298E
            call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..AddAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17h07c6e548e8930de6E
            local.get 7
            local.get 0
            i32.const 24
            i32.add
            call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4929da203671d234E
            br 0 (;@4;)
          end
        end
        block ;; label = @3
          local.get 8
          call $_ZN4core3cmp10PartialOrd2gt17hd9d509c4ac11a852E
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          local.get 8
          call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te191_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$$LP$$RP$$C$$LP$$RP$$C$$LP$$RP$$GT$$GT$8transfer17h1c3fcdb7f7f22cf9E
        end
        local.get 8
        call $bigIntFinishUnsigned
        local.get 0
        i32.const 64
        i32.add
        global.set $__stack_pointer
        return
      end
      i32.const 132675
      i32.const 15
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
      unreachable
    end
    i32.const 132760
    i32.const 14
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
    unreachable
  )
  (func $getUnBondable (;389;) (type 14)
    (local i32 i32 i32 i64 i64 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    block ;; label = @1
      block ;; label = @2
        i32.const 132774
        i32.const 12
        call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbf27df68fc427cceE
        call $_ZN66_$LT$C$u20$as$u20$user_fund_storage..user_data..UserDataModule$GT$11get_user_id17h53d2b84c81f83ac0E
        local.tee 1
        br_if 0 (;@2;)
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E
        local.set 2
        br 1 (;@1;)
      end
      call $_ZN65_$LT$C$u20$as$u20$delegation_latest..settings..SettingsModule$GT$26get_n_blocks_before_unbond17h5c54111780710ec4E
      local.set 3
      call $getBlockNonce
      local.set 4
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf3ddb4ecba48ba04E
      local.set 5
      local.get 0
      i32.const 12
      i32.add
      local.get 1
      i32.const 6
      call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$17fund_list_by_user17hf4ed2b79213eae10E
      call $_ZN11dharitri_sc7storage11storage_get11storage_get17hf6af4b39ab7abe80E
      local.get 0
      i32.load offset=16
      local.set 2
      block ;; label = @2
        loop ;; label = @3
          local.get 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.const 24
          i32.add
          local.get 2
          call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
          call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he9b9f9d3e0b60c89E
          block ;; label = @4
            local.get 0
            i64.load offset=24
            i64.const 6
            i64.ne
            br_if 0 (;@4;)
            local.get 4
            local.get 0
            i64.load offset=32
            local.get 3
            i64.add
            i64.lt_u
            br_if 0 (;@4;)
            local.get 5
            local.get 0
            i32.load offset=44
            call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..AddAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17h07c6e548e8930de6E
          end
          local.get 0
          i32.load offset=56
          local.set 2
          br 0 (;@3;)
        end
      end
      local.get 5
      local.get 1
      i32.const 0
      call $_ZN17user_fund_storage16fund_view_module14FundViewModule22get_user_stake_of_type17hdb5a0badd68d3f1eE
      call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Add$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3add17h3bf14f649a62c8e0E
      local.set 2
    end
    local.get 2
    call $bigIntFinishUnsigned
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $dustCleanupCheckpoint (;390;) (type 14)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    call $_ZN92_$LT$C$u20$as$u20$delegation_latest..user_stake_dust_cleanup..UserStakeDustCleanupModule$GT$23dust_cleanup_checkpoint17h7e085461df055225E
    call $_ZN11dharitri_sc2io6finish12finish_multi17h921c9916bd3df3ccE
  )
  (func $countDustItemsWaitingList (;391;) (type 14)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    i32.const 0
    local.set 1
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc87c253e189fb0afE
    local.set 2
    local.get 0
    i32.const 12
    i32.add
    i32.const 1
    call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$21get_fund_list_by_type17h46b24c0fb000ba69E
    local.get 0
    i32.load offset=16
    local.set 3
    block ;; label = @1
      loop ;; label = @2
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 24
        i32.add
        local.get 3
        call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
        call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he9b9f9d3e0b60c89E
        local.get 1
        local.get 0
        i32.load offset=44
        local.get 2
        call $_ZN4core3cmp10PartialOrd2lt17hc42555b6cd67fb1eE
        i32.add
        local.set 1
        local.get 0
        i32.load offset=48
        local.set 3
        br 0 (;@2;)
      end
    end
    local.get 1
    i64.extend_i32_u
    call $smallIntFinishUnsigned
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $countDustItemsActive (;392;) (type 14)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    i32.const 0
    local.set 1
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc87c253e189fb0afE
    local.set 2
    local.get 0
    i32.const 12
    i32.add
    i32.const 4
    call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$21get_fund_list_by_type17h46b24c0fb000ba69E
    local.get 0
    i32.load offset=16
    local.set 3
    block ;; label = @1
      loop ;; label = @2
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 24
        i32.add
        local.get 3
        call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
        call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he9b9f9d3e0b60c89E
        local.get 1
        local.get 0
        i32.load offset=44
        local.get 2
        call $_ZN4core3cmp10PartialOrd2lt17hc42555b6cd67fb1eE
        i32.add
        local.set 1
        local.get 0
        i32.load offset=48
        local.set 3
        br 0 (;@2;)
      end
    end
    local.get 1
    i64.extend_i32_u
    call $smallIntFinishUnsigned
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $dustCleanupWaitingList (;393;) (type 14)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17h6a5689ee4d3fe6fcE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc87c253e189fb0afE
    local.set 1
    block ;; label = @1
      call $_ZN17delegation_latest22reset_checkpoint_state26ResetCheckpointStateModule24is_global_op_in_progress17hb2123a554bee1c97E
      br_if 0 (;@1;)
      block ;; label = @2
        call $_ZN92_$LT$C$u20$as$u20$delegation_latest..user_stake_dust_cleanup..UserStakeDustCleanupModule$GT$23dust_cleanup_checkpoint17h7e085461df055225E
        local.tee 2
        call $_ZN11dharitri_sc7storage11storage_get11storage_get17hb502f2b686e193c1E
        local.tee 3
        br_if 0 (;@2;)
        i32.const 1
        i32.const 1
        call $_ZN17user_fund_storage11fund_module10FundModule16first_id_of_type17h6b122609f0f13829E
        local.set 3
      end
      loop ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              local.get 3
              br_if 0 (;@5;)
              local.get 2
              i64.const 0
              call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h7b3ab429e8ba8004E
              br 1 (;@4;)
            end
            call $getGasLeft
            i64.const 19999999
            i64.gt_u
            br_if 1 (;@3;)
            local.get 2
            local.get 3
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hed53681d8dc70c84E
          end
          local.get 0
          i32.const 48
          i32.add
          global.set $__stack_pointer
          return
        end
        local.get 0
        i32.const 8
        i32.add
        local.get 3
        call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
        local.tee 4
        call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he9b9f9d3e0b60c89E
        local.get 0
        i32.load offset=36
        local.set 3
        block ;; label = @3
          local.get 0
          i32.load offset=28
          local.get 1
          call $_ZN4core3cmp10PartialOrd2lt17hc42555b6cd67fb1eE
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i64.const 0
          local.get 5
          local.get 0
          i32.const 8
          i32.add
          call $_ZN17user_fund_storage11fund_module10FundModule29split_convert_individual_fund17h9edc34c65a90fba5E
        end
        local.get 4
        local.get 0
        i32.const 8
        i32.add
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4929da203671d234E
        br 0 (;@2;)
      end
    end
    i32.const 132990
    i32.const 53
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
    unreachable
  )
  (func $dustCleanupActive (;394;) (type 14)
    (local i32 i32 i64 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17h6a5689ee4d3fe6fcE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc87c253e189fb0afE
    local.set 1
    block ;; label = @1
      call $_ZN17delegation_latest22reset_checkpoint_state26ResetCheckpointStateModule24is_global_op_in_progress17hb2123a554bee1c97E
      br_if 0 (;@1;)
      call $getGasLeft
      local.set 2
      i32.const 1
      call $_ZN17delegation_latest13rewards_state17RewardStateModule23compute_one_user_reward17haf7fbf9321ccb399E
      local.get 2
      i64.const 1
      i64.shr_u
      local.set 2
      block ;; label = @2
        call $_ZN92_$LT$C$u20$as$u20$delegation_latest..user_stake_dust_cleanup..UserStakeDustCleanupModule$GT$23dust_cleanup_checkpoint17h7e085461df055225E
        local.tee 3
        call $_ZN11dharitri_sc7storage11storage_get11storage_get17hb502f2b686e193c1E
        local.tee 4
        br_if 0 (;@2;)
        i32.const 4
        i32.const 1
        call $_ZN17user_fund_storage11fund_module10FundModule16first_id_of_type17h6b122609f0f13829E
        local.set 4
      end
      local.get 2
      i64.const 20000000
      i64.add
      local.set 2
      loop ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              local.get 4
              br_if 0 (;@5;)
              local.get 3
              i64.const 0
              call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h7b3ab429e8ba8004E
              br 1 (;@4;)
            end
            call $getGasLeft
            local.get 2
            i64.ge_u
            br_if 1 (;@3;)
            local.get 3
            local.get 4
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hed53681d8dc70c84E
          end
          call $_ZN17delegation_latest16user_stake_state20UserStakeStateModule31use_waiting_to_replace_unstaked17h69c038e8bed00281E
          local.get 0
          i32.const 48
          i32.add
          global.set $__stack_pointer
          return
        end
        local.get 0
        i32.const 8
        i32.add
        local.get 4
        call $_ZN64_$LT$C$u20$as$u20$user_fund_storage..fund_module..FundModule$GT$10fund_by_id17hc5eca11242fca63fE
        local.tee 5
        call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he9b9f9d3e0b60c89E
        local.get 0
        i32.load offset=36
        local.set 4
        block ;; label = @3
          local.get 0
          i32.load offset=28
          local.get 1
          call $_ZN4core3cmp10PartialOrd2lt17hc42555b6cd67fb1eE
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.load offset=24
          local.tee 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 6
          call $_ZN17delegation_latest13rewards_state17RewardStateModule23compute_one_user_reward17haf7fbf9321ccb399E
          i32.const 0
          i64.const 5
          i64.const 0
          local.get 0
          i32.const 8
          i32.add
          call $_ZN17user_fund_storage11fund_module10FundModule29split_convert_individual_fund17h9edc34c65a90fba5E
        end
        local.get 5
        local.get 0
        i32.const 8
        i32.add
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4929da203671d234E
        br 0 (;@2;)
      end
    end
    i32.const 132990
    i32.const 53
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf1e5ce2110cadaf7E
    unreachable
  )
  (func $dnsRegister (;395;) (type 14)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h5922826f57e0a435E
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17h6a5689ee4d3fe6fcE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    i32.const 133479
    i32.const 11
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbf27df68fc427cceE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7d73fbb6d1e28e97E
    local.set 2
    local.get 0
    local.get 1
    i32.store
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$4rewa17h439c5c42be6889f8E
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd0a835fd57d408bfE
    local.set 1
    local.get 0
    i32.const 20
    i32.add
    local.get 0
    local.get 2
    call $_ZN19dharitri_sc_modules9dns_proxy44DnsProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$8register17ha267f89d6a1aaab8E
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    local.get 0
    i64.load offset=24 align=4
    i64.store offset=12 align=4
    local.get 0
    local.get 0
    i32.load offset=20
    i32.store offset=4
    local.get 0
    i32.const 4
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hc3106c23a08a8ae9E
    unreachable
  )
  (func $setFeatureFlag (;396;) (type 14)
    (local i32 i32)
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17h6a5689ee4d3fe6fcE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7d73fbb6d1e28e97E
    local.set 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb9a6530cf9838099E
    local.set 1
    local.get 0
    call $_ZN67_$LT$C$u20$as$u20$dharitri_sc_modules..features..FeaturesModule$GT$12feature_flag17hb340ad9ce0c7638aE
    i64.const 1
    i64.const 2
    local.get 1
    select
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h7b3ab429e8ba8004E
  )
  (func $pause (;397;) (type 14)
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17h6a5689ee4d3fe6fcE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    i32.const 1
    call $_ZN19dharitri_sc_modules5pause11PauseModule10set_paused17h4ae7334c529ca4b6E
    i32.const 133650
    i32.const 13
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h398569d3a7140991E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
    call $managedWriteLog
  )
  (func $unpause (;398;) (type 14)
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17h6a5689ee4d3fe6fcE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    i32.const 0
    call $_ZN19dharitri_sc_modules5pause11PauseModule10set_paused17h4ae7334c529ca4b6E
    i32.const 133682
    i32.const 15
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h398569d3a7140991E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
    call $managedWriteLog
  )
  (func $isPaused (;399;) (type 14)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd428a2800636d8dbE
    call $_ZN61_$LT$C$u20$as$u20$dharitri_sc_modules..pause..PauseModule$GT$13paused_status17hb6b229e9a23bc968E
    call $_ZN11dharitri_sc7storage11storage_get11storage_get17h77ec744d08073be6E
    i64.extend_i32_u
    call $smallIntFinishSigned
  )
  (func $callBack (;400;) (type 14)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 2944
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block ;; label = @1
      call $_ZN11dharitri_sc5types11interaction16callback_closure22cb_closure_storage_key17h916459b76903a393E
      local.tee 1
      call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h67ca6e1b8298397dE
      local.tee 2
      call $mBufferGetLength
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h454322d51d5bc21eE
      local.tee 3
      call $mBufferGetLength
      local.set 2
      local.get 0
      i32.const 0
      i32.store8 offset=1748
      local.get 0
      local.get 2
      i32.store offset=1744
      local.get 0
      local.get 3
      i32.store offset=1740
      local.get 0
      local.get 2
      i32.store offset=1736
      local.get 0
      i32.const 0
      i32.store offset=1732
      local.get 0
      i32.const 1732
      i32.add
      call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17ha91872578f9b3ac1E
      local.set 4
      local.get 0
      i32.const 1732
      i32.add
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17h600c2e5a3dcfb3b3E
      local.set 2
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
      local.set 3
      block ;; label = @2
        loop ;; label = @3
          local.get 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          local.get 0
          i32.const 1732
          i32.add
          call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17ha91872578f9b3ac1E
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4ac91cc2b70259beE
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
                local.get 0
                i32.load offset=1736
                local.get 0
                i32.load offset=1732
                i32.ne
                br_if 0 (;@6;)
                block ;; label = @7
                  local.get 0
                  i32.load8_u offset=1748
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 0
                  i32.const 0
                  i32.store offset=144056
                  i32.const 0
                  i32.const 0
                  i32.store8 offset=144060
                end
                i32.const -20
                i32.const 1
                i32.const 0
                call $mBufferSetBytes
                drop
                local.get 1
                i32.const -20
                call $mBufferStorageStore
                drop
                local.get 0
                i32.const 8
                i32.add
                local.get 4
                call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h24d7ef7390f86a3aE
                local.get 0
                i32.load offset=40
                i32.eqz
                br_if 5 (;@1;)
                local.get 4
                call $_ZN17user_fund_storage16fund_view_module16EndpointWrappers17callback_selector17hc38ed2fce32552c7E
                i32.eqz
                br_if 5 (;@1;)
                local.get 4
                call $_ZN17user_fund_storage16fund_view_module16EndpointWrappers17callback_selector17hc38ed2fce32552c7E
                i32.eqz
                br_if 5 (;@1;)
                local.get 0
                i32.const 44
                i32.add
                local.get 4
                call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h24d7ef7390f86a3aE
                local.get 0
                i32.load offset=76
                i32.eqz
                br_if 5 (;@1;)
                block ;; label = @7
                  local.get 0
                  i32.const 44
                  i32.add
                  i32.const 131727
                  i32.const 22
                  call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17hd523d552556f28f6E
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 44
                  i32.add
                  i32.const 131772
                  i32.const 24
                  call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17hd523d552556f28f6E
                  br_if 3 (;@4;)
                  local.get 0
                  i32.const 44
                  i32.add
                  i32.const 131749
                  i32.const 23
                  call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17hd523d552556f28f6E
                  br_if 2 (;@5;)
                  local.get 4
                  call $_ZN17user_fund_storage16fund_view_module16EndpointWrappers17callback_selector17hc38ed2fce32552c7E
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 4
                  call $_ZN17user_fund_storage16fund_view_module16EndpointWrappers17callback_selector17hc38ed2fce32552c7E
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 4
                  call $_ZN17delegation_latest13rewards_state16EndpointWrappers17callback_selector17h4d17322f291a0227E
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 4
                  call $_ZN17delegation_latest16user_stake_state16EndpointWrappers17callback_selector17he74522ac3601d5f4E
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 4
                  call $_ZN17delegation_latest13rewards_state16EndpointWrappers17callback_selector17h4d17322f291a0227E
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 4
                  call $_ZN17delegation_latest16user_stake_state16EndpointWrappers17callback_selector17he74522ac3601d5f4E
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 0
                  i32.const 1732
                  i32.add
                  local.get 4
                  call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h24d7ef7390f86a3aE
                  local.get 0
                  i32.load offset=1764
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 4
                  call $_ZN17delegation_latest13rewards_state16EndpointWrappers17callback_selector17h4d17322f291a0227E
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 4
                  call $_ZN17user_fund_storage16fund_view_module16EndpointWrappers17callback_selector17hc38ed2fce32552c7E
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 4
                  call $_ZN17user_fund_storage16fund_view_module16EndpointWrappers17callback_selector17hc38ed2fce32552c7E
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 0
                  i32.const 1732
                  i32.add
                  local.get 4
                  call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h24d7ef7390f86a3aE
                  local.get 0
                  i32.load offset=1764
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 4
                  call $_ZN17delegation_latest13rewards_state16EndpointWrappers17callback_selector17h4d17322f291a0227E
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 4
                  call $_ZN17user_fund_storage16fund_view_module16EndpointWrappers17callback_selector17hc38ed2fce32552c7E
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 0
                  i32.const 1732
                  i32.add
                  local.get 4
                  call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h24d7ef7390f86a3aE
                  local.get 0
                  i32.load offset=1764
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 4
                  call $_ZN17delegation_latest16user_stake_state16EndpointWrappers17callback_selector17he74522ac3601d5f4E
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 4
                  call $_ZN17delegation_latest13rewards_state16EndpointWrappers17callback_selector17h4d17322f291a0227E
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 4
                  call $_ZN17user_fund_storage16fund_view_module16EndpointWrappers17callback_selector17hc38ed2fce32552c7E
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 4
                  call $_ZN17user_fund_storage16fund_view_module16EndpointWrappers17callback_selector17hc38ed2fce32552c7E
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 0
                  i32.const 1732
                  i32.add
                  local.get 4
                  call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h24d7ef7390f86a3aE
                  local.get 0
                  i32.load offset=1764
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 4
                  call $_ZN17delegation_latest16user_stake_state16EndpointWrappers17callback_selector17he74522ac3601d5f4E
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 4
                  call $_ZN17delegation_latest13rewards_state16EndpointWrappers17callback_selector17h4d17322f291a0227E
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 4
                  call $_ZN17user_fund_storage16fund_view_module16EndpointWrappers17callback_selector17hc38ed2fce32552c7E
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 4
                  call $_ZN17user_fund_storage16fund_view_module16EndpointWrappers17callback_selector17hc38ed2fce32552c7E
                  i32.eqz
                  br_if 6 (;@1;)
                  i32.const 132188
                  i32.const 54
                  call $signalError
                  unreachable
                end
                call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h229a5d43db11014fE
                i32.const 0
                call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hf5045d7af47ce291E
                local.get 0
                i32.const 0
                i32.store offset=2540
                local.get 0
                i32.const 1732
                i32.add
                local.get 0
                i32.const 2540
                i32.add
                call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h8ac94e267d02d467E
                local.get 0
                i32.load offset=2540
                call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hf1b4eba2371c2fccE
                local.get 0
                i32.load offset=1740
                local.set 4
                local.get 0
                i32.load offset=1736
                local.set 1
                local.get 0
                i32.load offset=1732
                local.set 2
                local.get 0
                local.get 3
                call $mBufferGetLength
                i32.store offset=492
                local.get 0
                i32.const 0
                i32.store offset=488
                local.get 0
                local.get 3
                i32.store offset=484
                call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h229a5d43db11014fE
                local.get 0
                i32.const 80
                i32.add
                local.get 0
                i32.const 484
                i32.add
                call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h59cc8d5be431b477E
                local.get 0
                i32.load offset=488
                local.get 0
                i32.load offset=492
                call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hd00659993951929dE
                local.get 2
                i32.const 1
                i32.and
                br_if 3 (;@3;)
                local.get 0
                i32.const 2540
                i32.add
                local.get 0
                i32.const 80
                i32.add
                i32.const 404
                call $memcpy
                drop
                local.get 0
                i32.const 1732
                i32.add
                local.get 0
                i32.const 2540
                i32.add
                local.get 1
                call $_ZN12node_storage11node_config16NodeConfigModule21split_node_ids_by_err17hf6859f34fb7b7e12E
                local.get 0
                i32.const 1328
                i32.add
                local.get 0
                i32.const 1732
                i32.add
                i32.const 404
                call $memcpy
                drop
                local.get 0
                i32.const 2540
                i32.add
                local.get 0
                i32.const 1732
                i32.add
                i32.const 404
                i32.add
                i32.const 404
                call $memcpy
                drop
                local.get 0
                i32.load offset=1328
                local.tee 2
                i32.eqz
                br_if 4 (;@2;)
                local.get 2
                i32.const 2
                i32.shl
                local.set 2
                local.get 0
                i32.const 1328
                i32.add
                i32.const 4
                i32.add
                local.set 3
                loop ;; label = @7
                  block ;; label = @8
                    local.get 2
                    br_if 0 (;@8;)
                    i32.const 133547
                    i32.const 11
                    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h398569d3a7140991E
                    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
                    call $managedWriteLog
                    br 6 (;@2;)
                  end
                  local.get 3
                  i32.load
                  i64.const 3
                  local.get 5
                  call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$14set_node_state17h59eecf249503eff7E
                  local.get 2
                  i32.const -4
                  i32.add
                  local.set 2
                  local.get 3
                  i32.const 4
                  i32.add
                  local.set 3
                  br 0 (;@7;)
                end
              end
              i32.const 131106
              i32.const 25
              i32.const 131085
              i32.const 14
              call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hdddaf3d56c672f2cE
              unreachable
            end
            call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h229a5d43db11014fE
            i32.const 0
            call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hf5045d7af47ce291E
            local.get 0
            i32.const 0
            i32.store offset=2540
            local.get 0
            i32.const 1732
            i32.add
            local.get 0
            i32.const 2540
            i32.add
            call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h8ac94e267d02d467E
            local.get 0
            i32.load offset=2540
            call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hf1b4eba2371c2fccE
            local.get 0
            i32.load offset=1740
            local.set 4
            local.get 0
            i32.load offset=1736
            local.set 1
            local.get 0
            i32.load offset=1732
            local.set 2
            local.get 0
            local.get 3
            call $mBufferGetLength
            i32.store offset=1324
            local.get 0
            i32.const 0
            i32.store offset=1320
            local.get 0
            local.get 3
            i32.store offset=1316
            call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h229a5d43db11014fE
            local.get 0
            i32.const 912
            i32.add
            local.get 0
            i32.const 1316
            i32.add
            call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h59cc8d5be431b477E
            local.get 0
            i32.load offset=1320
            local.get 0
            i32.load offset=1324
            call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hd00659993951929dE
            block ;; label = @5
              block ;; label = @6
                local.get 2
                i32.const 1
                i32.and
                br_if 0 (;@6;)
                local.get 0
                i32.const 2540
                i32.add
                local.get 0
                i32.const 912
                i32.add
                i32.const 404
                call $memcpy
                drop
                local.get 0
                i32.const 1732
                i32.add
                local.get 0
                i32.const 2540
                i32.add
                local.get 1
                call $_ZN12node_storage11node_config16NodeConfigModule21split_node_ids_by_err17hf6859f34fb7b7e12E
                local.get 0
                i32.const 1328
                i32.add
                local.get 0
                i32.const 1732
                i32.add
                i32.const 404
                call $memcpy
                drop
                local.get 0
                i32.const 2540
                i32.add
                local.get 0
                i32.const 1732
                i32.add
                i32.const 404
                i32.add
                i32.const 404
                call $memcpy
                drop
                local.get 0
                i32.load offset=1328
                local.tee 2
                i32.eqz
                br_if 1 (;@5;)
                local.get 2
                i32.const 2
                i32.shl
                local.set 2
                local.get 0
                i32.const 1328
                i32.add
                i32.const 4
                i32.add
                local.set 3
                loop ;; label = @7
                  block ;; label = @8
                    local.get 2
                    br_if 0 (;@8;)
                    i32.const 133570
                    i32.const 12
                    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h398569d3a7140991E
                    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
                    call $managedWriteLog
                    br 3 (;@5;)
                  end
                  local.get 3
                  i32.load
                  i64.const 0
                  local.get 5
                  call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$14set_node_state17h59eecf249503eff7E
                  local.get 2
                  i32.const -4
                  i32.add
                  local.set 2
                  local.get 3
                  i32.const 4
                  i32.add
                  local.set 3
                  br 0 (;@7;)
                end
              end
              local.get 0
              i32.const 912
              i32.add
              local.get 4
              call $_ZN17delegation_latest15node_activation20NodeActivationModule28auction_unbond_callback_fail17h42b3420f00126921E
              br 4 (;@1;)
            end
            local.get 0
            i32.const 2540
            i32.add
            i32.const 132060
            call $_ZN149_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u3b$$u20$N$u5d$$GT$$GT$4from17h20e60bac623c0b90E
            call $_ZN17delegation_latest15node_activation20NodeActivationModule28auction_unbond_callback_fail17h42b3420f00126921E
            br 3 (;@1;)
          end
          call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h229a5d43db11014fE
          i32.const 0
          call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hf5045d7af47ce291E
          local.get 0
          i32.const 0
          i32.store offset=2540
          local.get 0
          i32.const 1732
          i32.add
          local.get 0
          i32.const 2540
          i32.add
          call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h8ac94e267d02d467E
          local.get 0
          i32.load offset=2540
          call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hf1b4eba2371c2fccE
          local.get 0
          i32.load offset=1740
          local.set 4
          local.get 0
          i32.load offset=1736
          local.set 1
          local.get 0
          i32.load offset=1732
          local.set 2
          local.get 0
          local.get 3
          call $mBufferGetLength
          i32.store offset=908
          local.get 0
          i32.const 0
          i32.store offset=904
          local.get 0
          local.get 3
          i32.store offset=900
          call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h229a5d43db11014fE
          local.get 0
          i32.const 496
          i32.add
          local.get 0
          i32.const 900
          i32.add
          call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h59cc8d5be431b477E
          local.get 0
          i32.load offset=904
          local.get 0
          i32.load offset=908
          call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hd00659993951929dE
          block ;; label = @4
            block ;; label = @5
              local.get 2
              i32.const 1
              i32.and
              br_if 0 (;@5;)
              local.get 0
              i32.const 2540
              i32.add
              local.get 0
              i32.const 496
              i32.add
              i32.const 404
              call $memcpy
              drop
              local.get 0
              i32.const 1732
              i32.add
              local.get 0
              i32.const 2540
              i32.add
              local.get 1
              call $_ZN12node_storage11node_config16NodeConfigModule21split_node_ids_by_err17hf6859f34fb7b7e12E
              local.get 0
              i32.const 1328
              i32.add
              local.get 0
              i32.const 1732
              i32.add
              i32.const 404
              call $memcpy
              drop
              local.get 0
              i32.const 2540
              i32.add
              local.get 0
              i32.const 1732
              i32.add
              i32.const 404
              i32.add
              i32.const 404
              call $memcpy
              drop
              local.get 0
              i32.load offset=1328
              local.tee 2
              i32.eqz
              br_if 1 (;@4;)
              local.get 2
              i32.const 2
              i32.shl
              local.set 2
              local.get 0
              i32.const 1328
              i32.add
              i32.const 4
              i32.add
              local.set 3
              call $getBlockNonce
              local.set 5
              loop ;; label = @6
                block ;; label = @7
                  local.get 2
                  br_if 0 (;@7;)
                  i32.const 133608
                  i32.const 13
                  call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h398569d3a7140991E
                  call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hde3bbd955d1a92e4E
                  call $managedWriteLog
                  br 3 (;@4;)
                end
                local.get 3
                i32.load
                i64.const 5
                local.get 5
                call $_ZN65_$LT$C$u20$as$u20$node_storage..node_config..NodeConfigModule$GT$14set_node_state17h59eecf249503eff7E
                local.get 2
                i32.const -4
                i32.add
                local.set 2
                local.get 3
                i32.const 4
                i32.add
                local.set 3
                br 0 (;@6;)
              end
            end
            local.get 0
            i32.const 496
            i32.add
            local.get 4
            call $_ZN17delegation_latest15node_activation20NodeActivationModule29auction_unstake_callback_fail17hca69262b7327c370E
            br 3 (;@1;)
          end
          local.get 0
          i32.const 2540
          i32.add
          i32.const 132091
          call $_ZN149_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u3b$$u20$N$u5d$$GT$$GT$4from17h20e60bac623c0b90E
          call $_ZN17delegation_latest15node_activation20NodeActivationModule29auction_unstake_callback_fail17hca69262b7327c370E
          br 2 (;@1;)
        end
        local.get 0
        i32.const 80
        i32.add
        local.get 4
        call $_ZN17delegation_latest15node_activation20NodeActivationModule27auction_stake_callback_fail17h6c147c1e99ed4773E
        br 1 (;@1;)
      end
      local.get 0
      i32.const 2540
      i32.add
      i32.const 132031
      i32.const 29
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h982343689a5a4d0eE
      call $_ZN17delegation_latest15node_activation20NodeActivationModule27auction_stake_callback_fail17h6c147c1e99ed4773E
    end
    local.get 0
    i32.const 2944
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN4core9panicking18panic_bounds_check17h0e5544bfd55094cbE (;401;) (type 2) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17h6f4dae69dcc1a6d2E
    unreachable
  )
  (func $_ZN4core5slice5index22slice_index_order_fail8do_panic7runtime17h88e230a95f697701E (;402;) (type 2) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17h6f4dae69dcc1a6d2E
    unreachable
  )
  (func $_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17h91a462baf623e0f4E (;403;) (type 14)
    call $_ZN4core9panicking9panic_fmt17h6f4dae69dcc1a6d2E
    unreachable
  )
  (func $_ZN4core5slice4sort6shared5pivot11median3_rec17h9faba394426dcf49E (;404;) (type 11) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32)
    block ;; label = @1
      local.get 3
      i32.const 536870904
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 0
      local.get 3
      i32.const 3
      i32.shr_u
      local.tee 3
      i32.const 4
      i32.shl
      local.tee 4
      i32.add
      local.get 0
      local.get 3
      i32.const 28
      i32.mul
      local.tee 5
      i32.add
      local.get 3
      call $_ZN4core5slice4sort6shared5pivot11median3_rec17h9faba394426dcf49E
      local.set 0
      local.get 1
      local.get 1
      local.get 4
      i32.add
      local.get 1
      local.get 5
      i32.add
      local.get 3
      call $_ZN4core5slice4sort6shared5pivot11median3_rec17h9faba394426dcf49E
      local.set 1
      local.get 2
      local.get 2
      local.get 4
      i32.add
      local.get 2
      local.get 5
      i32.add
      local.get 3
      call $_ZN4core5slice4sort6shared5pivot11median3_rec17h9faba394426dcf49E
      local.set 2
    end
    local.get 0
    local.get 2
    local.get 1
    local.get 0
    i32.load
    local.tee 3
    local.get 1
    i32.load
    local.tee 4
    i32.lt_u
    local.tee 5
    local.get 4
    local.get 2
    i32.load
    local.tee 6
    i32.lt_u
    i32.xor
    select
    local.get 5
    local.get 3
    local.get 6
    i32.lt_u
    i32.xor
    select
  )
  (func $_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h596f6b9326386de1E (;405;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i32.const -1
        i32.add
        local.get 1
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.get 2
        i32.const 2
        i32.shl
        local.tee 3
        i32.add
        local.set 4
        local.get 0
        local.get 1
        i32.const 2
        i32.shl
        i32.add
        local.set 5
        loop ;; label = @3
          local.get 4
          local.get 5
          i32.eq
          br_if 2 (;@1;)
          block ;; label = @4
            local.get 4
            i32.load
            local.tee 6
            local.get 4
            i32.const -4
            i32.add
            i32.load
            local.tee 1
            i32.ge_u
            br_if 0 (;@4;)
            local.get 3
            local.set 2
            block ;; label = @5
              loop ;; label = @6
                local.get 0
                local.get 2
                i32.add
                local.tee 7
                local.get 1
                i32.store
                block ;; label = @7
                  local.get 2
                  i32.const 4
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 0
                  local.set 2
                  br 2 (;@5;)
                end
                local.get 2
                i32.const -4
                i32.add
                local.set 2
                local.get 6
                local.get 7
                i32.const -8
                i32.add
                i32.load
                local.tee 1
                i32.lt_u
                br_if 0 (;@6;)
              end
              local.get 0
              local.get 2
              i32.add
              local.set 2
            end
            local.get 2
            local.get 6
            i32.store
          end
          local.get 3
          i32.const 4
          i32.add
          local.set 3
          local.get 4
          i32.const 4
          i32.add
          local.set 4
          br 0 (;@3;)
        end
      end
      unreachable
    end
  )
  (func $_ZN4core5slice4sort8unstable7ipnsort17h202ecddc2bf2ef39E (;406;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 0
            i32.load offset=4
            local.get 0
            i32.load
            i32.lt_u
            br_if 0 (;@4;)
            local.get 0
            i32.const 8
            i32.add
            local.set 4
            i32.const 2
            local.set 5
            loop ;; label = @5
              local.get 1
              local.get 5
              i32.eq
              br_if 4 (;@1;)
              local.get 4
              i32.load
              local.get 4
              i32.const -4
              i32.add
              i32.load
              i32.lt_u
              br_if 2 (;@3;)
              local.get 4
              i32.const 4
              i32.add
              local.set 4
              local.get 5
              i32.const 1
              i32.add
              local.set 5
              br 0 (;@5;)
            end
          end
          local.get 0
          i32.const 8
          i32.add
          local.set 4
          i32.const 2
          local.set 5
          loop ;; label = @4
            local.get 1
            local.get 5
            i32.eq
            br_if 2 (;@2;)
            local.get 4
            i32.load
            local.get 4
            i32.const -4
            i32.add
            i32.load
            i32.ge_u
            br_if 1 (;@3;)
            local.get 4
            i32.const 4
            i32.add
            local.set 4
            local.get 5
            i32.const 1
            i32.add
            local.set 5
            br 0 (;@4;)
          end
        end
        local.get 0
        local.get 1
        i32.const 0
        local.get 1
        i32.const 1
        i32.or
        i32.clz
        i32.const 1
        i32.shl
        i32.const 62
        i32.xor
        local.get 2
        call $_ZN4core5slice4sort8unstable9quicksort9quicksort17hf0d79ac0ceecec77E
        br 1 (;@1;)
      end
      local.get 3
      i32.const 8
      i32.add
      local.get 1
      i32.const 1
      i32.shr_u
      local.tee 2
      local.get 0
      local.get 2
      call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hcc6143cb9eea2650E
      local.get 3
      i32.load offset=12
      local.set 6
      local.get 3
      i32.load offset=8
      local.set 5
      local.get 3
      local.get 2
      local.get 0
      local.get 1
      i32.const 2
      i32.shl
      i32.add
      local.get 2
      i32.const 2
      i32.shl
      local.tee 4
      i32.sub
      local.get 2
      call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hcc6143cb9eea2650E
      local.get 4
      local.get 3
      i32.load
      i32.add
      i32.const -4
      i32.add
      local.set 1
      i32.const 0
      local.set 4
      local.get 3
      i32.load offset=4
      local.set 7
      block ;; label = @2
        loop ;; label = @3
          local.get 2
          local.get 4
          i32.add
          local.tee 0
          i32.eqz
          br_if 2 (;@1;)
          local.get 6
          local.get 4
          i32.add
          i32.eqz
          br_if 1 (;@2;)
          block ;; label = @4
            local.get 0
            i32.const -1
            i32.add
            local.tee 0
            local.get 7
            i32.ge_u
            br_if 0 (;@4;)
            local.get 5
            i32.load
            local.set 0
            local.get 5
            local.get 1
            i32.load
            i32.store
            local.get 1
            local.get 0
            i32.store
            local.get 5
            i32.const 4
            i32.add
            local.set 5
            local.get 1
            i32.const -4
            i32.add
            local.set 1
            local.get 4
            i32.const -1
            i32.add
            local.set 4
            br 1 (;@3;)
          end
        end
        local.get 0
        local.get 7
        call $_ZN4core9panicking18panic_bounds_check17h0e5544bfd55094cbE
        unreachable
      end
      local.get 6
      local.get 6
      call $_ZN4core9panicking18panic_bounds_check17h0e5544bfd55094cbE
      unreachable
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN4core5slice4sort8unstable9quicksort9quicksort17hf0d79ac0ceecec77E (;407;) (type 16) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 144
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        loop ;; label = @3
          block ;; label = @4
            block ;; label = @5
              local.get 1
              i32.const 33
              i32.lt_u
              br_if 0 (;@5;)
              local.get 3
              br_if 1 (;@4;)
              local.get 0
              local.get 1
              call $_ZN4core5slice4sort8unstable8heapsort8heapsort17h02cef190c92525f1E
              br 4 (;@1;)
            end
            local.get 1
            i32.const 2
            i32.lt_u
            br_if 3 (;@1;)
            local.get 1
            local.get 1
            i32.const 1
            i32.shr_u
            local.tee 2
            local.get 1
            i32.const 18
            i32.lt_u
            local.tee 6
            select
            local.set 3
            local.get 1
            local.get 2
            i32.sub
            local.set 7
            local.get 0
            local.get 2
            i32.const 2
            i32.shl
            i32.add
            local.set 8
            local.get 0
            local.set 9
            loop ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  local.get 3
                  i32.const 12
                  i32.gt_u
                  br_if 0 (;@7;)
                  i32.const 1
                  local.set 10
                  local.get 3
                  i32.const 8
                  i32.le_u
                  br_if 1 (;@6;)
                  local.get 9
                  local.get 9
                  i32.load offset=32
                  local.tee 10
                  local.get 9
                  i32.load offset=16
                  local.tee 11
                  local.get 10
                  local.get 11
                  i32.gt_u
                  select
                  local.tee 12
                  local.get 9
                  i32.load offset=12
                  local.tee 13
                  local.get 9
                  i32.load
                  local.tee 4
                  local.get 13
                  local.get 4
                  i32.gt_u
                  select
                  local.tee 14
                  local.get 12
                  local.get 14
                  i32.gt_u
                  select
                  local.tee 15
                  local.get 9
                  i32.load offset=28
                  local.tee 16
                  local.get 9
                  i32.load offset=4
                  local.tee 17
                  local.get 16
                  local.get 17
                  i32.gt_u
                  select
                  local.tee 18
                  local.get 13
                  local.get 4
                  local.get 13
                  local.get 4
                  i32.lt_u
                  select
                  local.tee 13
                  local.get 18
                  local.get 13
                  i32.gt_u
                  select
                  local.tee 4
                  local.get 15
                  local.get 4
                  i32.gt_u
                  select
                  local.tee 19
                  local.get 9
                  i32.load offset=24
                  local.tee 20
                  local.get 9
                  i32.load offset=20
                  local.tee 21
                  local.get 9
                  i32.load offset=8
                  local.tee 22
                  local.get 21
                  local.get 22
                  i32.gt_u
                  select
                  local.tee 23
                  local.get 20
                  local.get 23
                  i32.gt_u
                  select
                  local.tee 24
                  local.get 12
                  local.get 14
                  local.get 12
                  local.get 14
                  i32.lt_u
                  select
                  local.tee 12
                  local.get 16
                  local.get 17
                  local.get 16
                  local.get 17
                  i32.lt_u
                  select
                  local.tee 14
                  local.get 12
                  local.get 14
                  i32.gt_u
                  select
                  local.tee 16
                  local.get 24
                  local.get 16
                  i32.gt_u
                  select
                  local.tee 17
                  local.get 19
                  local.get 17
                  i32.gt_u
                  select
                  i32.store offset=32
                  local.get 9
                  local.get 20
                  local.get 23
                  local.get 20
                  local.get 23
                  i32.lt_u
                  select
                  local.tee 20
                  local.get 10
                  local.get 11
                  local.get 10
                  local.get 11
                  i32.lt_u
                  select
                  local.tee 10
                  local.get 21
                  local.get 22
                  local.get 21
                  local.get 22
                  i32.lt_u
                  select
                  local.tee 11
                  local.get 10
                  local.get 11
                  i32.gt_u
                  select
                  local.tee 21
                  local.get 20
                  local.get 21
                  i32.lt_u
                  select
                  local.tee 22
                  local.get 12
                  local.get 14
                  local.get 12
                  local.get 14
                  i32.lt_u
                  select
                  local.tee 12
                  local.get 22
                  local.get 12
                  i32.lt_u
                  select
                  local.tee 14
                  local.get 10
                  local.get 11
                  local.get 10
                  local.get 11
                  i32.lt_u
                  select
                  local.tee 10
                  local.get 18
                  local.get 13
                  local.get 18
                  local.get 13
                  i32.lt_u
                  select
                  local.tee 11
                  local.get 10
                  local.get 11
                  i32.lt_u
                  select
                  local.tee 13
                  local.get 14
                  local.get 13
                  i32.lt_u
                  select
                  i32.store
                  local.get 9
                  local.get 15
                  local.get 4
                  local.get 15
                  local.get 4
                  i32.lt_u
                  select
                  local.tee 4
                  local.get 20
                  local.get 21
                  local.get 20
                  local.get 21
                  i32.gt_u
                  select
                  local.tee 15
                  local.get 4
                  local.get 15
                  i32.gt_u
                  select
                  local.tee 18
                  local.get 19
                  local.get 17
                  local.get 19
                  local.get 17
                  i32.lt_u
                  select
                  local.tee 17
                  local.get 18
                  local.get 17
                  i32.gt_u
                  select
                  i32.store offset=28
                  local.get 9
                  local.get 18
                  local.get 17
                  local.get 18
                  local.get 17
                  i32.lt_u
                  select
                  local.tee 17
                  local.get 4
                  local.get 15
                  local.get 4
                  local.get 15
                  i32.lt_u
                  select
                  local.tee 4
                  local.get 24
                  local.get 16
                  local.get 24
                  local.get 16
                  i32.lt_u
                  select
                  local.tee 15
                  local.get 4
                  local.get 15
                  i32.gt_u
                  select
                  local.tee 16
                  local.get 22
                  local.get 12
                  local.get 22
                  local.get 12
                  i32.gt_u
                  select
                  local.tee 12
                  local.get 10
                  local.get 11
                  local.get 10
                  local.get 11
                  i32.gt_u
                  select
                  local.tee 10
                  local.get 12
                  local.get 10
                  i32.gt_u
                  select
                  local.tee 11
                  local.get 16
                  local.get 11
                  i32.gt_u
                  select
                  local.tee 18
                  local.get 17
                  local.get 18
                  i32.gt_u
                  select
                  i32.store offset=24
                  local.get 9
                  local.get 17
                  local.get 18
                  local.get 17
                  local.get 18
                  i32.lt_u
                  select
                  i32.store offset=20
                  local.get 9
                  local.get 16
                  local.get 11
                  local.get 16
                  local.get 11
                  i32.lt_u
                  select
                  local.tee 11
                  local.get 4
                  local.get 15
                  local.get 4
                  local.get 15
                  i32.lt_u
                  select
                  local.tee 4
                  local.get 12
                  local.get 10
                  local.get 12
                  local.get 10
                  i32.lt_u
                  select
                  local.tee 10
                  local.get 4
                  local.get 10
                  i32.gt_u
                  select
                  local.tee 12
                  local.get 11
                  local.get 12
                  i32.gt_u
                  select
                  i32.store offset=16
                  local.get 9
                  local.get 11
                  local.get 12
                  local.get 11
                  local.get 12
                  i32.lt_u
                  select
                  i32.store offset=12
                  local.get 9
                  local.get 4
                  local.get 10
                  local.get 4
                  local.get 10
                  i32.lt_u
                  select
                  local.tee 10
                  local.get 14
                  local.get 13
                  local.get 14
                  local.get 13
                  i32.gt_u
                  select
                  local.tee 11
                  local.get 10
                  local.get 11
                  i32.gt_u
                  select
                  i32.store offset=8
                  local.get 9
                  local.get 10
                  local.get 11
                  local.get 10
                  local.get 11
                  i32.lt_u
                  select
                  i32.store offset=4
                  i32.const 9
                  local.set 10
                  br 1 (;@6;)
                end
                local.get 9
                local.get 9
                i32.load offset=48
                local.tee 10
                local.get 9
                i32.load
                local.tee 11
                local.get 10
                local.get 11
                i32.gt_u
                select
                local.tee 12
                local.get 9
                i32.load offset=44
                local.tee 13
                local.get 9
                i32.load offset=20
                local.tee 4
                local.get 13
                local.get 4
                i32.gt_u
                select
                local.tee 14
                local.get 9
                i32.load offset=16
                local.tee 15
                local.get 14
                local.get 15
                i32.gt_u
                select
                local.tee 16
                local.get 12
                local.get 16
                i32.gt_u
                select
                local.tee 17
                local.get 9
                i32.load offset=40
                local.tee 18
                local.get 9
                i32.load offset=4
                local.tee 19
                local.get 18
                local.get 19
                i32.gt_u
                select
                local.tee 20
                local.get 9
                i32.load offset=32
                local.tee 21
                local.get 9
                i32.load offset=24
                local.tee 22
                local.get 21
                local.get 22
                i32.gt_u
                select
                local.tee 23
                local.get 20
                local.get 23
                i32.gt_u
                select
                local.tee 24
                local.get 9
                i32.load offset=36
                local.tee 25
                local.get 9
                i32.load offset=8
                local.tee 26
                local.get 25
                local.get 26
                i32.gt_u
                select
                local.tee 27
                local.get 9
                i32.load offset=28
                local.tee 28
                local.get 9
                i32.load offset=12
                local.tee 29
                local.get 28
                local.get 29
                i32.gt_u
                select
                local.tee 30
                local.get 27
                local.get 30
                i32.gt_u
                select
                local.tee 31
                local.get 24
                local.get 31
                i32.gt_u
                select
                local.tee 32
                local.get 17
                local.get 32
                i32.gt_u
                select
                i32.store offset=48
                local.get 9
                local.get 12
                local.get 16
                local.get 12
                local.get 16
                i32.lt_u
                select
                local.tee 12
                local.get 20
                local.get 23
                local.get 20
                local.get 23
                i32.lt_u
                select
                local.tee 16
                local.get 27
                local.get 30
                local.get 27
                local.get 30
                i32.lt_u
                select
                local.tee 20
                local.get 16
                local.get 20
                i32.gt_u
                select
                local.tee 23
                local.get 12
                local.get 23
                i32.gt_u
                select
                local.tee 27
                local.get 21
                local.get 22
                local.get 21
                local.get 22
                i32.lt_u
                select
                local.tee 21
                local.get 18
                local.get 19
                local.get 18
                local.get 19
                i32.lt_u
                select
                local.tee 18
                local.get 21
                local.get 18
                i32.gt_u
                select
                local.tee 19
                local.get 28
                local.get 29
                local.get 28
                local.get 29
                i32.lt_u
                select
                local.tee 22
                local.get 25
                local.get 26
                local.get 25
                local.get 26
                i32.lt_u
                select
                local.tee 25
                local.get 22
                local.get 25
                i32.gt_u
                select
                local.tee 26
                local.get 19
                local.get 26
                i32.gt_u
                select
                local.tee 28
                local.get 14
                local.get 15
                local.get 14
                local.get 15
                i32.lt_u
                select
                local.tee 14
                local.get 10
                local.get 11
                local.get 10
                local.get 11
                i32.lt_u
                select
                local.tee 10
                local.get 14
                local.get 10
                i32.gt_u
                select
                local.tee 11
                local.get 28
                local.get 11
                i32.gt_u
                select
                local.tee 15
                local.get 27
                local.get 15
                i32.gt_u
                select
                local.tee 29
                local.get 17
                local.get 32
                local.get 17
                local.get 32
                i32.lt_u
                select
                local.tee 17
                local.get 24
                local.get 31
                local.get 24
                local.get 31
                i32.lt_u
                select
                local.tee 24
                local.get 13
                local.get 4
                local.get 13
                local.get 4
                i32.lt_u
                select
                local.tee 13
                local.get 24
                local.get 13
                i32.gt_u
                select
                local.tee 4
                local.get 17
                local.get 4
                i32.gt_u
                select
                local.tee 30
                local.get 29
                local.get 30
                i32.gt_u
                select
                i32.store offset=44
                local.get 9
                local.get 22
                local.get 25
                local.get 22
                local.get 25
                i32.lt_u
                select
                local.tee 22
                local.get 21
                local.get 18
                local.get 21
                local.get 18
                i32.lt_u
                select
                local.tee 18
                local.get 22
                local.get 18
                i32.lt_u
                select
                local.tee 21
                local.get 24
                local.get 13
                local.get 24
                local.get 13
                i32.lt_u
                select
                local.tee 13
                local.get 14
                local.get 10
                local.get 14
                local.get 10
                i32.lt_u
                select
                local.tee 10
                local.get 13
                local.get 10
                i32.lt_u
                select
                local.tee 14
                local.get 21
                local.get 14
                i32.lt_u
                select
                i32.store
                local.get 9
                local.get 29
                local.get 30
                local.get 29
                local.get 30
                i32.lt_u
                select
                local.tee 24
                local.get 17
                local.get 4
                local.get 17
                local.get 4
                i32.lt_u
                select
                local.tee 4
                local.get 27
                local.get 15
                local.get 27
                local.get 15
                i32.lt_u
                select
                local.tee 15
                local.get 4
                local.get 15
                i32.gt_u
                select
                local.tee 17
                local.get 24
                local.get 17
                i32.gt_u
                select
                i32.store offset=40
                local.get 9
                local.get 16
                local.get 20
                local.get 16
                local.get 20
                i32.lt_u
                select
                local.tee 16
                local.get 28
                local.get 11
                local.get 28
                local.get 11
                i32.lt_u
                select
                local.tee 11
                local.get 16
                local.get 11
                i32.lt_u
                select
                local.tee 20
                local.get 13
                local.get 10
                local.get 13
                local.get 10
                i32.gt_u
                select
                local.tee 10
                local.get 22
                local.get 18
                local.get 22
                local.get 18
                i32.gt_u
                select
                local.tee 13
                local.get 10
                local.get 13
                i32.lt_u
                select
                local.tee 18
                local.get 20
                local.get 18
                i32.lt_u
                select
                local.tee 22
                local.get 12
                local.get 23
                local.get 12
                local.get 23
                i32.lt_u
                select
                local.tee 12
                local.get 19
                local.get 26
                local.get 19
                local.get 26
                i32.lt_u
                select
                local.tee 19
                local.get 12
                local.get 19
                i32.lt_u
                select
                local.tee 23
                local.get 21
                local.get 14
                local.get 21
                local.get 14
                i32.gt_u
                select
                local.tee 14
                local.get 23
                local.get 14
                i32.lt_u
                select
                local.tee 21
                local.get 22
                local.get 21
                i32.lt_u
                select
                i32.store offset=4
                local.get 9
                local.get 24
                local.get 17
                local.get 24
                local.get 17
                i32.lt_u
                select
                local.tee 17
                local.get 12
                local.get 19
                local.get 12
                local.get 19
                i32.gt_u
                select
                local.tee 12
                local.get 16
                local.get 11
                local.get 16
                local.get 11
                i32.gt_u
                select
                local.tee 11
                local.get 12
                local.get 11
                i32.gt_u
                select
                local.tee 16
                local.get 4
                local.get 15
                local.get 4
                local.get 15
                i32.lt_u
                select
                local.tee 4
                local.get 10
                local.get 13
                local.get 10
                local.get 13
                i32.gt_u
                select
                local.tee 10
                local.get 4
                local.get 10
                i32.gt_u
                select
                local.tee 13
                local.get 16
                local.get 13
                i32.gt_u
                select
                local.tee 15
                local.get 17
                local.get 15
                i32.gt_u
                select
                i32.store offset=36
                local.get 9
                local.get 17
                local.get 15
                local.get 17
                local.get 15
                i32.lt_u
                select
                i32.store offset=32
                local.get 9
                local.get 12
                local.get 11
                local.get 12
                local.get 11
                i32.lt_u
                select
                local.tee 11
                local.get 4
                local.get 10
                local.get 4
                local.get 10
                i32.lt_u
                select
                local.tee 10
                local.get 11
                local.get 10
                i32.gt_u
                select
                local.tee 12
                local.get 16
                local.get 13
                local.get 16
                local.get 13
                i32.lt_u
                select
                local.tee 13
                local.get 12
                local.get 13
                i32.gt_u
                select
                i32.store offset=28
                local.get 9
                local.get 20
                local.get 18
                local.get 20
                local.get 18
                i32.gt_u
                select
                local.tee 4
                local.get 23
                local.get 14
                local.get 23
                local.get 14
                i32.gt_u
                select
                local.tee 14
                local.get 4
                local.get 14
                i32.lt_u
                select
                local.tee 15
                local.get 22
                local.get 21
                local.get 22
                local.get 21
                i32.gt_u
                select
                local.tee 16
                local.get 15
                local.get 16
                i32.lt_u
                select
                i32.store offset=8
                local.get 9
                local.get 12
                local.get 13
                local.get 12
                local.get 13
                i32.lt_u
                select
                local.tee 12
                local.get 11
                local.get 10
                local.get 11
                local.get 10
                i32.lt_u
                select
                local.tee 10
                local.get 4
                local.get 14
                local.get 4
                local.get 14
                i32.gt_u
                select
                local.tee 11
                local.get 10
                local.get 11
                i32.gt_u
                select
                local.tee 13
                local.get 12
                local.get 13
                i32.gt_u
                select
                i32.store offset=24
                local.get 9
                local.get 12
                local.get 13
                local.get 12
                local.get 13
                i32.lt_u
                select
                i32.store offset=20
                local.get 9
                local.get 10
                local.get 11
                local.get 10
                local.get 11
                i32.lt_u
                select
                local.tee 10
                local.get 15
                local.get 16
                local.get 15
                local.get 16
                i32.gt_u
                select
                local.tee 11
                local.get 10
                local.get 11
                i32.gt_u
                select
                i32.store offset=16
                local.get 9
                local.get 10
                local.get 11
                local.get 10
                local.get 11
                i32.lt_u
                select
                i32.store offset=12
                i32.const 13
                local.set 10
              end
              local.get 9
              local.get 3
              local.get 10
              call $_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h596f6b9326386de1E
              local.get 6
              br_if 4 (;@1;)
              local.get 9
              local.get 0
              i32.eq
              local.set 10
              local.get 7
              local.set 3
              local.get 8
              local.set 9
              local.get 10
              br_if 0 (;@5;)
            end
            local.get 8
            i32.const -4
            i32.add
            local.set 11
            local.get 0
            local.get 1
            i32.const 2
            i32.shl
            i32.const -4
            i32.add
            local.tee 9
            i32.add
            local.set 12
            local.get 5
            i32.const 8
            i32.add
            local.get 9
            i32.add
            local.set 4
            local.get 5
            i32.const 8
            i32.add
            local.set 13
            local.get 0
            local.set 10
            block ;; label = @5
              loop ;; label = @6
                block ;; label = @7
                  local.get 2
                  br_if 0 (;@7;)
                  local.get 11
                  i32.const 4
                  i32.add
                  local.set 9
                  block ;; label = @8
                    local.get 1
                    i32.const 1
                    i32.and
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 13
                    local.get 10
                    local.get 8
                    local.get 10
                    local.get 9
                    i32.lt_u
                    local.tee 3
                    select
                    i32.load
                    i32.store
                    local.get 8
                    local.get 10
                    local.get 9
                    i32.ge_u
                    i32.const 2
                    i32.shl
                    i32.add
                    local.set 8
                    local.get 10
                    local.get 3
                    i32.const 2
                    i32.shl
                    i32.add
                    local.set 10
                  end
                  local.get 10
                  local.get 9
                  i32.ne
                  br_if 2 (;@5;)
                  local.get 8
                  local.get 12
                  i32.const 4
                  i32.add
                  i32.ne
                  br_if 2 (;@5;)
                  local.get 0
                  local.get 5
                  i32.const 8
                  i32.add
                  local.get 1
                  i32.const 2
                  i32.shl
                  call $memcpy
                  drop
                  br 6 (;@1;)
                end
                local.get 13
                local.get 8
                i32.load
                local.tee 14
                local.get 10
                i32.load
                local.tee 15
                local.get 14
                local.get 15
                i32.lt_u
                local.tee 16
                select
                i32.store
                local.get 4
                local.get 12
                i32.load
                local.tee 9
                local.get 11
                i32.load
                local.tee 3
                local.get 9
                local.get 3
                i32.gt_u
                select
                i32.store
                local.get 2
                i32.const -1
                i32.add
                local.set 2
                local.get 4
                i32.const -4
                i32.add
                local.set 4
                local.get 13
                i32.const 4
                i32.add
                local.set 13
                local.get 11
                i32.const -4
                i32.const 0
                local.get 9
                local.get 3
                i32.lt_u
                select
                i32.add
                local.set 11
                local.get 12
                i32.const -4
                i32.const 0
                local.get 9
                local.get 3
                i32.ge_u
                select
                i32.add
                local.set 12
                local.get 10
                local.get 14
                local.get 15
                i32.ge_u
                i32.const 2
                i32.shl
                i32.add
                local.set 10
                local.get 8
                local.get 16
                i32.const 2
                i32.shl
                i32.add
                local.set 8
                br 0 (;@6;)
              end
            end
            call $_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17h91a462baf623e0f4E
            br 2 (;@2;)
          end
          local.get 0
          local.get 1
          i32.const 3
          i32.shr_u
          local.tee 9
          i32.const 28
          i32.mul
          i32.add
          local.set 8
          local.get 0
          local.get 9
          i32.const 4
          i32.shl
          i32.add
          local.set 10
          block ;; label = @4
            block ;; label = @5
              local.get 1
              i32.const 64
              i32.lt_u
              br_if 0 (;@5;)
              local.get 0
              local.get 10
              local.get 8
              local.get 9
              call $_ZN4core5slice4sort6shared5pivot11median3_rec17h9faba394426dcf49E
              local.set 9
              br 1 (;@4;)
            end
            local.get 0
            local.get 8
            local.get 10
            local.get 0
            i32.load
            local.tee 9
            local.get 10
            i32.load
            local.tee 11
            i32.lt_u
            local.tee 12
            local.get 11
            local.get 8
            i32.load
            local.tee 13
            i32.lt_u
            i32.xor
            select
            local.get 12
            local.get 9
            local.get 13
            i32.lt_u
            i32.xor
            select
            local.set 9
          end
          local.get 3
          i32.const -1
          i32.add
          local.set 3
          local.get 9
          local.get 0
          i32.sub
          i32.const 2
          i32.shr_u
          local.set 9
          block ;; label = @4
            block ;; label = @5
              local.get 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              i32.load
              local.get 0
              local.get 9
              i32.const 2
              i32.shl
              i32.add
              local.tee 8
              i32.load
              local.tee 10
              i32.ge_u
              br_if 1 (;@4;)
            end
            local.get 9
            local.get 1
            i32.ge_u
            br_if 2 (;@2;)
            local.get 0
            i32.load
            local.set 8
            local.get 0
            local.get 0
            local.get 9
            i32.const 2
            i32.shl
            i32.add
            local.tee 9
            i32.load
            i32.store
            local.get 9
            local.get 8
            i32.store
            local.get 5
            local.get 0
            i32.const 4
            i32.add
            local.tee 8
            i32.store offset=136
            local.get 5
            local.get 0
            i32.load offset=4
            i32.store offset=140
            local.get 5
            i32.const 0
            i32.store offset=20
            local.get 5
            local.get 0
            i32.const 8
            i32.add
            local.tee 9
            i32.store offset=16
            local.get 5
            local.get 8
            i32.store offset=8
            local.get 0
            local.get 1
            i32.const 2
            i32.shl
            local.tee 10
            i32.add
            i32.const -4
            i32.add
            local.set 8
            local.get 5
            local.get 5
            i32.const 140
            i32.add
            i32.store offset=12
            block ;; label = @5
              loop ;; label = @6
                block ;; label = @7
                  local.get 9
                  local.get 8
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 5
                  i32.load offset=136
                  local.get 10
                  i32.add
                  i32.const -4
                  i32.add
                  local.set 8
                  loop ;; label = @8
                    local.get 9
                    local.get 8
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 0
                    local.get 5
                    i32.const 136
                    i32.add
                    local.get 5
                    i32.const 8
                    i32.add
                    call $_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17h0196fbf62c2b26f7E
                    local.get 5
                    i32.load offset=16
                    local.set 9
                    br 0 (;@8;)
                  end
                end
                local.get 0
                local.get 5
                i32.const 136
                i32.add
                local.get 5
                i32.const 8
                i32.add
                call $_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17h0196fbf62c2b26f7E
                local.get 0
                local.get 5
                i32.const 136
                i32.add
                local.get 5
                i32.const 8
                i32.add
                call $_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17h0196fbf62c2b26f7E
                local.get 5
                i32.load offset=16
                local.set 9
                br 0 (;@6;)
              end
            end
            local.get 5
            local.get 5
            i32.load offset=12
            i32.store offset=16
            local.get 0
            local.get 5
            i32.const 136
            i32.add
            local.get 5
            i32.const 8
            i32.add
            call $_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17h0196fbf62c2b26f7E
            local.get 5
            i32.load offset=20
            local.tee 9
            local.get 1
            i32.ge_u
            br_if 2 (;@2;)
            local.get 0
            i32.load
            local.set 10
            local.get 0
            local.get 0
            local.get 9
            i32.const 2
            i32.shl
            i32.add
            local.tee 8
            i32.load
            i32.store
            local.get 8
            local.get 10
            i32.store
            local.get 0
            local.get 9
            local.get 2
            local.get 3
            local.get 4
            call $_ZN4core5slice4sort8unstable9quicksort9quicksort17hf0d79ac0ceecec77E
            local.get 1
            local.get 9
            i32.const -1
            i32.xor
            i32.add
            local.set 1
            local.get 8
            i32.const 4
            i32.add
            local.set 0
            local.get 8
            local.set 2
            br 1 (;@3;)
          end
          local.get 0
          i32.load
          local.set 9
          local.get 0
          local.get 10
          i32.store
          local.get 8
          local.get 9
          i32.store
          local.get 5
          local.get 0
          i32.const 4
          i32.add
          local.tee 8
          i32.store offset=136
          local.get 5
          local.get 0
          i32.load offset=4
          i32.store offset=140
          local.get 5
          i32.const 0
          i32.store offset=20
          local.get 5
          local.get 0
          i32.const 8
          i32.add
          local.tee 9
          i32.store offset=16
          local.get 5
          local.get 8
          i32.store offset=8
          local.get 0
          local.get 1
          i32.const 2
          i32.shl
          local.tee 2
          i32.add
          i32.const -4
          i32.add
          local.set 8
          local.get 5
          local.get 5
          i32.const 140
          i32.add
          i32.store offset=12
          block ;; label = @4
            loop ;; label = @5
              block ;; label = @6
                local.get 9
                local.get 8
                i32.lt_u
                br_if 0 (;@6;)
                local.get 5
                i32.load offset=136
                local.get 2
                i32.add
                i32.const -4
                i32.add
                local.set 8
                loop ;; label = @7
                  local.get 9
                  local.get 8
                  i32.eq
                  br_if 3 (;@4;)
                  local.get 0
                  local.get 5
                  i32.const 136
                  i32.add
                  local.get 5
                  i32.const 8
                  i32.add
                  call $_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17h467b78502adefad2E
                  local.get 5
                  i32.load offset=16
                  local.set 9
                  br 0 (;@7;)
                end
              end
              local.get 0
              local.get 5
              i32.const 136
              i32.add
              local.get 5
              i32.const 8
              i32.add
              call $_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17h467b78502adefad2E
              local.get 0
              local.get 5
              i32.const 136
              i32.add
              local.get 5
              i32.const 8
              i32.add
              call $_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17h467b78502adefad2E
              local.get 5
              i32.load offset=16
              local.set 9
              br 0 (;@5;)
            end
          end
          local.get 5
          local.get 5
          i32.load offset=12
          i32.store offset=16
          local.get 0
          local.get 5
          i32.const 136
          i32.add
          local.get 5
          i32.const 8
          i32.add
          call $_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17h467b78502adefad2E
          local.get 5
          i32.load offset=20
          local.tee 9
          local.get 1
          i32.ge_u
          br_if 1 (;@2;)
          local.get 0
          i32.load
          local.set 8
          local.get 0
          local.get 0
          local.get 9
          i32.const 2
          i32.shl
          i32.add
          local.tee 2
          i32.load
          i32.store
          local.get 2
          local.get 8
          i32.store
          local.get 1
          local.get 9
          i32.const 1
          i32.add
          local.tee 9
          i32.sub
          local.set 1
          local.get 0
          local.get 9
          i32.const 2
          i32.shl
          i32.add
          local.set 0
          i32.const 0
          local.set 2
          br 0 (;@3;)
        end
      end
      unreachable
    end
    local.get 5
    i32.const 144
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hcc6143cb9eea2650E (;408;) (type 15) (param i32 i32 i32 i32)
    block ;; label = @1
      local.get 1
      local.get 3
      i32.gt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store offset=4
      local.get 0
      local.get 2
      i32.store
      return
    end
    local.get 1
    local.get 3
    call $_ZN4core5slice5index22slice_index_order_fail17h45c0711bdbeba6b0E
    unreachable
  )
  (func $_ZN4core5slice4sort8unstable8heapsort8heapsort17h02cef190c92525f1E (;409;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.const 1
    i32.shr_u
    local.get 1
    i32.add
    local.set 3
    block ;; label = @1
      loop ;; label = @2
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
        block ;; label = @3
          block ;; label = @4
            local.get 3
            i32.const -1
            i32.add
            local.tee 3
            local.get 1
            i32.ge_u
            br_if 0 (;@4;)
            local.get 0
            i32.load
            local.set 4
            local.get 0
            local.get 0
            local.get 3
            i32.const 2
            i32.shl
            i32.add
            local.tee 5
            i32.load
            i32.store
            local.get 5
            local.get 4
            i32.store
            i32.const 0
            local.set 5
            br 1 (;@3;)
          end
          local.get 3
          local.get 1
          i32.sub
          local.set 5
        end
        local.get 2
        i32.const 8
        i32.add
        local.get 3
        local.get 1
        local.get 3
        local.get 1
        i32.lt_u
        select
        local.get 0
        local.get 1
        call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hcc6143cb9eea2650E
        local.get 2
        i32.load offset=12
        local.set 6
        local.get 2
        i32.load offset=8
        local.set 7
        loop ;; label = @3
          local.get 5
          i32.const 1
          i32.shl
          local.tee 8
          i32.const 1
          i32.or
          local.tee 4
          local.get 6
          i32.ge_u
          br_if 1 (;@2;)
          block ;; label = @4
            local.get 8
            i32.const 2
            i32.add
            local.tee 8
            local.get 6
            i32.ge_u
            br_if 0 (;@4;)
            local.get 4
            local.get 7
            local.get 4
            i32.const 2
            i32.shl
            i32.add
            i32.load
            local.get 7
            local.get 8
            i32.const 2
            i32.shl
            i32.add
            i32.load
            i32.lt_u
            i32.add
            local.set 4
          end
          local.get 7
          local.get 5
          i32.const 2
          i32.shl
          i32.add
          local.tee 5
          i32.load
          local.tee 8
          local.get 7
          local.get 4
          i32.const 2
          i32.shl
          i32.add
          local.tee 9
          i32.load
          local.tee 10
          i32.ge_u
          br_if 1 (;@2;)
          local.get 5
          local.get 10
          i32.store
          local.get 9
          local.get 8
          i32.store
          local.get 4
          local.set 5
          br 0 (;@3;)
        end
      end
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17h0196fbf62c2b26f7E (;410;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32)
    local.get 0
    i32.load
    local.set 3
    local.get 2
    i32.load offset=8
    local.tee 0
    i32.load
    local.set 4
    local.get 2
    i32.load
    local.get 1
    i32.load
    local.get 2
    i32.load offset=12
    local.tee 1
    i32.const 2
    i32.shl
    i32.add
    local.tee 5
    i32.load
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 2
    local.get 0
    i32.const 4
    i32.add
    i32.store offset=8
    local.get 2
    local.get 1
    local.get 4
    local.get 3
    i32.lt_u
    i32.add
    i32.store offset=12
    local.get 5
    local.get 0
    i32.load
    i32.store
  )
  (func $_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic28_$u7b$$u7b$closure$u7d$$u7d$17h467b78502adefad2E (;411;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32)
    local.get 0
    i32.load
    local.set 3
    local.get 2
    i32.load offset=8
    local.tee 0
    i32.load
    local.set 4
    local.get 2
    i32.load
    local.get 1
    i32.load
    local.get 2
    i32.load offset=12
    local.tee 1
    i32.const 2
    i32.shl
    i32.add
    local.tee 5
    i32.load
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 2
    local.get 0
    i32.const 4
    i32.add
    i32.store offset=8
    local.get 2
    local.get 1
    local.get 3
    local.get 4
    i32.ge_u
    i32.add
    i32.store offset=12
    local.get 5
    local.get 0
    i32.load
    i32.store
  )
  (func $memcmp (;412;) (type 7) (param i32 i32 i32) (result i32)
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
  (func $memcpy (;413;) (type 7) (param i32 i32 i32) (result i32)
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
  (data $.rodata (;0;) (i32.const 131072) "invalid valueinput too long\00\01\02\03\04\05\06serializer decode error: incorrect number of DCDT transfersfunction does not accept DCDT paymentincorrect number of transfersargument decode error (): too few argumentstoo many argumentswrong number of argumentscannot subtract because result would be negativeCB_CLOSUREinput too shortManagedVec index out of range\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00REWA-000000bls_keys_signaturesbls_keybls_keysnode not registeredonly inactive nodes can be removednode already registeredstorage decode error (key: bad array lengthvar argsunBondNodesunBondTokensunStakeNodesunStakeTokensclaimstakeunJailunStakeuserservice fee out of range0.5.8auction_stake_callbackauction_unbond_callbackauction_unstake_callbackcall_resultnode_idsnot enough funds in contract to stake nodesunknown node providednode must be inactivenode operations are temporarily paused as checkpoint is resetcannot stake nodes in bootstrap modenode must be activenode not activestaking failed for some nodesunbonding failed for some nodesunstaking failed for some nodesnode not pending unbondnode cannot be unbondedno BLS keys providedno callback function with that name exists in contracttotal_delegation_capn_blocks_before_unbondowner_min_stake_share_per_10000service_fee_per_10000auction_contract_addrcannot unstake less than minimum stakecannot unstake more than the user waiting + active stakeowner doesn't have enough stake in the contractcannot have waiting + active stake less than minimum stakeerror swapping unstaked to deferred paymentdelegation cap invariant violatederror swapping waiting to activebad user_idcontract pausedclaimRewardsclaim rewards is temporarily paused as checkpoint is resetunknown calleruser_addresscannot stake less than minimum stakestaking is temporarily paused as checkpoint is reseterror converting Active to UnStakedunstaking is temporarily paused as checkpoint is resetonly delegators can unstakecontract is temporarily paused as checkpoint is resetglobal checkpoint is in progressnew delegation cap must be less or equal to total active + waitingnot enough funds in contract to pay those who are forced unstakedno unstaked funds should be present when increasing delegation capcannot modify total delegation cap when last is in progresscontinueGlobalOperationowner min stake share out of rangecapacity exceededinput out of rangeaffected user capacity exceededidaddressuser_idaddressesdns_address currently disabledvalueregisteruserStakeuserClaimRewardsnodeStakeOktokensUnbondnodeUnbondOktokensUnstakenodeStakeFailnodeUnstakeOknodeUnbondFailnodeUnstakeFailpauseContractpause_module:pausedunpauseContractff_max_idftypefuserservice_feeauction_addrmin_stakebootstrap_modeowner_min_stake_sharenode_bls_to_idnode_statenode_id_to_blsnode_signaturenum_nodesnum_usersfeat:sent_rewardsu_rew_unclmdu_rew_checkpglobal_op_checkpointdust_cleanup_checkpoint\00\00\00\1b\00\02\00\1c\00\02\00\1d\00\02\00\1e\00\02\00\1f\00\02\00 \00\02\00!\00\02\00Endpoint can only be called by ownerNUMBATrewardcompletedinterruptedpanic occurred")
  (data $.data (;1;) (i32.const 134052) "8\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.85.0 (4d91de4e4 2025-02-17)")
  )
  (@custom "target_features" (after data) "\04+\0amultivalue+\0fmutable-globals+\0freference-types+\08sign-ext")
)
