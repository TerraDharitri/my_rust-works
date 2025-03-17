(module
  (type (;0;) (func (param i32 i64)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i64 i32 i32) (result i32)))
  (type (;7;) (func (result i64)))
  (type (;8;) (func (param i32)))
  (type (;9;) (func (param i64) (result i32)))
  (type (;10;) (func (param i64 i32 i32 i32 i32 i32) (result i32)))
  (type (;11;) (func))
  (type (;12;) (func (param i32) (result i32)))
  (type (;13;) (func (param i32 i32 i32 i64 i32)))
  (type (;14;) (func (param i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;15;) (func (param i32) (result i64)))
  (type (;16;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;17;) (func (param i64 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;18;) (func (param i64)))
  (type (;19;) (func (param i32 i64 i32 i32 i32 i32 i32)))
  (type (;20;) (func (param i32 i32 i32) (result i64)))
  (type (;21;) (func (param i32 i32 i64) (result i32)))
  (type (;22;) (func (param i32 i32 i32 i32)))
  (type (;23;) (func (param i32 i32 i32 i32 i32)))
  (type (;24;) (func (param i32 i64 i32)))
  (type (;25;) (func (param i64 i32 i32) (result i32)))
  (type (;26;) (func (param i32 i32 i32 i32 i32 i32 i32) (result i64)))
  (type (;27;) (func (param i32 i32 i64 i32)))
  (type (;28;) (func (param i32 i32 i32 i64 i32 i32)))
  (type (;29;) (func (param i32 i32 i64 i32 i64 i32 i32)))
  (type (;30;) (func (param i32 i32 i64 i32 i32)))
  (type (;31;) (func (param i64 i32 i32 i32 i32) (result i32)))
  (type (;32;) (func (param i32 i32 i32 i64)))
  (type (;33;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;34;) (func (param i32 i32 i32 i32 i32 i32 i32)))
  (type (;35;) (func (param i64) (result i64)))
  (type (;36;) (func (param i32 i32) (result i64)))
  (type (;37;) (func (param i64 i32)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;0;) (type 0)))
  (import "env" "bigIntAdd" (func $bigIntAdd (;1;) (type 1)))
  (import "env" "signalError" (func $signalError (;2;) (type 2)))
  (import "env" "mBufferNew" (func $mBufferNew (;3;) (type 3)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;4;) (type 4)))
  (import "env" "mBufferEq" (func $mBufferEq (;5;) (type 4)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;6;) (type 5)))
  (import "env" "managedTransferValueExecute" (func $managedTransferValueExecute (;7;) (type 6)))
  (import "env" "getGasLeft" (func $getGasLeft (;8;) (type 7)))
  (import "env" "managedSCAddress" (func $managedSCAddress (;9;) (type 8)))
  (import "env" "bigIntNew" (func $bigIntNew (;10;) (type 9)))
  (import "env" "managedExecuteOnDestContext" (func $managedExecuteOnDestContext (;11;) (type 10)))
  (import "env" "cleanReturnData" (func $cleanReturnData (;12;) (type 11)))
  (import "env" "managedMultiTransferDCDTNFTExecute" (func $managedMultiTransferDCDTNFTExecute (;13;) (type 6)))
  (import "env" "managedCaller" (func $managedCaller (;14;) (type 8)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;15;) (type 12)))
  (import "env" "bigIntGetDCDTExternalBalance" (func $bigIntGetDCDTExternalBalance (;16;) (type 13)))
  (import "env" "managedGetDCDTTokenData" (func $managedGetDCDTTokenData (;17;) (type 14)))
  (import "env" "bigIntGetCallValue" (func $bigIntGetCallValue (;18;) (type 8)))
  (import "env" "managedGetMultiDCDTCallValue" (func $managedGetMultiDCDTCallValue (;19;) (type 8)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;20;) (type 4)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;21;) (type 5)))
  (import "env" "managedSignalError" (func $managedSignalError (;22;) (type 8)))
  (import "env" "getNumDCDTTransfers" (func $getNumDCDTTransfers (;23;) (type 3)))
  (import "env" "smallIntGetUnsignedArgument" (func $smallIntGetUnsignedArgument (;24;) (type 15)))
  (import "env" "getNumArguments" (func $getNumArguments (;25;) (type 3)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;26;) (type 12)))
  (import "env" "bigIntSub" (func $bigIntSub (;27;) (type 1)))
  (import "env" "managedGetOriginalTxHash" (func $managedGetOriginalTxHash (;28;) (type 8)))
  (import "env" "bigIntTDiv" (func $bigIntTDiv (;29;) (type 1)))
  (import "env" "bigIntMul" (func $bigIntMul (;30;) (type 1)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;31;) (type 4)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;32;) (type 4)))
  (import "env" "mBufferCopyByteSlice" (func $mBufferCopyByteSlice (;33;) (type 16)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;34;) (type 4)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;35;) (type 4)))
  (import "env" "bigIntGetUnsignedArgument" (func $bigIntGetUnsignedArgument (;36;) (type 2)))
  (import "env" "managedWriteLog" (func $managedWriteLog (;37;) (type 2)))
  (import "env" "finish" (func $finish (;38;) (type 2)))
  (import "env" "managedCreateContract" (func $managedCreateContract (;39;) (type 17)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;40;) (type 11)))
  (import "env" "smallIntFinishUnsigned" (func $smallIntFinishUnsigned (;41;) (type 18)))
  (import "env" "bigIntFinishUnsigned" (func $bigIntFinishUnsigned (;42;) (type 8)))
  (import "env" "managedDeployFromSourceContract" (func $managedDeployFromSourceContract (;43;) (type 17)))
  (import "env" "managedUpgradeContract" (func $managedUpgradeContract (;44;) (type 19)))
  (import "env" "managedUpgradeFromSourceContract" (func $managedUpgradeFromSourceContract (;45;) (type 19)))
  (import "env" "getCurrentDCDTNFTNonce" (func $getCurrentDCDTNFTNonce (;46;) (type 20)))
  (import "env" "getDCDTLocalRoles" (func $getDCDTLocalRoles (;47;) (type 15)))
  (import "env" "smallIntFinishSigned" (func $smallIntFinishSigned (;48;) (type 18)))
  (import "env" "managedIsDCDTFrozen" (func $managedIsDCDTFrozen (;49;) (type 21)))
  (import "env" "managedIsDCDTPaused" (func $managedIsDCDTPaused (;50;) (type 12)))
  (import "env" "managedIsDCDTLimitedTransfer" (func $managedIsDCDTLimitedTransfer (;51;) (type 12)))
  (import "env" "validateTokenIdentifier" (func $validateTokenIdentifier (;52;) (type 12)))
  (import "env" "bigIntCmp" (func $bigIntCmp (;53;) (type 4)))
  (import "env" "mBufferGetBytes" (func $mBufferGetBytes (;54;) (type 4)))
  (import "env" "bigIntSign" (func $bigIntSign (;55;) (type 12)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;56;) (type 16)))
  (import "env" "managedAsyncCall" (func $managedAsyncCall (;57;) (type 22)))
  (func $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb0a8f8d542cb8fc7E (;58;) (type 12) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    i64.const 0
    call $bigIntSetInt64
    local.get 1
    local.get 1
    local.get 0
    call $bigIntAdd
    local.get 1
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E (;59;) (type 3) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=133128
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=133128
    local.get 0
  )
  (func $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17h1b19cd2618bac686E (;60;) (type 11)
    i32.const 132523
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc43ea098857437eaE (;61;) (type 23) (param i32 i32 i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        local.get 2
        local.get 1
        i32.lt_u
        br_if 0 (;@2;)
        local.get 2
        local.get 4
        i32.le_u
        br_if 1 (;@1;)
        local.get 2
        local.get 4
        call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE
        unreachable
      end
      local.get 1
      local.get 2
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 3
    local.get 1
    i32.add
    i32.store
  )
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE (;62;) (type 2) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (func $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb59f69f0686dcbbdE (;63;) (type 23) (param i32 i32 i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        local.get 2
        local.get 1
        i32.lt_u
        br_if 0 (;@2;)
        local.get 2
        local.get 4
        i32.le_u
        br_if 1 (;@1;)
        local.get 2
        local.get 4
        call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE
        unreachable
      end
      local.get 1
      local.get 2
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 3
    local.get 1
    i32.add
    i32.store
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h02929fecbec91d6bE (;64;) (type 12) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h4f8cca689c5c0186E (;65;) (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $mBufferEq
    i32.const 0
    i32.gt_s
  )
  (func $_ZN117_$LT$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7e51bd03fd9fcd35E (;66;) (type 12) (param i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h02929fecbec91d6bE
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h1cf0e1efb712eecaE (;67;) (type 11)
    call $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17h1b19cd2618bac686E
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$11direct_rewa17h8d1b94643cd60540E (;68;) (type 2) (param i32 i32)
    i32.const -25
    i32.const 133040
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
    local.get 1
    i64.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    i32.const -25
    call $managedTransferValueExecute
    drop
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E (;69;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    i32.const 133040
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_local_burn17h4216496ff30fbdeeE (;70;) (type 24) (param i32 i64 i32)
    (local i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.tee 3
    local.get 0
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h22a0db9d8903e8b7E
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i64.eqz
        i32.eqz
        br_if 0 (;@2;)
        i32.const 131111
        local.set 0
        i32.const 13
        local.set 4
        br 1 (;@1;)
      end
      local.get 3
      local.get 1
      call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17h3891e8a7e0771875E
      i32.const 131124
      local.set 0
      i32.const 11
      local.set 4
    end
    local.get 3
    local.get 2
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17hc99d9eb018084fbaE
    call $getGasLeft
    local.get 0
    local.get 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E
    local.get 3
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$33call_local_dcdt_built_in_function17hfc40191b35286b25E
    drop
  )
  (func $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h22a0db9d8903e8b7E (;71;) (type 2) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    drop
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h02929fecbec91d6bE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf9851e285a2d5605E
  )
  (func $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17h3891e8a7e0771875E (;72;) (type 0) (param i32 i64)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.tee 2
    local.get 1
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417hb070d3250fcc8a53E
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf9851e285a2d5605E
  )
  (func $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17hc99d9eb018084fbaE (;73;) (type 2) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    drop
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h2236f2af69a64826E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf9851e285a2d5605E
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E (;74;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$33call_local_dcdt_built_in_function17hfc40191b35286b25E (;75;) (type 25) (param i64 i32 i32) (result i32)
    (local i32)
    i32.const -25
    call $managedSCAddress
    local.get 0
    i32.const -25
    i64.const 0
    call $bigIntNew
    local.get 1
    local.get 2
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 3
    call $managedExecuteOnDestContext
    drop
    call $cleanReturnData
    local.get 3
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_local_mint17h6c7900e4aea89c7dE (;76;) (type 24) (param i32 i64 i32)
    (local i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.tee 3
    local.get 0
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h22a0db9d8903e8b7E
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i64.eqz
        i32.eqz
        br_if 0 (;@2;)
        i32.const 131135
        local.set 0
        i32.const 13
        local.set 4
        br 1 (;@1;)
      end
      local.get 3
      local.get 1
      call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17h3891e8a7e0771875E
      i32.const 131148
      local.set 0
      i32.const 18
      local.set 4
    end
    local.get 3
    local.get 2
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17hc99d9eb018084fbaE
    call $getGasLeft
    local.get 0
    local.get 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E
    local.get 3
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$33call_local_dcdt_built_in_function17hfc40191b35286b25E
    drop
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_nft_create17h4765572a133d883dE (;77;) (type 26) (param i32 i32 i32 i32 i32 i32 i32) (result i64)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 7
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.tee 8
    local.get 0
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h22a0db9d8903e8b7E
    local.get 8
    local.get 1
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17hc99d9eb018084fbaE
    local.get 8
    local.get 2
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h22a0db9d8903e8b7E
    local.get 8
    local.get 3
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17hc99d9eb018084fbaE
    local.get 8
    local.get 4
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h22a0db9d8903e8b7E
    local.get 8
    local.get 5
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17h149c363d9d45ef6dE
    block ;; label = @1
      block ;; label = @2
        local.get 6
        i32.load
        local.tee 0
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h98d34a84b7100ca2E
        br_if 0 (;@2;)
        local.get 7
        local.get 0
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h9a55663278535fefE
        i32.store offset=44
        local.get 7
        i32.const 0
        i32.store offset=40
        local.get 7
        local.get 6
        i32.store offset=36
        loop ;; label = @3
          local.get 7
          i32.const 24
          i32.add
          local.get 7
          i32.const 36
          i32.add
          call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbef3f30694ae9437E
          local.get 7
          i32.load offset=24
          i32.eqz
          br_if 2 (;@1;)
          local.get 8
          local.get 7
          i32.load offset=28
          call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17h28a95783ca93188dE
          br 0 (;@3;)
        end
      end
      local.get 8
      call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17hb99b84f0c1a2c56aE
    end
    local.get 7
    i32.const 16
    i32.add
    call $getGasLeft
    i32.const 131166
    i32.const 13
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E
    local.get 8
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$33call_local_dcdt_built_in_function17hfc40191b35286b25E
    i32.const 0
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$7try_get17ha506ce50e4f3b507E
    i64.const 0
    local.set 9
    block ;; label = @1
      local.get 7
      i32.load offset=16
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 7
      local.get 7
      i32.load offset=20
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$12parse_as_u6417h4b4125d8cf80f924E
      local.get 7
      i64.load offset=8
      i64.const 0
      local.get 7
      i32.load
      select
      local.set 9
    end
    local.get 7
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 9
  )
  (func $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17h149c363d9d45ef6dE (;78;) (type 2) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h02929fecbec91d6bE
    local.set 2
    local.get 1
    i32.load8_u
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h7d54ea6ff918e4a6E
    local.get 1
    i32.load8_u offset=1
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h7d54ea6ff918e4a6E
    local.get 1
    i32.load8_u offset=2
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h7d54ea6ff918e4a6E
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf9851e285a2d5605E
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h98d34a84b7100ca2E (;79;) (type 12) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h9a55663278535fefE
    i32.eqz
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h9a55663278535fefE (;80;) (type 12) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbef3f30694ae9437E (;81;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
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
        i32.const 4
        i32.add
        local.tee 4
        local.get 1
        i32.load offset=8
        i32.le_u
        br_if 0 (;@2;)
        i32.const 0
        local.set 1
        br 1 (;@1;)
      end
      local.get 1
      i32.load
      local.set 5
      local.get 2
      i32.const 0
      i32.store offset=12
      local.get 5
      i32.load
      local.get 3
      local.get 2
      i32.const 12
      i32.add
      i32.const 4
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17haaab55558a510fceE
      drop
      local.get 2
      i32.load offset=12
      local.set 3
      local.get 1
      local.get 4
      i32.store offset=4
      local.get 3
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
  (func $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17h28a95783ca93188dE (;82;) (type 2) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    drop
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h02929fecbec91d6bE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf9851e285a2d5605E
  )
  (func $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17hb99b84f0c1a2c56aE (;83;) (type 8) (param i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.tee 1
    i32.const 133040
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf9851e285a2d5605E
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$7try_get17ha506ce50e4f3b507E (;84;) (type 1) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 0
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 2
    i32.shl
    local.get 3
    i32.const 12
    i32.add
    i32.const 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17haaab55558a510fceE
    local.set 1
    local.get 3
    i32.load offset=12
    local.set 2
    local.get 0
    local.get 1
    i32.const 1
    i32.xor
    i32.store
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
    i32.store offset=4
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$12parse_as_u6417h4b4125d8cf80f924E (;85;) (type 2) (param i32 i32)
    (local i32 i64 i32 i64)
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
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h9a55663278535fefE
        local.tee 4
        i32.const 8
        i32.le_u
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      local.get 2
      i64.const 0
      i64.store offset=8
      local.get 1
      i32.const 0
      local.get 2
      i32.const 8
      i32.add
      local.get 4
      i32.sub
      i32.const 8
      i32.add
      local.get 4
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E
      br_if 0 (;@1;)
      local.get 2
      i64.load offset=8
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
      local.set 5
      i64.const 1
      local.set 3
    end
    local.get 0
    local.get 5
    i64.store offset=8
    local.get 0
    local.get 3
    i64.store
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$26direct_dcdt_with_gas_limit17hd8ee4e78ba5121a8E (;86;) (type 27) (param i32 i32 i64 i32)
    (local i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.set 5
    block ;; label = @1
      local.get 2
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 3
      i64.const 0
      local.get 4
      local.get 5
      call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21transfer_dcdt_execute17h0579b975821e7d79E
      return
    end
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    i64.const 0
    local.get 4
    local.get 5
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17h14e1eb5c1ae2b611E
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21transfer_dcdt_execute17h0579b975821e7d79E (;87;) (type 28) (param i32 i32 i32 i64 i32 i32)
    local.get 0
    local.get 1
    i64.const 0
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17h14e1eb5c1ae2b611E
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17h14e1eb5c1ae2b611E (;88;) (type 29) (param i32 i32 i64 i32 i64 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 7
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.set 8
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h02929fecbec91d6bE
    local.set 1
    local.get 7
    local.get 3
    call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb0a8f8d542cb8fc7E
    i32.store offset=12
    local.get 7
    local.get 2
    i64.store
    local.get 7
    local.get 1
    i32.store offset=8
    local.get 8
    local.get 7
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hbb6cba67f65f1dccE
    local.get 0
    local.get 8
    local.get 4
    local.get 5
    local.get 6
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27multi_dcdt_transfer_execute17hf4121d596485ff18E
    local.get 7
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$28transfer_dcdt_via_async_call17hd30257432aaa2dc7E (;89;) (type 27) (param i32 i32 i64 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.set 5
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.set 6
    local.get 4
    i64.const -1
    i64.store offset=8
    local.get 4
    local.get 6
    i32.store offset=4
    local.get 4
    local.get 5
    i32.store
    local.get 4
    local.get 0
    i32.store offset=16
    local.get 4
    local.get 3
    i32.store offset=76
    local.get 4
    local.get 2
    i64.store offset=64
    local.get 4
    local.get 1
    i32.store offset=72
    local.get 4
    i32.const 32
    i32.add
    local.get 4
    local.get 4
    i32.const 64
    i32.add
    call $_ZN11dharitri_sc5types11interaction24contract_call_no_payment48ContractCallNoPayment$LT$SA$C$OriginalResult$GT$18with_dcdt_transfer17h7f3bbcff981d5833E
    local.get 4
    local.get 4
    i32.const 32
    i32.add
    call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall10async_call17hd31b7b77e647e4faE
    local.get 4
    call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$29call_and_exit_ignore_callback17h8de9f03f09cbf6dbE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction24contract_call_no_payment48ContractCallNoPayment$LT$SA$C$OriginalResult$GT$18with_dcdt_transfer17h7f3bbcff981d5833E (;90;) (type 1) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.set 4
    local.get 0
    local.get 1
    i64.load
    i64.store
    local.get 0
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 3
    local.get 2
    i64.load offset=8
    i64.store offset=8
    local.get 3
    local.get 2
    i64.load
    i64.store
    local.get 4
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hbb6cba67f65f1dccE
    local.get 0
    local.get 4
    i32.store offset=24
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall10async_call17hd31b7b77e647e4faE (;91;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    call $_ZN213_$LT$dharitri_sc..types..interaction..contract_call_with_multi_dcdt..ContractCallWithMultiDcdt$LT$SA$C$OriginalResult$GT$$u20$as$u20$dharitri_sc..types..interaction..contract_call_trait..ContractCall$LT$SA$GT$$GT$15into_normalized17hfe3363e6dbcf8afdE
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    local.get 2
    i32.load offset=24
    i32.store offset=12
    local.get 0
    local.get 2
    i32.load offset=16
    i32.store offset=8
    local.get 0
    local.get 2
    i64.load
    i64.store align=4
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$29call_and_exit_ignore_callback17h8de9f03f09cbf6dbE (;92;) (type 8) (param i32)
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17ha29087810891c293E
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17ha29087810891c293E (;93;) (type 22) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17hcba505d2f5fa12cbE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17hcba505d2f5fa12cbE (;94;) (type 22) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $managedAsyncCall
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$19direct_rewa_execute17h7baf4e3eb2e28322E (;95;) (type 30) (param i32 i32 i64 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $managedTransferValueExecute
    drop
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17h23ed77858692d08aE (;96;) (type 8) (param i32)
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hbb6cba67f65f1dccE (;97;) (type 2) (param i32 i32)
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
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27multi_dcdt_transfer_execute17hf4121d596485ff18E (;98;) (type 30) (param i32 i32 i64 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $managedMultiTransferDCDTNFTExecute
    drop
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17h72f9ff845355effbE (;99;) (type 31) (param i64 i32 i32 i32 i32) (result i32)
    (local i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 5
    call $managedExecuteOnDestContext
    drop
    local.get 5
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17hf48b2bffaf3b9737E (;100;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    call $managedCaller
    local.get 0
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hd4d5312d23963ceeE (;101;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    call $managedSCAddress
    local.get 0
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$16get_dcdt_balance17hbbb1fac127ab1a7dE (;102;) (type 21) (param i32 i32 i64) (result i32)
    (local i32 i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.set 3
    local.get 1
    call $mBufferGetLength
    local.set 4
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node26unsafe_buffer_load_address17h62067424ff42a5f2E
    local.get 1
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node35unsafe_buffer_load_token_identifier17hf83b876f94ade878E
    i32.const 143149
    i32.const 143181
    local.get 4
    local.get 2
    local.get 3
    call $bigIntGetDCDTExternalBalance
    local.get 3
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node26unsafe_buffer_load_address17h62067424ff42a5f2E (;103;) (type 8) (param i32)
    local.get 0
    i32.const 143149
    call $mBufferGetBytes
    drop
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node35unsafe_buffer_load_token_identifier17hf83b876f94ade878E (;104;) (type 8) (param i32)
    local.get 0
    i32.const 143181
    call $mBufferGetBytes
    drop
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$19get_dcdt_token_data17h9b2a85204cfb6bf8E (;105;) (type 32) (param i32 i32 i32 i64)
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
      i32.const 131233
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
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E (;106;) (type 16) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17h1ddfee60ed3f8f9bE (;107;) (type 3) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 0
      i32.load8_u offset=143144
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      i32.const -11
      i32.const 2147483647
      local.get 0
      select
      return
    end
    i32.const 0
    i32.const 1
    i32.store8 offset=143144
    i32.const -11
    call $bigIntGetCallValue
    i32.const -11
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17ha7011dab9b365b9dE (;108;) (type 3) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 0
      i32.load8_u offset=143148
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      i32.const -21
      i32.const 2147483647
      local.get 0
      select
      return
    end
    i32.const 0
    i32.const 1
    i32.store8 offset=143148
    i32.const -21
    call $managedGetMultiDCDTCallValue
    i32.const -21
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h79ec81ea9cb55974E (;109;) (type 8) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17ha7011dab9b365b9dE
            local.tee 2
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17ha532708e32f428a3E
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          i32.const 131265
          i32.const 34
          call $signalError
          unreachable
        end
        local.get 0
        call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17h1ddfee60ed3f8f9bE
        call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb0a8f8d542cb8fc7E
        i32.store offset=12
        local.get 0
        i64.const 0
        i64.store
        local.get 0
        i32.const 2147483646
        i32.store offset=8
        br 1 (;@1;)
      end
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17ha6d0acc21fb0e643E
      local.get 0
      local.get 1
      i64.load offset=8
      i64.store offset=8
      local.get 0
      local.get 1
      i64.load
      i64.store
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17ha532708e32f428a3E (;110;) (type 12) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h9a55663278535fefE
    i32.const 4
    i32.shr_u
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17ha6d0acc21fb0e643E (;111;) (type 2) (param i32 i32)
    (local i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    local.get 2
    i64.const 0
    i64.store offset=8
    local.get 1
    i32.const 0
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17haaab55558a510fceE
    local.set 1
    local.get 2
    i32.const 0
    i32.store offset=28
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h31a5ed7b286d9d3aE
    local.set 3
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17hbbf2caf4a1582ee3E
    local.set 4
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h31a5ed7b286d9d3aE
    local.set 5
    block ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131818
      i32.const 29
      call $signalError
      unreachable
    end
    local.get 0
    local.get 5
    i32.store offset=12
    local.get 0
    local.get 3
    i32.store offset=8
    local.get 0
    local.get 4
    i64.store
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17hbe3ca019e6d03cbcE (;112;) (type 8) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h79ec81ea9cb55974E
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
    i32.const 132748
    i32.const 28
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h9733a4655e32a310E (;113;) (type 12) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h2b83c02fb98e5438E (;114;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131299
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E
    local.tee 4
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 4
    i32.const 131322
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
  (func $_ZN11dharitri_sc2io15call_value_init12payable_rewa17hf67e9a7f60905fdfE (;115;) (type 11)
    block ;; label = @1
      call $getNumDCDTTransfers
      br_if 0 (;@1;)
      return
    end
    i32.const 131325
    i32.const 37
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h01ecb782400e64f6E (;116;) (type 12) (param i32) (result i32)
    local.get 0
    i32.const 132290
    i32.const 9
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h83e0228321587b46E
  )
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h83e0228321587b46E (;117;) (type 5) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17he1ea4a19d2dd18f4E
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h152254a4af89de06E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1a3ffed720bad731E (;118;) (type 2) (param i32 i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 2
    block ;; label = @1
      block ;; label = @2
        local.get 1
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h0d5b005c1a06525fE
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
        i32.load offset=143140
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 1
        local.set 2
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
        local.set 4
        br 1 (;@1;)
      end
      i32.const 1
      local.set 2
      local.get 1
      i32.const 132317
      i32.const 6
      call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h3526d2f1598c1078E
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
  (func $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h0d5b005c1a06525fE (;119;) (type 12) (param i32) (result i32)
    (local i64)
    block ;; label = @1
      local.get 0
      i32.const 132317
      i32.const 6
      call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h66de16db5e8b0cc6E
      call $smallIntGetUnsignedArgument
      local.tee 1
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 132317
      i32.const 6
      i32.const 131072
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h2b83c02fb98e5438E
      unreachable
    end
    local.get 1
    i32.wrap_i64
  )
  (func $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h3526d2f1598c1078E (;120;) (type 5) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h66de16db5e8b0cc6E
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h9733a4655e32a310E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1b8cb5162e9195ecE (;121;) (type 5) (param i32 i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.set 3
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.load
        i32.const 0
        i32.load offset=143140
        i32.ge_s
        br_if 1 (;@1;)
        local.get 3
        local.get 0
        local.get 1
        local.get 2
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h3526d2f1598c1078E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf9851e285a2d5605E
        br 0 (;@2;)
      end
    end
    local.get 3
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf9851e285a2d5605E (;122;) (type 2) (param i32 i32)
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1df072a82e456eacE (;123;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h0d5b005c1a06525fE
          local.tee 3
          i32.const 28523
          i32.eq
          br_if 0 (;@3;)
          local.get 3
          br_if 1 (;@2;)
        end
        local.get 1
        i32.const 132317
        i32.const 6
        call $_ZN168_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17he0023167dfb96f04E
        local.set 1
        local.get 2
        i32.const 0
        i32.store offset=4
        i32.const 4
        local.set 3
        br 1 (;@1;)
      end
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.load
          i32.const 0
          i32.load offset=143140
          i32.lt_s
          br_if 0 (;@3;)
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
          local.set 1
          br 1 (;@2;)
        end
        local.get 1
        i32.const 132317
        i32.const 6
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h3526d2f1598c1078E
        local.set 1
      end
      local.get 2
      local.get 3
      i32.store offset=8
      local.get 2
      i32.const 1
      i32.store offset=4
      i32.const 8
      local.set 3
    end
    local.get 2
    i32.const 4
    i32.add
    local.get 3
    i32.add
    local.get 1
    i32.store
    local.get 0
    local.get 2
    i64.load offset=4 align=4
    i64.store align=4
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    i32.const 4
    i32.add
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN168_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17he0023167dfb96f04E (;124;) (type 5) (param i32 i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.set 3
    loop (result i32) ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load
        i32.const 0
        i32.load offset=143140
        i32.lt_s
        br_if 0 (;@2;)
        local.get 3
        return
      end
      local.get 3
      local.get 0
      local.get 1
      local.get 2
      call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h3526d2f1598c1078E
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf9851e285a2d5605E
      br 0 (;@1;)
    end
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h41c7095b48e1b997E (;125;) (type 5) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN168_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17he0023167dfb96f04E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6fb931f058058d2bE (;126;) (type 5) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h592577498c002ca9E
  )
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h592577498c002ca9E (;127;) (type 5) (param i32 i32 i32) (result i32)
    block ;; label = @1
      local.get 0
      local.get 1
      local.get 2
      call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17he1ea4a19d2dd18f4E
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h02929fecbec91d6bE
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131940
      i32.const 16
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h2b83c02fb98e5438E
      unreachable
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h7412d4c272e1713dE (;128;) (type 12) (param i32) (result i32)
    local.get 0
    i32.const 132299
    i32.const 16
    call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17he1ea4a19d2dd18f4E
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h02929fecbec91d6bE
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h9ebf92f2450de442E
  )
  (func $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17he1ea4a19d2dd18f4E (;129;) (type 5) (param i32 i32 i32) (result i32)
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
    i32.load
    local.get 0
    i32.load offset=8
    local.tee 4
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$7try_get17ha506ce50e4f3b507E
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
      i32.const 1
      i32.add
      i32.store offset=8
      local.get 2
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h02929fecbec91d6bE
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
    i32.const 131362
    i32.const 17
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h2b83c02fb98e5438E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h9ebf92f2450de442E (;130;) (type 12) (param i32) (result i32)
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
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E
      drop
      i32.const 2147483646
      local.get 0
      local.get 1
      i32.const 12
      i32.add
      i32.const 4
      i32.const 131892
      i32.const 4
      call $_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17hb31846c9f8baa4d9E
      select
      local.set 0
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h7ee5b75b3ce1d5edE (;131;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h0d5b005c1a06525fE
          local.tee 3
          i32.const 28523
          i32.eq
          br_if 0 (;@3;)
          local.get 3
          br_if 1 (;@2;)
        end
        local.get 1
        i32.const 132317
        i32.const 6
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h3526d2f1598c1078E
        local.set 1
        local.get 2
        i32.const 0
        i32.store offset=4
        i32.const 4
        local.set 3
        br 1 (;@1;)
      end
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.load
          i32.const 0
          i32.load offset=143140
          i32.lt_s
          br_if 0 (;@3;)
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
          local.set 1
          br 1 (;@2;)
        end
        local.get 1
        i32.const 132317
        i32.const 6
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h3526d2f1598c1078E
        local.set 1
      end
      local.get 2
      local.get 3
      i32.store offset=8
      local.get 2
      i32.const 1
      i32.store offset=4
      i32.const 8
      local.set 3
    end
    local.get 2
    i32.const 4
    i32.add
    local.get 3
    i32.add
    local.get 1
    i32.store
    local.get 0
    local.get 2
    i64.load offset=4 align=4
    i64.store align=4
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    i32.const 4
    i32.add
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hda08bd089da5765bE (;132;) (type 2) (param i32 i32)
    (local i32 i32 i32 i64 i32)
    local.get 1
    i32.const 132514
    i32.const 9
    call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h66de16db5e8b0cc6E
    call $_ZN127_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h24ec81a813e1c2c7E
    local.set 2
    local.get 1
    i32.const 132514
    i32.const 9
    call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h3526d2f1598c1078E
    local.set 3
    local.get 1
    i32.const 132514
    i32.const 9
    call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h3526d2f1598c1078E
    local.set 4
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.const 132514
          i32.const 9
          call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h66de16db5e8b0cc6E
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
        i32.const 132514
        i32.const 9
        i32.const 131964
        i32.const 18
        call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h2b83c02fb98e5438E
        unreachable
      end
      i32.const 1
      local.set 6
    end
    local.get 0
    local.get 1
    i32.const 132514
    i32.const 9
    call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h3526d2f1598c1078E
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
  (func $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h66de16db5e8b0cc6E (;133;) (type 5) (param i32 i32 i32) (result i32)
    (local i32)
    block ;; label = @1
      local.get 0
      i32.load
      local.tee 3
      i32.const 0
      i32.load offset=143140
      i32.lt_s
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131362
      i32.const 17
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h2b83c02fb98e5438E
      unreachable
    end
    local.get 0
    local.get 3
    i32.const 1
    i32.add
    i32.store
    local.get 3
  )
  (func $_ZN127_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h24ec81a813e1c2c7E (;134;) (type 12) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $bigIntGetUnsignedArgument
    local.get 1
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hfe9e029eef2cdec1E (;135;) (type 2) (param i32 i32)
    (local i32)
    i32.const 0
    local.set 2
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load
        i32.const 0
        i32.load offset=143140
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 1
        local.set 2
        br 1 (;@1;)
      end
      local.get 1
      i32.const 132358
      i32.const 7
      call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h3526d2f1598c1078E
      local.set 1
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h33c972f9b40b2771E (;136;) (type 12) (param i32) (result i32)
    local.get 0
    call $_ZN127_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h24ec81a813e1c2c7E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4374a819cde8d73dE (;137;) (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h9733a4655e32a310E
    local.tee 4
    call $mBufferGetLength
    local.set 0
    local.get 3
    i32.const 28
    i32.add
    i32.const 0
    i32.store8
    local.get 3
    i32.const 24
    i32.add
    local.get 0
    i32.store
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
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h843ab6c0275e0ef8E
    local.set 0
    local.get 3
    i32.const 12
    i32.add
    local.get 1
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h843ab6c0275e0ef8E
    local.set 4
    local.get 3
    i32.const 12
    i32.add
    local.get 1
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h843ab6c0275e0ef8E
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
        i32.store offset=143132
        i32.const 0
        i32.const 0
        i32.store8 offset=143136
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
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h2b83c02fb98e5438E
    unreachable
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h843ab6c0275e0ef8E (;138;) (type 5) (param i32 i32 i32) (result i32)
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
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17hbe2d6772335abd9eE
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h11a844062716690bE
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h75e4810ea888cd60E (;139;) (type 3) (result i32)
    i32.const 1
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h9733a4655e32a310E
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h9ebf92f2450de442E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E (;140;) (type 5) (param i32 i32 i32) (result i32)
    block ;; label = @1
      local.get 0
      call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h9733a4655e32a310E
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131940
      i32.const 16
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h2b83c02fb98e5438E
      unreachable
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E (;141;) (type 12) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h9733a4655e32a310E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hca74494a97b00719E (;142;) (type 3) (result i32)
    (local i64)
    block ;; label = @1
      i32.const 0
      call $smallIntGetUnsignedArgument
      local.tee 0
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 132327
      i32.const 5
      i32.const 131072
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h2b83c02fb98e5438E
      unreachable
    end
    local.get 0
    i32.wrap_i64
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hcaba6ffc5fe42f86E (;143;) (type 15) (param i32) (result i64)
    local.get 0
    call $smallIntGetUnsignedArgument
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h67c081b83f6eaa56E (;144;) (type 2) (param i32 i32)
    block ;; label = @1
      local.get 1
      local.get 0
      i32.lt_u
      br_if 0 (;@1;)
      return
    end
    i32.const 131379
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hc4b7ded9e4487706E (;145;) (type 8) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=143140
      local.get 0
      i32.gt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131379
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E (;146;) (type 8) (param i32)
    block ;; label = @1
      call $getNumArguments
      local.get 0
      i32.ne
      br_if 0 (;@1;)
      return
    end
    i32.const 131397
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h85ad1c323beb7c86E (;147;) (type 8) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=143140
      local.get 0
      i32.lt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131362
    i32.const 17
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hc3dcdadfb9a64636E (;148;) (type 11)
    i32.const 0
    call $getNumArguments
    i32.store offset=143140
  )
  (func $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h8e7a8e5cedef394eE (;149;) (type 2) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hccd109dc261c483eE
    local.set 2
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hccd109dc261c483eE (;150;) (type 12) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h9a55663278535fefE
    i32.const 2
    i32.shr_u
  )
  (func $_ZN11dharitri_sc2io6finish12finish_multi17h17b32d5049f380caE (;151;) (type 8) (param i32)
    local.get 0
    i32.load
    call $mBufferFinish
    drop
    block ;; label = @1
      local.get 0
      i32.load offset=4
      br_if 0 (;@1;)
      local.get 0
      i32.const 8
      i32.add
      i32.load
      call $mBufferFinish
      drop
    end
  )
  (func $_ZN11dharitri_sc2io6finish12finish_multi17h4836b6b7f2eca240E (;152;) (type 8) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h9a55663278535fefE
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbef3f30694ae9437E
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
  (func $_ZN11dharitri_sc3api13managed_types11big_int_api13BigIntApiImpl15bi_sub_unsigned17h38addf0598cfd077E (;153;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $bigIntSub
    block ;; label = @1
      local.get 0
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$7bi_sign17h50923a6097467bb5E
      i32.const 255
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      return
    end
    i32.const 131422
    i32.const 48
    call $signalError
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$7bi_sign17h50923a6097467bb5E (;154;) (type 12) (param i32) (result i32)
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
  (func $_ZN11dharitri_sc4dcdt15system_sc_proxy18set_token_property17hf6b18d3cbce64b30E (;155;) (type 22) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall17push_raw_argument17h5bf4f75d621d6a21E
    local.get 0
    i32.const 131475
    i32.const 131470
    local.get 3
    select
    i32.const 4
    i32.const 5
    local.get 3
    select
    call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall17push_raw_argument17h5bf4f75d621d6a21E
  )
  (func $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall17push_raw_argument17h5bf4f75d621d6a21E (;156;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf9851e285a2d5605E
  )
  (func $_ZN11dharitri_sc4dcdt15system_sc_proxy38DCDTSystemSmartContractProxy$LT$SA$GT$14issue_fungible17hc076f19c9854e45dE (;157;) (type 33) (param i32 i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc4dcdt15system_sc_proxy38DCDTSystemSmartContractProxy$LT$SA$GT$5issue17h5b6a49f2853a5f90E
    local.get 6
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc4dcdt15system_sc_proxy38DCDTSystemSmartContractProxy$LT$SA$GT$5issue17h5b6a49f2853a5f90E (;158;) (type 34) (param i32 i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 7
    global.set $__stack_pointer
    local.get 2
    i32.const 255
    i32.and
    local.tee 8
    i32.const 2
    i32.shl
    local.tee 2
    i32.const 132636
    i32.add
    i32.load
    local.set 9
    local.get 2
    i32.const 132656
    i32.add
    i32.load
    local.set 2
    local.get 7
    call $_ZN11dharitri_sc4dcdt15system_sc_proxy38DCDTSystemSmartContractProxy$LT$SA$GT$22dcdt_system_sc_address17hea744f9ef002aba0E
    local.get 2
    local.get 9
    call $_ZN11dharitri_sc5types11interaction24contract_call_no_payment48ContractCallNoPayment$LT$SA$C$OriginalResult$GT$3new17h2359799f2d540642E
    local.get 7
    local.get 1
    i32.store offset=24
    local.get 7
    i32.load offset=4
    local.tee 2
    local.get 3
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h22a0db9d8903e8b7E
    local.get 2
    local.get 4
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h22a0db9d8903e8b7E
    block ;; label = @1
      local.get 8
      br_if 0 (;@1;)
      local.get 2
      local.get 5
      call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17hc99d9eb018084fbaE
      local.get 2
      local.get 6
      i32.load
      call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h4c67601128ac181bE
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
    local.set 9
    local.get 6
    i32.load8_u offset=5
    local.set 5
    local.get 2
    i32.const 131479
    i32.const 9
    local.get 6
    i32.load8_u offset=4
    call $_ZN11dharitri_sc4dcdt15system_sc_proxy18set_token_property17hf6b18d3cbce64b30E
    local.get 2
    i32.const 131488
    i32.const 7
    local.get 5
    call $_ZN11dharitri_sc4dcdt15system_sc_proxy18set_token_property17hf6b18d3cbce64b30E
    local.get 2
    i32.const 131495
    i32.const 8
    local.get 9
    call $_ZN11dharitri_sc4dcdt15system_sc_proxy18set_token_property17hf6b18d3cbce64b30E
    block ;; label = @1
      block ;; label = @2
        local.get 8
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const 131503
        i32.const 24
        local.get 10
        i32.const 255
        i32.and
        i32.const 0
        i32.ne
        call $_ZN11dharitri_sc4dcdt15system_sc_proxy18set_token_property17hf6b18d3cbce64b30E
        br 1 (;@1;)
      end
      local.get 2
      i32.const 131527
      i32.const 7
      local.get 12
      i32.const 255
      i32.and
      i32.const 0
      i32.ne
      call $_ZN11dharitri_sc4dcdt15system_sc_proxy18set_token_property17hf6b18d3cbce64b30E
      local.get 2
      i32.const 131534
      i32.const 7
      local.get 11
      i32.const 255
      i32.and
      i32.const 0
      i32.ne
      call $_ZN11dharitri_sc4dcdt15system_sc_proxy18set_token_property17hf6b18d3cbce64b30E
    end
    local.get 2
    i32.const 131541
    i32.const 14
    local.get 4
    i32.const 255
    i32.and
    i32.const 0
    i32.ne
    call $_ZN11dharitri_sc4dcdt15system_sc_proxy18set_token_property17hf6b18d3cbce64b30E
    local.get 2
    i32.const 131555
    i32.const 10
    local.get 3
    i32.const 255
    i32.and
    i32.const 0
    i32.ne
    call $_ZN11dharitri_sc4dcdt15system_sc_proxy18set_token_property17hf6b18d3cbce64b30E
    local.get 2
    i32.const 131565
    i32.const 18
    local.get 1
    i32.const 255
    i32.and
    i32.const 0
    i32.ne
    call $_ZN11dharitri_sc4dcdt15system_sc_proxy18set_token_property17hf6b18d3cbce64b30E
    local.get 0
    i32.const 24
    i32.add
    local.get 7
    i32.const 24
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 16
    i32.add
    local.get 7
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 8
    i32.add
    local.get 7
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 0
    local.get 7
    i64.load
    i64.store
    local.get 7
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc4dcdt15system_sc_proxy38DCDTSystemSmartContractProxy$LT$SA$GT$17set_special_roles17h9cad01f87c372562E (;159;) (type 22) (param i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 24
    i32.add
    i32.const 131583
    i32.const 14
    call $_ZN11dharitri_sc4dcdt15system_sc_proxy38DCDTSystemSmartContractProxy$LT$SA$GT$27dcdt_system_sc_call_no_args17h860ac7bea51e8ac6E
    local.get 4
    i32.load offset=28
    local.tee 5
    local.get 2
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h22a0db9d8903e8b7E
    local.get 4
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 4
    i32.const 40
    i32.add
    i64.load
    i64.store
    local.get 4
    local.get 4
    i64.load offset=32
    i64.store offset=8
    local.get 4
    i32.load offset=24
    local.set 6
    local.get 5
    local.get 1
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h22a0db9d8903e8b7E
    local.get 4
    i32.const 24
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
    i64.store offset=24
    loop ;; label = @1
      local.get 4
      i32.const 24
      i32.add
      call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha558517518c4f535E
      local.tee 2
      i32.const 255
      i32.and
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      block ;; label = @2
        local.get 3
        i32.const 9
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        local.get 5
        i32.store offset=4
        local.get 0
        local.get 6
        i32.store
        local.get 0
        local.get 4
        i64.load offset=8
        i64.store offset=8
        local.get 0
        i32.const 16
        i32.add
        local.get 4
        i32.const 16
        i32.add
        i64.load
        i64.store
        local.get 4
        i32.const 48
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 4
      local.get 2
      call $_ZN11dharitri_sc5types5flags15dcdt_local_role13DcdtLocalRole12as_role_name17h7faeaa8a3e1c6835E
      local.get 5
      local.get 4
      i32.load
      local.get 4
      i32.load offset=4
      call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall17push_raw_argument17h5bf4f75d621d6a21E
      br 0 (;@1;)
    end
  )
  (func $_ZN11dharitri_sc4dcdt15system_sc_proxy38DCDTSystemSmartContractProxy$LT$SA$GT$27dcdt_system_sc_call_no_args17h860ac7bea51e8ac6E (;160;) (type 1) (param i32 i32 i32)
    local.get 0
    call $_ZN11dharitri_sc4dcdt15system_sc_proxy38DCDTSystemSmartContractProxy$LT$SA$GT$22dcdt_system_sc_address17hea744f9ef002aba0E
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction24contract_call_no_payment48ContractCallNoPayment$LT$SA$C$OriginalResult$GT$3new17h2359799f2d540642E
  )
  (func $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha558517518c4f535E (;161;) (type 12) (param i32) (result i32)
    (local i32 i64)
    i32.const 9
    local.set 1
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load offset=8
          local.get 0
          i32.load offset=4
          i32.ge_u
          br_if 0 (;@3;)
          block ;; label = @4
            local.get 0
            i32.const 131956
            i32.const 8
            call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17he1ea4a19d2dd18f4E
            local.tee 0
            call $mBufferGetLength
            br_if 0 (;@4;)
            i32.const 0
            return
          end
          local.get 0
          i32.const 131956
          i32.const 8
          call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hb5122cefb9e6a0b0E
          local.tee 2
          i64.const 256
          i64.ge_u
          br_if 1 (;@2;)
          local.get 2
          i32.wrap_i64
          local.tee 1
          i32.const 255
          i32.and
          i32.const 9
          i32.ge_u
          br_if 2 (;@1;)
        end
        local.get 1
        return
      end
      i32.const 131956
      i32.const 8
      i32.const 131072
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h2b83c02fb98e5438E
      unreachable
    end
    i32.const 131956
    i32.const 8
    i32.const 131901
    i32.const 13
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h2b83c02fb98e5438E
    unreachable
  )
  (func $_ZN11dharitri_sc5types5flags15dcdt_local_role13DcdtLocalRole12as_role_name17h7faeaa8a3e1c6835E (;162;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    local.tee 1
    i32.const 132676
    i32.add
    i32.load
    i32.load
    i32.store offset=4
    local.get 0
    local.get 1
    i32.const 132712
    i32.add
    i32.load
    i32.load
    i32.store
  )
  (func $_ZN11dharitri_sc4dcdt15system_sc_proxy38DCDTSystemSmartContractProxy$LT$SA$GT$18issue_non_fungible17h5ac43013fcdae47bE (;163;) (type 23) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17ha7217c0dc6f9660cE
    local.set 6
    local.get 5
    i32.const 0
    i32.store16 offset=8
    local.get 5
    i32.const 0
    i32.store
    local.get 5
    local.get 4
    i32.load8_u offset=6
    i32.store8 offset=12
    local.get 5
    local.get 4
    i32.load16_u offset=4 align=1
    i32.store16 offset=10
    local.get 5
    local.get 4
    i32.load align=1
    i32.store offset=4
    local.get 0
    local.get 1
    i32.const 1
    local.get 2
    local.get 3
    local.get 6
    local.get 5
    call $_ZN11dharitri_sc4dcdt15system_sc_proxy38DCDTSystemSmartContractProxy$LT$SA$GT$5issue17h5b6a49f2853a5f90E
    local.get 5
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17ha7217c0dc6f9660cE (;164;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    i64.const 0
    call $bigIntSetInt64
    local.get 0
  )
  (func $_ZN11dharitri_sc4dcdt15system_sc_proxy38DCDTSystemSmartContractProxy$LT$SA$GT$19issue_semi_fungible17hdf35c5e5fb3db3c4E (;165;) (type 23) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17ha7217c0dc6f9660cE
    local.set 6
    local.get 5
    i32.const 0
    i32.store16 offset=8
    local.get 5
    i32.const 0
    i32.store
    local.get 5
    local.get 4
    i32.load8_u offset=6
    i32.store8 offset=12
    local.get 5
    local.get 4
    i32.load16_u offset=4 align=1
    i32.store16 offset=10
    local.get 5
    local.get 4
    i32.load align=1
    i32.store offset=4
    local.get 0
    local.get 1
    i32.const 2
    local.get 2
    local.get 3
    local.get 6
    local.get 5
    call $_ZN11dharitri_sc4dcdt15system_sc_proxy38DCDTSystemSmartContractProxy$LT$SA$GT$5issue17h5b6a49f2853a5f90E
    local.get 5
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc4dcdt15system_sc_proxy38DCDTSystemSmartContractProxy$LT$SA$GT$19unset_special_roles17h139a67ac2ace20d6E (;166;) (type 22) (param i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 24
    i32.add
    i32.const 131597
    i32.const 16
    call $_ZN11dharitri_sc4dcdt15system_sc_proxy38DCDTSystemSmartContractProxy$LT$SA$GT$27dcdt_system_sc_call_no_args17h860ac7bea51e8ac6E
    local.get 4
    i32.load offset=28
    local.tee 5
    local.get 2
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h22a0db9d8903e8b7E
    local.get 4
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 4
    i32.const 24
    i32.add
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 4
    local.get 4
    i64.load offset=32
    i64.store offset=8
    local.get 4
    i32.load offset=24
    local.set 6
    local.get 5
    local.get 1
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h22a0db9d8903e8b7E
    local.get 4
    i32.const 24
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
    i64.store offset=24
    loop ;; label = @1
      local.get 4
      i32.const 24
      i32.add
      call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha558517518c4f535E
      local.tee 2
      i32.const 255
      i32.and
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      block ;; label = @2
        local.get 3
        i32.const 9
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        local.get 5
        i32.store offset=4
        local.get 0
        local.get 6
        i32.store
        local.get 0
        local.get 4
        i64.load offset=8
        i64.store offset=8
        local.get 0
        i32.const 16
        i32.add
        local.get 4
        i32.const 16
        i32.add
        i64.load
        i64.store
        local.get 4
        i32.const 48
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 4
      local.get 2
      call $_ZN11dharitri_sc5types5flags15dcdt_local_role13DcdtLocalRole12as_role_name17h7faeaa8a3e1c6835E
      local.get 5
      local.get 4
      i32.load
      local.get 4
      i32.load offset=4
      call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall17push_raw_argument17h5bf4f75d621d6a21E
      br 0 (;@1;)
    end
  )
  (func $_ZN11dharitri_sc4dcdt15system_sc_proxy38DCDTSystemSmartContractProxy$LT$SA$GT$22dcdt_system_sc_address17hea744f9ef002aba0E (;167;) (type 3) (result i32)
    i32.const 131613
    i32.const 32
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E
  )
  (func $_ZN11dharitri_sc5types11interaction24contract_call_no_payment48ContractCallNoPayment$LT$SA$C$OriginalResult$GT$3new17h2359799f2d540642E (;168;) (type 22) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E
    local.set 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.set 2
    local.get 0
    i64.const -1
    i64.store offset=8
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
    local.get 0
    local.get 1
    i32.store offset=16
  )
  (func $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h4c67601128ac181bE (;169;) (type 2) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.tee 2
    local.get 1
    i64.extend_i32_u
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417hb070d3250fcc8a53E
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf9851e285a2d5605E
  )
  (func $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17hbaeba017d9690ff4E (;170;) (type 8) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block ;; label = @1
      local.get 0
      i32.load offset=16
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      call $_ZN11dharitri_sc5types11interaction16callback_closure22cb_closure_storage_key17h40171b67b0ee3337E
      local.set 3
      local.get 1
      call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hf2283d5e0b064b69E
      local.get 1
      local.get 1
      i32.load8_u offset=4
      i32.store8 offset=12
      local.get 1
      local.get 1
      i32.load
      i32.store offset=8
      local.get 2
      local.get 0
      i32.const 20
      i32.add
      i32.load
      local.get 1
      i32.const 8
      i32.add
      call $_ZN17dharitri_sc_codec14impl_for_types10impl_slice96_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$$u5b$T$u5d$$GT$24dep_encode_or_handle_err17hfe67deb6d04e0af5E
      local.get 0
      i32.const 24
      i32.add
      local.get 1
      i32.const 8
      i32.add
      call $_ZN145_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h403fdd86d94954f6E
      local.get 3
      local.get 1
      i32.load offset=8
      local.get 1
      i32.load8_u offset=12
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h11ccac029b037190E
    end
    local.get 0
    call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$29call_and_exit_ignore_callback17h8de9f03f09cbf6dbE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction16callback_closure22cb_closure_storage_key17h40171b67b0ee3337E (;171;) (type 3) (result i32)
    (local i32 i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    call $managedGetOriginalTxHash
    i32.const 131782
    i32.const 10
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hf2283d5e0b064b69E (;172;) (type 8) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        i32.const 0
        i32.load8_u offset=143136
        local.tee 2
        br_if 0 (;@2;)
        i32.const 0
        i32.const 1
        i32.store8 offset=143136
        i32.const 0
        i32.const 0
        i32.store offset=143132
        local.get 1
        i32.const 8
        i32.add
        i32.const 0
        call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h9d9e5f2a67b11e63E
        local.get 1
        i32.load offset=8
        local.get 1
        i32.load offset=12
        i32.const 133040
        i32.const 0
        call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
        local.set 3
        br 1 (;@1;)
      end
      i32.const 133040
      i32.const 0
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E
      local.set 3
    end
    local.get 0
    local.get 3
    i32.store
    local.get 0
    local.get 2
    i32.const 1
    i32.xor
    i32.store8 offset=4
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types10impl_slice96_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$$u5b$T$u5d$$GT$24dep_encode_or_handle_err17hfe67deb6d04e0af5E (;173;) (type 1) (param i32 i32 i32)
    local.get 1
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h43212ea12bfc7624E
    local.get 2
    local.get 0
    local.get 1
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h22ba3fd85b960436E
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h403fdd86d94954f6E (;174;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.tee 3
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hccd109dc261c483eE
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h43212ea12bfc7624E
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h9a55663278535fefE
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
      call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbef3f30694ae9437E
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
      call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h2d85469ba51e5670E
      br 0 (;@1;)
    end
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h11ccac029b037190E (;175;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$19into_managed_buffer17h4388e44f59e81034E
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h147aaa50d6eb6600E (;176;) (type 23) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 40
    i32.add
    i32.const 131719
    i32.const 15
    call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$3new17h9496b924b5dd2348E
    local.get 5
    i32.const 32
    i32.add
    local.get 5
    i32.load offset=40
    local.get 5
    i32.load offset=44
    local.get 4
    i32.load offset=8
    call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h7f913e3503c8c0cbE
    local.get 5
    i32.const 24
    i32.add
    local.get 5
    i32.load offset=32
    local.get 5
    i32.load offset=36
    local.get 4
    i64.load
    call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h37cdc1a92f01718fE
    local.get 5
    i32.const 16
    i32.add
    local.get 5
    i32.load offset=24
    local.get 5
    i32.load offset=28
    local.get 4
    i32.load offset=12
    call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h9e2bb17998b1a823E
    local.get 5
    i32.load offset=16
    local.set 4
    local.get 5
    i32.load offset=20
    local.tee 6
    local.get 3
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h22a0db9d8903e8b7E
    local.get 5
    i32.const 8
    i32.add
    local.get 4
    local.get 6
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h67800e7ec1c58c37E
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
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$3new17h9496b924b5dd2348E (;177;) (type 1) (param i32 i32 i32)
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E
    local.set 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h7f913e3503c8c0cbE (;178;) (type 22) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h22a0db9d8903e8b7E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h37cdc1a92f01718fE (;179;) (type 32) (param i32 i32 i32 i64)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17he4474415d431cd1dE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h9e2bb17998b1a823E (;180;) (type 22) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17hc99d9eb018084fbaE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h67800e7ec1c58c37E (;181;) (type 23) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block ;; label = @1
      local.get 3
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h98d34a84b7100ca2E
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h22a0db9d8903e8b7E
      local.get 4
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h9a55663278535fefE
      local.set 6
      i32.const 0
      local.set 3
      loop ;; label = @2
        local.get 3
        i32.const 4
        i32.add
        local.tee 7
        local.get 6
        i32.gt_u
        br_if 1 (;@1;)
        local.get 5
        i32.const 0
        i32.store offset=12
        local.get 4
        local.get 3
        local.get 5
        i32.const 12
        i32.add
        i32.const 4
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17haaab55558a510fceE
        drop
        local.get 2
        local.get 5
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
        call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h22a0db9d8903e8b7E
        local.get 7
        local.set 3
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
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h4f05e831afd264e3E (;182;) (type 23) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 24
    i32.add
    i32.const 131734
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$3new17h9496b924b5dd2348E
    local.get 5
    i32.const 16
    i32.add
    local.get 5
    i32.load offset=24
    local.get 5
    i32.load offset=28
    local.get 3
    call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h7f913e3503c8c0cbE
    local.get 5
    i32.const 8
    i32.add
    local.get 5
    i32.load offset=16
    local.get 5
    i32.load offset=20
    local.get 4
    call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h9e2bb17998b1a823E
    local.get 5
    local.get 5
    i32.load offset=8
    local.get 5
    i32.load offset=12
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h67800e7ec1c58c37E
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
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17he4474415d431cd1dE (;183;) (type 0) (param i32 i64)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.tee 2
    local.get 1
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417hb070d3250fcc8a53E
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf9851e285a2d5605E
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17haaab55558a510fceE (;184;) (type 16) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E
  )
  (func $_ZN11dharitri_sc5types11interaction15contract_deploy41ContractDeploy$LT$SA$C$OriginalResult$GT$13decode_result17hcf459153b89ab0d4E (;185;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 4
    i32.add
    local.get 1
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h8e7a8e5cedef394eE
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i32.load offset=12
        local.get 2
        i32.load offset=8
        i32.lt_u
        br_if 0 (;@2;)
        i32.const 1
        local.set 1
        br 1 (;@1;)
      end
      i32.const 0
      local.set 1
      local.get 2
      i32.const 4
      i32.add
      i32.const 131746
      call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17hadc9227d1f58ade8E
      local.set 3
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
  (func $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17hadc9227d1f58ade8E (;186;) (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.const 11
    call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17he1ea4a19d2dd18f4E
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h02929fecbec91d6bE
  )
  (func $_ZN11dharitri_sc5types11interaction15contract_deploy41ContractDeploy$LT$SA$C$OriginalResult$GT$17resolve_gas_limit17h57b004e4f0a8ee01E (;187;) (type 35) (param i64) (result i64)
    block ;; label = @1
      local.get 0
      i64.const -1
      i64.ne
      br_if 0 (;@1;)
      call $getGasLeft
      local.set 0
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h142c6626c3f64f6dE (;188;) (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const 0
    local.set 4
    block ;; label = @1
      local.get 0
      i32.load offset=32
      local.get 2
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i32.const 8
      i32.add
      i32.const 0
      local.get 2
      local.get 0
      i32.const 32
      call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc43ea098857437eaE
      local.get 3
      i32.load offset=8
      local.get 3
      i32.load offset=12
      local.get 1
      local.get 2
      call $_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17hb31846c9f8baa4d9E
      local.set 4
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 4
  )
  (func $_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17hb31846c9f8baa4d9E (;189;) (type 16) (param i32 i32 i32 i32) (result i32)
    (local i32)
    i32.const 0
    local.set 4
    block ;; label = @1
      local.get 1
      local.get 3
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 1
      call $memcmp
      i32.eqz
      local.set 4
    end
    local.get 4
  )
  (func $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17hda197e58a47ab2cdE (;190;) (type 2) (param i32 i32)
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
    local.get 2
    i32.const 16
    i32.add
    i32.const 32
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h9a55663278535fefE
    local.tee 6
    call $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h37ac80dca771d38fE
    local.get 1
    i32.const 0
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17haaab55558a510fceE
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
  (func $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h37ac80dca771d38fE (;191;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 8
    i32.add
    i32.const 0
    local.get 3
    local.get 1
    local.get 2
    call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb59f69f0686dcbbdE
    local.get 4
    i32.load offset=12
    local.set 2
    local.get 0
    local.get 4
    i32.load offset=8
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction18contract_call_exec123_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_with_rewa..ContractCallWithRewa$LT$SA$C$OriginalResult$GT$$GT$23execute_on_dest_context17h6373d45838f9e459E (;192;) (type 8) (param i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block ;; label = @1
      local.get 0
      i64.load offset=8
      local.tee 2
      i64.const -1
      i64.ne
      br_if 0 (;@1;)
      call $getGasLeft
      local.set 2
    end
    local.get 2
    local.get 0
    i32.load offset=16
    local.get 0
    i32.load offset=24
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17h72f9ff845355effbE
    local.set 0
    call $cleanReturnData
    local.get 1
    i32.const 4
    i32.add
    local.get 0
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h8e7a8e5cedef394eE
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction18contract_call_exec125_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_no_payment..ContractCallNoPayment$LT$SA$C$OriginalResult$GT$$GT$21transfer_execute_rewa17h42eb1b2fe383f597E (;193;) (type 2) (param i32 i32)
    (local i64)
    local.get 0
    i64.load offset=8
    call $_ZN11dharitri_sc5types11interaction18contract_call_exec125_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_no_payment..ContractCallNoPayment$LT$SA$C$OriginalResult$GT$$GT$31resolve_gas_limit_with_leftover17he4fc82422d2a7fb4E
    local.set 2
    local.get 0
    i32.load offset=16
    local.get 1
    local.get 2
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$19direct_rewa_execute17h7baf4e3eb2e28322E
  )
  (func $_ZN11dharitri_sc5types11interaction18contract_call_exec125_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_no_payment..ContractCallNoPayment$LT$SA$C$OriginalResult$GT$$GT$31resolve_gas_limit_with_leftover17he4fc82422d2a7fb4E (;194;) (type 35) (param i64) (result i64)
    block ;; label = @1
      local.get 0
      i64.const -1
      i64.ne
      br_if 0 (;@1;)
      call $getGasLeft
      local.tee 0
      i64.const -100000
      i64.add
      local.get 0
      local.get 0
      i64.const 100000
      i64.gt_u
      select
      local.set 0
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc5types11interaction18contract_call_exec125_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_no_payment..ContractCallNoPayment$LT$SA$C$OriginalResult$GT$$GT$28transfer_execute_single_dcdt17ha950402a3f86db1aE (;195;) (type 2) (param i32 i32)
    (local i64 i32 i32 i32 i32 i64)
    local.get 0
    i64.load offset=8
    call $_ZN11dharitri_sc5types11interaction18contract_call_exec125_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_no_payment..ContractCallNoPayment$LT$SA$C$OriginalResult$GT$$GT$31resolve_gas_limit_with_leftover17he4fc82422d2a7fb4E
    local.set 2
    local.get 0
    i32.load offset=4
    local.set 3
    local.get 0
    i32.load
    local.set 4
    local.get 1
    i32.load offset=12
    local.set 5
    local.get 1
    i32.load offset=8
    local.set 6
    local.get 0
    i32.load offset=16
    local.set 0
    block ;; label = @1
      local.get 1
      i64.load
      local.tee 7
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
      local.get 0
      local.get 6
      local.get 5
      local.get 2
      local.get 4
      local.get 3
      call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21transfer_dcdt_execute17h0579b975821e7d79E
      return
    end
    local.get 0
    local.get 6
    local.get 7
    local.get 5
    local.get 2
    local.get 4
    local.get 3
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17h14e1eb5c1ae2b611E
  )
  (func $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417hb070d3250fcc8a53E (;196;) (type 0) (param i32 i64)
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
    call $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hfa66c899aa066fc8E
    local.get 0
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call $_ZN11dharitri_sc5types7managed10codec_util28managed_buffer_top_en_output174_$LT$impl$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$u20$for$u20$$RF$mut$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$12set_slice_u817h6856efd3cba2cffbE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h2236f2af69a64826E (;197;) (type 12) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h7d54ea6ff918e4a6E (;198;) (type 2) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h499bc919411e350cE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall10async_call17h6c9f7d20209b337fE (;199;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    call $_ZN229_$LT$dharitri_sc..types..interaction..contract_call_with_rewa_or_single_dcdt..ContractCallWithRewaOrSingleDcdt$LT$SA$C$OriginalResult$GT$$u20$as$u20$dharitri_sc..types..interaction..contract_call_trait..ContractCall$LT$SA$GT$$GT$15into_normalized17ha0626593a4ca5ae6E
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    local.get 2
    i32.load offset=24
    i32.store offset=12
    local.get 0
    local.get 2
    i32.load offset=16
    i32.store offset=8
    local.get 0
    local.get 2
    i64.load
    i64.store align=4
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN229_$LT$dharitri_sc..types..interaction..contract_call_with_rewa_or_single_dcdt..ContractCallWithRewaOrSingleDcdt$LT$SA$C$OriginalResult$GT$$u20$as$u20$dharitri_sc..types..interaction..contract_call_trait..ContractCall$LT$SA$GT$$GT$15into_normalized17ha0626593a4ca5ae6E (;200;) (type 2) (param i32 i32)
    (local i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load offset=8
        local.tee 3
        i32.const 2147483646
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        i64.load
        local.set 4
        local.get 1
        i32.load offset=12
        local.set 5
        local.get 2
        i32.const 16
        i32.add
        local.get 1
        i32.const 32
        i32.add
        i64.load
        i64.store
        local.get 2
        i32.const 8
        i32.add
        local.get 1
        i32.const 24
        i32.add
        i64.load
        i64.store
        local.get 2
        local.get 1
        i64.load offset=16
        i64.store
        local.get 2
        call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17ha7217c0dc6f9660cE
        i32.store offset=24
        local.get 3
        call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$11unwrap_dcdt17hf1d72f395fcd6050E
        local.set 1
        local.get 2
        local.get 5
        i32.store offset=44
        local.get 2
        local.get 4
        i64.store offset=32
        local.get 2
        local.get 1
        i32.store offset=40
        local.get 0
        local.get 2
        local.get 2
        i32.const 32
        i32.add
        call $_ZN11dharitri_sc5types11interaction21contract_call_convert123_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_with_rewa..ContractCallWithRewa$LT$SA$C$OriginalResult$GT$$GT$36convert_to_single_transfer_dcdt_call17h5212d1094bac3489E
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i64.load offset=16
      i64.store
      local.get 0
      local.get 1
      i32.load offset=12
      i32.store offset=24
      local.get 0
      i32.const 8
      i32.add
      local.get 1
      i32.const 24
      i32.add
      i64.load
      i64.store
      local.get 0
      i32.const 16
      i32.add
      local.get 1
      i32.const 32
      i32.add
      i64.load
      i64.store
    end
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN213_$LT$dharitri_sc..types..interaction..contract_call_with_multi_dcdt..ContractCallWithMultiDcdt$LT$SA$C$OriginalResult$GT$$u20$as$u20$dharitri_sc..types..interaction..contract_call_trait..ContractCall$LT$SA$GT$$GT$15into_normalized17hfe3363e6dbcf8afdE (;201;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 40
    i32.add
    i32.const 16
    i32.add
    local.tee 3
    local.get 1
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 40
    i32.add
    i32.const 8
    i32.add
    local.tee 4
    local.get 1
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 2
    local.get 1
    i64.load
    i64.store offset=40
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17ha7217c0dc6f9660cE
    i32.store offset=64
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 1
            i32.load offset=24
            local.tee 5
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17ha532708e32f428a3E
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hd4d5312d23963ceeE
          local.set 6
          local.get 2
          i32.load offset=44
          local.set 7
          local.get 2
          i32.load offset=40
          local.set 8
          local.get 2
          local.get 5
          i32.store offset=72
          local.get 2
          i32.const 32
          i32.add
          i32.const 131699
          i32.const 20
          call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$3new17h9496b924b5dd2348E
          local.get 2
          i32.load offset=32
          local.set 4
          local.get 2
          i32.load offset=36
          local.tee 1
          local.get 3
          call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hc9d8ac5447b203c5E
          local.get 1
          local.get 5
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17ha532708e32f428a3E
          call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h4c67601128ac181bE
          local.get 2
          local.get 5
          call $mBufferGetLength
          i32.store offset=84
          local.get 2
          i32.const 0
          i32.store offset=80
          local.get 2
          local.get 2
          i32.const 72
          i32.add
          i32.store offset=76
          block ;; label = @4
            loop ;; label = @5
              local.get 2
              i32.const 88
              i32.add
              local.get 2
              i32.const 76
              i32.add
              call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h73c0d34ef0748cf4E
              local.get 2
              i64.load offset=88
              i64.eqz
              br_if 1 (;@4;)
              local.get 2
              i32.load offset=108
              local.set 5
              local.get 2
              i32.const 24
              i32.add
              local.get 4
              local.get 1
              local.get 2
              i32.load offset=104
              call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h7f913e3503c8c0cbE
              local.get 2
              i32.const 16
              i32.add
              local.get 2
              i32.load offset=24
              local.get 2
              i32.load offset=28
              local.get 2
              i64.load offset=96
              call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h37cdc1a92f01718fE
              local.get 2
              i32.const 8
              i32.add
              local.get 2
              i32.load offset=16
              local.get 2
              i32.load offset=20
              local.get 5
              call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h9e2bb17998b1a823E
              local.get 2
              i32.load offset=12
              local.set 1
              local.get 2
              i32.load offset=8
              local.set 4
              br 0 (;@5;)
            end
          end
          local.get 2
          local.get 4
          local.get 1
          local.get 8
          local.get 7
          call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h67800e7ec1c58c37E
          local.get 2
          i64.load
          local.set 9
          local.get 2
          i64.load offset=48
          local.set 10
          local.get 0
          call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17ha7217c0dc6f9660cE
          i32.store offset=24
          local.get 0
          local.get 6
          i32.store offset=16
          local.get 0
          local.get 10
          i64.store offset=8
          local.get 0
          local.get 9
          i64.store
          br 2 (;@1;)
        end
        local.get 0
        local.get 2
        i64.load offset=40
        i64.store
        local.get 0
        i32.const 24
        i32.add
        local.get 2
        i32.const 40
        i32.add
        i32.const 24
        i32.add
        i64.load
        i64.store
        local.get 0
        i32.const 16
        i32.add
        local.get 3
        i64.load
        i64.store
        local.get 0
        i32.const 8
        i32.add
        local.get 4
        i64.load
        i64.store
        br 1 (;@1;)
      end
      local.get 2
      i32.const 88
      i32.add
      local.get 5
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17ha6d0acc21fb0e643E
      local.get 0
      local.get 2
      i32.const 40
      i32.add
      local.get 2
      i32.const 88
      i32.add
      call $_ZN11dharitri_sc5types11interaction21contract_call_convert123_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_with_rewa..ContractCallWithRewa$LT$SA$C$OriginalResult$GT$$GT$36convert_to_single_transfer_dcdt_call17h5212d1094bac3489E
    end
    local.get 2
    i32.const 112
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall23execute_on_dest_context17h1c1ad72fab4d69f3E (;202;) (type 8) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    call $_ZN213_$LT$dharitri_sc..types..interaction..contract_call_with_multi_dcdt..ContractCallWithMultiDcdt$LT$SA$C$OriginalResult$GT$$u20$as$u20$dharitri_sc..types..interaction..contract_call_trait..ContractCall$LT$SA$GT$$GT$15into_normalized17hfe3363e6dbcf8afdE
    local.get 1
    call $_ZN11dharitri_sc5types11interaction18contract_call_exec123_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_with_rewa..ContractCallWithRewa$LT$SA$C$OriginalResult$GT$$GT$23execute_on_dest_context17h6373d45838f9e459E
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall23execute_on_dest_context17h20a3b3b876275a48E (;203;) (type 8) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    call $_ZN229_$LT$dharitri_sc..types..interaction..contract_call_with_rewa_or_single_dcdt..ContractCallWithRewaOrSingleDcdt$LT$SA$C$OriginalResult$GT$$u20$as$u20$dharitri_sc..types..interaction..contract_call_trait..ContractCall$LT$SA$GT$$GT$15into_normalized17ha0626593a4ca5ae6E
    local.get 1
    call $_ZN11dharitri_sc5types11interaction18contract_call_exec123_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_with_rewa..ContractCallWithRewa$LT$SA$C$OriginalResult$GT$$GT$23execute_on_dest_context17h6373d45838f9e459E
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall23execute_on_dest_context17h8820954857854c29E (;204;) (type 8) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17ha7217c0dc6f9660cE
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    local.get 0
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 1
    local.get 2
    i32.store offset=24
    local.get 1
    local.get 0
    i64.load
    i64.store
    local.get 1
    call $_ZN11dharitri_sc5types11interaction18contract_call_exec123_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_with_rewa..ContractCallWithRewa$LT$SA$C$OriginalResult$GT$$GT$23execute_on_dest_context17h6373d45838f9e459E
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall23execute_on_dest_context17ha1d6e75a01b3c389E (;205;) (type 12) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17ha7217c0dc6f9660cE
    local.set 2
    local.get 0
    i32.load offset=16
    local.set 3
    local.get 0
    i32.load offset=4
    local.set 4
    local.get 0
    i32.load
    local.set 5
    block ;; label = @1
      local.get 0
      i64.load offset=8
      local.tee 6
      i64.const -1
      i64.ne
      br_if 0 (;@1;)
      call $getGasLeft
      local.set 6
    end
    local.get 6
    local.get 3
    local.get 2
    local.get 5
    local.get 4
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17h72f9ff845355effbE
    local.set 0
    call $cleanReturnData
    local.get 1
    i32.const 4
    i32.add
    local.get 0
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h8e7a8e5cedef394eE
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.set 0
    block ;; label = @1
      loop ;; label = @2
        local.get 1
        i32.load offset=12
        local.get 1
        i32.load offset=8
        i32.ge_u
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        i32.const 4
        i32.add
        i32.const 131792
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17hadc9227d1f58ade8E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf9851e285a2d5605E
        br 0 (;@2;)
      end
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN11dharitri_sc5types11interaction21contract_call_convert123_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_with_rewa..ContractCallWithRewa$LT$SA$C$OriginalResult$GT$$GT$36convert_to_single_transfer_dcdt_call17h5212d1094bac3489E (;206;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i64.load
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=16
        local.set 4
        local.get 3
        local.get 1
        i32.load
        local.get 1
        i32.load offset=4
        local.get 2
        i32.load offset=8
        local.get 2
        i32.load offset=12
        call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h4f05e831afd264e3E
        local.get 3
        i32.load offset=4
        local.set 2
        local.get 3
        i32.load
        local.set 5
        br 1 (;@1;)
      end
      call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hd4d5312d23963ceeE
      local.set 4
      local.get 3
      i32.const 8
      i32.add
      local.get 1
      i32.load
      local.get 1
      i32.load offset=4
      local.get 1
      i32.load offset=16
      local.get 2
      call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h147aaa50d6eb6600E
      local.get 3
      i32.load offset=12
      local.set 2
      local.get 3
      i32.load offset=8
      local.set 5
    end
    local.get 1
    i64.load offset=8
    local.set 6
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17ha7217c0dc6f9660cE
    i32.store offset=24
    local.get 0
    local.get 4
    i32.store offset=16
    local.get 0
    local.get 6
    i64.store offset=8
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 5
    i32.store
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction24contract_call_no_payment48ContractCallNoPayment$LT$SA$C$OriginalResult$GT$3new17h2ceb13626b947a39E (;207;) (type 2) (param i32 i32)
    (local i32 i32)
    i32.const 132027
    i32.const 14
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.set 3
    local.get 0
    i64.const -1
    i64.store offset=8
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
    local.get 0
    local.get 1
    i32.store offset=16
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util28managed_buffer_top_en_output174_$LT$impl$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$u20$for$u20$$RF$mut$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$12set_slice_u817h6856efd3cba2cffbE (;208;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferSetBytes
    drop
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h5bda38483efc505aE (;209;) (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    local.get 1
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17h73e0af667179fbccE
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
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h8a1b167642775df0E
    block ;; label = @1
      local.get 3
      i32.load offset=8
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131803
      i32.const 15
      call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h3ab9735f83595eb8E
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17h73e0af667179fbccE (;210;) (type 5) (param i32 i32 i32) (result i32)
    (local i32 i64)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h71910d54d8d995aeE
    local.get 3
    i32.const 12
    i32.add
    i32.const 4
    call $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E
    local.set 4
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 4
    i32.wrap_i64
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h8a1b167642775df0E (;211;) (type 22) (param i32 i32 i32 i32)
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
  (func $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h3ab9735f83595eb8E (;212;) (type 22) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E
    local.tee 1
    local.get 2
    local.get 3
    call $mBufferAppendBytes
    drop
    local.get 1
    call $managedSignalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h5f51150a1d3a0138E (;213;) (type 12) (param i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17h34d9cd47ad2a3831E
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
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h8a1b167642775df0E
    block ;; label = @1
      local.get 1
      i32.load offset=8
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      i32.const 131803
      i32.const 15
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hd829a276e93e0f09E
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17h34d9cd47ad2a3831E (;214;) (type 12) (param i32) (result i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 0
    i32.store offset=12
    local.get 0
    local.get 1
    i32.const 12
    i32.add
    i32.const 4
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h3bd76afb36b838e6E
    local.get 1
    i32.const 12
    i32.add
    i32.const 4
    call $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    i32.wrap_i64
  )
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hd829a276e93e0f09E (;215;) (type 2) (param i32 i32)
    (local i32)
    i32.const 131914
    i32.const 22
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 2
    call $managedSignalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h499bc919411e350cE (;216;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferAppendBytes
    drop
  )
  (func $_ZN11dharitri_sc5types7managed11multi_value24multi_value_encoded_iter165_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$GT$9into_iter17h040f79b30e88bb1eE (;217;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h8e7a8e5cedef394eE
  )
  (func $_ZN11dharitri_sc5types7managed5basic11big_num_cmp7cmp_i6417h2cf7ad417c156bd6E (;218;) (type 12) (param i32) (result i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$7bi_sign17h50923a6097467bb5E
    i32.const -1
    i32.add
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17hdf2d1fe6293d602fE (;219;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferAppend
    drop
  )
  (func $_ZN11dharitri_sc5types7managed5basic18big_uint_operators114_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$3sub17h341b53aeec126350E (;220;) (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc3api13managed_types11big_int_api13BigIntApiImpl15bi_sub_unsigned17h38addf0598cfd077E
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed5basic18big_uint_operators125_$LT$impl$u20$core..ops..arith..Div$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$3div17h6b62bdcd13e52eb0E (;221;) (type 12) (param i32) (result i32)
    i32.const -14
    i64.const 2
    call $bigIntSetInt64
    local.get 0
    local.get 0
    i32.const -14
    call $bigIntTDiv
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed5basic18big_uint_operators125_$LT$impl$u20$core..ops..arith..Div$LT$u64$GT$$u20$for$u20$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$3div17he615fab1cecee8c8E (;222;) (type 12) (param i32) (result i32)
    i32.const -14
    i64.const 10000
    call $bigIntSetInt64
    local.get 0
    local.get 0
    i32.const -14
    call $bigIntTDiv
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed5basic18big_uint_operators192_$LT$impl$u20$core..ops..arith..Mul$LT$$RF$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$3mul17h26c9e4a1ca4bf3fdE (;223;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 2
    local.get 0
    local.get 1
    call $bigIntMul
    local.get 2
  )
  (func $_ZN11dharitri_sc5types7managed5basic18big_uint_operators192_$LT$impl$u20$core..ops..arith..Sub$LT$$RF$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$3sub17h87d2940810e7ea6bE (;224;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc3api13managed_types11big_int_api13BigIntApiImpl15bi_sub_unsigned17h38addf0598cfd077E
    local.get 2
  )
  (func $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h152254a4af89de06E (;225;) (type 12) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferToBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_ref23ManagedRef$LT$M$C$T$GT$11clone_value17h9e18f838e0406769E (;226;) (type 12) (param i32) (result i32)
    local.get 0
    call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb0a8f8d542cb8fc7E
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$16from_single_item17h098fd5e1e454200eE (;227;) (type 12) (param i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.tee 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf9851e285a2d5605E
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h31a5ed7b286d9d3aE (;228;) (type 4) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.load
    local.tee 3
    local.get 3
    i32.const 4
    i32.add
    local.tee 3
    local.get 0
    i32.const 16
    call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc43ea098857437eaE
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
    local.get 1
    local.get 3
    i32.store
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
  (func $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17hbbf2caf4a1582ee3E (;229;) (type 36) (param i32 i32) (result i64)
    (local i32 i32 i64)
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
    i32.load
    local.tee 3
    local.get 3
    i32.const 8
    i32.add
    local.tee 3
    local.get 0
    i32.const 16
    call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc43ea098857437eaE
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
    local.get 1
    local.get 3
    i32.store
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
  (func $_ZN11dharitri_sc5types7managed7wrapped14managed_option26ManagedOption$LT$M$C$T$GT$18unwrap_or_sc_panic17hc2e53a53cbc8234bE (;230;) (type 12) (param i32) (result i32)
    block ;; label = @1
      local.get 0
      i32.const 2147483646
      i32.ne
      br_if 0 (;@1;)
      i32.const 131757
      i32.const 25
      call $signalError
      unreachable
    end
    local.get 0
  )
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E (;231;) (type 22) (param i32 i32 i32 i32)
    block ;; label = @1
      local.get 1
      local.get 3
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 1
      call $memcpy
      drop
      return
    end
    local.get 1
    local.get 3
    call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17hbe2d6772335abd9eE (;232;) (type 16) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load8_u offset=8
          br_if 0 (;@3;)
          local.get 0
          i32.load
          local.tee 5
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h9a55663278535fefE
          local.tee 6
          i32.const 10000
          i32.gt_u
          br_if 1 (;@2;)
          i32.const 0
          i32.load8_u offset=143136
          i32.const 255
          i32.and
          br_if 1 (;@2;)
          i32.const 0
          local.get 6
          i32.store offset=143132
          i32.const 0
          i32.const 1
          i32.store8 offset=143136
          local.get 4
          i32.const 8
          i32.add
          local.get 6
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h9d9e5f2a67b11e63E
          local.get 5
          i32.const 0
          local.get 4
          i32.load offset=8
          local.get 4
          i32.load offset=12
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17haaab55558a510fceE
          drop
          local.get 0
          i32.const 1
          i32.store8 offset=8
        end
        i32.const 1
        local.set 0
        local.get 3
        local.get 1
        i32.add
        local.tee 5
        i32.const 0
        i32.load offset=143132
        i32.gt_u
        br_if 1 (;@1;)
        local.get 4
        local.get 1
        local.get 5
        call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h95dd1a03576b7dfcE
        local.get 2
        local.get 3
        local.get 4
        i32.load
        local.get 4
        i32.load offset=4
        call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
        i32.const 0
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.store8 offset=8
      local.get 5
      local.get 1
      local.get 2
      local.get 3
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17haaab55558a510fceE
      local.set 0
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h9d9e5f2a67b11e63E (;233;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    i32.const 133132
    i32.const 10000
    local.get 1
    call $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h37ac80dca771d38fE
    local.get 2
    i32.load offset=12
    local.set 1
    local.get 0
    local.get 2
    i32.load offset=8
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h95dd1a03576b7dfcE (;234;) (type 1) (param i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        local.get 2
        local.get 1
        i32.lt_u
        br_if 0 (;@2;)
        local.get 2
        i32.const 10000
        i32.le_u
        br_if 1 (;@1;)
        local.get 2
        i32.const 10000
        call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE
        unreachable
      end
      local.get 1
      local.get 2
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 1
    i32.const 133132
    i32.add
    i32.store
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$19into_managed_buffer17h4388e44f59e81034E (;235;) (type 4) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store8 offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17hf9fad213bb430a8dE
    local.get 2
    i32.load offset=8
    local.set 1
    block ;; label = @1
      local.get 2
      i32.load8_u offset=12
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      i32.store offset=143132
      i32.const 0
      i32.const 0
      i32.store8 offset=143136
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17hf9fad213bb430a8dE (;236;) (type 8) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i32.load8_u offset=4
    local.set 2
    local.get 0
    i32.const 0
    i32.store8 offset=4
    block ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 8
      i32.add
      i32.const 0
      i32.const 0
      i32.load offset=143132
      call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h95dd1a03576b7dfcE
      local.get 0
      i32.load
      local.get 1
      i32.load offset=8
      local.get 1
      i32.load offset=12
      call $mBufferAppendBytes
      drop
      i32.const 0
      i32.const 0
      i32.store offset=143132
      i32.const 0
      i32.const 0
      i32.store8 offset=143136
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$11unwrap_dcdt17hf1d72f395fcd6050E (;237;) (type 12) (param i32) (result i32)
    block ;; label = @1
      local.get 0
      i32.const 2147483646
      i32.ne
      br_if 0 (;@1;)
      i32.const 131879
      i32.const 13
      call $signalError
      unreachable
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h4c77d7f81a9c52c8E (;238;) (type 12) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_set13storage_clear17h845ca05802be0cafE (;239;) (type 8) (param i32)
    i32.const -20
    i32.const 133040
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
    i32.const -20
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17h73f7f19685f69364E (;240;) (type 2) (param i32 i32)
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
    call $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hfa66c899aa066fc8E
    local.get 0
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E
    call $mBufferStorageStore
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hfa66c899aa066fc8E (;241;) (type 24) (param i32 i64 i32)
    (local i32 i32)
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
    i64.const 65280
    i64.and
    local.get 1
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store align=1
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i64.eqz
        i32.eqz
        br_if 0 (;@2;)
        i32.const 133040
        local.set 3
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      i32.const 0
      local.set 4
      block ;; label = @2
        loop ;; label = @3
          local.get 4
          i32.const 8
          i32.eq
          br_if 1 (;@2;)
          block ;; label = @4
            local.get 2
            local.get 4
            i32.add
            local.tee 3
            i32.load8_u
            br_if 0 (;@4;)
            local.get 4
            i32.const 1
            i32.add
            local.set 4
            br 1 (;@3;)
          end
        end
        i32.const 8
        local.get 4
        i32.sub
        local.set 4
        br 1 (;@1;)
      end
      i32.const 8
      i32.const 8
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE
      unreachable
    end
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$13get_unchecked17hb227fb27efead6bcE (;242;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$8item_key17hd65934eb74a8b31bE
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h4c77d7f81a9c52c8E
    local.tee 1
    call $mBufferGetLength
    local.set 2
    local.get 3
    i32.const 20
    i32.add
    i32.const 0
    i32.store8
    local.get 3
    i32.const 16
    i32.add
    local.get 2
    i32.store
    local.get 3
    local.get 1
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
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h5f51150a1d3a0138E
    local.set 4
    local.get 3
    i32.const 4
    i32.add
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h5f51150a1d3a0138E
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h9ebf92f2450de442E
    local.set 5
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h3bd76afb36b838e6E
    local.get 3
    i32.const 24
    i32.add
    i32.const 8
    call $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E
    local.set 6
    local.get 3
    i32.const 4
    i32.add
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h5f51150a1d3a0138E
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h152254a4af89de06E
    local.set 7
    local.get 3
    i32.const 4
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17h34d9cd47ad2a3831E
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.set 1
    block ;; label = @1
      loop ;; label = @2
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 3
        i32.const 4
        i32.add
        call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h5f51150a1d3a0138E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf9851e285a2d5605E
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
        i32.store offset=143132
        i32.const 0
        i32.const 0
        i32.store8 offset=143136
      end
      local.get 0
      local.get 1
      i32.store offset=20
      local.get 0
      local.get 7
      i32.store offset=16
      local.get 0
      local.get 5
      i32.store offset=12
      local.get 0
      local.get 4
      i32.store offset=8
      local.get 0
      local.get 6
      i64.store
      local.get 3
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131072
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hd829a276e93e0f09E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$8item_key17hd65934eb74a8b31bE (;243;) (type 4) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h02929fecbec91d6bE
    local.tee 0
    i32.const 131896
    i32.const 5
    call $mBufferAppendBytes
    drop
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
    local.get 0
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h3bd76afb36b838e6E (;244;) (type 1) (param i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17hbe2d6772335abd9eE
      i32.eqz
      br_if 0 (;@1;)
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h757ffaad238d52f0E
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E (;245;) (type 36) (param i32 i32) (result i64)
    (local i64)
    i64.const 0
    local.set 2
    block ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      loop ;; label = @2
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.const -1
        i32.add
        local.set 1
        local.get 2
        i64.const 8
        i64.shl
        local.get 0
        i64.load8_u
        i64.or
        local.set 2
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        br 0 (;@2;)
      end
    end
    local.get 2
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$3len17hed1768ee33bff1cbE (;246;) (type 12) (param i32) (result i32)
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
        call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h4c77d7f81a9c52c8E
        local.tee 0
        call $mBufferGetLength
        local.tee 2
        i32.const 9
        i32.ge_u
        br_if 0 (;@2;)
        local.get 1
        local.get 1
        i32.const 8
        i32.add
        local.get 2
        call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17he6bacbbaa76a533eE
        local.get 0
        i32.const 0
        local.get 1
        i32.load
        local.tee 2
        local.get 1
        i32.load offset=4
        local.tee 3
        call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E
        drop
        local.get 2
        local.get 3
        call $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E
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
      i32.const 131072
      i32.const 14
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hd829a276e93e0f09E
      unreachable
    end
    i32.const 131072
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hd829a276e93e0f09E
    unreachable
  )
  (func $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17he6bacbbaa76a533eE (;247;) (type 1) (param i32 i32 i32)
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
    i32.const 8
    local.get 2
    call $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h37ac80dca771d38fE
    local.get 3
    i32.load offset=12
    local.set 2
    local.get 0
    local.get 3
    i32.load offset=8
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h6183f286297cc81aE (;248;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17hb857eb5b66d7cdc9E (;249;) (type 0) (param i32 i64)
    local.get 0
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17he4474415d431cd1dE
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17hd1d5f808259b78d4E (;250;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hb7ad5cbf7f6d15a7E
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hb7ad5cbf7f6d15a7E (;251;) (type 2) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    drop
    local.get 0
    local.get 1
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h2236f2af69a64826E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf9851e285a2d5605E
  )
  (func $_ZN11dharitri_sc8log_util23event_topic_accumulator17h25def557c641b6a0E (;252;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.tee 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf9851e285a2d5605E
    local.get 2
  )
  (func $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hc8e86f644eba201eE (;253;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$19into_managed_buffer17h4388e44f59e81034E
    call $mBufferFinish
    drop
  )
  (func $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h7f79a795b1b4d05fE (;254;) (type 2) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h2236f2af69a64826E
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h2d85469ba51e5670E
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h2d85469ba51e5670E (;255;) (type 2) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h9a55663278535fefE
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
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h22ba3fd85b960436E
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.load8_u offset=4
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h9a55663278535fefE
          local.set 3
          i32.const 10000
          i32.const 0
          i32.load offset=143132
          local.tee 4
          i32.sub
          local.get 3
          i32.lt_u
          br_if 1 (;@2;)
          local.get 2
          local.get 4
          local.get 4
          local.get 3
          i32.add
          local.tee 3
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h7dd8225bad1ae30fE
          local.get 0
          i32.const 0
          local.get 2
          i32.load
          local.get 2
          i32.load offset=4
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17haaab55558a510fceE
          drop
          i32.const 0
          local.get 3
          i32.store offset=143132
          br 2 (;@1;)
        end
        local.get 1
        i32.load
        local.get 0
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17hdf2d1fe6293d602fE
        br 1 (;@1;)
      end
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17hf9fad213bb430a8dE
      local.get 1
      i32.load
      local.get 0
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17hdf2d1fe6293d602fE
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17hb9f1cae0ad3e0207E (;256;) (type 12) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h4c77d7f81a9c52c8E
  )
  (func $_ZN142_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h5cd93db33259d802E (;257;) (type 12) (param i32) (result i32)
    (local i32)
    i32.const 2147483646
    local.set 1
    block ;; label = @1
      local.get 0
      i32.const 2147483646
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h02929fecbec91d6bE
      local.set 1
    end
    local.get 1
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h2cfedfd609a1a3ffE (;258;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h9a55663278535fefE
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h499bc919411e350cE
    local.get 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17hdf2d1fe6293d602fE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h22ba3fd85b960436E (;259;) (type 1) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load8_u offset=4
          i32.eqz
          br_if 0 (;@3;)
          i32.const 10000
          i32.const 0
          i32.load offset=143132
          local.tee 4
          i32.sub
          local.get 2
          i32.lt_u
          br_if 1 (;@2;)
          local.get 3
          i32.const 8
          i32.add
          local.get 4
          local.get 4
          local.get 2
          i32.add
          local.tee 0
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h7dd8225bad1ae30fE
          local.get 3
          i32.load offset=8
          local.get 3
          i32.load offset=12
          local.get 1
          local.get 2
          call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
          i32.const 0
          local.get 0
          i32.store offset=143132
          br 2 (;@1;)
        end
        local.get 0
        i32.load
        local.get 1
        local.get 2
        call $mBufferAppendBytes
        drop
        br 1 (;@1;)
      end
      local.get 0
      call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17hf9fad213bb430a8dE
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $mBufferAppendBytes
      drop
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h7dd8225bad1ae30fE (;260;) (type 1) (param i32 i32 i32)
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
    local.get 2
    i32.const 133132
    i32.const 10000
    call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb59f69f0686dcbbdE
    local.get 3
    i32.load offset=12
    local.set 2
    local.get 0
    local.get 3
    i32.load offset=8
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h43212ea12bfc7624E (;261;) (type 2) (param i32 i32)
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
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h22ba3fd85b960436E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN151_$LT$dharitri_sc_codec..multi_types..multi_value_optional..OptionalValue$LT$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17h4bad9a5d412117d8E (;262;) (type 1) (param i32 i32 i32)
    block ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      local.get 2
      local.get 1
      call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h22a0db9d8903e8b7E
    end
  )
  (func $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h73c0d34ef0748cf4E (;263;) (type 2) (param i32 i32)
    (local i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i64.const 0
    local.set 3
    block ;; label = @1
      local.get 1
      i32.load offset=4
      local.tee 4
      i32.const 16
      i32.add
      local.tee 5
      local.get 1
      i32.load offset=8
      i32.gt_u
      br_if 0 (;@1;)
      local.get 1
      i32.load
      local.set 6
      local.get 2
      i32.const 16
      i32.add
      i64.const 0
      i64.store
      local.get 2
      i64.const 0
      i64.store offset=8
      local.get 6
      i32.load
      local.get 4
      local.get 2
      i32.const 8
      i32.add
      i32.const 16
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17haaab55558a510fceE
      drop
      local.get 2
      i32.const 0
      i32.store offset=28
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h31a5ed7b286d9d3aE
      local.set 4
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17hbbf2caf4a1582ee3E
      local.set 3
      local.get 0
      i32.const 20
      i32.add
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h31a5ed7b286d9d3aE
      i32.store
      local.get 0
      i32.const 16
      i32.add
      local.get 4
      i32.store
      local.get 0
      local.get 3
      i64.store offset=8
      local.get 1
      local.get 5
      i32.store offset=4
      i64.const 1
      local.set 3
    end
    local.get 0
    local.get 3
    i64.store
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hb5122cefb9e6a0b0E (;264;) (type 20) (param i32 i32 i32) (result i64)
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
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h2b83c02fb98e5438E
      unreachable
    end
    local.get 3
    local.get 3
    i32.const 8
    i32.add
    local.get 4
    call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17he6bacbbaa76a533eE
    local.get 0
    i32.const 0
    local.get 3
    i32.load
    local.tee 4
    local.get 3
    i32.load offset=4
    local.tee 2
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E
    drop
    local.get 4
    local.get 2
    call $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E
    local.set 5
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 5
  )
  (func $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd8dd827b3c31231fE (;265;) (type 2) (param i32 i32)
    (local i64 i32)
    i64.const 0
    local.set 2
    block ;; label = @1
      local.get 1
      i32.load offset=8
      local.get 1
      i32.load offset=4
      i32.ge_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 131956
      i32.const 8
      call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17he1ea4a19d2dd18f4E
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h02929fecbec91d6bE
      local.set 3
      local.get 1
      i32.const 131956
      i32.const 8
      call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17he1ea4a19d2dd18f4E
      i32.const 131956
      i32.const 8
      call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hb5122cefb9e6a0b0E
      local.set 2
      local.get 0
      i32.const 20
      i32.add
      local.get 1
      i32.const 131956
      i32.const 8
      call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h83e0228321587b46E
      i32.store
      local.get 0
      i32.const 16
      i32.add
      local.get 3
      i32.store
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
  (func $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h69111df5299d291bE (;266;) (type 2) (param i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 2147483646
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h02929fecbec91d6bE
      i32.store
      return
    end
    local.get 1
    i32.load
    i32.const 131892
    i32.const 4
    call $_ZN11dharitri_sc5types7managed10codec_util28managed_buffer_top_en_output174_$LT$impl$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$u20$for$u20$$RF$mut$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$12set_slice_u817h6856efd3cba2cffbE
  )
  (func $_ZN172_$LT$$RF$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17h2a06e7f2f42bf58aE (;267;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h9a55663278535fefE
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
      call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbef3f30694ae9437E
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
      call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h22a0db9d8903e8b7E
      br 0 (;@1;)
    end
  )
  (func $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h58de86d99c94df74E (;268;) (type 2) (param i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 2147483646
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h2d85469ba51e5670E
      return
    end
    i32.const 131892
    i32.const 4
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types10impl_slice96_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$$u5b$T$u5d$$GT$24dep_encode_or_handle_err17hfe67deb6d04e0af5E
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h11a844062716690bE (;269;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 131803
    i32.const 15
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h2b83c02fb98e5438E
    unreachable
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h7eac9c7940f6f327E (;270;) (type 37) (param i64 i32)
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
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h22ba3fd85b960436E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h71910d54d8d995aeE (;271;) (type 23) (param i32 i32 i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17hbe2d6772335abd9eE
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 4
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17hdb8282bec4bc3388E
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h757ffaad238d52f0E (;272;) (type 11)
    i32.const 131803
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hd829a276e93e0f09E
    unreachable
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17hdb8282bec4bc3388E (;273;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 131803
    i32.const 15
    call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h3ab9735f83595eb8E
    unreachable
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hc9d8ac5447b203c5E (;274;) (type 2) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    drop
    local.get 0
    local.get 1
    i32.load
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h02929fecbec91d6bE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf9851e285a2d5605E
  )
  (func $_ZN213_$LT$dharitri_sc..types..interaction..contract_call_with_multi_dcdt..ContractCallWithMultiDcdt$LT$SA$C$OriginalResult$GT$$u20$as$u20$dharitri_sc..types..interaction..contract_call_trait..ContractCall$LT$SA$GT$$GT$16transfer_execute17h4a3e3b0fbfbb472eE (;275;) (type 8) (param i32)
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
            local.get 0
            i32.load offset=24
            local.tee 2
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17ha532708e32f428a3E
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          local.get 0
          i64.load offset=8
          call $_ZN11dharitri_sc5types11interaction18contract_call_exec125_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_no_payment..ContractCallNoPayment$LT$SA$C$OriginalResult$GT$$GT$31resolve_gas_limit_with_leftover17he4fc82422d2a7fb4E
          local.set 3
          local.get 0
          i32.load offset=16
          local.get 2
          local.get 3
          local.get 0
          i32.load
          local.get 0
          i32.load offset=4
          call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27multi_dcdt_transfer_execute17hf4121d596485ff18E
          br 2 (;@1;)
        end
        local.get 0
        call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17ha7217c0dc6f9660cE
        call $_ZN11dharitri_sc5types11interaction18contract_call_exec125_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_no_payment..ContractCallNoPayment$LT$SA$C$OriginalResult$GT$$GT$21transfer_execute_rewa17h42eb1b2fe383f597E
        br 1 (;@1;)
      end
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17ha6d0acc21fb0e643E
      local.get 0
      local.get 1
      call $_ZN11dharitri_sc5types11interaction18contract_call_exec125_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_no_payment..ContractCallNoPayment$LT$SA$C$OriginalResult$GT$$GT$28transfer_execute_single_dcdt17ha950402a3f86db1aE
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN229_$LT$dharitri_sc..types..interaction..contract_call_with_rewa_or_single_dcdt..ContractCallWithRewaOrSingleDcdt$LT$SA$C$OriginalResult$GT$$u20$as$u20$dharitri_sc..types..interaction..contract_call_trait..ContractCall$LT$SA$GT$$GT$16transfer_execute17hed7d74019a419e5eE (;276;) (type 8) (param i32)
    (local i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i32.const 16
    i32.add
    local.set 2
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load offset=8
        local.tee 3
        i32.const 2147483646
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i64.load
        local.set 4
        local.get 0
        i32.load offset=12
        local.set 0
        local.get 3
        call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$11unwrap_dcdt17hf1d72f395fcd6050E
        local.set 3
        local.get 1
        local.get 0
        i32.store offset=12
        local.get 1
        local.get 4
        i64.store
        local.get 1
        local.get 3
        i32.store offset=8
        local.get 2
        local.get 1
        call $_ZN11dharitri_sc5types11interaction18contract_call_exec125_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_no_payment..ContractCallNoPayment$LT$SA$C$OriginalResult$GT$$GT$28transfer_execute_single_dcdt17ha950402a3f86db1aE
        br 1 (;@1;)
      end
      local.get 2
      local.get 0
      i32.load offset=12
      call $_ZN11dharitri_sc5types11interaction18contract_call_exec125_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_no_payment..ContractCallNoPayment$LT$SA$C$OriginalResult$GT$$GT$21transfer_execute_rewa17h42eb1b2fe383f597E
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hc9045ff01d6612deE (;277;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    i32.store offset=12
    local.get 1
    i32.load
    local.get 2
    i32.const 12
    i32.add
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h69111df5299d291bE
    local.get 0
    local.get 2
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf9851e285a2d5605E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN4core3cmp10PartialOrd2gt17hef36c8167a0b372fE (;278;) (type 12) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic11big_num_cmp7cmp_i6417h2cf7ad417c156bd6E
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
  )
  (func $memcmp (;279;) (type 5) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN17compiler_builtins3mem6memcmp17h7af645c26ac3e8dcE
  )
  (func $_ZN5vault10ProxyTrait12accept_funds17h8093a836d2525085E (;280;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN98_$LT$vault..Proxy$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$15extract_address17hf4e7df4cc38fe1eaE
    i32.const 132003
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction24contract_call_no_payment48ContractCallNoPayment$LT$SA$C$OriginalResult$GT$3new17h2359799f2d540642E
  )
  (func $_ZN98_$LT$vault..Proxy$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$15extract_address17hf4e7df4cc38fe1eaE (;281;) (type 12) (param i32) (result i32)
    (local i32)
    local.get 0
    i32.load
    local.set 1
    local.get 0
    i32.const 2147483646
    i32.store
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped14managed_option26ManagedOption$LT$M$C$T$GT$18unwrap_or_sc_panic17hc2e53a53cbc8234bE
  )
  (func $_ZN5vault10ProxyTrait14echo_arguments17hdcd4ab2d2776da7cE (;282;) (type 1) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 2
    i32.store offset=4
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    call $_ZN98_$LT$vault..Proxy$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$15extract_address17hf4e7df4cc38fe1eaE
    call $_ZN11dharitri_sc5types11interaction24contract_call_no_payment48ContractCallNoPayment$LT$SA$C$OriginalResult$GT$3new17h2ceb13626b947a39E
    local.get 3
    i32.const 4
    i32.add
    local.get 3
    i32.load offset=12
    call $_ZN172_$LT$$RF$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17h2a06e7f2f42bf58aE
    local.get 0
    i32.const 16
    i32.add
    local.get 3
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 8
    i32.add
    local.get 3
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 0
    local.get 3
    i64.load offset=8
    i64.store
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN5vault10ProxyTrait14echo_arguments17he7582a1ece295e17E (;283;) (type 1) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    call $_ZN98_$LT$vault..Proxy$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$15extract_address17hf4e7df4cc38fe1eaE
    call $_ZN11dharitri_sc5types11interaction24contract_call_no_payment48ContractCallNoPayment$LT$SA$C$OriginalResult$GT$3new17h2ceb13626b947a39E
    local.get 2
    local.get 3
    i32.load offset=12
    call $_ZN172_$LT$$RF$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17h2a06e7f2f42bf58aE
    local.get 0
    i32.const 16
    i32.add
    local.get 3
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 8
    i32.add
    local.get 3
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 0
    local.get 3
    i64.load offset=8
    i64.store
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN5vault10ProxyTrait14retrieve_funds17h862092a84c73075fE (;284;) (type 13) (param i32 i32 i32 i64 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 1
    call $_ZN98_$LT$vault..Proxy$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$15extract_address17hf4e7df4cc38fe1eaE
    i32.const 132041
    i32.const 14
    call $_ZN11dharitri_sc5types11interaction24contract_call_no_payment48ContractCallNoPayment$LT$SA$C$OriginalResult$GT$3new17h2359799f2d540642E
    local.get 5
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    i32.store offset=28
    local.get 2
    local.get 5
    i32.const 28
    i32.add
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h69111df5299d291bE
    local.get 5
    i32.load offset=4
    local.tee 1
    local.get 5
    i32.load offset=28
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf9851e285a2d5605E
    local.get 1
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17he4474415d431cd1dE
    local.get 1
    local.get 4
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17hc99d9eb018084fbaE
    local.get 0
    i32.const 16
    i32.add
    local.get 5
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 8
    i32.add
    local.get 5
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 0
    local.get 5
    i64.load
    i64.store
    local.get 5
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN5vault10ProxyTrait4init17h67e4a448a2d6bfb9E (;285;) (type 22) (param i32 i32 i32 i32)
    (local i32 i32)
    local.get 1
    i32.load
    local.set 4
    local.get 1
    i32.const 2147483646
    i32.store
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17ha7217c0dc6f9660cE
    local.set 1
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.tee 5
    call $_ZN151_$LT$dharitri_sc_codec..multi_types..multi_value_optional..OptionalValue$LT$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17h4bad9a5d412117d8E
    local.get 0
    local.get 5
    i32.store offset=16
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    local.get 4
    i32.store offset=8
    local.get 0
    i64.const -1
    i64.store
  )
  (func $_ZN64_$LT$C$u20$as$u20$forwarder..storage..ForwarderStorageModule$GT$17last_issued_token17hae93ee6f2b6785e1E (;286;) (type 3) (result i32)
    i32.const 132130
    i32.const 15
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E
  )
  (func $_ZN64_$LT$C$u20$as$u20$forwarder..storage..ForwarderStorageModule$GT$18last_error_message17hec533029d44080f7E (;287;) (type 3) (result i32)
    i32.const 132145
    i32.const 16
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E
  )
  (func $_ZN67_$LT$C$u20$as$u20$forwarder..call_sync..ForwarderSyncCallModule$GT$36execute_on_dest_context_result_event17h7bc918d7f122aea7E (;288;) (type 8) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 132185
    i32.const 26
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h25def557c641b6a0E
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h02929fecbec91d6bE
    local.set 3
    local.get 1
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h9a55663278535fefE
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbef3f30694ae9437E
        local.get 1
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.load offset=12
        local.get 3
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h2cfedfd609a1a3ffE
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
  (func $_ZN69_$LT$C$u20$as$u20$forwarder..call_async..ForwarderAsyncCallModule$GT$13callback_data17h1b689f6ca53e5974E (;289;) (type 8) (param i32)
    (local i32 i32)
    i32.const 132211
    i32.const 13
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E
    local.tee 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h02929fecbec91d6bE
    local.tee 2
    i32.const 131936
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
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17hd4346f9a0478b346E (;290;) (type 8) (param i32)
    block ;; label = @1
      local.get 0
      i32.const 2147483646
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      call $mBufferFinish
      drop
      return
    end
    i32.const 131892
    i32.const 4
    call $finish
  )
  (func $_ZN9forwarder10call_async13CallbackProxy25send_funds_twice_callback17h641602d00a0534c8E (;291;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.tee 4
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hc9d8ac5447b203c5E
    local.get 4
    local.get 2
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hc9045ff01d6612deE
    local.get 4
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hb7ad5cbf7f6d15a7E
    local.get 0
    local.get 4
    i32.store offset=8
    local.get 0
    i32.const 25
    i32.store offset=4
    local.get 0
    i32.const 132265
    i32.store
  )
  (func $_ZN9forwarder15contract_deploy20DeployContractModule20perform_deploy_vault17h375e57e994c5a8a0E (;292;) (type 22) (param i32 i32 i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 2147483646
    i32.store offset=44
    local.get 4
    i32.const 16
    i32.add
    local.get 4
    i32.const 44
    i32.add
    local.get 2
    local.get 3
    call $_ZN5vault10ProxyTrait4init17h67e4a448a2d6bfb9E
    local.get 4
    i64.load offset=16
    call $_ZN11dharitri_sc5types11interaction15contract_deploy41ContractDeploy$LT$SA$C$OriginalResult$GT$17resolve_gas_limit17h57b004e4f0a8ee01E
    local.set 5
    i32.const 0
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17h23ed77858692d08aE
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.set 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.set 2
    local.get 5
    local.get 4
    i32.load offset=28
    local.get 1
    i32.const -25
    local.get 4
    i32.load offset=32
    local.get 3
    local.get 2
    call $managedCreateContract
    drop
    call $cleanReturnData
    local.get 4
    i32.const 8
    i32.add
    local.get 2
    call $_ZN11dharitri_sc5types11interaction15contract_deploy41ContractDeploy$LT$SA$C$OriginalResult$GT$13decode_result17hcf459153b89ab0d4E
    local.get 0
    local.get 4
    i64.load offset=8
    i64.store offset=4 align=4
    local.get 0
    local.get 3
    i32.store
    local.get 4
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN9forwarder3nft13CallbackProxy18nft_issue_callback17h12373f391d64a4c5E (;293;) (type 2) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.tee 2
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hc9d8ac5447b203c5E
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    i32.const 18
    i32.store offset=4
    local.get 0
    i32.const 132458
    i32.store
  )
  (func $_ZN9forwarder3nft18ForwarderNftModule10nft_create17hafd31dc4dccd270dE (;294;) (type 26) (param i32 i32 i32 i32 i32 i32 i32) (result i64)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 7
    global.set $__stack_pointer
    local.get 7
    local.get 1
    i32.store offset=4
    local.get 7
    local.get 5
    i32.store16 offset=8
    local.get 7
    local.get 5
    i32.const 16
    i32.shr_u
    i32.store8 offset=10
    local.get 7
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.tee 5
    i32.store offset=12
    local.get 5
    local.get 6
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf9851e285a2d5605E
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 7
    i32.const 8
    i32.add
    local.get 7
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_nft_create17h4765572a133d883dE
    local.set 8
    i32.const 131986
    i32.const 6
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h25def557c641b6a0E
    local.tee 1
    local.get 0
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h22a0db9d8903e8b7E
    local.get 1
    local.get 8
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17hb857eb5b66d7cdc9E
    local.get 1
    local.get 7
    i32.const 4
    i32.add
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17hd1d5f808259b78d4E
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    call $managedWriteLog
    local.get 7
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 8
  )
  (func $_ZN9forwarder3sft13CallbackProxy18sft_issue_callback17h08b09e58ffcdb574E (;295;) (type 2) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.tee 2
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hc9d8ac5447b203c5E
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    i32.const 18
    i32.store offset=4
    local.get 0
    i32.const 132548
    i32.store
  )
  (func $_ZN9forwarder4dcdt13CallbackProxy19dcdt_issue_callback17h2985e75f92f1e3aaE (;296;) (type 2) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.tee 2
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hc9d8ac5447b203c5E
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    i32.const 19
    i32.store offset=4
    local.get 0
    i32.const 132566
    i32.store
  )
  (func $rust_begin_unwind (;297;) (type 11)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE (;298;) (type 11)
    i32.const 133040
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;299;) (type 11)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
  )
  (func $send_rewa (;300;) (type 11)
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    i32.const 132315
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h33c972f9b40b2771E
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$11direct_rewa17h8d1b94643cd60540E
  )
  (func $echo_arguments_sync (;301;) (type 11)
    (local i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hc3dcdadfb9a64636E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h85ad1c323beb7c86E
    i32.const 0
    i32.const 132315
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=32
    local.get 0
    i32.const 32
    i32.add
    i32.const 132323
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h41c7095b48e1b997E
    local.set 2
    local.get 0
    i32.load offset=32
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hc4b7ded9e4487706E
    call $getGasLeft
    local.set 3
    local.get 0
    local.get 1
    i32.store offset=60
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    i32.const 60
    i32.add
    local.get 2
    call $_ZN5vault10ProxyTrait14echo_arguments17hdcd4ab2d2776da7cE
    local.get 0
    i32.const 16
    i32.add
    local.get 3
    i64.const 1
    i64.shr_u
    i64.store
    local.get 0
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 0
    i32.const 32
    i32.add
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 0
    local.get 0
    i64.load offset=32
    i64.store offset=8
    local.get 0
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall23execute_on_dest_context17ha1d6e75a01b3c389E
    i32.store offset=32
    local.get 0
    i32.const 32
    i32.add
    call $_ZN67_$LT$C$u20$as$u20$forwarder..call_sync..ForwarderSyncCallModule$GT$36execute_on_dest_context_result_event17h7bc918d7f122aea7E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $echo_arguments_sync_twice (;302;) (type 11)
    (local i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hc3dcdadfb9a64636E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h85ad1c323beb7c86E
    i32.const 0
    i32.const 132315
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=32
    local.get 0
    i32.const 32
    i32.add
    i32.const 132323
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h41c7095b48e1b997E
    local.set 2
    local.get 0
    i32.load offset=32
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hc4b7ded9e4487706E
    local.get 0
    local.get 2
    i32.store offset=4
    call $getGasLeft
    local.set 3
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h02929fecbec91d6bE
    i32.store offset=60
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    i32.const 60
    i32.add
    local.get 0
    i32.const 4
    i32.add
    call $_ZN5vault10ProxyTrait14echo_arguments17he7582a1ece295e17E
    local.get 0
    i32.const 16
    i32.add
    local.tee 2
    local.get 3
    i64.const 3
    i64.div_u
    local.tee 3
    i64.store
    local.get 0
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.tee 4
    local.get 0
    i32.const 32
    i32.add
    i32.const 16
    i32.add
    local.tee 5
    i64.load
    i64.store
    local.get 0
    local.get 0
    i64.load offset=32
    i64.store offset=8
    local.get 0
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall23execute_on_dest_context17ha1d6e75a01b3c389E
    i32.store offset=32
    local.get 0
    i32.const 32
    i32.add
    call $_ZN67_$LT$C$u20$as$u20$forwarder..call_sync..ForwarderSyncCallModule$GT$36execute_on_dest_context_result_event17h7bc918d7f122aea7E
    local.get 0
    local.get 1
    i32.store offset=60
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    i32.const 60
    i32.add
    local.get 0
    i32.const 4
    i32.add
    call $_ZN5vault10ProxyTrait14echo_arguments17he7582a1ece295e17E
    local.get 2
    local.get 3
    i64.store
    local.get 4
    local.get 5
    i64.load
    i64.store
    local.get 0
    local.get 0
    i64.load offset=32
    i64.store offset=8
    local.get 0
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall23execute_on_dest_context17ha1d6e75a01b3c389E
    i32.store offset=32
    local.get 0
    i32.const 32
    i32.add
    call $_ZN67_$LT$C$u20$as$u20$forwarder..call_sync..ForwarderSyncCallModule$GT$36execute_on_dest_context_result_event17h7bc918d7f122aea7E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_accept_funds (;303;) (type 11)
    (local i32 i32 i64 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    i32.const 132315
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 1
    local.get 0
    i32.const 24
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h79ec81ea9cb55974E
    call $getGasLeft
    i64.const 1
    i64.shr_u
    local.set 2
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped14managed_option26ManagedOption$LT$M$C$T$GT$18unwrap_or_sc_panic17hc2e53a53cbc8234bE
    local.set 3
    i32.const 132072
    i32.const 25
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.set 5
    local.get 0
    i32.load offset=36
    local.set 1
    block ;; label = @1
      local.get 0
      i32.load offset=32
      local.tee 6
      i32.const 2147483646
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i64.load offset=24
      local.set 7
      call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17ha7217c0dc6f9660cE
      drop
      local.get 6
      call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$11unwrap_dcdt17hf1d72f395fcd6050E
      local.set 6
      local.get 0
      local.get 1
      i32.store offset=60
      local.get 0
      local.get 7
      i64.store offset=48
      local.get 0
      local.get 6
      i32.store offset=56
      block ;; label = @2
        block ;; label = @3
          local.get 7
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
          local.get 0
          i32.const 8
          i32.add
          local.get 4
          local.get 5
          local.get 6
          local.get 1
          call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h4f05e831afd264e3E
          local.get 0
          i32.load offset=12
          local.set 5
          local.get 0
          i32.load offset=8
          local.set 4
          br 1 (;@2;)
        end
        call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hd4d5312d23963ceeE
        local.set 1
        local.get 0
        i32.const 16
        i32.add
        local.get 4
        local.get 5
        local.get 3
        local.get 0
        i32.const 48
        i32.add
        call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h147aaa50d6eb6600E
        local.get 0
        i32.load offset=20
        local.set 5
        local.get 0
        i32.load offset=16
        local.set 4
        local.get 1
        local.set 3
      end
      call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17ha7217c0dc6f9660cE
      local.set 1
    end
    local.get 2
    local.get 3
    local.get 1
    local.get 4
    local.get 5
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17h72f9ff845355effbE
    local.set 1
    call $cleanReturnData
    local.get 0
    i32.const 48
    i32.add
    local.get 1
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h8e7a8e5cedef394eE
    local.get 0
    i32.const 48
    i32.add
    i32.const 131792
    i32.const 11
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h83e0228321587b46E
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.set 1
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.load offset=56
        local.get 0
        i32.load offset=52
        i32.ge_u
        br_if 1 (;@1;)
        local.get 1
        local.get 0
        i32.const 48
        i32.add
        i32.const 131792
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17hadc9227d1f58ade8E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf9851e285a2d5605E
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 4
    i32.store offset=40
    local.get 0
    local.get 1
    i32.store offset=44
    i32.const 132161
    i32.const 24
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h25def557c641b6a0E
    local.tee 4
    local.get 0
    i32.const 40
    i32.add
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17hd1d5f808259b78d4E
    local.get 0
    local.get 1
    call $mBufferGetLength
    i32.store offset=56
    local.get 0
    i32.const 0
    i32.store offset=52
    local.get 0
    local.get 0
    i32.const 44
    i32.add
    i32.store offset=48
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        local.get 0
        i32.const 48
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbef3f30694ae9437E
        local.get 0
        i32.load
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 0
        i32.load offset=4
        call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h22a0db9d8903e8b7E
        br 0 (;@2;)
      end
    end
    local.get 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    call $managedWriteLog
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_accept_funds_with_fees (;304;) (type 11)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    i32.const 132315
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h33c972f9b40b2771E
    local.set 2
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17hbe3ca019e6d03cbcE
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 0
    i32.load offset=12
    local.set 4
    local.get 4
    local.get 4
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic18big_uint_operators192_$LT$impl$u20$core..ops..arith..Mul$LT$$RF$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$3mul17h26c9e4a1ca4bf3fdE
    call $_ZN11dharitri_sc5types7managed5basic18big_uint_operators125_$LT$impl$u20$core..ops..arith..Div$LT$u64$GT$$u20$for$u20$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$3div17he615fab1cecee8c8E
    call $_ZN11dharitri_sc5types7managed5basic18big_uint_operators114_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$3sub17h341b53aeec126350E
    local.set 4
    local.get 0
    local.get 1
    i32.store offset=60
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    i32.const 60
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17h8093a836d2525085E
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
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall23execute_on_dest_context17h20a3b3b876275a48E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_accept_funds_then_read (;305;) (type 11)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    i32.const 132315
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 1
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h79ec81ea9cb55974E
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h02929fecbec91d6bE
    i32.store offset=44
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.const 44
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17h8093a836d2525085E
    local.get 0
    call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall23execute_on_dest_context17h20a3b3b876275a48E
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped14managed_option26ManagedOption$LT$M$C$T$GT$18unwrap_or_sc_panic17hc2e53a53cbc8234bE
    local.set 2
    i32.const 131992
    i32.const 11
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E
    local.set 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.set 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.tee 4
    i32.const 132003
    i32.const 12
    call $mBufferSetBytes
    drop
    local.get 1
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf9851e285a2d5605E
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17ha7217c0dc6f9660cE
    local.set 4
    call $getGasLeft
    local.get 2
    local.get 4
    local.get 3
    local.get 1
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17h72f9ff845355effbE
    local.set 1
    call $cleanReturnData
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h8e7a8e5cedef394eE
    block ;; label = @1
      local.get 0
      i32.const 131792
      i32.const 11
      call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17he1ea4a19d2dd18f4E
      i32.const 131792
      i32.const 11
      call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hb5122cefb9e6a0b0E
      local.tee 5
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 131792
      i32.const 11
      i32.const 131072
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h2b83c02fb98e5438E
      unreachable
    end
    local.get 5
    call $smallIntFinishUnsigned
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_retrieve_funds (;306;) (type 11)
    (local i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    i32.const 132315
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h75e4810ea888cd60E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hcaba6ffc5fe42f86E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h33c972f9b40b2771E
    local.set 4
    local.get 0
    local.get 1
    i32.store offset=28
    local.get 0
    local.get 0
    i32.const 28
    i32.add
    local.get 2
    local.get 3
    local.get 4
    call $_ZN5vault10ProxyTrait14retrieve_funds17h862092a84c73075fE
    local.get 0
    call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall23execute_on_dest_context17h8820954857854c29E
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_retrieve_funds_with_accept_func (;307;) (type 11)
    (local i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    i32.const 132315
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h33c972f9b40b2771E
    local.set 3
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17ha7011dab9b365b9dE
    local.tee 4
    i32.store offset=12
    i32.const 132618
    i32.const 17
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E
    local.set 5
    local.get 0
    i32.const 16
    i32.add
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped14managed_option26ManagedOption$LT$M$C$T$GT$18unwrap_or_sc_panic17hc2e53a53cbc8234bE
    i32.const 132097
    i32.const 33
    call $_ZN11dharitri_sc5types11interaction24contract_call_no_payment48ContractCallNoPayment$LT$SA$C$OriginalResult$GT$3new17h2359799f2d540642E
    local.get 0
    i32.load offset=20
    local.tee 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h22a0db9d8903e8b7E
    local.get 1
    local.get 3
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17hc99d9eb018084fbaE
    i32.const 0
    local.get 5
    local.get 1
    call $_ZN151_$LT$dharitri_sc_codec..multi_types..multi_value_optional..OptionalValue$LT$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17h4bad9a5d412117d8E
    local.get 0
    i32.const 48
    i32.add
    i32.const 16
    i32.add
    local.get 0
    i32.const 16
    i32.add
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 48
    i32.add
    i32.const 8
    i32.add
    local.get 0
    i32.const 16
    i32.add
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 0
    local.get 0
    i64.load offset=16
    i64.store offset=48
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.set 3
    local.get 0
    local.get 4
    call $mBufferGetLength
    i32.store offset=84
    local.get 0
    i32.const 0
    i32.store offset=80
    local.get 0
    local.get 0
    i32.const 12
    i32.add
    i32.store offset=76
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 88
        i32.add
        local.get 0
        i32.const 76
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h73c0d34ef0748cf4E
        local.get 0
        i64.load offset=88
        i64.eqz
        br_if 1 (;@1;)
        local.get 0
        i64.load offset=96
        local.set 6
        local.get 0
        i32.load offset=108
        local.set 1
        local.get 0
        i32.load offset=104
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h02929fecbec91d6bE
        local.set 2
        local.get 0
        local.get 1
        call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb0a8f8d542cb8fc7E
        i32.store offset=28
        local.get 0
        local.get 6
        i64.store offset=16
        local.get 0
        local.get 2
        i32.store offset=24
        local.get 3
        local.get 0
        i32.const 16
        i32.add
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hbb6cba67f65f1dccE
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 16
    i32.add
    i32.const 8
    i32.add
    local.get 0
    i32.const 48
    i32.add
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 16
    i32.add
    i32.const 16
    i32.add
    local.get 0
    i32.const 48
    i32.add
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 0
    local.get 0
    i64.load offset=48
    i64.store offset=16
    local.get 0
    local.get 3
    i32.store offset=40
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall23execute_on_dest_context17h1c1ad72fab4d69f3E
    local.get 0
    i32.const 112
    i32.add
    global.set $__stack_pointer
  )
  (func $accept_funds_func (;308;) (type 11)
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
  )
  (func $forward_sync_accept_funds_multi_transfer (;309;) (type 11)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hc3dcdadfb9a64636E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h85ad1c323beb7c86E
    i32.const 0
    i32.const 132315
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=32
    local.get 0
    i32.const 32
    i32.add
    i32.const 132332
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1b8cb5162e9195ecE
    local.set 2
    local.get 0
    i32.load offset=32
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hc4b7ded9e4487706E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.set 3
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h8e7a8e5cedef394eE
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 32
        i32.add
        local.get 0
        call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd8dd827b3c31231fE
        local.get 0
        i64.load offset=32
        i64.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 0
        i64.load offset=48
        i64.store offset=24
        local.get 0
        local.get 0
        i64.load offset=40
        i64.store offset=16
        local.get 3
        local.get 0
        i32.const 16
        i32.add
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hbb6cba67f65f1dccE
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 1
    i32.store
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    call $_ZN5vault10ProxyTrait12accept_funds17h8093a836d2525085E
    local.get 0
    local.get 3
    i32.store offset=56
    local.get 0
    i32.const 32
    i32.add
    call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall23execute_on_dest_context17h1c1ad72fab4d69f3E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $echo_args_async (;310;) (type 11)
    (local i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hc3dcdadfb9a64636E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h85ad1c323beb7c86E
    i32.const 0
    i32.const 132315
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 1
    local.get 0
    i32.const 1
    i32.store
    local.get 0
    i32.const 132323
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h41c7095b48e1b997E
    local.set 2
    local.get 0
    i32.load
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hc4b7ded9e4487706E
    local.get 0
    local.get 1
    i32.store offset=28
    local.get 0
    local.get 0
    i32.const 28
    i32.add
    local.get 2
    call $_ZN5vault10ProxyTrait14echo_arguments17hdcd4ab2d2776da7cE
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17ha7217c0dc6f9660cE
    local.set 1
    local.get 0
    i64.load
    local.set 3
    local.get 0
    i32.load offset=16
    local.set 2
    local.get 0
    i32.const 24
    i32.add
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    i32.store
    local.get 0
    i32.const 20
    i32.add
    i32.const 18
    i32.store
    local.get 0
    i32.const 132247
    i32.store offset=16
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    local.get 3
    i64.store align=4
    local.get 0
    call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17hbaeba017d9690ff4E
    unreachable
  )
  (func $forward_async_accept_funds (;311;) (type 11)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    i32.const 132315
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 1
    local.get 0
    i32.const 32
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h79ec81ea9cb55974E
    local.get 0
    local.get 1
    i32.store offset=76
    local.get 0
    i32.const 48
    i32.add
    local.get 0
    i32.const 76
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17h8093a836d2525085E
    local.get 0
    i32.const 4
    i32.add
    local.get 0
    i32.const 32
    i32.add
    call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall10async_call17h6c9f7d20209b337fE
    local.get 0
    i32.const 4
    i32.add
    call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17hbaeba017d9690ff4E
    unreachable
  )
  (func $forward_async_accept_funds_half_payment (;312;) (type 11)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    i32.const 132315
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 1
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h79ec81ea9cb55974E
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed5basic18big_uint_operators125_$LT$impl$u20$core..ops..arith..Div$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$3div17h6b62bdcd13e52eb0E
    local.set 2
    local.get 0
    local.get 1
    i32.store offset=92
    local.get 0
    i32.const 64
    i32.add
    local.get 0
    i32.const 92
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17h8093a836d2525085E
    local.get 0
    local.get 2
    i32.store offset=60
    local.get 0
    local.get 0
    i32.load offset=8
    i32.store offset=56
    local.get 0
    local.get 0
    i64.load
    i64.store offset=48
    local.get 0
    i32.const 20
    i32.add
    local.get 0
    i32.const 48
    i32.add
    call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall10async_call17h6c9f7d20209b337fE
    local.get 0
    i32.const 20
    i32.add
    call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17hbaeba017d9690ff4E
    unreachable
  )
  (func $forward_async_accept_funds_with_fees (;313;) (type 11)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    i32.const 132315
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h33c972f9b40b2771E
    local.set 2
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h79ec81ea9cb55974E
    local.get 0
    i32.load offset=12
    local.set 3
    local.get 3
    local.get 3
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic18big_uint_operators192_$LT$impl$u20$core..ops..arith..Mul$LT$$RF$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$3mul17h26c9e4a1ca4bf3fdE
    call $_ZN11dharitri_sc5types7managed5basic18big_uint_operators125_$LT$impl$u20$core..ops..arith..Div$LT$u64$GT$$u20$for$u20$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$3div17he615fab1cecee8c8E
    call $_ZN11dharitri_sc5types7managed5basic18big_uint_operators192_$LT$impl$u20$core..ops..arith..Sub$LT$$RF$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$3sub17h87d2940810e7ea6bE
    local.set 3
    local.get 0
    local.get 1
    i32.store offset=92
    local.get 0
    i32.const 64
    i32.add
    local.get 0
    i32.const 92
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17h8093a836d2525085E
    local.get 0
    local.get 3
    i32.store offset=60
    local.get 0
    local.get 0
    i32.load offset=8
    i32.store offset=56
    local.get 0
    local.get 0
    i64.load
    i64.store offset=48
    local.get 0
    i32.const 20
    i32.add
    local.get 0
    i32.const 48
    i32.add
    call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall10async_call17h6c9f7d20209b337fE
    local.get 0
    i32.const 20
    i32.add
    call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17hbaeba017d9690ff4E
    unreachable
  )
  (func $forward_async_retrieve_funds (;314;) (type 11)
    (local i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    i32.const 132315
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h75e4810ea888cd60E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hcaba6ffc5fe42f86E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h33c972f9b40b2771E
    local.set 4
    local.get 0
    local.get 1
    i32.store offset=28
    local.get 0
    local.get 0
    i32.const 28
    i32.add
    local.get 2
    local.get 3
    local.get 4
    call $_ZN5vault10ProxyTrait14retrieve_funds17h862092a84c73075fE
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17ha7217c0dc6f9660cE
    local.set 1
    local.get 0
    i64.load
    local.set 3
    local.get 0
    i32.load offset=16
    local.set 2
    local.get 0
    i32.const 24
    i32.add
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    i32.store
    local.get 0
    i32.const 20
    i32.add
    i32.const 23
    i32.store
    local.get 0
    i32.const 132224
    i32.store offset=16
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    local.get 3
    i64.store align=4
    local.get 0
    call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17hbaeba017d9690ff4E
    unreachable
  )
  (func $send_funds_twice (;315;) (type 11)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    i32.const 132315
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h75e4810ea888cd60E
    local.set 2
    local.get 0
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h33c972f9b40b2771E
    local.tee 3
    i32.store offset=16
    local.get 0
    local.get 2
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    local.get 1
    call $_ZN117_$LT$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7e51bd03fd9fcd35E
    i32.store offset=92
    local.get 0
    i32.const 64
    i32.add
    local.tee 1
    local.get 0
    i32.const 92
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17h8093a836d2525085E
    local.get 2
    call $_ZN142_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h5cd93db33259d802E
    local.set 2
    local.get 0
    local.get 3
    call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb0a8f8d542cb8fc7E
    i32.store offset=60
    local.get 0
    local.get 2
    i32.store offset=56
    local.get 0
    i64.const 0
    i64.store offset=48
    local.get 0
    i32.const 20
    i32.add
    local.get 0
    i32.const 48
    i32.add
    call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall10async_call17h6c9f7d20209b337fE
    local.get 1
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 12
    i32.add
    local.get 0
    i32.const 16
    i32.add
    call $_ZN9forwarder10call_async13CallbackProxy25send_funds_twice_callback17h641602d00a0534c8E
    local.get 0
    local.get 0
    i64.load offset=28 align=4
    i64.store offset=56 align=4
    local.get 0
    local.get 0
    i64.load offset=20 align=4
    i64.store offset=48 align=4
    local.get 0
    i32.const 48
    i32.add
    call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17hbaeba017d9690ff4E
    unreachable
  )
  (func $send_async_accept_multi_transfer (;316;) (type 11)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hc3dcdadfb9a64636E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h85ad1c323beb7c86E
    i32.const 0
    i32.const 132315
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=56
    local.get 0
    i32.const 56
    i32.add
    i32.const 132332
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1b8cb5162e9195ecE
    local.set 2
    local.get 0
    i32.load offset=56
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hc4b7ded9e4487706E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.set 3
    local.get 0
    i32.const 24
    i32.add
    local.get 2
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h8e7a8e5cedef394eE
    loop ;; label = @1
      local.get 0
      i32.const 56
      i32.add
      local.get 0
      i32.const 24
      i32.add
      call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd8dd827b3c31231fE
      block ;; label = @2
        local.get 0
        i64.load offset=56
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i32.store offset=92
        local.get 0
        i32.const 56
        i32.add
        local.get 0
        i32.const 92
        i32.add
        call $_ZN5vault10ProxyTrait12accept_funds17h8093a836d2525085E
        local.get 0
        local.get 3
        i32.store offset=80
        local.get 0
        i32.const 24
        i32.add
        local.get 0
        i32.const 56
        i32.add
        call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall10async_call17hd31b7b77e647e4faE
        local.get 0
        i32.const 24
        i32.add
        call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17hbaeba017d9690ff4E
        unreachable
      end
      local.get 0
      local.get 0
      i64.load offset=72
      i64.store offset=16
      local.get 0
      local.get 0
      i64.load offset=64
      i64.store offset=8
      local.get 3
      local.get 0
      i32.const 8
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hbb6cba67f65f1dccE
      br 0 (;@1;)
    end
  )
  (func $callback_data (;317;) (type 11)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    local.get 0
    i32.const 8
    i32.add
    call $_ZN69_$LT$C$u20$as$u20$forwarder..call_async..ForwarderAsyncCallModule$GT$13callback_data17h1b689f6ca53e5974E
    local.get 0
    i32.const 68
    i32.add
    local.set 1
    local.get 0
    i32.const 16
    i32.add
    i32.const 8
    i32.add
    local.set 2
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$3len17hed1768ee33bff1cbE
    local.set 4
    i32.const 1
    local.set 5
    block ;; label = @1
      loop ;; label = @2
        local.get 5
        local.get 4
        i32.gt_u
        br_if 1 (;@1;)
        local.get 2
        local.get 3
        local.get 5
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$13get_unchecked17hb227fb27efead6bcE
        local.get 0
        i32.const 48
        i32.add
        i32.const 16
        i32.add
        local.tee 6
        local.get 2
        i32.const 16
        i32.add
        i64.load
        i64.store
        local.get 0
        i32.const 48
        i32.add
        i32.const 8
        i32.add
        local.tee 7
        local.get 2
        i32.const 8
        i32.add
        i64.load
        i64.store
        local.get 0
        local.get 2
        i64.load
        i64.store offset=48
        local.get 0
        call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hf2283d5e0b064b69E
        local.get 0
        local.get 0
        i32.load8_u offset=4
        i32.store8 offset=76
        local.get 0
        local.get 0
        i32.load
        i32.store offset=72
        local.get 7
        i32.load
        local.get 0
        i32.const 72
        i32.add
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h2d85469ba51e5670E
        local.get 0
        i32.load offset=60
        local.get 0
        i32.const 72
        i32.add
        call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h58de86d99c94df74E
        local.get 0
        i64.load offset=48
        local.get 0
        i32.const 72
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h7eac9c7940f6f327E
        local.get 6
        i32.load
        local.get 0
        i32.const 72
        i32.add
        call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h7f79a795b1b4d05fE
        local.get 1
        local.get 0
        i32.const 72
        i32.add
        call $_ZN145_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h403fdd86d94954f6E
        local.get 0
        i32.load offset=72
        local.get 0
        i32.load8_u offset=76
        call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hc8e86f644eba201eE
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $callback_data_at_index (;318;) (type 11)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hca74494a97b00719E
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    call $_ZN69_$LT$C$u20$as$u20$forwarder..call_async..ForwarderAsyncCallModule$GT$13callback_data17h1b689f6ca53e5974E
    block ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=8
      local.set 2
      local.get 0
      i32.load offset=12
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$3len17hed1768ee33bff1cbE
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 40
      i32.add
      local.get 2
      local.get 1
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$13get_unchecked17hb227fb27efead6bcE
      local.get 0
      local.get 0
      i32.load offset=60
      local.tee 1
      i32.store offset=36
      local.get 0
      local.get 0
      i32.load offset=56
      local.tee 2
      i32.store offset=32
      local.get 0
      local.get 0
      i32.load offset=52
      local.tee 3
      i32.store offset=28
      local.get 0
      local.get 0
      i32.load offset=48
      local.tee 4
      i32.store offset=24
      local.get 0
      local.get 0
      i64.load offset=40
      local.tee 5
      i64.store offset=16
      local.get 4
      call $mBufferFinish
      drop
      local.get 3
      call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17hd4346f9a0478b346E
      local.get 5
      call $smallIntFinishUnsigned
      local.get 2
      call $bigIntFinishUnsigned
      local.get 0
      local.get 1
      call $mBufferGetLength
      i32.store offset=48
      local.get 0
      i32.const 0
      i32.store offset=44
      local.get 0
      local.get 0
      i32.const 36
      i32.add
      i32.store offset=40
      block ;; label = @2
        loop ;; label = @3
          local.get 0
          local.get 0
          i32.const 40
          i32.add
          call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbef3f30694ae9437E
          local.get 0
          i32.load
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.load offset=4
          call $mBufferFinish
          drop
          br 0 (;@3;)
        end
      end
      local.get 0
      i32.const 64
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 132776
    i32.const 18
    call $signalError
    unreachable
  )
  (func $clear_callback_data (;319;) (type 11)
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
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    local.get 0
    i32.const 8
    i32.add
    call $_ZN69_$LT$C$u20$as$u20$forwarder..call_async..ForwarderAsyncCallModule$GT$13callback_data17h1b689f6ca53e5974E
    local.get 0
    i32.load offset=8
    local.set 2
    local.get 0
    i32.load offset=12
    local.tee 3
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$3len17hed1768ee33bff1cbE
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
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$8item_key17hd65934eb74a8b31bE
        call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h845ca05802be0cafE
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
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17h73f7f19685f69364E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_exec_accept_funds (;320;) (type 11)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    i32.const 132315
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 1
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h79ec81ea9cb55974E
    local.get 0
    local.get 1
    i32.store offset=44
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.const 44
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17h8093a836d2525085E
    local.get 0
    call $_ZN229_$LT$dharitri_sc..types..interaction..contract_call_with_rewa_or_single_dcdt..ContractCallWithRewaOrSingleDcdt$LT$SA$C$OriginalResult$GT$$u20$as$u20$dharitri_sc..types..interaction..contract_call_trait..ContractCall$LT$SA$GT$$GT$16transfer_execute17hed7d74019a419e5eE
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_execu_accept_funds_with_fees (;321;) (type 11)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    i32.const 132315
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h33c972f9b40b2771E
    local.set 2
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17hbe3ca019e6d03cbcE
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 0
    i32.load offset=12
    local.set 4
    local.get 4
    local.get 4
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic18big_uint_operators192_$LT$impl$u20$core..ops..arith..Mul$LT$$RF$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$3mul17h26c9e4a1ca4bf3fdE
    call $_ZN11dharitri_sc5types7managed5basic18big_uint_operators125_$LT$impl$u20$core..ops..arith..Div$LT$u64$GT$$u20$for$u20$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$3div17he615fab1cecee8c8E
    call $_ZN11dharitri_sc5types7managed5basic18big_uint_operators114_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$3sub17h341b53aeec126350E
    local.set 4
    local.get 0
    local.get 1
    i32.store offset=60
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    i32.const 60
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17h8093a836d2525085E
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
    i32.const 16
    i32.add
    call $_ZN229_$LT$dharitri_sc..types..interaction..contract_call_with_rewa_or_single_dcdt..ContractCallWithRewaOrSingleDcdt$LT$SA$C$OriginalResult$GT$$u20$as$u20$dharitri_sc..types..interaction..contract_call_trait..ContractCall$LT$SA$GT$$GT$16transfer_execute17hed7d74019a419e5eE
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_exec_accept_funds_twice (;322;) (type 11)
    (local i32 i32 i64 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    i32.const 132315
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h79ec81ea9cb55974E
    local.get 0
    i64.load offset=8
    local.set 2
    local.get 0
    i32.load offset=16
    local.set 3
    local.get 0
    i32.load offset=20
    call $_ZN11dharitri_sc5types7managed5basic18big_uint_operators125_$LT$impl$u20$core..ops..arith..Div$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$3div17h6b62bdcd13e52eb0E
    local.set 4
    call $getGasLeft
    local.set 5
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h02929fecbec91d6bE
    i32.store offset=76
    local.get 0
    i32.const 48
    i32.add
    local.get 0
    i32.const 76
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17h8093a836d2525085E
    local.get 3
    call $_ZN142_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h5cd93db33259d802E
    local.set 6
    local.get 4
    call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb0a8f8d542cb8fc7E
    local.set 7
    local.get 0
    local.get 5
    i64.const 1
    i64.shr_u
    local.tee 5
    i64.store offset=32
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
    i64.load offset=64
    i64.store offset=40
    local.get 0
    local.get 0
    i64.load offset=48
    i64.store offset=24
    local.get 0
    i32.const 8
    i32.add
    call $_ZN229_$LT$dharitri_sc..types..interaction..contract_call_with_rewa_or_single_dcdt..ContractCallWithRewaOrSingleDcdt$LT$SA$C$OriginalResult$GT$$u20$as$u20$dharitri_sc..types..interaction..contract_call_trait..ContractCall$LT$SA$GT$$GT$16transfer_execute17hed7d74019a419e5eE
    local.get 0
    local.get 1
    i32.store offset=76
    local.get 0
    i32.const 48
    i32.add
    local.get 0
    i32.const 76
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17h8093a836d2525085E
    local.get 0
    local.get 5
    i64.store offset=32
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
    i64.load offset=64
    i64.store offset=40
    local.get 0
    local.get 0
    i64.load offset=48
    i64.store offset=24
    local.get 0
    i32.const 8
    i32.add
    call $_ZN229_$LT$dharitri_sc..types..interaction..contract_call_with_rewa_or_single_dcdt..ContractCallWithRewaOrSingleDcdt$LT$SA$C$OriginalResult$GT$$u20$as$u20$dharitri_sc..types..interaction..contract_call_trait..ContractCall$LT$SA$GT$$GT$16transfer_execute17hed7d74019a419e5eE
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_exec_accept_funds_return_values (;323;) (type 11)
    (local i32 i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    i32.const 132315
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 1
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h79ec81ea9cb55974E
    local.get 0
    i32.const 8
    i32.add
    local.tee 2
    i32.load
    call $_ZN142_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h5cd93db33259d802E
    local.set 3
    call $getGasLeft
    local.set 4
    local.get 0
    local.get 1
    i32.store offset=60
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    i32.const 60
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17h8093a836d2525085E
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
    i64.load
    i64.store offset=16
    local.get 0
    i32.const 16
    i32.add
    call $_ZN229_$LT$dharitri_sc..types..interaction..contract_call_with_rewa_or_single_dcdt..ContractCallWithRewaOrSingleDcdt$LT$SA$C$OriginalResult$GT$$u20$as$u20$dharitri_sc..types..interaction..contract_call_trait..ContractCall$LT$SA$GT$$GT$16transfer_execute17hed7d74019a419e5eE
    call $getGasLeft
    local.set 5
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17ha7217c0dc6f9660cE
    local.set 1
    local.get 4
    call $smallIntFinishUnsigned
    local.get 5
    call $smallIntFinishUnsigned
    local.get 1
    call $bigIntFinishUnsigned
    local.get 3
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17hd4346f9a0478b346E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_exec_reject_funds_multi_transfer (;324;) (type 11)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hc3dcdadfb9a64636E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h85ad1c323beb7c86E
    i32.const 0
    i32.const 132315
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=32
    local.get 0
    i32.const 32
    i32.add
    i32.const 132332
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1b8cb5162e9195ecE
    local.set 2
    local.get 0
    i32.load offset=32
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hc4b7ded9e4487706E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.set 3
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h8e7a8e5cedef394eE
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 32
        i32.add
        local.get 0
        call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd8dd827b3c31231fE
        local.get 0
        i64.load offset=32
        i64.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 0
        i64.load offset=48
        i64.store offset=24
        local.get 0
        local.get 0
        i64.load offset=40
        i64.store offset=16
        local.get 3
        local.get 0
        i32.const 16
        i32.add
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hbb6cba67f65f1dccE
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 1
    i32.store
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    call $_ZN5vault10ProxyTrait12accept_funds17h8093a836d2525085E
    local.get 0
    local.get 3
    i32.store offset=56
    local.get 0
    i32.const 32
    i32.add
    call $_ZN213_$LT$dharitri_sc..types..interaction..contract_call_with_multi_dcdt..ContractCallWithMultiDcdt$LT$SA$C$OriginalResult$GT$$u20$as$u20$dharitri_sc..types..interaction..contract_call_trait..ContractCall$LT$SA$GT$$GT$16transfer_execute17h4a3e3b0fbfbb472eE
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $transf_exec_multi_reject_funds (;325;) (type 11)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hc3dcdadfb9a64636E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h85ad1c323beb7c86E
    i32.const 0
    i32.const 132315
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=32
    local.get 0
    i32.const 32
    i32.add
    i32.const 132332
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1b8cb5162e9195ecE
    local.set 2
    local.get 0
    i32.load offset=32
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hc4b7ded9e4487706E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.set 3
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h8e7a8e5cedef394eE
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 32
        i32.add
        local.get 0
        call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd8dd827b3c31231fE
        local.get 0
        i64.load offset=32
        i64.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 0
        i64.load offset=48
        i64.store offset=24
        local.get 0
        local.get 0
        i64.load offset=40
        i64.store offset=16
        local.get 3
        local.get 0
        i32.const 16
        i32.add
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hbb6cba67f65f1dccE
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 32
    i32.add
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped14managed_option26ManagedOption$LT$M$C$T$GT$18unwrap_or_sc_panic17hc2e53a53cbc8234bE
    i32.const 132015
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction24contract_call_no_payment48ContractCallNoPayment$LT$SA$C$OriginalResult$GT$3new17h2359799f2d540642E
    local.get 0
    local.get 3
    i32.store offset=56
    local.get 0
    i32.const 32
    i32.add
    call $_ZN213_$LT$dharitri_sc..types..interaction..contract_call_with_multi_dcdt..ContractCallWithMultiDcdt$LT$SA$C$OriginalResult$GT$$u20$as$u20$dharitri_sc..types..interaction..contract_call_trait..ContractCall$LT$SA$GT$$GT$16transfer_execute17h4a3e3b0fbfbb472eE
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $changeOwnerAddress (;326;) (type 11)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    i32.const 132433
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 1
    local.get 0
    i32.const 1
    i32.const 132449
    i32.const 9
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    i32.store offset=12
    local.get 0
    i32.const 40
    i32.add
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h02929fecbec91d6bE
    i32.const 131179
    i32.const 18
    call $_ZN11dharitri_sc5types11interaction24contract_call_no_payment48ContractCallNoPayment$LT$SA$C$OriginalResult$GT$3new17h2359799f2d540642E
    local.get 0
    i32.load offset=44
    local.get 0
    i32.const 12
    i32.add
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hc9d8ac5447b203c5E
    local.get 0
    i32.const 16
    i32.add
    i32.const 16
    i32.add
    local.get 0
    i32.const 40
    i32.add
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 16
    i32.add
    i32.const 8
    i32.add
    local.get 0
    i32.const 40
    i32.add
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 0
    local.get 0
    i64.load offset=40
    i64.store offset=16
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall23execute_on_dest_context17h8820954857854c29E
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped14managed_option26ManagedOption$LT$M$C$T$GT$18unwrap_or_sc_panic17hc2e53a53cbc8234bE
    local.set 1
    i32.const 132055
    i32.const 17
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.set 3
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17ha7217c0dc6f9660cE
    local.set 4
    call $getGasLeft
    local.get 1
    local.get 4
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17h72f9ff845355effbE
    local.set 1
    call $cleanReturnData
    local.get 0
    i32.const 40
    i32.add
    local.get 1
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h8e7a8e5cedef394eE
    local.get 0
    i32.const 40
    i32.add
    i32.const 131792
    i32.const 11
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h592577498c002ca9E
    call $mBufferFinish
    drop
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $deploy_contract (;327;) (type 11)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hc3dcdadfb9a64636E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h85ad1c323beb7c86E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
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
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hfe9e029eef2cdec1E
    local.get 0
    i32.load offset=12
    local.set 2
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 0
    i32.load offset=20
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hc4b7ded9e4487706E
    local.get 0
    i32.const 20
    i32.add
    local.get 1
    local.get 3
    local.get 2
    call $_ZN9forwarder15contract_deploy20DeployContractModule20perform_deploy_vault17h375e57e994c5a8a0E
    local.get 0
    i32.const 20
    i32.add
    call $_ZN11dharitri_sc2io6finish12finish_multi17h17b32d5049f380caE
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $deploy_two_contracts (;328;) (type 11)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    local.get 0
    i32.const 4
    i32.add
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    local.tee 1
    i32.const 1
    local.get 0
    call $_ZN9forwarder15contract_deploy20DeployContractModule20perform_deploy_vault17h375e57e994c5a8a0E
    local.get 0
    i32.load offset=4
    local.set 2
    local.get 0
    i32.const 4
    i32.add
    local.get 1
    i32.const 1
    local.get 0
    call $_ZN9forwarder15contract_deploy20DeployContractModule20perform_deploy_vault17h375e57e994c5a8a0E
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
  (func $deploy_vault_from_source (;329;) (type 11)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hc3dcdadfb9a64636E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h85ad1c323beb7c86E
    i32.const 0
    i32.const 132365
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=32
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 32
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hfe9e029eef2cdec1E
    local.get 0
    i32.load offset=12
    local.set 2
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 0
    i32.load offset=32
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hc4b7ded9e4487706E
    local.get 0
    i32.const 2147483646
    i32.store offset=60
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    i32.const 60
    i32.add
    local.get 3
    local.get 2
    call $_ZN5vault10ProxyTrait4init17h67e4a448a2d6bfb9E
    local.get 0
    i64.load offset=32
    call $_ZN11dharitri_sc5types11interaction15contract_deploy41ContractDeploy$LT$SA$C$OriginalResult$GT$17resolve_gas_limit17h57b004e4f0a8ee01E
    local.set 4
    i32.const 0
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17h23ed77858692d08aE
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.set 2
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.set 3
    local.get 4
    local.get 0
    i32.load offset=44
    local.get 1
    i32.const -25
    local.get 0
    i32.load offset=48
    local.get 2
    local.get 3
    call $managedDeployFromSourceContract
    drop
    call $cleanReturnData
    local.get 0
    local.get 3
    call $_ZN11dharitri_sc5types11interaction15contract_deploy41ContractDeploy$LT$SA$C$OriginalResult$GT$13decode_result17hcf459153b89ab0d4E
    local.get 0
    local.get 2
    i32.store offset=20
    local.get 0
    local.get 0
    i64.load
    i64.store offset=24 align=4
    local.get 0
    i32.const 20
    i32.add
    call $_ZN11dharitri_sc2io6finish12finish_multi17h17b32d5049f380caE
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $upgradeVault (;330;) (type 11)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hc3dcdadfb9a64636E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h85ad1c323beb7c86E
    i32.const 0
    i32.const 132433
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
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
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hfe9e029eef2cdec1E
    local.get 0
    i32.load offset=12
    local.set 3
    local.get 0
    i32.load offset=8
    local.set 4
    local.get 0
    i32.load offset=16
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hc4b7ded9e4487706E
    local.get 0
    local.get 1
    i32.store offset=44
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.const 44
    i32.add
    local.get 4
    local.get 3
    call $_ZN5vault10ProxyTrait4init17h67e4a448a2d6bfb9E
    local.get 0
    i64.load offset=16
    call $_ZN11dharitri_sc5types11interaction15contract_deploy41ContractDeploy$LT$SA$C$OriginalResult$GT$17resolve_gas_limit17h57b004e4f0a8ee01E
    local.set 5
    local.get 0
    i32.load offset=24
    call $_ZN11dharitri_sc5types7managed7wrapped14managed_option26ManagedOption$LT$M$C$T$GT$18unwrap_or_sc_panic17hc2e53a53cbc8234bE
    local.set 1
    i32.const 256
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17h23ed77858692d08aE
    local.get 1
    local.get 5
    local.get 0
    i32.load offset=28
    local.get 2
    i32.const -25
    local.get 0
    i32.load offset=32
    i32.const -25
    call $managedUpgradeContract
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $upgrade_vault_from_source (;331;) (type 11)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hc3dcdadfb9a64636E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h85ad1c323beb7c86E
    i32.const 0
    i32.const 132433
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 1
    i32.const 1
    i32.const 132365
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
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
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hfe9e029eef2cdec1E
    local.get 0
    i32.load offset=12
    local.set 3
    local.get 0
    i32.load offset=8
    local.set 4
    local.get 0
    i32.load offset=16
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hc4b7ded9e4487706E
    local.get 0
    local.get 1
    i32.store offset=44
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.const 44
    i32.add
    local.get 4
    local.get 3
    call $_ZN5vault10ProxyTrait4init17h67e4a448a2d6bfb9E
    local.get 0
    i64.load offset=16
    call $_ZN11dharitri_sc5types11interaction15contract_deploy41ContractDeploy$LT$SA$C$OriginalResult$GT$17resolve_gas_limit17h57b004e4f0a8ee01E
    local.set 5
    local.get 0
    i32.load offset=24
    call $_ZN11dharitri_sc5types7managed7wrapped14managed_option26ManagedOption$LT$M$C$T$GT$18unwrap_or_sc_panic17hc2e53a53cbc8234bE
    local.set 1
    i32.const 256
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17h23ed77858692d08aE
    local.get 1
    local.get 5
    local.get 0
    i32.load offset=28
    local.get 2
    i32.const -25
    local.get 0
    i32.load offset=32
    i32.const -25
    call $managedUpgradeFromSourceContract
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $getFungibleDcdtBalance (;332;) (type 11)
    (local i32)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    local.set 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hd4d5312d23963ceeE
    local.get 0
    i64.const 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$16get_dcdt_balance17hbbb1fac127ab1a7dE
    call $bigIntFinishUnsigned
  )
  (func $getCurrentNftNonce (;333;) (type 11)
    (local i32 i32 i32)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    local.set 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hd4d5312d23963ceeE
    local.set 1
    local.get 0
    call $mBufferGetLength
    local.set 2
    local.get 1
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node26unsafe_buffer_load_address17h62067424ff42a5f2E
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node35unsafe_buffer_load_token_identifier17hf83b876f94ade878E
    i32.const 143149
    i32.const 143181
    local.get 2
    call $getCurrentDCDTNFTNonce
    call $smallIntFinishUnsigned
  )
  (func $send_dcdt (;334;) (type 11)
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    i32.const 132315
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    i64.const 0
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h33c972f9b40b2771E
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$26direct_dcdt_with_gas_limit17hd8ee4e78ba5121a8E
  )
  (func $send_dcdt_with_fees (;335;) (type 11)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 1
    local.set 1
    i32.const 0
    local.set 2
    i32.const 0
    i32.const 132315
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 3
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h33c972f9b40b2771E
    local.set 4
    block ;; label = @1
      block ;; label = @2
        call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17ha7011dab9b365b9dE
        local.tee 5
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17ha532708e32f428a3E
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 5
        call $mBufferGetLength
        local.set 6
        local.get 0
        i32.const 16
        i32.add
        local.set 7
        i32.const 0
        local.set 8
        loop ;; label = @3
          local.get 8
          local.set 9
          local.get 2
          i32.const 16
          i32.add
          local.tee 10
          local.get 6
          i32.gt_u
          br_if 2 (;@1;)
          local.get 7
          i64.const 0
          i64.store
          local.get 0
          i64.const 0
          i64.store offset=8
          local.get 5
          local.get 2
          local.get 0
          i32.const 8
          i32.add
          i32.const 16
          call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E
          drop
          local.get 0
          i32.const 0
          i32.store offset=28
          i32.const 1
          local.set 8
          local.get 1
          i32.const 1
          i32.and
          local.set 11
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.const 28
          i32.add
          call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h31a5ed7b286d9d3aE
          local.set 12
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.const 28
          i32.add
          call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17hbbf2caf4a1582ee3E
          local.set 13
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.const 28
          i32.add
          call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h31a5ed7b286d9d3aE
          local.set 14
          local.get 10
          local.set 2
          i32.const 0
          local.set 1
          local.get 11
          br_if 0 (;@3;)
        end
        local.get 9
        i32.const 1
        call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE
        unreachable
      end
      i32.const 131265
      i32.const 34
      call $signalError
      unreachable
    end
    block ;; label = @1
      local.get 13
      i64.eqz
      br_if 0 (;@1;)
      i32.const 132748
      i32.const 28
      call $signalError
      unreachable
    end
    local.get 3
    local.get 12
    i64.const 0
    local.get 14
    local.get 14
    local.get 4
    call $_ZN11dharitri_sc5types7managed5basic18big_uint_operators192_$LT$impl$u20$core..ops..arith..Mul$LT$$RF$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$3mul17h26c9e4a1ca4bf3fdE
    call $_ZN11dharitri_sc5types7managed5basic18big_uint_operators125_$LT$impl$u20$core..ops..arith..Div$LT$u64$GT$$u20$for$u20$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$3div17he615fab1cecee8c8E
    call $_ZN11dharitri_sc5types7managed5basic18big_uint_operators114_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$3sub17h341b53aeec126350E
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$26direct_dcdt_with_gas_limit17hd8ee4e78ba5121a8E
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $send_dcdt_twice (;336;) (type 11)
    (local i32 i32 i32 i32)
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    i32.const 132315
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 0
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    local.set 1
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h33c972f9b40b2771E
    local.set 2
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h33c972f9b40b2771E
    local.set 3
    local.get 0
    local.get 1
    i64.const 0
    local.get 2
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$26direct_dcdt_with_gas_limit17hd8ee4e78ba5121a8E
    local.get 0
    local.get 1
    i64.const 0
    local.get 3
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$26direct_dcdt_with_gas_limit17hd8ee4e78ba5121a8E
  )
  (func $send_dcdt_direct_multi_transfer (;337;) (type 11)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hc3dcdadfb9a64636E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h85ad1c323beb7c86E
    i32.const 0
    i32.const 132315
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=24
    local.get 0
    i32.const 24
    i32.add
    i32.const 132332
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1b8cb5162e9195ecE
    local.set 2
    local.get 0
    i32.load offset=24
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hc4b7ded9e4487706E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.set 3
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h8e7a8e5cedef394eE
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 24
        i32.add
        local.get 0
        i32.const 8
        i32.add
        call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd8dd827b3c31231fE
        local.get 0
        i64.load offset=24
        i64.eqz
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
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hbb6cba67f65f1dccE
        br 0 (;@2;)
      end
    end
    local.get 1
    local.get 3
    call $getGasLeft
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    call $managedMultiTransferDCDTNFTExecute
    drop
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $issue_fungible_token (;338;) (type 11)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io15call_value_init12payable_rewa17hf67e9a7f60905fdfE
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h33c972f9b40b2771E
    local.set 3
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17h1ddfee60ed3f8f9bE
    local.set 4
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17hf48b2bffaf3b9737E
    i32.store offset=12
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_ref23ManagedRef$LT$M$C$T$GT$11clone_value17h9e18f838e0406769E
    local.set 4
    local.get 0
    i64.const 72340172838076673
    i64.store offset=56 align=4
    local.get 0
    i32.const 0
    i32.store offset=52
    local.get 0
    i32.const 16
    i32.add
    local.get 4
    local.get 1
    local.get 2
    local.get 3
    local.get 0
    i32.const 52
    i32.add
    call $_ZN11dharitri_sc4dcdt15system_sc_proxy38DCDTSystemSmartContractProxy$LT$SA$GT$14issue_fungible17hc076f19c9854e45dE
    local.get 0
    i64.load offset=16
    local.set 5
    local.get 0
    i32.load offset=32
    local.set 1
    local.get 0
    i32.load offset=40
    local.set 2
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    i32.const 12
    i32.add
    call $_ZN9forwarder4dcdt13CallbackProxy19dcdt_issue_callback17h2985e75f92f1e3aaE
    local.get 0
    local.get 2
    i32.store offset=28
    local.get 0
    local.get 1
    i32.store offset=24
    local.get 0
    local.get 5
    i64.store offset=16 align=4
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17hbaeba017d9690ff4E
    unreachable
  )
  (func $local_mint (;339;) (type 11)
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    i64.const 0
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h33c972f9b40b2771E
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_local_mint17h6c7900e4aea89c7dE
  )
  (func $local_burn (;340;) (type 11)
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    i64.const 0
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h33c972f9b40b2771E
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_local_burn17h4216496ff30fbdeeE
  )
  (func $get_dcdt_local_roles (;341;) (type 11)
    (local i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const -8
    local.set 1
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    call $getDCDTLocalRoles
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.set 3
    loop ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.const 133040
          i32.add
          i32.load8_u
          local.tee 4
          i32.const 3
          i32.shl
          i32.const 133056
          i32.add
          i64.load
          local.get 2
          i64.and
          i64.const 0
          i64.eq
          br_if 1 (;@2;)
          local.get 0
          local.get 4
          call $_ZN11dharitri_sc5types5flags15dcdt_local_role13DcdtLocalRole12as_role_name17h7faeaa8a3e1c6835E
          local.get 3
          local.get 0
          i32.load
          local.get 0
          i32.load offset=4
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E
          call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h22a0db9d8903e8b7E
          br 1 (;@2;)
        end
        local.get 0
        local.get 3
        i32.store offset=12
        local.get 0
        i32.const 12
        i32.add
        call $_ZN11dharitri_sc2io6finish12finish_multi17h4836b6b7f2eca240E
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
  (func $get_dcdt_token_data (;342;) (type 11)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    local.get 0
    i32.const 56
    i32.add
    i32.const 0
    i32.const 132585
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hcaba6ffc5fe42f86E
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$19get_dcdt_token_data17h9b2a85204cfb6bf8E
    local.get 0
    local.get 0
    i32.load offset=80
    local.tee 1
    i32.store offset=52
    local.get 0
    local.get 0
    i32.load8_u offset=84
    local.tee 2
    i32.store8 offset=49
    local.get 0
    local.get 0
    i32.load8_u offset=85
    local.tee 3
    i32.store8 offset=48
    local.get 0
    local.get 0
    i32.load offset=76
    local.tee 4
    i32.store offset=44
    local.get 0
    local.get 0
    i32.load offset=72
    local.tee 5
    i32.store offset=40
    local.get 0
    local.get 0
    i32.load offset=68
    local.tee 6
    i32.store offset=36
    local.get 0
    local.get 0
    i32.load offset=64
    local.tee 7
    i32.store offset=32
    local.get 0
    local.get 0
    i32.load offset=60
    local.tee 8
    i32.store offset=28
    local.get 0
    local.get 0
    i32.load offset=56
    local.tee 9
    i32.store offset=24
    local.get 2
    i64.extend_i32_u
    i64.const 255
    i64.and
    call $smallIntFinishUnsigned
    local.get 9
    call $bigIntFinishUnsigned
    local.get 3
    i64.extend_i32_u
    i64.const 255
    i64.and
    call $smallIntFinishSigned
    local.get 8
    call $mBufferFinish
    drop
    local.get 7
    call $mBufferFinish
    drop
    local.get 6
    call $mBufferFinish
    drop
    local.get 5
    call $mBufferFinish
    drop
    local.get 4
    call $bigIntFinishUnsigned
    local.get 0
    i32.const 16
    i32.add
    call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hf2283d5e0b064b69E
    local.get 0
    local.get 0
    i32.load8_u offset=20
    i32.store8 offset=92
    local.get 0
    local.get 0
    i32.load offset=16
    i32.store offset=88
    local.get 0
    local.get 1
    call $mBufferGetLength
    i32.store offset=64
    local.get 0
    i32.const 0
    i32.store offset=60
    local.get 0
    local.get 0
    i32.const 52
    i32.add
    i32.store offset=56
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.get 0
        i32.const 56
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbef3f30694ae9437E
        local.get 0
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=12
        local.get 0
        i32.const 88
        i32.add
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h2d85469ba51e5670E
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.load offset=88
    local.get 0
    i32.load8_u offset=92
    call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hc8e86f644eba201eE
    local.get 0
    i32.const 96
    i32.add
    global.set $__stack_pointer
  )
  (func $is_dcdt_frozen (;343;) (type 11)
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    i32.const 132585
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hcaba6ffc5fe42f86E
    call $managedIsDCDTFrozen
    i32.const 0
    i32.gt_s
    i64.extend_i32_u
    call $smallIntFinishSigned
  )
  (func $is_dcdt_paused (;344;) (type 11)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    call $managedIsDCDTPaused
    i32.const 0
    i32.gt_s
    i64.extend_i32_u
    call $smallIntFinishSigned
  )
  (func $is_dcdt_limited_transfer (;345;) (type 11)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    call $managedIsDCDTLimitedTransfer
    i32.const 0
    i32.gt_s
    i64.extend_i32_u
    call $smallIntFinishSigned
  )
  (func $validate_token_identifier (;346;) (type 11)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    call $validateTokenIdentifier
    i32.const 0
    i32.ne
    i64.extend_i32_u
    call $smallIntFinishSigned
  )
  (func $sft_issue (;347;) (type 11)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io15call_value_init12payable_rewa17hf67e9a7f60905fdfE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    local.set 2
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17h1ddfee60ed3f8f9bE
    local.set 3
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17hf48b2bffaf3b9737E
    i32.store offset=4
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_ref23ManagedRef$LT$M$C$T$GT$11clone_value17h9e18f838e0406769E
    local.set 3
    local.get 0
    i32.const 16843009
    i32.store offset=43 align=1
    local.get 0
    i32.const 16843009
    i32.store offset=40
    local.get 0
    i32.const 8
    i32.add
    local.get 3
    local.get 1
    local.get 2
    local.get 0
    i32.const 40
    i32.add
    call $_ZN11dharitri_sc4dcdt15system_sc_proxy38DCDTSystemSmartContractProxy$LT$SA$GT$19issue_semi_fungible17hdf35c5e5fb3db3c4E
    local.get 0
    i64.load offset=8
    local.set 4
    local.get 0
    i32.load offset=24
    local.set 1
    local.get 0
    i32.load offset=32
    local.set 2
    local.get 0
    i32.const 24
    i32.add
    local.get 0
    i32.const 4
    i32.add
    call $_ZN9forwarder3sft13CallbackProxy18sft_issue_callback17h08b09e58ffcdb574E
    local.get 0
    local.get 2
    i32.store offset=20
    local.get 0
    local.get 1
    i32.store offset=16
    local.get 0
    local.get 4
    i64.store offset=8 align=4
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17hbaeba017d9690ff4E
    unreachable
  )
  (func $get_nft_balance (;348;) (type 11)
    (local i32 i64)
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    local.set 0
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hcaba6ffc5fe42f86E
    local.set 1
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hd4d5312d23963ceeE
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$16get_dcdt_balance17hbbb1fac127ab1a7dE
    call $bigIntFinishUnsigned
  )
  (func $buy_nft (;349;) (type 11)
    (local i32 i32 i64 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hcaba6ffc5fe42f86E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h33c972f9b40b2771E
    local.set 3
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h79ec81ea9cb55974E
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17hf48b2bffaf3b9737E
    local.set 4
    local.get 0
    i64.load
    local.set 5
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hd4d5312d23963ceeE
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$19get_dcdt_token_data17h9b2a85204cfb6bf8E
    local.get 0
    i32.load offset=12
    local.tee 6
    call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb0a8f8d542cb8fc7E
    local.tee 7
    local.get 7
    local.get 0
    i32.load offset=36
    call $bigIntMul
    local.get 7
    call $_ZN11dharitri_sc5types7managed5basic18big_uint_operators125_$LT$impl$u20$core..ops..arith..Div$LT$u64$GT$$u20$for$u20$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$3div17he615fab1cecee8c8E
    local.set 7
    local.get 4
    local.get 1
    local.get 2
    local.get 3
    i64.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17h14e1eb5c1ae2b611E
    block ;; label = @1
      block ;; label = @2
        local.get 7
        call $_ZN11dharitri_sc5types7managed5basic11big_num_cmp7cmp_i6417h2cf7ad417c156bd6E
        i32.const 255
        i32.and
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        local.get 6
        call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb0a8f8d542cb8fc7E
        local.set 1
        br 1 (;@1;)
      end
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load offset=8
          local.tee 1
          i32.const 2147483646
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          i32.load offset=32
          local.get 1
          local.get 5
          local.get 7
          call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$26direct_dcdt_with_gas_limit17hd8ee4e78ba5121a8E
          br 1 (;@2;)
        end
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
        local.set 1
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
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
      call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb0a8f8d542cb8fc7E
      local.get 7
      call $_ZN11dharitri_sc5types7managed5basic18big_uint_operators114_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$3sub17h341b53aeec126350E
      local.set 1
    end
    local.get 1
    call $bigIntFinishUnsigned
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $nft_issue (;350;) (type 11)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io15call_value_init12payable_rewa17hf67e9a7f60905fdfE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    local.set 2
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17h1ddfee60ed3f8f9bE
    local.set 3
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17hf48b2bffaf3b9737E
    i32.store offset=4
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_ref23ManagedRef$LT$M$C$T$GT$11clone_value17h9e18f838e0406769E
    local.set 3
    local.get 0
    i32.const 16843009
    i32.store offset=43 align=1
    local.get 0
    i32.const 16843009
    i32.store offset=40
    local.get 0
    i32.const 8
    i32.add
    local.get 3
    local.get 1
    local.get 2
    local.get 0
    i32.const 40
    i32.add
    call $_ZN11dharitri_sc4dcdt15system_sc_proxy38DCDTSystemSmartContractProxy$LT$SA$GT$18issue_non_fungible17h5ac43013fcdae47bE
    local.get 0
    i64.load offset=8
    local.set 4
    local.get 0
    i32.load offset=24
    local.set 1
    local.get 0
    i32.load offset=32
    local.set 2
    local.get 0
    i32.const 24
    i32.add
    local.get 0
    i32.const 4
    i32.add
    call $_ZN9forwarder3nft13CallbackProxy18nft_issue_callback17h12373f391d64a4c5E
    local.get 0
    local.get 2
    i32.store offset=20
    local.get 0
    local.get 1
    i32.store offset=16
    local.get 0
    local.get 4
    i64.store offset=8 align=4
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17hbaeba017d9690ff4E
    unreachable
  )
  (func $nft_create (;351;) (type 11)
    call $checkNoPayment
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h33c972f9b40b2771E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h33c972f9b40b2771E
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    i32.const 5
    i32.const 132476
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4374a819cde8d73dE
    i32.const 6
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    call $_ZN9forwarder3nft18ForwarderNftModule10nft_create17hafd31dc4dccd270dE
    call $smallIntFinishUnsigned
  )
  (func $nft_create_compact (;352;) (type 11)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h33c972f9b40b2771E
    local.set 2
    local.get 0
    i32.const 2
    i32.const 132476
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4374a819cde8d73dE
    local.tee 3
    i32.const 16
    i32.shr_u
    i32.store8 offset=10
    local.get 0
    local.get 3
    i32.store16 offset=8
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.set 3
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17ha7217c0dc6f9660cE
    local.set 4
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.tee 5
    i32.store offset=12
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_nft_create17h4765572a133d883dE
    drop
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $nft_add_uris (;353;) (type 11)
    (local i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hc3dcdadfb9a64636E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h85ad1c323beb7c86E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hcaba6ffc5fe42f86E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=36
    local.get 0
    i32.const 36
    i32.add
    i32.const 132481
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h41c7095b48e1b997E
    local.set 3
    local.get 0
    i32.load offset=36
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hc4b7ded9e4487706E
    local.get 0
    local.get 3
    i32.store offset=28
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.set 4
    local.get 0
    local.get 3
    call $mBufferGetLength
    i32.store offset=44
    local.get 0
    i32.const 0
    i32.store offset=40
    local.get 0
    local.get 0
    i32.const 28
    i32.add
    i32.store offset=36
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 16
        i32.add
        local.get 0
        i32.const 36
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbef3f30694ae9437E
        local.get 0
        i32.load offset=16
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 0
        i32.load offset=20
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h02929fecbec91d6bE
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h02929fecbec91d6bE
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf9851e285a2d5605E
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 4
    i32.store offset=32
    block ;; label = @1
      local.get 4
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h98d34a84b7100ca2E
      br_if 0 (;@1;)
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
      local.tee 3
      local.get 1
      call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h22a0db9d8903e8b7E
      local.get 3
      local.get 2
      call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17h3891e8a7e0771875E
      local.get 0
      local.get 4
      call $mBufferGetLength
      i32.store offset=44
      local.get 0
      i32.const 0
      i32.store offset=40
      local.get 0
      local.get 0
      i32.const 32
      i32.add
      i32.store offset=36
      loop ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.get 0
        i32.const 36
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbef3f30694ae9437E
        block ;; label = @3
          local.get 0
          i32.load offset=8
          br_if 0 (;@3;)
          call $getGasLeft
          i32.const 131197
          i32.const 13
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E
          local.get 3
          call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$33call_local_dcdt_built_in_function17hfc40191b35286b25E
          drop
          br 2 (;@1;)
        end
        local.get 3
        local.get 0
        i32.load offset=12
        call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17h28a95783ca93188dE
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $nft_update_attributes (;354;) (type 11)
    (local i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hcaba6ffc5fe42f86E
    local.set 2
    local.get 0
    i32.const 2
    i32.const 132491
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4374a819cde8d73dE
    local.tee 3
    i32.const 16
    i32.shr_u
    i32.store8 offset=14
    local.get 0
    local.get 3
    i32.store16 offset=12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.tee 3
    local.get 1
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h22a0db9d8903e8b7E
    local.get 3
    local.get 2
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17h3891e8a7e0771875E
    local.get 3
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17h149c363d9d45ef6dE
    call $getGasLeft
    i32.const 131210
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E
    local.get 3
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$33call_local_dcdt_built_in_function17hfc40191b35286b25E
    drop
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $nft_decode_complex_attributes (;355;) (type 11)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hc3dcdadfb9a64636E
    i32.const 6
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h85ad1c323beb7c86E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h33c972f9b40b2771E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h33c972f9b40b2771E
    local.set 4
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    local.set 5
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    local.set 6
    local.get 0
    i32.const 6
    i32.store offset=72
    local.get 0
    i32.const 40
    i32.add
    i32.const 4
    i32.add
    local.get 0
    i32.const 72
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hda08bd089da5765bE
    local.get 0
    i32.load offset=72
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hc4b7ded9e4487706E
    local.get 0
    i32.load offset=60
    local.set 7
    local.get 0
    i32.load8_u offset=56
    local.set 8
    local.get 0
    i32.load offset=52
    local.set 9
    local.get 0
    i32.load offset=48
    local.set 10
    local.get 0
    i32.load offset=44
    local.set 11
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.tee 12
    i32.store offset=36
    local.get 12
    local.get 6
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf9851e285a2d5605E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    local.tee 6
    local.get 1
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h22a0db9d8903e8b7E
    local.get 6
    local.get 2
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17hc99d9eb018084fbaE
    local.get 6
    local.get 3
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h22a0db9d8903e8b7E
    local.get 6
    local.get 4
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17hc99d9eb018084fbaE
    local.get 6
    local.get 5
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h22a0db9d8903e8b7E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h02929fecbec91d6bE
    local.set 2
    local.get 11
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h2236f2af69a64826E
    local.get 2
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h2cfedfd609a1a3ffE
    local.get 10
    local.get 2
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h2cfedfd609a1a3ffE
    local.get 9
    local.get 2
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h2cfedfd609a1a3ffE
    local.get 8
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h7d54ea6ff918e4a6E
    local.get 7
    local.get 2
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h2cfedfd609a1a3ffE
    local.get 6
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf9851e285a2d5605E
    block ;; label = @1
      block ;; label = @2
        local.get 12
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h98d34a84b7100ca2E
        br_if 0 (;@2;)
        local.get 0
        local.get 12
        call $mBufferGetLength
        i32.store offset=48
        local.get 0
        i32.const 0
        i32.store offset=44
        local.get 0
        local.get 0
        i32.const 36
        i32.add
        i32.store offset=40
        loop ;; label = @3
          local.get 0
          i32.const 24
          i32.add
          local.get 0
          i32.const 40
          i32.add
          call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbef3f30694ae9437E
          local.get 0
          i32.load offset=24
          i32.eqz
          br_if 2 (;@1;)
          local.get 6
          local.get 0
          i32.load offset=28
          call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17h28a95783ca93188dE
          br 0 (;@3;)
        end
      end
      local.get 6
      call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17hb99b84f0c1a2c56aE
    end
    i32.const 0
    local.set 2
    local.get 0
    i32.const 16
    i32.add
    call $getGasLeft
    i32.const 131166
    i32.const 13
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E
    local.get 6
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$33call_local_dcdt_built_in_function17hfc40191b35286b25E
    i32.const 0
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$7try_get17ha506ce50e4f3b507E
    i64.const 0
    local.set 13
    block ;; label = @1
      local.get 0
      i32.load offset=16
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      local.get 0
      i32.load offset=20
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$12parse_as_u6417h4b4125d8cf80f924E
      local.get 0
      i64.load offset=8
      i64.const 0
      local.get 0
      i32.load
      select
      local.set 13
    end
    local.get 0
    i32.const 40
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hd4d5312d23963ceeE
    local.get 1
    local.get 13
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$19get_dcdt_token_data17h9b2a85204cfb6bf8E
    local.get 0
    i32.load offset=52
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h02929fecbec91d6bE
    local.tee 12
    call $mBufferGetLength
    local.set 6
    local.get 0
    i32.const 88
    i32.add
    i32.const 0
    i32.store8
    local.get 0
    i32.const 84
    i32.add
    local.get 6
    i32.store
    local.get 0
    local.get 12
    i32.store offset=80
    local.get 0
    local.get 6
    i32.store offset=76
    local.get 0
    i32.const 0
    i32.store offset=72
    local.get 0
    i32.const 72
    i32.add
    i32.const 131847
    i32.const 32
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h5bda38483efc505aE
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h152254a4af89de06E
    local.set 6
    local.get 0
    i32.const 72
    i32.add
    i32.const 131847
    i32.const 32
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h5bda38483efc505aE
    local.set 12
    local.get 0
    i32.const 72
    i32.add
    i32.const 131847
    i32.const 32
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h5bda38483efc505aE
    local.set 1
    local.get 0
    i32.const 0
    i32.store8 offset=95
    local.get 0
    i32.const 72
    i32.add
    local.get 0
    i32.const 95
    i32.add
    i32.const 1
    i32.const 131847
    i32.const 32
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h71910d54d8d995aeE
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load8_u offset=95
          br_table 2 (;@1;) 1 (;@2;) 0 (;@3;)
        end
        i32.const 131847
        i32.const 32
        i32.const 131901
        i32.const 13
        call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h3ab9735f83595eb8E
        unreachable
      end
      i32.const 1
      local.set 2
    end
    local.get 0
    i32.const 72
    i32.add
    i32.const 131847
    i32.const 32
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h5bda38483efc505aE
    local.set 3
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load offset=76
        local.get 0
        i32.load offset=72
        i32.ne
        br_if 0 (;@2;)
        block ;; label = @3
          local.get 0
          i32.load8_u offset=88
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.const 0
          i32.store offset=143132
          i32.const 0
          i32.const 0
          i32.store8 offset=143136
        end
        local.get 11
        local.get 6
        call $bigIntCmp
        br_if 1 (;@1;)
        local.get 10
        local.get 12
        call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h4f8cca689c5c0186E
        i32.eqz
        br_if 1 (;@1;)
        local.get 9
        local.get 1
        call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h4f8cca689c5c0186E
        i32.eqz
        br_if 1 (;@1;)
        local.get 8
        i32.const 255
        i32.and
        i32.eqz
        local.get 2
        i32.xor
        i32.eqz
        br_if 1 (;@1;)
        local.get 7
        local.get 3
        call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h4f8cca689c5c0186E
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 96
        i32.add
        global.set $__stack_pointer
        return
      end
      i32.const 131847
      i32.const 32
      i32.const 131072
      i32.const 14
      call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h3ab9735f83595eb8E
      unreachable
    end
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h1cf0e1efb712eecaE
    unreachable
  )
  (func $nft_add_quantity (;356;) (type 11)
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hcaba6ffc5fe42f86E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h33c972f9b40b2771E
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_local_mint17h6c7900e4aea89c7dE
  )
  (func $nft_burn (;357;) (type 11)
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hcaba6ffc5fe42f86E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h33c972f9b40b2771E
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_local_burn17h4216496ff30fbdeeE
  )
  (func $transfer_nft_via_async_call (;358;) (type 11)
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    i32.const 132315
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hcaba6ffc5fe42f86E
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h33c972f9b40b2771E
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$28transfer_dcdt_via_async_call17hd30257432aaa2dc7E
    unreachable
  )
  (func $transfer_nft_and_execute (;359;) (type 11)
    (local i32 i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hc3dcdadfb9a64636E
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h85ad1c323beb7c86E
    i32.const 0
    i32.const 132315
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hcaba6ffc5fe42f86E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h33c972f9b40b2771E
    local.set 4
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    local.set 5
    local.get 0
    i32.const 5
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 132505
    i32.const 9
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h41c7095b48e1b997E
    local.set 6
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hc4b7ded9e4487706E
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $getGasLeft
    local.get 5
    local.get 6
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17h14e1eb5c1ae2b611E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $create_and_send (;360;) (type 11)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    i32.const 0
    i32.const 132315
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h33c972f9b40b2771E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    local.set 4
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h33c972f9b40b2771E
    local.set 5
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    local.set 6
    i32.const 6
    i32.const 132476
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4374a819cde8d73dE
    local.set 7
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    local.set 8
    local.get 0
    local.get 3
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 1
    local.get 2
    local.get 2
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h02929fecbec91d6bE
    local.get 3
    call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb0a8f8d542cb8fc7E
    local.get 4
    local.get 5
    local.get 6
    local.get 7
    local.get 8
    call $_ZN9forwarder3nft18ForwarderNftModule10nft_create17hafd31dc4dccd270dE
    local.tee 9
    local.get 3
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$26direct_dcdt_with_gas_limit17hd8ee4e78ba5121a8E
    i32.const 131982
    i32.const 4
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h25def557c641b6a0E
    local.tee 3
    local.get 0
    i32.const 8
    i32.add
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hc9d8ac5447b203c5E
    local.get 3
    local.get 2
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h22a0db9d8903e8b7E
    local.get 3
    local.get 9
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17hb857eb5b66d7cdc9E
    local.get 3
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17hd1d5f808259b78d4E
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    call $managedWriteLog
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $setLocalRoles (;361;) (type 11)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hc3dcdadfb9a64636E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h85ad1c323beb7c86E
    i32.const 0
    i32.const 132585
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i32.const 132613
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1b8cb5162e9195ecE
    local.set 3
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hc4b7ded9e4487706E
    local.get 0
    i32.const 36
    i32.add
    local.get 3
    call $_ZN11dharitri_sc5types7managed11multi_value24multi_value_encoded_iter165_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$GT$9into_iter17h040f79b30e88bb1eE
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    local.get 2
    local.get 0
    i32.const 36
    i32.add
    call $_ZN11dharitri_sc4dcdt15system_sc_proxy38DCDTSystemSmartContractProxy$LT$SA$GT$17set_special_roles17h9cad01f87c372562E
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17ha7217c0dc6f9660cE
    local.set 1
    local.get 0
    i64.load offset=8
    local.set 4
    local.get 0
    i32.load offset=24
    local.set 2
    local.get 0
    i32.const 32
    i32.add
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    i32.store
    local.get 0
    i32.const 28
    i32.add
    i32.const 21
    i32.store
    local.get 0
    i32.const 132592
    i32.store offset=24
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    local.get 2
    i32.store offset=16
    local.get 0
    local.get 4
    i64.store offset=8 align=4
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17hbaeba017d9690ff4E
    unreachable
  )
  (func $unsetLocalRoles (;362;) (type 11)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hc3dcdadfb9a64636E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h85ad1c323beb7c86E
    i32.const 0
    i32.const 132585
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha5fd37a28e1d6f22E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadf45ad415d45ca0E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i32.const 132613
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1b8cb5162e9195ecE
    local.set 3
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hc4b7ded9e4487706E
    local.get 0
    i32.const 36
    i32.add
    local.get 3
    call $_ZN11dharitri_sc5types7managed11multi_value24multi_value_encoded_iter165_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$GT$9into_iter17h040f79b30e88bb1eE
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    local.get 2
    local.get 0
    i32.const 36
    i32.add
    call $_ZN11dharitri_sc4dcdt15system_sc_proxy38DCDTSystemSmartContractProxy$LT$SA$GT$19unset_special_roles17h139a67ac2ace20d6E
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17ha7217c0dc6f9660cE
    local.set 1
    local.get 0
    i64.load offset=8
    local.set 4
    local.get 0
    i32.load offset=24
    local.set 2
    local.get 0
    i32.const 32
    i32.add
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
    i32.store
    local.get 0
    i32.const 28
    i32.add
    i32.const 21
    i32.store
    local.get 0
    i32.const 132592
    i32.store offset=24
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    local.get 2
    i32.store offset=16
    local.get 0
    local.get 4
    i64.store offset=8 align=4
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17hbaeba017d9690ff4E
    unreachable
  )
  (func $lastIssuedToken (;363;) (type 11)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    call $_ZN64_$LT$C$u20$as$u20$forwarder..storage..ForwarderStorageModule$GT$17last_issued_token17hae93ee6f2b6785e1E
    call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17hb9f1cae0ad3e0207E
    call $mBufferFinish
    drop
  )
  (func $lastErrorMessage (;364;) (type 11)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5cee4ac1f6291b63E
    call $_ZN64_$LT$C$u20$as$u20$forwarder..storage..ForwarderStorageModule$GT$18last_error_message17hec533029d44080f7E
    call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17hb9f1cae0ad3e0207E
    call $mBufferFinish
    drop
  )
  (func $callBack (;365;) (type 11)
    (local i32 i32 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 208
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block ;; label = @1
      call $_ZN11dharitri_sc5types11interaction16callback_closure22cb_closure_storage_key17h40171b67b0ee3337E
      local.tee 1
      call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17hb9f1cae0ad3e0207E
      local.tee 2
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h98d34a84b7100ca2E
      br_if 0 (;@1;)
      local.get 2
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h02929fecbec91d6bE
      local.tee 3
      call $mBufferGetLength
      local.set 2
      local.get 0
      i32.const 184
      i32.add
      i32.const 0
      i32.store8
      local.get 0
      i32.const 180
      i32.add
      local.get 2
      i32.store
      local.get 0
      local.get 3
      i32.store offset=176
      local.get 0
      local.get 2
      i32.store offset=172
      local.get 0
      i32.const 0
      i32.store offset=168
      local.get 0
      i32.const 168
      i32.add
      i32.const 131086
      i32.const 25
      call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h5bda38483efc505aE
      local.set 4
      local.get 0
      i32.const 168
      i32.add
      i32.const 131086
      i32.const 25
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17h73e0af667179fbccE
      local.set 2
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
      local.set 3
      block ;; label = @2
        loop ;; label = @3
          local.get 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          local.get 0
          i32.const 168
          i32.add
          i32.const 131086
          i32.const 25
          call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h5bda38483efc505aE
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf9851e285a2d5605E
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
                      local.get 0
                      i32.load offset=172
                      local.get 0
                      i32.load offset=168
                      i32.ne
                      br_if 0 (;@9;)
                      block ;; label = @10
                        local.get 0
                        i32.load8_u offset=184
                        i32.eqz
                        br_if 0 (;@10;)
                        i32.const 0
                        i32.const 0
                        i32.store offset=143132
                        i32.const 0
                        i32.const 0
                        i32.store8 offset=143136
                      end
                      local.get 1
                      call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h845ca05802be0cafE
                      local.get 0
                      i32.const 48
                      i32.add
                      local.get 4
                      call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17hda197e58a47ab2cdE
                      local.get 0
                      i32.load offset=80
                      i32.eqz
                      br_if 8 (;@1;)
                      local.get 0
                      i32.const 84
                      i32.add
                      local.get 4
                      call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17hda197e58a47ab2cdE
                      local.get 0
                      i32.load offset=116
                      i32.eqz
                      br_if 8 (;@1;)
                      block ;; label = @10
                        block ;; label = @11
                          block ;; label = @12
                            local.get 0
                            i32.const 84
                            i32.add
                            i32.const 132247
                            i32.const 18
                            call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h142c6626c3f64f6dE
                            br_if 0 (;@12;)
                            local.get 0
                            i32.const 84
                            i32.add
                            i32.const 132224
                            i32.const 23
                            call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h142c6626c3f64f6dE
                            br_if 1 (;@11;)
                            local.get 0
                            i32.const 84
                            i32.add
                            i32.const 132265
                            i32.const 25
                            call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h142c6626c3f64f6dE
                            i32.eqz
                            br_if 2 (;@10;)
                            local.get 0
                            i32.const 120
                            i32.add
                            local.get 3
                            call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h8e7a8e5cedef394eE
                            call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hc3dcdadfb9a64636E
                            local.get 0
                            i32.const 120
                            i32.add
                            i32.const 132315
                            i32.const 2
                            call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6fb931f058058d2bE
                            local.set 2
                            local.get 0
                            i32.const 136
                            i32.add
                            i32.const 8
                            i32.add
                            local.tee 3
                            local.get 0
                            i32.const 120
                            i32.add
                            i32.const 8
                            i32.add
                            i32.load
                            i32.store
                            local.get 0
                            local.get 0
                            i64.load offset=120 align=4
                            i64.store offset=136
                            local.get 0
                            i32.const 136
                            i32.add
                            call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h7412d4c272e1713dE
                            local.set 1
                            local.get 0
                            i32.const 168
                            i32.add
                            i32.const 8
                            i32.add
                            local.tee 4
                            local.get 3
                            i32.load
                            i32.store
                            local.get 0
                            local.get 0
                            i64.load offset=136
                            i64.store offset=168
                            local.get 0
                            i32.const 168
                            i32.add
                            call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h01ecb782400e64f6E
                            local.set 3
                            local.get 0
                            i32.load offset=172
                            local.get 4
                            i32.load
                            call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h67c081b83f6eaa56E
                            local.get 0
                            local.get 2
                            call $_ZN117_$LT$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7e51bd03fd9fcd35E
                            i32.store offset=120
                            local.get 0
                            i32.const 184
                            i32.add
                            local.get 0
                            i32.const 120
                            i32.add
                            call $_ZN5vault10ProxyTrait12accept_funds17h8093a836d2525085E
                            local.get 1
                            call $_ZN142_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h5cd93db33259d802E
                            local.set 2
                            local.get 0
                            local.get 3
                            call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb0a8f8d542cb8fc7E
                            i32.store offset=180
                            local.get 0
                            local.get 2
                            i32.store offset=176
                            local.get 0
                            i64.const 0
                            i64.store offset=168
                            local.get 0
                            i32.const 136
                            i32.add
                            local.get 0
                            i32.const 168
                            i32.add
                            call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall10async_call17h6c9f7d20209b337fE
                            local.get 0
                            i32.const 136
                            i32.add
                            call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17hbaeba017d9690ff4E
                            unreachable
                          end
                          call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hc3dcdadfb9a64636E
                          i32.const 0
                          call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h85ad1c323beb7c86E
                          local.get 0
                          i32.const 0
                          i32.store offset=136
                          local.get 0
                          i32.const 168
                          i32.add
                          local.get 0
                          i32.const 136
                          i32.add
                          call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1df072a82e456eacE
                          local.get 0
                          i32.load offset=136
                          call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hc4b7ded9e4487706E
                          local.get 0
                          i32.load offset=168
                          local.set 1
                          local.get 0
                          i32.load offset=172
                          local.set 2
                          local.get 0
                          i32.load offset=176
                          local.set 4
                          local.get 0
                          i32.const 168
                          i32.add
                          local.get 3
                          call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h8e7a8e5cedef394eE
                          call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hc3dcdadfb9a64636E
                          local.get 0
                          i32.load offset=172
                          local.get 0
                          i32.load offset=176
                          call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h67c081b83f6eaa56E
                          block ;; label = @12
                            block ;; label = @13
                              local.get 1
                              br_if 0 (;@13;)
                              i32.const 132346
                              i32.const 7
                              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E
                              call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$16from_single_item17h098fd5e1e454200eE
                              local.tee 3
                              local.get 2
                              call $mBufferAppend
                              drop
                              br 1 (;@12;)
                            end
                            i32.const 132353
                            i32.const 5
                            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E
                            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$16from_single_item17h098fd5e1e454200eE
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
                            i32.store offset=168
                            local.get 3
                            local.get 0
                            i32.const 168
                            i32.add
                            i32.const 4
                            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E
                            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf9851e285a2d5605E
                            local.get 3
                            local.get 4
                            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf9851e285a2d5605E
                          end
                          local.get 0
                          local.get 3
                          i32.store offset=168
                          local.get 0
                          i32.const 168
                          i32.add
                          call $_ZN11dharitri_sc2io6finish12finish_multi17h4836b6b7f2eca240E
                          br 10 (;@1;)
                        end
                        local.get 0
                        i32.const 168
                        i32.add
                        local.get 3
                        call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h8e7a8e5cedef394eE
                        call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hc3dcdadfb9a64636E
                        local.get 0
                        i32.load offset=172
                        local.get 0
                        i32.load offset=176
                        call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h67c081b83f6eaa56E
                        local.get 0
                        i32.const 168
                        i32.add
                        call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h79ec81ea9cb55974E
                        local.get 0
                        i64.load offset=168
                        local.set 5
                        local.get 0
                        i32.load offset=180
                        local.set 2
                        local.get 0
                        local.get 0
                        i32.load offset=176
                        i32.store offset=132
                        local.get 0
                        local.get 2
                        i32.store offset=120
                        i32.const 132224
                        i32.const 23
                        call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h25def557c641b6a0E
                        local.tee 2
                        local.get 0
                        i32.const 132
                        i32.add
                        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hc9045ff01d6612deE
                        local.get 2
                        local.get 5
                        call $_ZN11dharitri_sc8log_util21serialize_event_topic17hb857eb5b66d7cdc9E
                        local.get 2
                        local.get 0
                        i32.const 120
                        i32.add
                        call $_ZN11dharitri_sc8log_util21serialize_event_topic17hd1d5f808259b78d4E
                        local.get 2
                        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
                        call $managedWriteLog
                        local.get 0
                        i32.const 16
                        i32.add
                        call $_ZN69_$LT$C$u20$as$u20$forwarder..call_async..ForwarderAsyncCallModule$GT$13callback_data17h1b689f6ca53e5974E
                        local.get 0
                        i32.load offset=16
                        local.set 6
                        local.get 0
                        i32.load offset=20
                        local.set 2
                        i32.const 132224
                        i32.const 23
                        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h806529c0d4742063E
                        local.set 3
                        local.get 0
                        i32.load offset=120
                        local.set 1
                        local.get 0
                        i32.load offset=132
                        local.set 4
                        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h4a454d1846d6b723E
                        local.set 7
                        local.get 0
                        local.get 4
                        i32.store offset=180
                        local.get 0
                        local.get 3
                        i32.store offset=176
                        local.get 0
                        local.get 7
                        i32.store offset=188
                        local.get 0
                        local.get 1
                        i32.store offset=184
                        local.get 0
                        local.get 5
                        i64.store offset=168
                        local.get 6
                        local.get 2
                        call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$3len17hed1768ee33bff1cbE
                        i32.const 1
                        i32.add
                        local.tee 7
                        call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$8item_key17hd65934eb74a8b31bE
                        local.set 6
                        local.get 0
                        i32.const 8
                        i32.add
                        call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hf2283d5e0b064b69E
                        local.get 0
                        local.get 0
                        i32.load8_u offset=12
                        i32.store8 offset=140
                        local.get 0
                        local.get 0
                        i32.load offset=8
                        i32.store offset=136
                        local.get 3
                        local.get 0
                        i32.const 136
                        i32.add
                        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h2d85469ba51e5670E
                        local.get 4
                        local.get 0
                        i32.const 136
                        i32.add
                        call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h58de86d99c94df74E
                        local.get 5
                        local.get 0
                        i32.const 136
                        i32.add
                        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h7eac9c7940f6f327E
                        local.get 1
                        local.get 0
                        i32.const 136
                        i32.add
                        call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h7f79a795b1b4d05fE
                        local.get 0
                        i32.const 188
                        i32.add
                        local.get 0
                        i32.const 136
                        i32.add
                        call $_ZN145_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h403fdd86d94954f6E
                        local.get 6
                        local.get 0
                        i32.load offset=136
                        local.get 0
                        i32.load8_u offset=140
                        call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h11ccac029b037190E
                        local.get 2
                        local.get 7
                        call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17h73f7f19685f69364E
                        br 9 (;@1;)
                      end
                      local.get 0
                      i32.const 168
                      i32.add
                      local.get 4
                      call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17hda197e58a47ab2cdE
                      local.get 0
                      i32.load offset=200
                      i32.eqz
                      br_if 8 (;@1;)
                      block ;; label = @10
                        local.get 0
                        i32.const 168
                        i32.add
                        i32.const 132566
                        i32.const 19
                        call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h142c6626c3f64f6dE
                        i32.eqz
                        br_if 0 (;@10;)
                        call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hc3dcdadfb9a64636E
                        i32.const 0
                        call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h85ad1c323beb7c86E
                        local.get 0
                        i32.const 0
                        i32.store offset=136
                        local.get 0
                        i32.const 84
                        i32.add
                        local.get 0
                        i32.const 136
                        i32.add
                        call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1a3ffed720bad731E
                        local.get 0
                        i32.load offset=136
                        call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hc4b7ded9e4487706E
                        local.get 0
                        i32.load offset=84
                        local.set 2
                        local.get 0
                        i32.load offset=92
                        local.set 1
                        local.get 0
                        i32.const 84
                        i32.add
                        local.get 3
                        call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h8e7a8e5cedef394eE
                        call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hc3dcdadfb9a64636E
                        local.get 0
                        i32.const 84
                        i32.add
                        i32.const 132485
                        i32.const 6
                        call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6fb931f058058d2bE
                        local.set 4
                        local.get 0
                        i32.load offset=88
                        local.get 0
                        i32.load offset=92
                        call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h67c081b83f6eaa56E
                        local.get 0
                        i32.const 24
                        i32.add
                        call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17hbe3ca019e6d03cbcE
                        local.get 0
                        i32.load offset=24
                        local.set 3
                        block ;; label = @11
                          local.get 2
                          br_if 0 (;@11;)
                          call $_ZN64_$LT$C$u20$as$u20$forwarder..storage..ForwarderStorageModule$GT$17last_issued_token17hae93ee6f2b6785e1E
                          local.get 3
                          call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$11unwrap_dcdt17hf1d72f395fcd6050E
                          call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h6183f286297cc81aE
                          call $_ZN64_$LT$C$u20$as$u20$forwarder..storage..ForwarderStorageModule$GT$18last_error_message17hec533029d44080f7E
                          call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h845ca05802be0cafE
                          br 10 (;@1;)
                        end
                        local.get 3
                        i32.const 2147483646
                        i32.ne
                        br_if 8 (;@2;)
                        local.get 0
                        i32.load offset=28
                        local.tee 2
                        call $_ZN4core3cmp10PartialOrd2gt17hef36c8167a0b372fE
                        br_if 2 (;@8;)
                        br 8 (;@2;)
                      end
                      local.get 0
                      i32.const 168
                      i32.add
                      local.get 4
                      call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17hda197e58a47ab2cdE
                      local.get 0
                      i32.load offset=200
                      i32.eqz
                      br_if 8 (;@1;)
                      block ;; label = @10
                        local.get 0
                        i32.const 168
                        i32.add
                        i32.const 132548
                        i32.const 18
                        call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h142c6626c3f64f6dE
                        i32.eqz
                        br_if 0 (;@10;)
                        call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hc3dcdadfb9a64636E
                        i32.const 0
                        call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h85ad1c323beb7c86E
                        local.get 0
                        i32.const 0
                        i32.store offset=136
                        local.get 0
                        i32.const 84
                        i32.add
                        local.get 0
                        i32.const 136
                        i32.add
                        call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h7ee5b75b3ce1d5edE
                        local.get 0
                        i32.load offset=136
                        call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hc4b7ded9e4487706E
                        local.get 0
                        i32.load offset=84
                        local.set 2
                        local.get 0
                        i32.load offset=88
                        local.set 4
                        local.get 0
                        i32.load offset=92
                        local.set 1
                        local.get 0
                        i32.const 84
                        i32.add
                        local.get 3
                        call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h8e7a8e5cedef394eE
                        call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hc3dcdadfb9a64636E
                        local.get 0
                        i32.const 84
                        i32.add
                        i32.const 132485
                        i32.const 6
                        call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6fb931f058058d2bE
                        local.set 3
                        local.get 0
                        i32.load offset=88
                        local.get 0
                        i32.load offset=92
                        call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h67c081b83f6eaa56E
                        block ;; label = @11
                          local.get 2
                          br_if 0 (;@11;)
                          call $_ZN64_$LT$C$u20$as$u20$forwarder..storage..ForwarderStorageModule$GT$17last_issued_token17hae93ee6f2b6785e1E
                          local.get 4
                          call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h6183f286297cc81aE
                          call $_ZN64_$LT$C$u20$as$u20$forwarder..storage..ForwarderStorageModule$GT$18last_error_message17hec533029d44080f7E
                          call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h845ca05802be0cafE
                          br 10 (;@1;)
                        end
                        local.get 0
                        i32.const 32
                        i32.add
                        call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17hbe3ca019e6d03cbcE
                        local.get 0
                        i32.load offset=32
                        i32.const 2147483646
                        i32.ne
                        br_if 7 (;@3;)
                        local.get 0
                        i32.load offset=36
                        local.tee 2
                        call $_ZN4core3cmp10PartialOrd2gt17hef36c8167a0b372fE
                        br_if 3 (;@7;)
                        br 7 (;@3;)
                      end
                      local.get 0
                      i32.const 168
                      i32.add
                      local.get 4
                      call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17hda197e58a47ab2cdE
                      local.get 0
                      i32.load offset=200
                      i32.eqz
                      br_if 8 (;@1;)
                      block ;; label = @10
                        local.get 0
                        i32.const 168
                        i32.add
                        i32.const 132458
                        i32.const 18
                        call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h142c6626c3f64f6dE
                        i32.eqz
                        br_if 0 (;@10;)
                        call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hc3dcdadfb9a64636E
                        i32.const 0
                        call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h85ad1c323beb7c86E
                        local.get 0
                        i32.const 0
                        i32.store offset=136
                        local.get 0
                        i32.const 84
                        i32.add
                        local.get 0
                        i32.const 136
                        i32.add
                        call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h7ee5b75b3ce1d5edE
                        local.get 0
                        i32.load offset=136
                        call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hc4b7ded9e4487706E
                        local.get 0
                        i32.load offset=84
                        local.set 2
                        local.get 0
                        i32.load offset=88
                        local.set 4
                        local.get 0
                        i32.load offset=92
                        local.set 1
                        local.get 0
                        i32.const 84
                        i32.add
                        local.get 3
                        call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h8e7a8e5cedef394eE
                        call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hc3dcdadfb9a64636E
                        local.get 0
                        i32.const 84
                        i32.add
                        i32.const 132485
                        i32.const 6
                        call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6fb931f058058d2bE
                        local.set 3
                        local.get 0
                        i32.load offset=88
                        local.get 0
                        i32.load offset=92
                        call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h67c081b83f6eaa56E
                        block ;; label = @11
                          local.get 2
                          br_if 0 (;@11;)
                          call $_ZN64_$LT$C$u20$as$u20$forwarder..storage..ForwarderStorageModule$GT$17last_issued_token17hae93ee6f2b6785e1E
                          local.get 4
                          call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h6183f286297cc81aE
                          call $_ZN64_$LT$C$u20$as$u20$forwarder..storage..ForwarderStorageModule$GT$18last_error_message17hec533029d44080f7E
                          call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h845ca05802be0cafE
                          br 10 (;@1;)
                        end
                        local.get 0
                        i32.const 40
                        i32.add
                        call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17hbe3ca019e6d03cbcE
                        local.get 0
                        i32.load offset=40
                        i32.const 2147483646
                        i32.ne
                        br_if 6 (;@4;)
                        local.get 0
                        i32.load offset=44
                        local.tee 2
                        call $_ZN4core3cmp10PartialOrd2gt17hef36c8167a0b372fE
                        br_if 4 (;@6;)
                        br 6 (;@4;)
                      end
                      local.get 0
                      i32.const 168
                      i32.add
                      local.get 4
                      call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17hda197e58a47ab2cdE
                      local.get 0
                      i32.load offset=200
                      i32.eqz
                      br_if 8 (;@1;)
                      local.get 0
                      i32.const 168
                      i32.add
                      i32.const 132592
                      i32.const 21
                      call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h142c6626c3f64f6dE
                      i32.eqz
                      br_if 4 (;@5;)
                      call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hc3dcdadfb9a64636E
                      i32.const 0
                      call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h85ad1c323beb7c86E
                      local.get 0
                      i32.const 0
                      i32.store offset=136
                      local.get 0
                      i32.const 84
                      i32.add
                      local.get 0
                      i32.const 136
                      i32.add
                      call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1a3ffed720bad731E
                      local.get 0
                      i32.load offset=136
                      call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hc4b7ded9e4487706E
                      local.get 0
                      i32.load offset=84
                      local.set 2
                      local.get 0
                      i32.load offset=92
                      local.set 1
                      local.get 0
                      i32.const 84
                      i32.add
                      local.get 3
                      call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h8e7a8e5cedef394eE
                      call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hc3dcdadfb9a64636E
                      local.get 0
                      i32.load offset=88
                      local.get 0
                      i32.load offset=92
                      call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h67c081b83f6eaa56E
                      call $_ZN64_$LT$C$u20$as$u20$forwarder..storage..ForwarderStorageModule$GT$18last_error_message17hec533029d44080f7E
                      local.set 3
                      block ;; label = @10
                        local.get 2
                        br_if 0 (;@10;)
                        local.get 3
                        call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h845ca05802be0cafE
                        br 9 (;@1;)
                      end
                      local.get 3
                      local.get 1
                      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h6183f286297cc81aE
                      br 8 (;@1;)
                    end
                    i32.const 131086
                    i32.const 25
                    i32.const 131072
                    i32.const 14
                    call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h3ab9735f83595eb8E
                    unreachable
                  end
                  local.get 4
                  local.get 2
                  call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$11direct_rewa17h8d1b94643cd60540E
                  br 5 (;@2;)
                end
                local.get 3
                local.get 2
                call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$11direct_rewa17h8d1b94643cd60540E
                br 3 (;@3;)
              end
              local.get 3
              local.get 2
              call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$11direct_rewa17h8d1b94643cd60540E
              br 1 (;@4;)
            end
            i32.const 132379
            i32.const 54
            call $signalError
            unreachable
          end
          call $_ZN64_$LT$C$u20$as$u20$forwarder..storage..ForwarderStorageModule$GT$18last_error_message17hec533029d44080f7E
          local.get 1
          call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h6183f286297cc81aE
          br 2 (;@1;)
        end
        call $_ZN64_$LT$C$u20$as$u20$forwarder..storage..ForwarderStorageModule$GT$18last_error_message17hec533029d44080f7E
        local.get 1
        call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h6183f286297cc81aE
        br 1 (;@1;)
      end
      call $_ZN64_$LT$C$u20$as$u20$forwarder..storage..ForwarderStorageModule$GT$18last_error_message17hec533029d44080f7E
      local.get 1
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h6183f286297cc81aE
    end
    local.get 0
    i32.const 208
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17compiler_builtins3mem6memcmp17h7af645c26ac3e8dcE (;366;) (type 5) (param i32 i32 i32) (result i32)
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
  (func $memcpy (;367;) (type 5) (param i32 i32 i32) (result i32)
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
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 4
      i32.add
      local.set 5
      block ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        local.get 1
        local.set 6
        loop ;; label = @3
          local.get 3
          local.get 6
          i32.load8_u
          i32.store8
          local.get 6
          i32.const 1
          i32.add
          local.set 6
          local.get 3
          i32.const 1
          i32.add
          local.tee 3
          local.get 5
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 5
      local.get 2
      local.get 4
      i32.sub
      local.tee 7
      i32.const -4
      i32.and
      local.tee 8
      i32.add
      local.set 3
      block ;; label = @2
        block ;; label = @3
          local.get 1
          local.get 4
          i32.add
          local.tee 9
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.const 1
          i32.lt_s
          br_if 1 (;@2;)
          local.get 9
          i32.const 3
          i32.shl
          local.tee 6
          i32.const 24
          i32.and
          local.set 2
          local.get 9
          i32.const -4
          i32.and
          local.tee 10
          i32.const 4
          i32.add
          local.set 1
          i32.const 0
          local.get 6
          i32.sub
          i32.const 24
          i32.and
          local.set 4
          local.get 10
          i32.load
          local.set 6
          loop ;; label = @4
            local.get 5
            local.get 6
            local.get 2
            i32.shr_u
            local.get 1
            i32.load
            local.tee 6
            local.get 4
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
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 8
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        local.get 9
        local.set 1
        loop ;; label = @3
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
          br_if 0 (;@3;)
        end
      end
      local.get 7
      i32.const 3
      i32.and
      local.set 2
      local.get 9
      local.get 8
      i32.add
      local.set 1
    end
    block ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 2
      i32.add
      local.set 5
      loop ;; label = @2
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
        local.tee 3
        local.get 5
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0
  )
  (func $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E (;368;) (type 11)
    call $rust_begin_unwind
    unreachable
  )
  (table (;0;) 1 1 funcref)
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 143213)
  (global (;2;) i32 i32.const 143216)
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
  (export "forward_transf_execu_accept_funds_with_fees" (func $forward_transf_execu_accept_funds_with_fees))
  (export "forward_transf_exec_accept_funds_twice" (func $forward_transf_exec_accept_funds_twice))
  (export "forward_transf_exec_accept_funds_return_values" (func $forward_transf_exec_accept_funds_return_values))
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
  (data $.rodata (;0;) (i32.const 131072) "input too longserializer decode error: DCDTLocalBurnDCDTNFTBurnDCDTLocalMintDCDTNFTAddQuantityDCDTNFTCreateChangeOwnerAddressDCDTNFTAddURIDCDTNFTUpdateAttributes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00incorrect number of DCDT transfersargument decode error (): function does not accept DCDT paymenttoo few argumentstoo many argumentswrong number of argumentscannot subtract because result would be negativefalsetruecanFreezecanWipecanPausecanTransferNFTCreateRolecanMintcanBurncanChangeOwnercanUpgradecanAddSpecialRolessetSpecialRoleunSetSpecialRole#3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0230\00\00\00\00\00\00\00\00\00\02\ff\ffissueissueNonFungibleissueSemiFungibleregisterMetaDCDTMultiDCDTNFTTransferDCDTNFTTransferDCDTTransferinit resultrecipient address not setCB_CLOSUREsync resultinput too shortManagedVec index out of rangeerror decoding DCDT attributes: DCDT expectedREWA.iteminvalid valuestorage decode error: .lenbad array lengthvar argsinput out of rangesendcreatecall_countsaccept_fundsreject_fundsecho_argumentsretrieve_fundsget_owner_addressaccept_funds_echo_paymentretrieve_funds_with_transfer_execlastIssuedTokenlastErrorMessageaccept_funds_sync_resultecho_arguments_sync_resultcallback_dataretrieve_funds_callbackecho_args_callbacksend_funds_twice_callbackcb_amounttoken_identifiertoresultargsindextoken_paymentssuccesserroropt_argsource_addressno callback function with that name exists in contractchild_sc_addressnew_ownernft_issue_callbackcoloruriscallernew_attributesargumentsattrs_argorig_attr != decoded_attrsft_issue_callbackdcdt_issue_callbackaddresschange_roles_callbackrolesaccept_funds_func\00\05\00\00\00\10\00\00\00\11\00\00\00\10\00\00\00\00\00\00\00=\02\02\00B\02\02\00R\02\02\00c\02\02\00\b0\07\02\00\c0\06\02\00\dc\06\02\00\f8\06\02\00\14\07\02\004\07\02\00L\07\02\00h\07\02\00\8c\07\02\00\a4\07\02\00\bc\06\02\00\d8\06\02\00\f4\06\02\00\10\07\02\000\07\02\00H\07\02\00d\07\02\00\88\07\02\00\a0\07\02\00fungible DCDT token expectedindex out of range\00\00\b0\07\02\00\00\00\00\00DCDTRoleLocalMint\00\00\00\c4\06\02\00\11\00\00\00DCDTRoleLocalBurn\00\00\00\e0\06\02\00\11\00\00\00DCDTRoleNFTCreate\00\00\00\fc\06\02\00\11\00\00\00DCDTRoleNFTAddQuantity\00\00\18\07\02\00\16\00\00\00DCDTRoleNFTBurn\008\07\02\00\0f\00\00\00DCDTRoleNFTAddURI\00\00\00P\07\02\00\11\00\00\00DCDTRoleNFTUpdateAttributes\00l\07\02\00\1b\00\00\00DCDTTransferRole\90\07\02\00\10\00\00\00\01\02\03\04\05\06\07\08panic occurred\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00 \00\00\00\00\00\00\00@\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00")
  (data $.data (;1;) (i32.const 133128) "\9c\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.76.0-nightly (d86d65bbc 2023-12-10)")
  )
)