(module $forwarder_wasm.wasm
  (type (;0;) (func (param i32 i64)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i32 i32 i64 i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
  (type (;7;) (func (param i64 i32 i32 i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32)))
  (type (;9;) (func (param i32) (result i32)))
  (type (;10;) (func (param i32 i32 i32 i64 i32)))
  (type (;11;) (func (param i64) (result i32)))
  (type (;12;) (func (param i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;13;) (func (param i32) (result i64)))
  (type (;14;) (func))
  (type (;15;) (func (result i64)))
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
  (import "env" "mBufferEq" (func $mBufferEq (;5;) (type 4)))
  (import "env" "managedTransferValueExecute" (func $managedTransferValueExecute (;6;) (type 5)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;7;) (type 6)))
  (import "env" "managedExecuteOnDestContext" (func $managedExecuteOnDestContext (;8;) (type 7)))
  (import "env" "managedMultiTransferDCDTNFTExecute" (func $managedMultiTransferDCDTNFTExecute (;9;) (type 5)))
  (import "env" "managedCaller" (func $managedCaller (;10;) (type 8)))
  (import "env" "managedSCAddress" (func $managedSCAddress (;11;) (type 8)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;12;) (type 9)))
  (import "env" "bigIntGetDCDTExternalBalance" (func $bigIntGetDCDTExternalBalance (;13;) (type 10)))
  (import "env" "bigIntNew" (func $bigIntNew (;14;) (type 11)))
  (import "env" "managedGetDCDTTokenData" (func $managedGetDCDTTokenData (;15;) (type 12)))
  (import "env" "bigIntGetCallValue" (func $bigIntGetCallValue (;16;) (type 8)))
  (import "env" "managedGetMultiDCDTCallValue" (func $managedGetMultiDCDTCallValue (;17;) (type 8)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;18;) (type 4)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;19;) (type 6)))
  (import "env" "managedSignalError" (func $managedSignalError (;20;) (type 8)))
  (import "env" "getNumDCDTTransfers" (func $getNumDCDTTransfers (;21;) (type 3)))
  (import "env" "smallIntGetUnsignedArgument" (func $smallIntGetUnsignedArgument (;22;) (type 13)))
  (import "env" "getNumArguments" (func $getNumArguments (;23;) (type 3)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;24;) (type 9)))
  (import "env" "bigIntSub" (func $bigIntSub (;25;) (type 1)))
  (import "env" "managedGetOriginalTxHash" (func $managedGetOriginalTxHash (;26;) (type 8)))
  (import "env" "cleanReturnData" (func $cleanReturnData (;27;) (type 14)))
  (import "env" "getGasLeft" (func $getGasLeft (;28;) (type 15)))
  (import "env" "bigIntTDiv" (func $bigIntTDiv (;29;) (type 1)))
  (import "env" "bigIntMul" (func $bigIntMul (;30;) (type 1)))
  (import "env" "mBufferCopyByteSlice" (func $mBufferCopyByteSlice (;31;) (type 16)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;32;) (type 4)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;33;) (type 4)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;34;) (type 4)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;35;) (type 4)))
  (import "env" "bigIntGetUnsignedArgument" (func $bigIntGetUnsignedArgument (;36;) (type 2)))
  (import "env" "managedWriteLog" (func $managedWriteLog (;37;) (type 2)))
  (import "env" "finish" (func $finish (;38;) (type 2)))
  (import "env" "managedCreateContract" (func $managedCreateContract (;39;) (type 17)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;40;) (type 14)))
  (import "env" "smallIntFinishUnsigned" (func $smallIntFinishUnsigned (;41;) (type 18)))
  (import "env" "bigIntFinishUnsigned" (func $bigIntFinishUnsigned (;42;) (type 8)))
  (import "env" "managedDeployFromSourceContract" (func $managedDeployFromSourceContract (;43;) (type 17)))
  (import "env" "managedUpgradeContract" (func $managedUpgradeContract (;44;) (type 19)))
  (import "env" "managedUpgradeFromSourceContract" (func $managedUpgradeFromSourceContract (;45;) (type 19)))
  (import "env" "getCurrentDCDTNFTNonce" (func $getCurrentDCDTNFTNonce (;46;) (type 20)))
  (import "env" "getDCDTLocalRoles" (func $getDCDTLocalRoles (;47;) (type 13)))
  (import "env" "smallIntFinishSigned" (func $smallIntFinishSigned (;48;) (type 18)))
  (import "env" "managedIsDCDTFrozen" (func $managedIsDCDTFrozen (;49;) (type 21)))
  (import "env" "managedIsDCDTPaused" (func $managedIsDCDTPaused (;50;) (type 9)))
  (import "env" "managedIsDCDTLimitedTransfer" (func $managedIsDCDTLimitedTransfer (;51;) (type 9)))
  (import "env" "validateTokenIdentifier" (func $validateTokenIdentifier (;52;) (type 9)))
  (import "env" "bigIntCmp" (func $bigIntCmp (;53;) (type 4)))
  (import "env" "mBufferGetBytes" (func $mBufferGetBytes (;54;) (type 4)))
  (import "env" "bigIntSign" (func $bigIntSign (;55;) (type 9)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;56;) (type 16)))
  (import "env" "managedAsyncCall" (func $managedAsyncCall (;57;) (type 22)))
  (func $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h28c8a67147b84629E (;58;) (type 9) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    i64.const 0
    call $bigIntSetInt64
    local.get 1
    local.get 1
    local.get 0
    call $bigIntAdd
    local.get 1
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E (;59;) (type 3) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=133064
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=133064
    local.get 0
  )
  (func $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17h30aeb24fc62d4365E (;60;) (type 14)
    i32.const 132493
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd606c742c7f1e42eE (;61;) (type 22) (param i32 i32 i32 i32)
    block ;; label = @1
      local.get 1
      local.get 3
      i32.le_u
      br_if 0 (;@1;)
      local.get 1
      local.get 3
      call $_ZN4core5slice5index22slice_index_order_fail17h203c6e1b4907093dE
      unreachable
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN4core5slice5index22slice_index_order_fail17h203c6e1b4907093dE (;62;) (type 2) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17hb859252f4b513814E
    unreachable
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8c610c1e598ecf95E (;63;) (type 9) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2642a594751154c9E (;64;) (type 9) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.set 2
    local.get 1
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7374e74010601811E
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
      call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d7d0fb54c6b8c1cE
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
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8c610c1e598ecf95E
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4a8d25352f4fdc92E
      br 0 (;@1;)
    end
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E (;65;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    i32.const 1
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7374e74010601811E (;66;) (type 9) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d7d0fb54c6b8c1cE (;67;) (type 2) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h768bd448f1eaef60E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4a8d25352f4fdc92E (;68;) (type 2) (param i32 i32)
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
  (func $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd0b752d83f0c99b9E (;69;) (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $mBufferEq
    i32.const 0
    i32.gt_s
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h12867aa22c1beb9fE (;70;) (type 14)
    call $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17h30aeb24fc62d4365E
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_local_burn17h8c60213153b3f191E (;71;) (type 23) (param i32 i64 i32)
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
        i32.const 131348
        i32.const 13
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
        local.get 3
        i32.const 8
        i32.add
        local.get 3
        i32.load offset=16
        local.get 3
        i32.load offset=20
        local.get 0
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h316959d590b35e7dE
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
      i32.const 131361
      i32.const 11
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
      local.get 3
      i32.const 32
      i32.add
      local.get 3
      i32.load offset=40
      local.get 3
      i32.load offset=44
      local.get 0
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h316959d590b35e7dE
      local.get 3
      i32.const 24
      i32.add
      local.get 3
      i32.load offset=32
      local.get 3
      i32.load offset=36
      local.get 1
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hb49d3e4945570296E
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h44f68a3aa260c2deE
    local.get 3
    i32.load
    local.get 3
    i32.load offset=4
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17hee4535e9504564a7E
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE (;72;) (type 1) (param i32 i32 i32)
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h954e3eb7c7c8dac7E
    local.set 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h316959d590b35e7dE (;73;) (type 22) (param i32 i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    drop
    local.get 2
    local.get 3
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8c610c1e598ecf95E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4a8d25352f4fdc92E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hb49d3e4945570296E (;74;) (type 24) (param i32 i32 i32 i64)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h329aa3c4c96580d1E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h44f68a3aa260c2deE (;75;) (type 22) (param i32 i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    drop
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17he028281ef4410467E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4a8d25352f4fdc92E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17hee4535e9504564a7E (;76;) (type 2) (param i32 i32)
    (local i64)
    call $getGasLeft
    local.set 2
    i32.const -30
    call $managedSCAddress
    local.get 2
    i32.const -30
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h8b79aa6bcab6cacbE
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17hc3be6bc89c88f62cE
    drop
    call $cleanReturnData
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_local_mint17hdfa1d8a682b60a13E (;77;) (type 23) (param i32 i64 i32)
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
        i32.const 131372
        i32.const 13
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
        local.get 3
        i32.const 8
        i32.add
        local.get 3
        i32.load offset=16
        local.get 3
        i32.load offset=20
        local.get 0
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h316959d590b35e7dE
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
      i32.const 131385
      i32.const 18
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
      local.get 3
      i32.const 32
      i32.add
      local.get 3
      i32.load offset=40
      local.get 3
      i32.load offset=44
      local.get 0
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h316959d590b35e7dE
      local.get 3
      i32.const 24
      i32.add
      local.get 3
      i32.load offset=32
      local.get 3
      i32.load offset=36
      local.get 1
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hb49d3e4945570296E
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h44f68a3aa260c2deE
    local.get 3
    i32.load
    local.get 3
    i32.load offset=4
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17hee4535e9504564a7E
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_nft_create17h637ede7ea4b55a7bE (;78;) (type 25) (param i32 i32 i32 i32 i32 i32 i32) (result i64)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 7
    global.set $__stack_pointer
    local.get 7
    i32.const 72
    i32.add
    i32.const 131403
    i32.const 13
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
    local.get 7
    i32.const 64
    i32.add
    local.get 7
    i32.load offset=72
    local.get 7
    i32.load offset=76
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h316959d590b35e7dE
    local.get 7
    i32.const 56
    i32.add
    local.get 7
    i32.load offset=64
    local.get 7
    i32.load offset=68
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h44f68a3aa260c2deE
    local.get 7
    i32.const 48
    i32.add
    local.get 7
    i32.load offset=56
    local.get 7
    i32.load offset=60
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17he18c885c93f5d14dE
    local.get 7
    i32.const 40
    i32.add
    local.get 7
    i32.load offset=48
    local.get 7
    i32.load offset=52
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h44f68a3aa260c2deE
    local.get 7
    i32.const 32
    i32.add
    local.get 7
    i32.load offset=40
    local.get 7
    i32.load offset=44
    local.get 4
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17he18c885c93f5d14dE
    local.get 7
    i32.const 24
    i32.add
    local.get 7
    i32.load offset=32
    local.get 7
    i32.load offset=36
    local.get 5
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h6b77cd7b34b30352E
    local.get 7
    i32.load offset=28
    local.set 0
    local.get 7
    i32.load offset=24
    local.set 1
    block ;; label = @1
      block ;; label = @2
        local.get 6
        i32.load
        local.tee 2
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h702424924261bfccE
        br_if 0 (;@2;)
        local.get 7
        local.get 2
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7374e74010601811E
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
          call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d7d0fb54c6b8c1cE
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
          call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17he18c885c93f5d14dE
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
      call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h43f34474d9a2ace3E
      local.get 7
      i32.load offset=4
      local.set 0
      local.get 7
      i32.load
      local.set 1
    end
    local.get 1
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17ha0115b638e15f9a6E
    local.set 8
    local.get 7
    i32.const 96
    i32.add
    global.set $__stack_pointer
    local.get 8
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17he18c885c93f5d14dE (;79;) (type 22) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h04d64d755dd61c2eE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h6b77cd7b34b30352E (;80;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8c610c1e598ecf95E
    local.set 4
    local.get 3
    i32.load8_u
    local.get 4
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h90235a7054103ac2E
    local.get 3
    i32.load8_u offset=1
    local.get 4
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h90235a7054103ac2E
    local.get 3
    i32.load8_u offset=2
    local.get 4
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h90235a7054103ac2E
    local.get 2
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4a8d25352f4fdc92E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h702424924261bfccE (;81;) (type 9) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7374e74010601811E
    i32.eqz
  )
  (func $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h43f34474d9a2ace3E (;82;) (type 1) (param i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.tee 3
    i32.const 1
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4a8d25352f4fdc92E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17ha0115b638e15f9a6E (;83;) (type 26) (param i32 i32) (result i64)
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
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h8b79aa6bcab6cacbE
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17hc3be6bc89c88f62cE
    local.set 1
    call $cleanReturnData
    local.get 2
    local.get 1
    i32.store
    local.get 2
    i32.const 4
    i32.add
    local.get 2
    call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2642a594751154c9E
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h2d923a47c3d446c6E
    local.get 2
    i32.const 4
    i32.add
    i32.const 131740
    i32.const 11
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h4a315ba7f983e284E
    local.set 3
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$28transfer_dcdt_via_async_call17h32c7d42332c5f09aE (;84;) (type 27) (param i32 i32 i64 i32)
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h3e1c130006594172E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h3e1c130006594172E (;85;) (type 8) (param i32)
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
    call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hf5e126a000ddfdbaE
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment22tx_payment_single_dcdt252_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h0037fa9a83c24a8aE
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17h24b3c0ff9814d097E (;86;) (type 22) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17h49538655f86aab68E
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17h49538655f86aab68E (;87;) (type 22) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $managedAsyncCall
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$19direct_rewa_execute17hf37078368637e615E (;88;) (type 28) (param i32 i32 i64 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $managedTransferValueExecute
    drop
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21transfer_dcdt_execute17h47f0d885fbb79ce8E (;89;) (type 29) (param i32 i32 i32 i64 i32 i32)
    local.get 0
    local.get 1
    i64.const 0
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17h1626e39c56ea58eaE
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17h1626e39c56ea58eaE (;90;) (type 30) (param i32 i32 i64 i32 i64 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 7
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.set 8
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8c610c1e598ecf95E
    local.set 1
    local.get 7
    local.get 3
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h28c8a67147b84629E
    i32.store offset=12
    local.get 7
    local.get 2
    i64.store
    local.get 7
    local.get 1
    i32.store offset=8
    local.get 8
    local.get 7
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h9ac22400721cdddfE
    local.get 0
    local.get 8
    local.get 4
    local.get 5
    local.get 6
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27multi_dcdt_transfer_execute17h0ef1097133534936E
    local.get 7
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17hd4209dd883b83ed6E (;91;) (type 8) (param i32)
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h9ac22400721cdddfE (;92;) (type 2) (param i32 i32)
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
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27multi_dcdt_transfer_execute17h0ef1097133534936E (;93;) (type 28) (param i32 i32 i64 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $managedMultiTransferDCDTNFTExecute
    drop
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17hc3be6bc89c88f62cE (;94;) (type 31) (param i64 i32 i32 i32 i32) (result i32)
    (local i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 5
    call $managedExecuteOnDestContext
    drop
    local.get 5
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h3e8c731c5521fc0bE (;95;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    call $managedCaller
    local.get 0
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hab6fdc55770704d5E (;96;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    call $managedSCAddress
    local.get 0
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$16get_dcdt_balance17he21dba552bdee81cE (;97;) (type 21) (param i32 i32 i64) (result i32)
    (local i32 i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.set 3
    local.get 1
    call $mBufferGetLength
    local.set 4
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node26unsafe_buffer_load_address17hd45b698bfdacadf0E
    local.get 1
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node35unsafe_buffer_load_token_identifier17hab97fc9a139ece1cE
    i32.const 143085
    i32.const 143117
    local.get 4
    local.get 2
    local.get 3
    call $bigIntGetDCDTExternalBalance
    local.get 3
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node26unsafe_buffer_load_address17hd45b698bfdacadf0E (;98;) (type 8) (param i32)
    local.get 0
    i32.const 143085
    call $mBufferGetBytes
    drop
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node35unsafe_buffer_load_token_identifier17hab97fc9a139ece1cE (;99;) (type 8) (param i32)
    local.get 0
    i32.const 143117
    call $mBufferGetBytes
    drop
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$19get_dcdt_token_data17haea5a39b71696af0E (;100;) (type 24) (param i32 i32 i32 i64)
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
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hd40beec169d1bb3bE
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hd40beec169d1bb3bE (;101;) (type 16) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17hfc56ef8b9f218556E (;102;) (type 3) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 0
      i32.load8_u offset=143080
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
    i32.store8 offset=143080
    i32.const -11
    call $bigIntGetCallValue
    i32.const -11
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h4a8c391d7e1ba5f1E (;103;) (type 3) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 0
      i32.load8_u offset=143084
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
    i32.store8 offset=143084
    i32.const -21
    call $managedGetMultiDCDTCallValue
    i32.const -21
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h5df87f3816375d02E (;104;) (type 8) (param i32)
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
            call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h4a8c391d7e1ba5f1E
            local.tee 2
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h6add63fea2b44796E
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          i32.const 131143
          i32.const 34
          call $signalError
          unreachable
        end
        local.get 0
        call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17hfc56ef8b9f218556E
        call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h28c8a67147b84629E
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
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17hbd43c146bf1fc57cE
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h6add63fea2b44796E (;105;) (type 9) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7374e74010601811E
    i32.const 4
    i32.shr_u
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17hbd43c146bf1fc57cE (;106;) (type 2) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h768bd448f1eaef60E
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
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h53db2b2bf571a2d4E
    local.set 3
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17hbe7ae178b7e7042dE
    local.set 4
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h53db2b2bf571a2d4E
    local.set 5
    block ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131766
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
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17h522dba0ae3fbe43aE (;107;) (type 8) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h5df87f3816375d02E
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
    i32.const 132684
    i32.const 28
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hbd471454aa7dc600E (;108;) (type 9) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17ha0f12deeccb15319E (;109;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131177
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h954e3eb7c7c8dac7E
    local.tee 4
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 4
    i32.const 131200
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h954e3eb7c7c8dac7E (;110;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h3d33677909886f9dE (;111;) (type 14)
    block ;; label = @1
      call $getNumDCDTTransfers
      br_if 0 (;@1;)
      return
    end
    i32.const 131203
    i32.const 37
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h01979e1879a26a5fE (;112;) (type 2) (param i32 i32)
    (local i32)
    i32.const 0
    local.set 2
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load
        i32.const 0
        i32.load offset=143076
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 1
        local.set 2
        br 1 (;@1;)
      end
      local.get 1
      i32.const 132062
      i32.const 7
      call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1139d57a3d01deccE
      local.set 1
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1139d57a3d01deccE (;113;) (type 6) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h6f29005711ae967dE
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hbd471454aa7dc600E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1e08fd7e1add7819E (;114;) (type 2) (param i32 i32)
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
          call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h06ca1c56bc7a15edE
          local.tee 3
          i32.const 28523
          i32.eq
          br_if 0 (;@3;)
          local.get 3
          br_if 1 (;@2;)
        end
        local.get 1
        i32.const 132342
        i32.const 6
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1139d57a3d01deccE
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
          i32.load offset=143076
          i32.lt_s
          br_if 0 (;@3;)
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
          local.set 1
          br 1 (;@2;)
        end
        local.get 1
        i32.const 132342
        i32.const 6
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1139d57a3d01deccE
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
  (func $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h06ca1c56bc7a15edE (;115;) (type 9) (param i32) (result i32)
    (local i64)
    block ;; label = @1
      local.get 0
      i32.const 132342
      i32.const 6
      call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h6f29005711ae967dE
      call $smallIntGetUnsignedArgument
      local.tee 1
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 132342
      i32.const 6
      i32.const 131072
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17ha0f12deeccb15319E
      unreachable
    end
    local.get 1
    i32.wrap_i64
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h26aa0434cd6bd691E (;116;) (type 6) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h4082b8aa2a34de6dE
  )
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h4082b8aa2a34de6dE (;117;) (type 6) (param i32 i32 i32) (result i32)
    block ;; label = @1
      local.get 0
      local.get 1
      local.get 2
      call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hc984367a4a982dc8E
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8c610c1e598ecf95E
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131893
      i32.const 16
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17ha0f12deeccb15319E
      unreachable
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h2a6f38826cb51f45E (;118;) (type 9) (param i32) (result i32)
    local.get 0
    i32.const 132326
    i32.const 16
    call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hc984367a4a982dc8E
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8c610c1e598ecf95E
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h4be7bb54fd9b0632E
  )
  (func $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hc984367a4a982dc8E (;119;) (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    i32.load offset=8
    local.set 4
    local.get 3
    i32.const 0
    i32.store offset=12
    block ;; label = @1
      local.get 0
      i32.load
      local.get 4
      i32.const 2
      i32.shl
      local.get 3
      i32.const 12
      i32.add
      i32.const 4
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h768bd448f1eaef60E
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
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8c610c1e598ecf95E
      local.set 2
      local.get 3
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 2
      return
    end
    local.get 1
    local.get 2
    i32.const 131240
    i32.const 17
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17ha0f12deeccb15319E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h4be7bb54fd9b0632E (;120;) (type 9) (param i32) (result i32)
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
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hd40beec169d1bb3bE
      drop
      i32.const 2147483646
      local.get 0
      local.get 1
      i32.const 12
      i32.add
      i32.const 4
      i32.const 131840
      i32.const 4
      call $_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17ha7077cd3fbbbdff4E
      select
      local.set 0
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h2f8aea97a02a07e8E (;121;) (type 2) (param i32 i32)
    (local i32 i32 i32 i64 i32)
    local.get 1
    i32.const 132484
    i32.const 9
    call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h6f29005711ae967dE
    call $_ZN129_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h75554989bc53e382E
    local.set 2
    local.get 1
    i32.const 132484
    i32.const 9
    call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1139d57a3d01deccE
    local.set 3
    local.get 1
    i32.const 132484
    i32.const 9
    call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1139d57a3d01deccE
    local.set 4
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.const 132484
          i32.const 9
          call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h6f29005711ae967dE
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
        i32.const 132484
        i32.const 9
        i32.const 131917
        i32.const 18
        call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17ha0f12deeccb15319E
        unreachable
      end
      i32.const 1
      local.set 6
    end
    local.get 0
    local.get 1
    i32.const 132484
    i32.const 9
    call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1139d57a3d01deccE
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
  (func $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h6f29005711ae967dE (;122;) (type 6) (param i32 i32 i32) (result i32)
    (local i32)
    block ;; label = @1
      local.get 0
      i32.load
      local.tee 3
      i32.const 0
      i32.load offset=143076
      i32.lt_s
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131240
      i32.const 17
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17ha0f12deeccb15319E
      unreachable
    end
    local.get 0
    local.get 3
    i32.const 1
    i32.add
    i32.store
    local.get 3
  )
  (func $_ZN129_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h75554989bc53e382E (;123;) (type 9) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $bigIntGetUnsignedArgument
    local.get 1
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h507253d2877c92ffE (;124;) (type 9) (param i32) (result i32)
    local.get 0
    i32.const 132317
    i32.const 9
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17ha10ae041da982dc1E
  )
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17ha10ae041da982dc1E (;125;) (type 6) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hc984367a4a982dc8E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h1ee5c52b6b284981E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h760400bd3ef8f7dcE (;126;) (type 2) (param i32 i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 2
    block ;; label = @1
      block ;; label = @2
        local.get 1
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h06ca1c56bc7a15edE
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
        i32.load offset=143076
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 1
        local.set 2
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
        local.set 4
        br 1 (;@1;)
      end
      i32.const 1
      local.set 2
      local.get 1
      i32.const 132342
      i32.const 6
      call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1139d57a3d01deccE
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h7923a7b5a1223379E (;127;) (type 2) (param i32 i32)
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
          call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h06ca1c56bc7a15edE
          local.tee 3
          i32.const 28523
          i32.eq
          br_if 0 (;@3;)
          local.get 3
          br_if 1 (;@2;)
        end
        local.get 1
        i32.const 132342
        i32.const 6
        call $_ZN168_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h555d10a73d2a594cE
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
          i32.load offset=143076
          i32.lt_s
          br_if 0 (;@3;)
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
          local.set 1
          br 1 (;@2;)
        end
        local.get 1
        i32.const 132342
        i32.const 6
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1139d57a3d01deccE
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
  (func $_ZN168_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h555d10a73d2a594cE (;128;) (type 6) (param i32 i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.set 3
    loop (result i32) ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load
        i32.const 0
        i32.load offset=143076
        i32.lt_s
        br_if 0 (;@2;)
        local.get 3
        return
      end
      local.get 3
      local.get 0
      local.get 1
      local.get 2
      call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1139d57a3d01deccE
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4a8d25352f4fdc92E
      br 0 (;@1;)
    end
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hd725b8003e3d8d90E (;129;) (type 6) (param i32 i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.set 3
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.load
        i32.const 0
        i32.load offset=143076
        i32.ge_s
        br_if 1 (;@1;)
        local.get 3
        local.get 0
        local.get 1
        local.get 2
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1139d57a3d01deccE
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4a8d25352f4fdc92E
        br 0 (;@2;)
      end
    end
    local.get 3
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hdc5b09e71e2ad3d1E (;130;) (type 6) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN168_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h555d10a73d2a594cE
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E (;131;) (type 6) (param i32 i32 i32) (result i32)
    block ;; label = @1
      local.get 0
      call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hbd471454aa7dc600E
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131893
      i32.const 16
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17ha0f12deeccb15319E
      unreachable
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h204d7a5be78aa0c9E (;132;) (type 3) (result i32)
    i32.const 1
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hbd471454aa7dc600E
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h4be7bb54fd9b0632E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h406bc68df20c3ca5E (;133;) (type 9) (param i32) (result i32)
    local.get 0
    call $_ZN129_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h75554989bc53e382E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE (;134;) (type 9) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hbd471454aa7dc600E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17haa714cb2216f2613E (;135;) (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hbd471454aa7dc600E
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
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h78ca4a956284d228E
    local.set 0
    local.get 3
    i32.const 12
    i32.add
    local.get 1
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h78ca4a956284d228E
    local.set 4
    local.get 3
    i32.const 12
    i32.add
    local.get 1
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h78ca4a956284d228E
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
        i32.store offset=143068
        i32.const 0
        i32.const 0
        i32.store8 offset=143072
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
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17ha0f12deeccb15319E
    unreachable
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h78ca4a956284d228E (;136;) (type 6) (param i32 i32 i32) (result i32)
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
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h0f7bb0cf8001bd3aE
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h97454e9257ac4f3aE
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hab47ef385f7e2d67E (;137;) (type 3) (result i32)
    (local i64)
    block ;; label = @1
      i32.const 0
      call $smallIntGetUnsignedArgument
      local.tee 0
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 132348
      i32.const 5
      i32.const 131072
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17ha0f12deeccb15319E
      unreachable
    end
    local.get 0
    i32.wrap_i64
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hfdcd0b7e69c5d976E (;138;) (type 13) (param i32) (result i64)
    local.get 0
    call $smallIntGetUnsignedArgument
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hbd3a9446c91f216eE (;139;) (type 8) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=143076
      local.get 0
      i32.gt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131257
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hee2d5993d501ea98E (;140;) (type 2) (param i32 i32)
    block ;; label = @1
      local.get 1
      local.get 0
      i32.lt_u
      br_if 0 (;@1;)
      return
    end
    i32.const 131257
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE (;141;) (type 8) (param i32)
    block ;; label = @1
      call $getNumArguments
      local.get 0
      i32.ne
      br_if 0 (;@1;)
      return
    end
    i32.const 131275
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hb37baba980227158E (;142;) (type 8) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=143076
      local.get 0
      i32.lt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131240
    i32.const 17
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb9581b71ea6307f7E (;143;) (type 14)
    i32.const 0
    call $getNumArguments
    i32.store offset=143076
  )
  (func $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h2d923a47c3d446c6E (;144;) (type 2) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h4a4d85400d779e61E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h4a4d85400d779e61E (;145;) (type 9) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7374e74010601811E
    i32.const 2
    i32.shr_u
  )
  (func $_ZN11dharitri_sc2io6finish12finish_multi17h530cff12d8a3838eE (;146;) (type 8) (param i32)
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
  (func $_ZN11dharitri_sc2io6finish12finish_multi17h71bc99a01c8660d6E (;147;) (type 8) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7374e74010601811E
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d7d0fb54c6b8c1cE
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
  (func $_ZN11dharitri_sc3api13managed_types11big_int_api13BigIntApiImpl15bi_sub_unsigned17h9091f5473e977c60E (;148;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $bigIntSub
    block ;; label = @1
      local.get 0
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$7bi_sign17h80468100f519116eE
      i32.const 255
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      return
    end
    i32.const 131300
    i32.const 48
    call $signalError
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$7bi_sign17h80468100f519116eE (;149;) (type 9) (param i32) (result i32)
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
  (func $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h1475aa4f5a729ee9E (;150;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h77f793b5776f1082E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h77f793b5776f1082E (;151;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h55b360d53dcc25edE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h410076831e3e679cE (;152;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h53c4d257efb4ec02E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h53c4d257efb4ec02E (;153;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction9annotated14AnnotatedValue14with_value_ref17h773ee5786c43983cE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h2244e6c67814e0b0E (;154;) (type 1) (param i32 i32 i32)
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h8b79aa6bcab6cacbE
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h357a63c11a2e5ff0E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h8b79aa6bcab6cacbE (;155;) (type 3) (result i32)
    i32.const -10
    i64.const 0
    call $bigIntSetInt64
    i32.const -10
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h357a63c11a2e5ff0E (;156;) (type 22) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17h24b3c0ff9814d097E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt398_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized17h3fd3e655b588e291E (;157;) (type 32) (param i32 i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized17h5c5a3f326892ff82E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized17h5c5a3f326892ff82E (;158;) (type 32) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load
          local.tee 7
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h6add63fea2b44796E
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
        local.get 3
        local.get 6
        i32.const 24
        i32.add
        call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h24e86a2430ca8883E
        unreachable
      end
      local.get 3
      local.get 4
      local.get 5
      call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h1475aa4f5a729ee9E
      unreachable
    end
    local.get 6
    i32.const 24
    i32.add
    local.get 7
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17hbd43c146bf1fc57cE
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h2e6282c771d85b15E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt398_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$24perform_transfer_execute17ha00b4267174f5cf5E (;159;) (type 28) (param i32 i32 i64 i32 i32)
    local.get 1
    local.get 0
    local.get 2
    local.get 3
    local.get 4
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27multi_dcdt_transfer_execute17h0ef1097133534936E
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h24e86a2430ca8883E (;160;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h750639eaa2e92d6bE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h2e6282c771d85b15E (;161;) (type 32) (param i32 i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h17d97bb37d4f57deE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h7a1a430f662f48b8E (;162;) (type 2) (param i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17hf9d14ad6b3bf767dE
    local.get 2
    i32.load offset=12
    local.set 0
    local.get 2
    i32.load offset=8
    local.set 2
    call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h0e3ab51351132499E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h8b79aa6bcab6cacbE
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h357a63c11a2e5ff0E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17hf9d14ad6b3bf767dE (;163;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 48
    i32.add
    i32.const 131693
    i32.const 20
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
    local.get 5
    i32.load offset=48
    local.set 6
    local.get 5
    i32.load offset=52
    local.tee 7
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h3053bd77437cc4bbE
    local.get 5
    i32.const 40
    i32.add
    local.get 6
    local.get 7
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h6add63fea2b44796E
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h89bbd7bf91545d74E
    local.get 5
    i32.load offset=44
    local.set 6
    local.get 5
    i32.load offset=40
    local.set 7
    local.get 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7374e74010601811E
    local.set 8
    local.get 5
    i32.const 64
    i32.add
    local.set 9
    i32.const 0
    local.set 3
    loop ;; label = @1
      block ;; label = @2
        local.get 3
        i32.const 16
        i32.add
        local.tee 10
        local.get 8
        i32.le_u
        br_if 0 (;@2;)
        local.get 5
        i32.const 8
        i32.add
        local.get 7
        local.get 6
        local.get 1
        local.get 2
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h01778c27f43e489bE
        local.get 5
        i32.load offset=12
        local.set 3
        local.get 0
        local.get 5
        i32.load offset=8
        i32.store
        local.get 0
        local.get 3
        i32.store offset=4
        local.get 5
        i32.const 80
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 9
      i64.const 0
      i64.store
      local.get 5
      i64.const 0
      i64.store offset=56
      local.get 4
      local.get 3
      local.get 5
      i32.const 56
      i32.add
      i32.const 16
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h768bd448f1eaef60E
      drop
      local.get 5
      i32.const 0
      i32.store offset=76
      local.get 5
      i32.const 56
      i32.add
      local.get 5
      i32.const 76
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h53db2b2bf571a2d4E
      local.set 3
      local.get 5
      i32.const 56
      i32.add
      local.get 5
      i32.const 76
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17hbe7ae178b7e7042dE
      local.set 11
      local.get 5
      i32.const 56
      i32.add
      local.get 5
      i32.const 76
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h53db2b2bf571a2d4E
      local.set 12
      local.get 5
      i32.const 32
      i32.add
      local.get 7
      local.get 6
      local.get 3
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h316959d590b35e7dE
      local.get 5
      i32.const 24
      i32.add
      local.get 5
      i32.load offset=32
      local.get 5
      i32.load offset=36
      local.get 11
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hb49d3e4945570296E
      local.get 5
      i32.const 16
      i32.add
      local.get 5
      i32.load offset=24
      local.get 5
      i32.load offset=28
      local.get 12
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h44f68a3aa260c2deE
      local.get 5
      i32.load offset=20
      local.set 6
      local.get 5
      i32.load offset=16
      local.set 7
      local.get 10
      local.set 3
      br 0 (;@1;)
    end
  )
  (func $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h0e3ab51351132499E (;164;) (type 3) (result i32)
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hab6fdc55770704d5E
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment22tx_payment_single_dcdt252_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h0037fa9a83c24a8aE (;165;) (type 32) (param i32 i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h3cb5a1b9d8e08ec3E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h3cb5a1b9d8e08ec3E (;166;) (type 32) (param i32 i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h8178f400ad49fae3E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment22tx_payment_single_dcdt252_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h401488900d73dc1aE (;167;) (type 32) (param i32 i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h2e6282c771d85b15E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17hc6d4a1cc99d17a93E (;168;) (type 32) (param i32 i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$16map_rewa_or_dcdt17h587ae27c9d7ca24dE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$16map_rewa_or_dcdt17h587ae27c9d7ca24dE (;169;) (type 33) (param i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$11map_or_else17he3a63f5d15e0acddE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h26255881767627edE (;170;) (type 1) (param i32 i32 i32)
    local.get 2
    local.get 0
    local.get 1
    i32.load
    local.get 1
    i32.load offset=4
    local.get 1
    i32.load offset=8
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h6eee56a1e58639ceE
    unreachable
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h6eee56a1e58639ceE (;171;) (type 33) (param i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h790fb9c932cec48dE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17hd52258f9ddea20d6E (;172;) (type 22) (param i32 i32 i32 i32)
    local.get 3
    local.get 0
    local.get 1
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    local.get 2
    i32.load offset=8
    call $_ZN11dharitri_sc5types11interaction10tx_payment22tx_payment_single_dcdt252_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h401488900d73dc1aE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h17d97bb37d4f57deE (;173;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h78455048cf70b4d8E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h8178f400ad49fae3E (;174;) (type 2) (param i32 i32)
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
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17he682911a437c39d6E
      local.get 2
      i32.load offset=4
      local.set 0
      local.get 2
      i32.load
      local.set 2
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h8b79aa6bcab6cacbE
      local.get 2
      local.get 0
      call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h357a63c11a2e5ff0E
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17ha53148665da6269bE
    local.get 2
    i32.load offset=12
    local.set 0
    local.get 2
    i32.load offset=8
    local.set 2
    call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h0e3ab51351132499E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h8b79aa6bcab6cacbE
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h357a63c11a2e5ff0E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17he682911a437c39d6E (;175;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 24
    i32.add
    i32.const 131728
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
    local.get 5
    i32.const 16
    i32.add
    local.get 5
    i32.load offset=24
    local.get 5
    i32.load offset=28
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h4d7754383062f53cE
    local.get 5
    i32.const 8
    i32.add
    local.get 5
    i32.load offset=16
    local.get 5
    i32.load offset=20
    local.get 4
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hb6a2804130faab70E
    local.get 5
    local.get 5
    i32.load offset=8
    local.get 5
    i32.load offset=12
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h01778c27f43e489bE
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
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17ha53148665da6269bE (;176;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 40
    i32.add
    i32.const 131713
    i32.const 15
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
    local.get 5
    i32.const 32
    i32.add
    local.get 5
    i32.load offset=40
    local.get 5
    i32.load offset=44
    local.get 4
    i32.load offset=8
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h4d7754383062f53cE
    local.get 5
    i32.const 24
    i32.add
    local.get 5
    i32.load offset=32
    local.get 5
    i32.load offset=36
    local.get 4
    i64.load
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hb49d3e4945570296E
    local.get 5
    i32.const 16
    i32.add
    local.get 5
    i32.load offset=24
    local.get 5
    i32.load offset=28
    local.get 4
    i32.load offset=12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hb6a2804130faab70E
    local.get 5
    i32.const 8
    i32.add
    local.get 5
    i32.load offset=16
    local.get 5
    i32.load offset=20
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h316959d590b35e7dE
    local.get 5
    local.get 5
    i32.load offset=8
    local.get 5
    i32.load offset=12
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h01778c27f43e489bE
    local.get 5
    i32.load offset=4
    local.set 4
    local.get 0
    local.get 5
    i32.load
    i32.store
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 5
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17h47945e8e133773efE (;177;) (type 28) (param i32 i32 i64 i32 i32)
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
      call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21transfer_dcdt_execute17h47f0d885fbb79ce8E
      return
    end
    local.get 1
    local.get 6
    local.get 7
    local.get 5
    local.get 2
    local.get 3
    local.get 4
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17h1626e39c56ea58eaE
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment28tx_payment_rewa_or_dcdt_refs270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h6d3c3e5e5617d490E (;178;) (type 32) (param i32 i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment35RewaOrDcdtTokenPaymentRefs$LT$M$GT$16map_rewa_or_dcdt17h0f4f8968bc83ae47E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment35RewaOrDcdtTokenPaymentRefs$LT$M$GT$16map_rewa_or_dcdt17h0f4f8968bc83ae47E (;179;) (type 32) (param i32 i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$15map_ref_or_else17h41f93d831c0d06ebE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment28tx_payment_rewa_or_dcdt_refs270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h16e0fe9a77d9363bE (;180;) (type 1) (param i32 i32 i32)
    local.get 2
    local.get 0
    local.get 1
    i32.load
    local.get 1
    i32.load offset=4
    local.get 1
    i32.load offset=8
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h30617a4cc8381afeE
    unreachable
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h30617a4cc8381afeE (;181;) (type 33) (param i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17hc72352281c22839eE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment28tx_payment_rewa_or_dcdt_refs270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h5a6d527276920292E (;182;) (type 22) (param i32 i32 i32 i32)
    local.get 3
    local.get 0
    local.get 1
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    local.get 2
    i32.load offset=8
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h2e6282c771d85b15E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment28tx_payment_rewa_or_dcdt_refs270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17hf8781c2672dc47edE (;183;) (type 28) (param i32 i32 i64 i32 i32)
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
        i32.load
        local.tee 7
        i32.const 2147483646
        i32.ne
        br_if 0 (;@2;)
        local.get 6
        i32.load
        local.get 1
        local.get 2
        local.get 3
        local.get 4
        call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$24perform_transfer_execute17heeb7dc42dfdb9d2bE
        br 1 (;@1;)
      end
      local.get 5
      local.get 7
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
      call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17h47945e8e133773efE
    end
    local.get 5
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$24perform_transfer_execute17heeb7dc42dfdb9d2bE (;184;) (type 28) (param i32 i32 i64 i32 i32)
    local.get 1
    local.get 0
    local.get 2
    local.get 3
    local.get 4
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$19direct_rewa_execute17hf37078368637e615E
  )
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17h14362b0afd13efafE (;185;) (type 22) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17hbbe4d28c2eef4e8cE
    local.get 0
    i32.const 131475
    i32.const 131470
    local.get 3
    select
    i32.const 4
    i32.const 5
    local.get 3
    select
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17hbbe4d28c2eef4e8cE
  )
  (func $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17hbbe4d28c2eef4e8cE (;186;) (type 1) (param i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.tee 3
    local.get 1
    local.get 2
    call $mBufferSetBytes
    drop
    local.get 0
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4a8d25352f4fdc92E
  )
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14issue_fungible17h41a1c9fb6453dbedE (;187;) (type 32) (param i32 i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$5issue17h8742158a57f7964cE
    local.get 6
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$5issue17h8742158a57f7964cE (;188;) (type 34) (param i32 i32 i32 i32 i32 i32 i32)
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
    i32.const 132600
    i32.add
    i32.load
    local.get 9
    i32.const 132588
    i32.add
    i32.load
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
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
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hae87b3f26d2cdf9bE
    local.get 7
    i32.const 36
    i32.add
    local.get 7
    i32.const 24
    i32.add
    local.get 4
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hae87b3f26d2cdf9bE
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
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h44f68a3aa260c2deE
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
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h89bbd7bf91545d74E
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
    i32.const 131479
    i32.const 9
    local.get 6
    i32.load8_u offset=4
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17h14362b0afd13efafE
    local.get 1
    i32.const 131488
    i32.const 7
    local.get 5
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17h14362b0afd13efafE
    local.get 1
    i32.const 131495
    i32.const 8
    local.get 9
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17h14362b0afd13efafE
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i32.const 255
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 131503
        i32.const 24
        local.get 10
        i32.const 255
        i32.and
        i32.const 0
        i32.ne
        call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17h14362b0afd13efafE
        br 1 (;@1;)
      end
      local.get 1
      i32.const 131527
      i32.const 7
      local.get 12
      i32.const 255
      i32.and
      i32.const 0
      i32.ne
      call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17h14362b0afd13efafE
      local.get 1
      i32.const 131534
      i32.const 7
      local.get 11
      i32.const 255
      i32.and
      i32.const 0
      i32.ne
      call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17h14362b0afd13efafE
    end
    local.get 1
    i32.const 131541
    i32.const 14
    local.get 8
    i32.const 255
    i32.and
    i32.const 0
    i32.ne
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17h14362b0afd13efafE
    local.get 1
    i32.const 131555
    i32.const 10
    local.get 4
    i32.const 255
    i32.and
    i32.const 0
    i32.ne
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17h14362b0afd13efafE
    local.get 1
    i32.const 131565
    i32.const 18
    local.get 3
    i32.const 255
    i32.and
    i32.const 0
    i32.ne
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17h14362b0afd13efafE
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
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$17set_special_roles17hd61ea765d5cceceaE (;189;) (type 22) (param i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 40
    i32.add
    i32.const 131583
    i32.const 14
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
    local.get 4
    i32.const 32
    i32.add
    local.get 4
    i32.load offset=40
    local.get 4
    i32.load offset=44
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h316959d590b35e7dE
    local.get 4
    i32.const 24
    i32.add
    local.get 4
    i32.load offset=32
    local.get 4
    i32.load offset=36
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h316959d590b35e7dE
    local.get 4
    i32.load offset=28
    local.set 1
    local.get 4
    i32.load offset=24
    local.set 5
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
      call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7facc041fff4397dE
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
        local.get 1
        i32.store offset=4
        local.get 0
        local.get 5
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
      local.get 2
      call $_ZN11dharitri_sc5types5flags15dcdt_local_role13DcdtLocalRole12as_role_name17h730e7a20f658f40eE
      local.get 4
      i32.const 8
      i32.add
      local.get 5
      local.get 1
      local.get 4
      i32.load offset=16
      local.get 4
      i32.load offset=20
      call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h12470a1e8f67383bE
      local.get 4
      i32.load offset=12
      local.set 1
      local.get 4
      i32.load offset=8
      local.set 5
      br 0 (;@1;)
    end
  )
  (func $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7facc041fff4397dE (;190;) (type 9) (param i32) (result i32)
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
            i32.const 131909
            i32.const 8
            call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hc984367a4a982dc8E
            local.tee 0
            call $mBufferGetLength
            br_if 0 (;@4;)
            i32.const 0
            return
          end
          local.get 0
          i32.const 131909
          i32.const 8
          call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417h2fc3cd6b02ea05b2E
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
      i32.const 131909
      i32.const 8
      i32.const 131072
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17ha0f12deeccb15319E
      unreachable
    end
    i32.const 131909
    i32.const 8
    i32.const 131849
    i32.const 13
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17ha0f12deeccb15319E
    unreachable
  )
  (func $_ZN11dharitri_sc5types5flags15dcdt_local_role13DcdtLocalRole12as_role_name17h730e7a20f658f40eE (;191;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    local.tee 1
    i32.const 132612
    i32.add
    i32.load
    i32.load
    i32.store offset=4
    local.get 0
    local.get 1
    i32.const 132648
    i32.add
    i32.load
    i32.load
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h12470a1e8f67383bE (;192;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.tee 5
    local.get 3
    local.get 4
    call $mBufferSetBytes
    drop
    local.get 2
    local.get 5
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4a8d25352f4fdc92E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$18issue_non_fungible17hccc145ea99c2f760E (;193;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h8b79aa6bcab6cacbE
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
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$5issue17h8742158a57f7964cE
    local.get 5
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$19issue_semi_fungible17h6cb43c896d7b977bE (;194;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17h1d9255fd5ea9b78bE
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
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$5issue17h8742158a57f7964cE
    local.get 5
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17h1d9255fd5ea9b78bE (;195;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    i64.const 0
    call $bigIntSetInt64
    local.get 0
  )
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$19unset_special_roles17h2d45ea044b03557eE (;196;) (type 22) (param i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 40
    i32.add
    i32.const 131597
    i32.const 16
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
    local.get 4
    i32.const 32
    i32.add
    local.get 4
    i32.load offset=40
    local.get 4
    i32.load offset=44
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h316959d590b35e7dE
    local.get 4
    i32.const 24
    i32.add
    local.get 4
    i32.load offset=32
    local.get 4
    i32.load offset=36
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h316959d590b35e7dE
    local.get 4
    i32.load offset=28
    local.set 1
    local.get 4
    i32.load offset=24
    local.set 5
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
      call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7facc041fff4397dE
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
        local.get 1
        i32.store offset=4
        local.get 0
        local.get 5
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
      local.get 2
      call $_ZN11dharitri_sc5types5flags15dcdt_local_role13DcdtLocalRole12as_role_name17h730e7a20f658f40eE
      local.get 4
      i32.const 8
      i32.add
      local.get 5
      local.get 1
      local.get 4
      i32.load offset=16
      local.get 4
      i32.load offset=20
      call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h12470a1e8f67383bE
      local.get 4
      i32.load offset=12
      local.set 1
      local.get 4
      i32.load offset=8
      local.set 5
      br 0 (;@1;)
    end
  )
  (func $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hae87b3f26d2cdf9bE (;197;) (type 1) (param i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17he18c885c93f5d14dE
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
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h89bbd7bf91545d74E (;198;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.tee 4
    local.get 3
    i64.extend_i32_u
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h0be11bcaa06ff7f9E
    local.get 2
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4a8d25352f4fdc92E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction16callback_closure22cb_closure_storage_key17ha802713feed6a9d8E (;199;) (type 3) (result i32)
    (local i32 i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    call $managedGetOriginalTxHash
    i32.const 131651
    i32.const 10
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h954e3eb7c7c8dac7E
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17hb0b0d5447a3c7e23E (;200;) (type 6) (param i32 i32 i32) (result i32)
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
      local.get 2
      local.get 1
      local.get 2
      call $_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17ha7077cd3fbbbdff4E
      local.set 3
    end
    local.get 3
  )
  (func $_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17ha7077cd3fbbbdff4E (;201;) (type 16) (param i32 i32 i32 i32) (result i32)
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
  (func $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h0752bc9cff2b9890E (;202;) (type 2) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7374e74010601811E
    local.tee 6
    local.get 2
    i32.const 16
    i32.add
    i32.const 32
    call $_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd606c742c7f1e42eE
    local.get 1
    i32.const 0
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h768bd448f1eaef60E
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h768bd448f1eaef60E (;203;) (type 16) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hd40beec169d1bb3bE
  )
  (func $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h30e3ca3a32b62322E (;204;) (type 1) (param i32 i32 i32)
    block ;; label = @1
      local.get 1
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h04d64d755dd61c2eE
    end
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h04d64d755dd61c2eE (;205;) (type 2) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    drop
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8c610c1e598ecf95E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4a8d25352f4fdc92E
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h90235a7054103ac2E (;206;) (type 2) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h82885fd9c22c10a5E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h78455048cf70b4d8E (;207;) (type 2) (param i32 i32)
    local.get 1
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h8178f400ad49fae3E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h750639eaa2e92d6bE (;208;) (type 2) (param i32 i32)
    local.get 1
    local.get 0
    call $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h7a1a430f662f48b8E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated14AnnotatedValue14with_value_ref17h773ee5786c43983cE (;209;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN326_$LT$dharitri_sc..types..interaction..markers..dcdt_system_sc_address..DCDTSystemSCAddress$u20$as$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$Api$GT$$GT$$GT$8to_value17h257ffe88fbca0708E
    call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h2244e6c67814e0b0E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h55b360d53dcc25edE (;210;) (type 1) (param i32 i32 i32)
    local.get 1
    local.get 2
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h2244e6c67814e0b0E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h790fb9c932cec48dE (;211;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17hb7855e597741aefdE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17hb7855e597741aefdE (;212;) (type 2) (param i32 i32)
    local.get 1
    local.get 0
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h1f4809c16a29f9c7E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17hc72352281c22839eE (;213;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17hc2711b29383642aeE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17hc2711b29383642aeE (;214;) (type 2) (param i32 i32)
    local.get 1
    local.get 0
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17he03a27539e4b2579E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17hf77598235d062443E (;215;) (type 8) (param i32)
    local.get 0
    call $_ZN11dharitri_sc5types11interaction9annotated14AnnotatedValue14with_value_ref17h7e5f088790e42122E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated14AnnotatedValue14with_value_ref17h7e5f088790e42122E (;216;) (type 8) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    call $_ZN326_$LT$dharitri_sc..types..interaction..markers..dcdt_system_sc_address..DCDTSystemSCAddress$u20$as$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$Api$GT$$GT$$GT$8to_value17h257ffe88fbca0708E
    i32.store offset=12
    local.get 0
    local.get 1
    i32.const 12
    i32.add
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h1f4809c16a29f9c7E
    unreachable
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h3053bd77437cc4bbE (;217;) (type 2) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    drop
    local.get 0
    local.get 1
    i32.load
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8c610c1e598ecf95E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4a8d25352f4fdc92E
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h01778c27f43e489bE (;218;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block ;; label = @1
      local.get 3
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h702424924261bfccE
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h04d64d755dd61c2eE
      local.get 4
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7374e74010601811E
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
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h768bd448f1eaef60E
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
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h04d64d755dd61c2eE
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
  (func $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h53db2b2bf571a2d4E (;219;) (type 4) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 1
    i32.load
    local.tee 2
    i32.const 4
    i32.add
    local.set 3
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i32.const -5
        i32.gt_u
        br_if 0 (;@2;)
        local.get 3
        i32.const 16
        i32.gt_u
        br_if 1 (;@1;)
        local.get 1
        local.get 3
        i32.store
        local.get 0
        local.get 2
        i32.add
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
        return
      end
      local.get 2
      local.get 3
      call $_ZN4core5slice5index22slice_index_order_fail17h203c6e1b4907093dE
      unreachable
    end
    local.get 3
    i32.const 16
    call $_ZN4core5slice5index22slice_index_order_fail17h203c6e1b4907093dE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17hbe7ae178b7e7042dE (;220;) (type 26) (param i32 i32) (result i64)
    (local i32 i32 i64)
    local.get 1
    i32.load
    local.tee 2
    i32.const 8
    i32.add
    local.set 3
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i32.const -9
        i32.gt_u
        br_if 0 (;@2;)
        local.get 3
        i32.const 16
        i32.gt_u
        br_if 1 (;@1;)
        local.get 1
        local.get 3
        i32.store
        local.get 0
        local.get 2
        i32.add
        i64.load align=1
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
        return
      end
      local.get 2
      local.get 3
      call $_ZN4core5slice5index22slice_index_order_fail17h203c6e1b4907093dE
      unreachable
    end
    local.get 3
    i32.const 16
    call $_ZN4core5slice5index22slice_index_order_fail17h203c6e1b4907093dE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h4d7754383062f53cE (;221;) (type 22) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h3053bd77437cc4bbE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hb6a2804130faab70E (;222;) (type 22) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17he77c59f2e9cbf3b6E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h3ebdee4a1dad3cc2E (;223;) (type 2) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17he028281ef4410467E (;224;) (type 9) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h0be11bcaa06ff7f9E (;225;) (type 0) (param i32 i64)
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
    call $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hefe4a2a354f0af59E
    local.get 0
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call $_ZN11dharitri_sc5types7managed10codec_util28managed_buffer_top_en_output174_$LT$impl$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$u20$for$u20$$RF$mut$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$12set_slice_u817h21a98d5307fc3069E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h329aa3c4c96580d1E (;226;) (type 0) (param i32 i64)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.tee 2
    local.get 1
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h0be11bcaa06ff7f9E
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4a8d25352f4fdc92E
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hb4a593b59e8618a5E (;227;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    local.get 3
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7374e74010601811E
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d7d0fb54c6b8c1cE
        local.get 4
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        local.get 4
        i32.load offset=12
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h04d64d755dd61c2eE
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
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17he77c59f2e9cbf3b6E (;228;) (type 2) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    drop
    local.get 0
    local.get 1
    i32.load
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17he028281ef4410467E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4a8d25352f4fdc92E
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17h39455178e9104042E (;229;) (type 8) (param i32)
    (local i32 i64 i32)
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load offset=8
          local.tee 1
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h702424924261bfccE
          br_if 0 (;@3;)
          call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h1f7d586d66cdaa89E
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
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7374e74010601811E
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
      call $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt398_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$24perform_transfer_execute17ha00b4267174f5cf5E
    end
  )
  (func $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h1f7d586d66cdaa89E (;230;) (type 15) (result i64)
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
  (func $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17hc0452ecfdde51327E (;231;) (type 8) (param i32)
    (local i32 i64 i32 i32)
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
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h702424924261bfccE
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
        call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h3eceefb576f648f8E
        br_if 1 (;@1;)
      end
      local.get 1
      local.get 0
      i32.const 40
      call $memcpy
      local.tee 0
      local.get 2
      i64.store offset=40
      local.get 0
      i32.const 64
      i32.add
      local.get 0
      i32.const 24
      i32.add
      i64.load
      i64.store
      local.get 0
      local.get 0
      i32.const 36
      i32.add
      i32.store offset=72
      local.get 0
      local.get 0
      i64.load offset=16
      i64.store offset=56
      local.get 0
      local.get 0
      i32.load offset=12
      local.tee 3
      i32.store offset=52
      local.get 0
      local.get 0
      i32.load offset=8
      local.tee 4
      i32.store offset=48
      local.get 0
      local.get 0
      i32.const 40
      i32.add
      i32.store offset=76
      local.get 0
      i32.const 56
      i32.add
      local.get 0
      i32.load offset=32
      i32.load
      local.get 2
      local.get 4
      local.get 3
      call $_ZN11dharitri_sc5types11interaction10tx_payment28tx_payment_rewa_or_dcdt_refs270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17hf8781c2672dc47edE
    end
    local.get 1
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h3eceefb576f648f8E (;232;) (type 9) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic11big_num_cmp7cmp_i6417h1e1dc0af5c7eb761E
    i32.const 255
    i32.and
    i32.eqz
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17hffb8617c3d302b53E (;233;) (type 8) (param i32)
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
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h702424924261bfccE
          br_if 0 (;@3;)
          call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h1f7d586d66cdaa89E
          local.set 3
          br 1 (;@2;)
        end
        i64.const 0
        local.set 3
        local.get 0
        i32.load offset=12
        call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h3eceefb576f648f8E
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
        i32.const 2147483646
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=20
        local.get 5
        i32.load
        local.get 3
        local.get 2
        local.get 0
        call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$24perform_transfer_execute17heeb7dc42dfdb9d2bE
        br 1 (;@1;)
      end
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
      call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17h47945e8e133773efE
    end
    local.get 1
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te191_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$$LP$$RP$$C$$LP$$RP$$C$$LP$$RP$$GT$$GT$8transfer17ha29ae23fb6e853e6E (;234;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hf5e126a000ddfdbaE
    local.get 1
    local.get 0
    i64.const 0
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load offset=12
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$24perform_transfer_execute17heeb7dc42dfdb9d2bE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hf5e126a000ddfdbaE (;235;) (type 8) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h3ebdee4a1dad3cc2E
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
  (func $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te191_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$$LP$$RP$$C$$LP$$RP$$C$$LP$$RP$$GT$$GT$8transfer17hecdea23b3c010abcE (;236;) (type 8) (param i32)
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
    call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hf5e126a000ddfdbaE
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17h47945e8e133773efE
    local.get 1
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h240b52b56bfc2ef0E (;237;) (type 35) (param i64 i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17hc3be6bc89c88f62cE
    drop
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17hb12d8b4f409f1b8eE (;238;) (type 31) (param i64 i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17hc3be6bc89c88f62cE
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17h63b8669bc3bef354E (;239;) (type 9) (param i32) (result i32)
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
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h8b79aa6bcab6cacbE
    local.set 5
    local.get 4
    local.get 0
    i32.load
    local.get 5
    local.get 3
    local.get 2
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17hc3be6bc89c88f62cE
    local.set 0
    call $cleanReturnData
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.const 4
    i32.add
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2642a594751154c9E
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h2d923a47c3d446c6E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
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
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17ha17772346edea882E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4a8d25352f4fdc92E
        br 0 (;@2;)
      end
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17ha17772346edea882E (;240;) (type 9) (param i32) (result i32)
    local.get 0
    i32.const 131740
    i32.const 11
    call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hc984367a4a982dc8E
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8c610c1e598ecf95E
  )
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h4a315ba7f983e284E (;241;) (type 20) (param i32 i32 i32) (result i64)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hc984367a4a982dc8E
    local.get 1
    local.get 2
    call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417h2fc3cd6b02ea05b2E
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h14d17e2eb1393bedE (;242;) (type 8) (param i32)
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment28tx_payment_rewa_or_dcdt_refs270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h6d3c3e5e5617d490E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h28634265bd294b03E (;243;) (type 8) (param i32)
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt398_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized17h3fd3e655b588e291E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h488f0db38251aa75E (;244;) (type 8) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i32.const 24
    i32.add
    call $_ZN185_$LT$dharitri_sc..types..interaction..callback_closure..CallbackClosure$LT$Api$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_exec..tx_exec_async..TxAsyncCallCallback$LT$Api$GT$$GT$32save_callback_closure_to_storage17h841fc2cfae56ea93E
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment28tx_payment_rewa_or_dcdt_refs270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h6d3c3e5e5617d490E
    unreachable
  )
  (func $_ZN185_$LT$dharitri_sc..types..interaction..callback_closure..CallbackClosure$LT$Api$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_exec..tx_exec_async..TxAsyncCallCallback$LT$Api$GT$$GT$32save_callback_closure_to_storage17h841fc2cfae56ea93E (;245;) (type 8) (param i32)
    (local i32 i32)
    call $_ZN11dharitri_sc5types11interaction16callback_closure22cb_closure_storage_key17ha802713feed6a9d8E
    local.set 1
    call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hf74003bb3416168fE
    local.set 2
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types10impl_slice96_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$$u5b$T$u5d$$GT$24dep_encode_or_handle_err17h6ddfebff735bd26fE
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    call $_ZN145_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h55c302fd7b1731cfE
    local.get 1
    local.get 2
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h77c2eb50cfe37365E
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h520128bf4032d559E (;246;) (type 8) (param i32)
    local.get 0
    i32.const 4
    i32.add
    call $_ZN185_$LT$dharitri_sc..types..interaction..callback_closure..CallbackClosure$LT$Api$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_exec..tx_exec_async..TxAsyncCallCallback$LT$Api$GT$$GT$32save_callback_closure_to_storage17h841fc2cfae56ea93E
    local.get 0
    i32.load
    local.get 0
    i32.load offset=16
    local.get 0
    i32.load offset=20
    call $_ZN165_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_not_payable..NotPayable$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h1ef271ef13ec3124E
    unreachable
  )
  (func $_ZN165_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_not_payable..NotPayable$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h1ef271ef13ec3124E (;247;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h1475aa4f5a729ee9E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h5527fce92c500232E (;248;) (type 8) (param i32)
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17hc6d4a1cc99d17a93E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h7a504f5b455f6ed4E (;249;) (type 8) (param i32)
    local.get 0
    call $_ZN185_$LT$dharitri_sc..types..interaction..callback_closure..CallbackClosure$LT$Api$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_exec..tx_exec_async..TxAsyncCallCallback$LT$Api$GT$$GT$32save_callback_closure_to_storage17h841fc2cfae56ea93E
    local.get 0
    i32.load offset=12
    local.get 0
    i32.const 24
    i32.add
    local.get 0
    i32.load offset=16
    local.get 0
    i32.load offset=20
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h5a9b67fa83e7cb71E
    unreachable
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h5a9b67fa83e7cb71E (;250;) (type 22) (param i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17hf77598235d062443E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hbf99e9621009d4dcE (;251;) (type 8) (param i32)
    local.get 0
    call $_ZN185_$LT$dharitri_sc..types..interaction..callback_closure..CallbackClosure$LT$Api$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_exec..tx_exec_async..TxAsyncCallCallback$LT$Api$GT$$GT$32save_callback_closure_to_storage17h841fc2cfae56ea93E
    local.get 0
    i32.load offset=12
    local.get 0
    i32.load offset=16
    call $_ZN165_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_not_payable..NotPayable$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h1614cf27b121b5c4E
    unreachable
  )
  (func $_ZN165_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_not_payable..NotPayable$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h1614cf27b121b5c4E (;252;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h410076831e3e679cE
    unreachable
  )
  (func $_ZN326_$LT$dharitri_sc..types..interaction..markers..dcdt_system_sc_address..DCDTSystemSCAddress$u20$as$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$Api$GT$$GT$$GT$8to_value17h257ffe88fbca0708E (;253;) (type 3) (result i32)
    i32.const 131661
    i32.const 32
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h954e3eb7c7c8dac7E
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h1f4809c16a29f9c7E (;254;) (type 2) (param i32 i32)
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
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h35e329db463a7bcbE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated23annotated_impl_big_uint381_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h08953662ad5281edE (;255;) (type 2) (param i32 i32)
    local.get 1
    local.get 0
    i32.load
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h35e329db463a7bcbE
    unreachable
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h35e329db463a7bcbE (;256;) (type 2) (param i32 i32)
    local.get 0
    i32.load
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h357a63c11a2e5ff0E
    unreachable
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17he03a27539e4b2579E (;257;) (type 2) (param i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction9annotated23annotated_impl_big_uint381_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h08953662ad5281edE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util28managed_buffer_top_en_output174_$LT$impl$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$u20$for$u20$$RF$mut$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$12set_slice_u817h21a98d5307fc3069E (;258;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferSetBytes
    drop
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h1a53bb567d4dd39dE (;259;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17hef835990707ed559E
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
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17hcb2d2f060f57cd48E
    block ;; label = @1
      local.get 2
      i32.load offset=8
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      i32.const 131751
      i32.const 15
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hbced798622aaa0aeE
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17hef835990707ed559E (;260;) (type 4) (param i32 i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hd28fb5eac0e421feE
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
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17hcb2d2f060f57cd48E (;261;) (type 22) (param i32 i32 i32 i32)
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
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hbced798622aaa0aeE (;262;) (type 1) (param i32 i32 i32)
    (local i32)
    i32.const 131862
    i32.const 27
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h954e3eb7c7c8dac7E
    local.tee 3
    local.get 0
    call $mBufferAppend
    drop
    local.get 3
    i32.const 131200
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
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h896649d052a69630E (;263;) (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    local.get 1
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17h71c3f02649418953E
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
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17hcb2d2f060f57cd48E
    block ;; label = @1
      local.get 3
      i32.load offset=8
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131751
      i32.const 15
      call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hbc2e1d8e291e306bE
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17h71c3f02649418953E (;264;) (type 6) (param i32 i32 i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hd5e478197ec876f7E
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
  (func $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hbc2e1d8e291e306bE (;265;) (type 22) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h954e3eb7c7c8dac7E
    local.tee 1
    local.get 2
    local.get 3
    call $mBufferAppendBytes
    drop
    local.get 1
    call $managedSignalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h82885fd9c22c10a5E (;266;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferAppendBytes
    drop
  )
  (func $_ZN11dharitri_sc5types7managed11multi_value24multi_value_encoded_iter165_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$GT$9into_iter17h8a75085343869464E (;267;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h2d923a47c3d446c6E
  )
  (func $_ZN11dharitri_sc5types7managed5basic11big_num_cmp7cmp_i6417h1e1dc0af5c7eb761E (;268;) (type 9) (param i32) (result i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$7bi_sign17h80468100f519116eE
    i32.const -1
    i32.add
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h3288b2b001a12dfaE (;269;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferAppend
    drop
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_ref23ManagedRef$LT$M$C$T$GT$11clone_value17h74dff60985bcdc23E (;270;) (type 9) (param i32) (result i32)
    local.get 0
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h28c8a67147b84629E
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$16from_single_item17h93f56de6b2e392f3E (;271;) (type 9) (param i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.tee 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4a8d25352f4fdc92E
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped14managed_option26ManagedOption$LT$M$C$T$GT$11map_or_else17h4d951805a1347528E (;272;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block ;; label = @1
      local.get 0
      i32.const 2147483646
      i32.ne
      br_if 0 (;@1;)
      local.get 2
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$16map_rewa_or_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17h33616f11220fb352E
      unreachable
    end
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
    call $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$16map_rewa_or_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17h525529457fb040c8E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$16map_rewa_or_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17h33616f11220fb352E (;273;) (type 2) (param i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h26255881767627edE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$16map_rewa_or_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17h525529457fb040c8E (;274;) (type 1) (param i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17hd52258f9ddea20d6E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped14managed_option26ManagedOption$LT$M$C$T$GT$15map_ref_or_else17h019f4a2339f5541aE (;275;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block ;; label = @1
      local.get 0
      i32.const 2147483646
      i32.ne
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment35RewaOrDcdtTokenPaymentRefs$LT$M$GT$16map_rewa_or_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17h9490ec0c4c628bc6E
      unreachable
    end
    local.get 5
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 5
    local.get 0
    i32.store offset=28
    local.get 5
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 5
    local.get 5
    i32.const 28
    i32.add
    i32.store offset=20
    local.get 4
    local.get 5
    i32.const 8
    i32.add
    local.get 5
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment35RewaOrDcdtTokenPaymentRefs$LT$M$GT$16map_rewa_or_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17h6d811806580521deE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment35RewaOrDcdtTokenPaymentRefs$LT$M$GT$16map_rewa_or_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17h9490ec0c4c628bc6E (;276;) (type 1) (param i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment28tx_payment_rewa_or_dcdt_refs270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h16e0fe9a77d9363bE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment35RewaOrDcdtTokenPaymentRefs$LT$M$GT$16map_rewa_or_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17h6d811806580521deE (;277;) (type 1) (param i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment28tx_payment_rewa_or_dcdt_refs270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h5a6d527276920292E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h733bf0c013170ff7E (;278;) (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc3api13managed_types11big_int_api13BigIntApiImpl15bi_sub_unsigned17h9091f5473e977c60E
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h7b800d8c0639ba6eE (;279;) (type 9) (param i32) (result i32)
    i32.const -14
    i64.const 2
    call $bigIntSetInt64
    local.get 0
    local.get 0
    i32.const -14
    call $bigIntTDiv
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u64$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h81caade251ad6d50E (;280;) (type 9) (param i32) (result i32)
    i32.const -14
    i64.const 10000
    call $bigIntSetInt64
    local.get 0
    local.get 0
    i32.const -14
    call $bigIntTDiv
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators196_$LT$impl$u20$core..ops..arith..Mul$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3mul17h1d56a89c85af761cE (;281;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 2
    local.get 0
    local.get 1
    call $bigIntMul
    local.get 2
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators196_$LT$impl$u20$core..ops..arith..Sub$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h171f908febd9132eE (;282;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc3api13managed_types11big_int_api13BigIntApiImpl15bi_sub_unsigned17h9091f5473e977c60E
    local.get 2
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h0f7bb0cf8001bd3aE (;283;) (type 16) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32)
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
              br_if 0 (;@5;)
              local.get 0
              i32.load
              local.tee 5
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7374e74010601811E
              local.tee 6
              i32.const 10000
              i32.gt_u
              br_if 1 (;@4;)
              i32.const 0
              i32.load8_u offset=143072
              i32.const 255
              i32.and
              br_if 1 (;@4;)
              i32.const 0
              local.get 6
              i32.store offset=143068
              i32.const 0
              i32.const 1
              i32.store8 offset=143072
              local.get 4
              i32.const 8
              i32.add
              local.get 6
              i32.const 133068
              i32.const 10000
              call $_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd606c742c7f1e42eE
              local.get 5
              i32.const 0
              local.get 4
              i32.load offset=8
              local.get 4
              i32.load offset=12
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h768bd448f1eaef60E
              drop
              block ;; label = @6
                local.get 0
                i32.load8_u offset=8
                i32.eqz
                br_if 0 (;@6;)
                i32.const 0
                i32.const 0
                i32.store offset=143068
                i32.const 0
                i32.const 0
                i32.store8 offset=143072
              end
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
            i32.load offset=143068
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
            i32.const 133068
            i32.add
            local.get 3
            call $memcpy
            drop
            i32.const 0
            local.set 0
            br 1 (;@3;)
          end
          local.get 0
          i32.const 0
          i32.store8 offset=8
          local.get 5
          local.get 1
          local.get 2
          local.get 3
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h768bd448f1eaef60E
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
      call $_ZN4core5slice5index22slice_index_order_fail17h203c6e1b4907093dE
      unreachable
    end
    local.get 5
    i32.const 10000
    call $_ZN4core5slice5index22slice_index_order_fail17h203c6e1b4907093dE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$11map_or_else17he3a63f5d15e0acddE (;284;) (type 22) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped14managed_option26ManagedOption$LT$M$C$T$GT$11map_or_else17h4d951805a1347528E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$15map_ref_or_else17h41f93d831c0d06ebE (;285;) (type 33) (param i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped14managed_option26ManagedOption$LT$M$C$T$GT$15map_ref_or_else17h019f4a2339f5541aE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h1ee5c52b6b284981E (;286;) (type 9) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferToBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17he9c7941ec72ce58dE (;287;) (type 9) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_set13storage_clear17ha06e8b0bfaa75561E (;288;) (type 8) (param i32)
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
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17h54adfd853d24cdbaE (;289;) (type 2) (param i32 i32)
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
    call $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hefe4a2a354f0af59E
    local.get 0
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h954e3eb7c7c8dac7E
    call $mBufferStorageStore
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hefe4a2a354f0af59E (;290;) (type 23) (param i32 i64 i32)
    (local i64 i64 i32 i32)
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
    local.tee 4
    i64.or
    i64.or
    i64.or
    i64.store align=1
    local.get 0
    i32.const 8
    i32.const 0
    local.get 4
    i32.wrap_i64
    i32.eqz
    local.tee 5
    local.get 1
    i64.const 48
    i64.shr_u
    i32.wrap_i64
    i32.const 255
    i32.and
    select
    local.tee 6
    local.get 5
    i32.add
    i32.const 0
    local.get 6
    local.get 3
    i32.wrap_i64
    i32.const 255
    i32.and
    select
    local.tee 5
    i32.add
    i32.const 0
    local.get 5
    local.get 1
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    i32.const 255
    i32.and
    select
    local.tee 6
    i32.add
    i32.const 0
    local.get 6
    local.get 1
    i32.wrap_i64
    local.tee 5
    i32.const 24
    i32.shr_u
    select
    local.tee 6
    i32.add
    i32.const 0
    local.get 6
    local.get 5
    i32.const 16
    i32.shr_u
    i32.const 255
    i32.and
    select
    local.tee 6
    i32.add
    i32.const 0
    local.get 6
    local.get 5
    i32.const 8
    i32.shr_u
    i32.const 255
    i32.and
    select
    local.tee 5
    i32.add
    local.get 5
    i32.const 0
    local.get 1
    i64.eqz
    select
    i32.add
    local.tee 5
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 2
    local.get 5
    i32.add
    i32.store
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$13get_unchecked17h49dd4e4a4b556290E (;291;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h81b153eedb74a1cbE
    local.tee 1
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17he9c7941ec72ce58dE
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
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h1a53bb567d4dd39dE
    local.set 5
    local.get 3
    i32.const 4
    i32.add
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h1a53bb567d4dd39dE
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h4be7bb54fd9b0632E
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hd28fb5eac0e421feE
    local.get 3
    i64.load offset=24
    local.set 7
    local.get 3
    i32.const 4
    i32.add
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h1a53bb567d4dd39dE
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h1ee5c52b6b284981E
    local.set 8
    local.get 3
    i32.const 4
    i32.add
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17hef835990707ed559E
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
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
        call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h1a53bb567d4dd39dE
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4a8d25352f4fdc92E
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
        i32.store offset=143068
        i32.const 0
        i32.const 0
        i32.store8 offset=143072
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
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hbced798622aaa0aeE
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h81b153eedb74a1cbE (;292;) (type 4) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8c610c1e598ecf95E
    local.tee 0
    i32.const 131844
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
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hd28fb5eac0e421feE (;293;) (type 22) (param i32 i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h0f7bb0cf8001bd3aE
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17ha400e5dfe63c5877E
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17hd0a1547b1535e699E (;294;) (type 9) (param i32) (result i32)
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
        call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17he9c7941ec72ce58dE
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
        call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hd40beec169d1bb3bE
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
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hbced798622aaa0aeE
      unreachable
    end
    local.get 0
    i32.const 131072
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hbced798622aaa0aeE
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h586b3a99358b02d1E (;295;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17h462934414920e9b0E (;296;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17he77c59f2e9cbf3b6E
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17hdbc14e833ab6882bE (;297;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h3053bd77437cc4bbE
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17hf8eb8142ef223f8cE (;298;) (type 0) (param i32 i64)
    local.get 0
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h329aa3c4c96580d1E
  )
  (func $_ZN11dharitri_sc8log_util23event_topic_accumulator17h379d61c3940dfe3fE (;299;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.tee 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h954e3eb7c7c8dac7E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4a8d25352f4fdc92E
    local.get 2
  )
  (func $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hf74003bb3416168fE (;300;) (type 3) (result i32)
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h954e3eb7c7c8dac7E
  )
  (func $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hdb8b72d6b620ace0E (;301;) (type 8) (param i32)
    local.get 0
    call $mBufferFinish
    drop
  )
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h1ac936f6e52fa334E (;302;) (type 2) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17he028281ef4410467E
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h4a08879f9b1acbbdE
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h4a08879f9b1acbbdE (;303;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7374e74010601811E
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h82885fd9c22c10a5E
    local.get 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h3288b2b001a12dfaE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h77c2eb50cfe37365E (;304;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferStorageStore
    drop
  )
  (func $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h61e18f43ade6bbabE (;305;) (type 9) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17he9c7941ec72ce58dE
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h55c302fd7b1731cfE (;306;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.tee 3
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h4a4d85400d779e61E
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h3d7f11a9dc98711bE
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7374e74010601811E
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
      call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d7d0fb54c6b8c1cE
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
      call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h4a08879f9b1acbbdE
      br 0 (;@1;)
    end
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h3d7f11a9dc98711bE (;307;) (type 2) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h82885fd9c22c10a5E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h51a4ee9753ae3e76E (;308;) (type 2) (param i32 i32)
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
      i32.const 131909
      i32.const 8
      call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hc984367a4a982dc8E
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8c610c1e598ecf95E
      local.set 3
      local.get 1
      i32.const 131909
      i32.const 8
      call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h4a315ba7f983e284E
      local.set 2
      local.get 0
      local.get 1
      i32.const 131909
      i32.const 8
      call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17ha10ae041da982dc1E
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
  (func $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417h2fc3cd6b02ea05b2E (;309;) (type 20) (param i32 i32 i32) (result i64)
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
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17ha0f12deeccb15319E
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
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hd40beec169d1bb3bE
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
  (func $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h485bcda9702f8e82E (;310;) (type 2) (param i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 2147483646
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8c610c1e598ecf95E
      i32.store
      return
    end
    local.get 1
    i32.load
    i32.const 131840
    i32.const 4
    call $_ZN11dharitri_sc5types7managed10codec_util28managed_buffer_top_en_output174_$LT$impl$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$u20$for$u20$$RF$mut$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$12set_slice_u817h21a98d5307fc3069E
  )
  (func $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h94287d3351aaca2cE (;311;) (type 2) (param i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 2147483646
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h4a08879f9b1acbbdE
      return
    end
    i32.const 131840
    i32.const 4
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types10impl_slice96_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$$u5b$T$u5d$$GT$24dep_encode_or_handle_err17h6ddfebff735bd26fE
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types10impl_slice96_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$$u5b$T$u5d$$GT$24dep_encode_or_handle_err17h6ddfebff735bd26fE (;312;) (type 1) (param i32 i32 i32)
    local.get 1
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h3d7f11a9dc98711bE
    local.get 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h82885fd9c22c10a5E
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h97454e9257ac4f3aE (;313;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 131751
    i32.const 15
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17ha0f12deeccb15319E
    unreachable
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h1fc38bc197b6ece0E (;314;) (type 36) (param i64 i32)
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h82885fd9c22c10a5E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hd5e478197ec876f7E (;315;) (type 33) (param i32 i32 i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h0f7bb0cf8001bd3aE
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 4
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17hb0f380ffc199ff15E
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17ha400e5dfe63c5877E (;316;) (type 8) (param i32)
    local.get 0
    i32.const 131751
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hbced798622aaa0aeE
    unreachable
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17hb0f380ffc199ff15E (;317;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 131751
    i32.const 15
    call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hbc2e1d8e291e306bE
    unreachable
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h957a2f5c045c7692E (;318;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    i32.store offset=12
    local.get 1
    i32.load
    local.get 2
    i32.const 12
    i32.add
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h485bcda9702f8e82E
    local.get 0
    local.get 2
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4a8d25352f4fdc92E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN258_$LT$dharitri_sc..types..interaction..tx_result_handler_list..tx_result_handler_list_cons..ConsRet$LT$Env$C$Head$C$Tail$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_result_handler_list..tx_result_handler_list_exec..RHListExec$LT$RawResult$C$Env$GT$$GT$19list_process_result17hfbf5560ee1d027b4E (;319;) (type 2) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.load
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8c610c1e598ecf95E
    local.set 3
    local.get 2
    i32.const 4
    i32.add
    local.get 1
    i32.const 4
    i32.add
    call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2642a594751154c9E
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h2d923a47c3d446c6E
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
      call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17ha17772346edea882E
      local.set 4
    end
    local.get 0
    local.get 4
    i32.store offset=8
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN4core3cmp10PartialOrd2gt17h56b8e24c801bef10E (;320;) (type 9) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic11big_num_cmp7cmp_i6417h1e1dc0af5c7eb761E
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
  )
  (func $_ZN68_$LT$C$u20$as$u20$forwarder..fwd_storage..ForwarderStorageModule$GT$17last_issued_token17h23bd36c60f6730dbE (;321;) (type 3) (result i32)
    i32.const 131945
    i32.const 15
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h954e3eb7c7c8dac7E
  )
  (func $_ZN68_$LT$C$u20$as$u20$forwarder..fwd_storage..ForwarderStorageModule$GT$18last_error_message17h795999bba2480ae7E (;322;) (type 3) (result i32)
    i32.const 131960
    i32.const 16
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h954e3eb7c7c8dac7E
  )
  (func $_ZN71_$LT$C$u20$as$u20$forwarder..fwd_call_sync..ForwarderSyncCallModule$GT$36execute_on_dest_context_result_event17hecb58c7befef3daeE (;323;) (type 8) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 132000
    i32.const 26
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h379d61c3940dfe3fE
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8c610c1e598ecf95E
    local.set 3
    local.get 1
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7374e74010601811E
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d7d0fb54c6b8c1cE
        local.get 1
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.load offset=12
        local.get 3
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h4a08879f9b1acbbdE
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
  (func $_ZN73_$LT$C$u20$as$u20$forwarder..fwd_call_async..ForwarderAsyncCallModule$GT$13callback_data17h0719c5725f6d07c3E (;324;) (type 8) (param i32)
    (local i32 i32)
    i32.const 132026
    i32.const 13
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h954e3eb7c7c8dac7E
    local.tee 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8c610c1e598ecf95E
    local.tee 2
    i32.const 131889
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
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17hd953ee0001f72746E (;325;) (type 8) (param i32)
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
    i32.const 131840
    i32.const 4
    call $finish
  )
  (func $_ZN9forwarder10fwd_deploy20DeployContractModule20perform_deploy_vault17hea4828ba3a980ea4E (;326;) (type 22) (param i32 i32 i32 i32)
    (local i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 2
    local.get 3
    call $_ZN9forwarder11vault_proxy52VaultProxyMethods$LT$Env$C$From$C$$LP$$RP$$C$Gas$GT$4init17h82696875dc735db7E
    local.set 3
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8c610c1e598ecf95E
    local.set 1
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h1f7d586d66cdaa89E
    local.set 5
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17h1d9255fd5ea9b78bE
    local.set 2
    i32.const 0
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17hd4209dd883b83ed6E
    local.get 5
    local.get 2
    local.get 1
    i32.const -25
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 6
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 7
    call $managedCreateContract
    drop
    call $cleanReturnData
    local.get 4
    local.get 7
    i32.store offset=16
    local.get 4
    local.get 6
    i32.store offset=12
    local.get 4
    i32.const 20
    i32.add
    local.get 4
    i32.const 12
    i32.add
    call $_ZN258_$LT$dharitri_sc..types..interaction..tx_result_handler_list..tx_result_handler_list_cons..ConsRet$LT$Env$C$Head$C$Tail$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_result_handler_list..tx_result_handler_list_exec..RHListExec$LT$RawResult$C$Env$GT$$GT$19list_process_result17hfbf5560ee1d027b4E
    local.get 0
    local.get 4
    i32.load offset=28
    i32.store offset=8
    local.get 0
    local.get 4
    i64.load offset=20 align=4
    i64.store align=4
    local.get 4
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN9forwarder11vault_proxy52VaultProxyMethods$LT$Env$C$From$C$$LP$$RP$$C$Gas$GT$4init17h82696875dc735db7E (;327;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.tee 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h30e3ca3a32b62322E
    local.get 2
  )
  (func $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$12accept_funds17h5094a8d44a430e4bE (;328;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    i32.const 132110
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
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
  (func $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14echo_arguments17h191d00bbaf65c19cE (;329;) (type 1) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 2
    i32.store offset=28
    local.get 3
    i32.const 16
    i32.add
    i32.const 132134
    i32.const 14
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
    local.get 3
    i32.const 8
    i32.add
    local.get 3
    i32.load offset=16
    local.get 3
    i32.load offset=20
    local.get 3
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hb4a593b59e8618a5E
    local.get 0
    local.get 3
    i64.load offset=8
    i64.store offset=4 align=4
    local.get 0
    local.get 1
    i32.store
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14echo_arguments17hd56a8ecff6ce8da8E (;330;) (type 37) (param i32 i64 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    local.get 3
    i32.store offset=28
    local.get 4
    i32.const 16
    i32.add
    i32.const 132134
    i32.const 14
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
    local.get 4
    i32.const 8
    i32.add
    local.get 4
    i32.load offset=16
    local.get 4
    i32.load offset=20
    local.get 4
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hb4a593b59e8618a5E
    local.get 4
    i32.load offset=8
    local.set 3
    local.get 0
    local.get 2
    i32.store offset=16
    local.get 0
    local.get 4
    i32.load offset=12
    i32.store offset=12
    local.get 0
    local.get 3
    i32.store offset=8
    local.get 0
    local.get 1
    i64.store
    local.get 4
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14retrieve_funds17h1b2f0f747c8c7509E (;331;) (type 10) (param i32 i32 i32 i64 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 16
    i32.add
    i32.const 132148
    i32.const 14
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
    local.get 5
    i32.load offset=16
    local.set 6
    local.get 5
    i32.load offset=20
    local.set 7
    local.get 5
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    i32.store offset=28
    local.get 2
    local.get 5
    i32.const 28
    i32.add
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h485bcda9702f8e82E
    local.get 7
    local.get 5
    i32.load offset=28
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4a8d25352f4fdc92E
    local.get 5
    i32.const 8
    i32.add
    local.get 6
    local.get 7
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hb49d3e4945570296E
    local.get 5
    local.get 5
    i32.load offset=8
    local.get 5
    i32.load offset=12
    local.get 4
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h44f68a3aa260c2deE
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
  (func $_ZN9forwarder14fwd_call_async13CallbackProxy25send_funds_twice_callback17h1188df354ca97ef2E (;332;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.tee 4
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h3053bd77437cc4bbE
    local.get 4
    local.get 2
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h957a2f5c045c7692E
    local.get 4
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17he77c59f2e9cbf3b6E
    local.get 0
    local.get 4
    i32.store offset=8
    local.get 0
    i32.const 25
    i32.store offset=4
    local.get 0
    i32.const 132292
    i32.store
  )
  (func $_ZN9forwarder19vault_upgrade_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$7upgrade17h720946cd0b7dda1fE (;333;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.tee 4
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h30e3ca3a32b62322E
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
  (func $_ZN9forwarder7fwd_nft13CallbackProxy18nft_issue_callback17h55a209662a4c2b80E (;334;) (type 2) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.tee 2
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h3053bd77437cc4bbE
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    i32.const 18
    i32.store offset=4
    local.get 0
    i32.const 132428
    i32.store
  )
  (func $_ZN9forwarder7fwd_nft18ForwarderNftModule10nft_create17hd3cdfb9d41e7c1b7E (;335;) (type 25) (param i32 i32 i32 i32 i32 i32 i32) (result i64)
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
    local.get 0
    i32.store
    local.get 7
    local.get 5
    i32.store16 offset=8
    local.get 7
    local.get 5
    i32.const 16
    i32.shr_u
    i32.store8 offset=10
    local.get 7
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.tee 5
    i32.store offset=12
    local.get 5
    local.get 6
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4a8d25352f4fdc92E
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
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_nft_create17h637ede7ea4b55a7bE
    local.set 8
    i32.const 131939
    i32.const 6
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h379d61c3940dfe3fE
    local.tee 1
    local.get 7
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17hdbc14e833ab6882bE
    local.get 1
    local.get 8
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17hf8eb8142ef223f8cE
    local.get 1
    local.get 7
    i32.const 4
    i32.add
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17h462934414920e9b0E
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    call $managedWriteLog
    local.get 7
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 8
  )
  (func $_ZN9forwarder7fwd_sft13CallbackProxy18sft_issue_callback17he79ff718cebee0adE (;336;) (type 2) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.tee 2
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h3053bd77437cc4bbE
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    i32.const 18
    i32.store offset=4
    local.get 0
    i32.const 132518
    i32.store
  )
  (func $_ZN9forwarder8fwd_dcdt13CallbackProxy19dcdt_issue_callback17hc38f5f2776c0d0a4E (;337;) (type 2) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.tee 2
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h3053bd77437cc4bbE
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    i32.const 19
    i32.store offset=4
    local.get 0
    i32.const 132536
    i32.store
  )
  (func $rust_begin_unwind (;338;) (type 14)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h8945d78c95e86419E
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h8945d78c95e86419E (;339;) (type 14)
    i32.const 132976
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;340;) (type 14)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
  )
  (func $send_rewa (;341;) (type 14)
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    i32.const 132241
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h406bc68df20c3ca5E
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te191_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$$LP$$RP$$C$$LP$$RP$$C$$LP$$RP$$GT$$GT$8transfer17ha29ae23fb6e853e6E
  )
  (func $echo_arguments_sync (;342;) (type 14)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb9581b71ea6307f7E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hb37baba980227158E
    i32.const 0
    i32.const 132241
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=40
    local.get 0
    i32.const 40
    i32.add
    i32.const 132237
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hdc5b09e71e2ad3d1E
    local.set 2
    local.get 0
    i32.load offset=40
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hbd3a9446c91f216eE
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
    call $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14echo_arguments17hd56a8ecff6ce8da8E
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
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17h63b8669bc3bef354E
    i32.store offset=40
    local.get 0
    i32.const 40
    i32.add
    call $_ZN71_$LT$C$u20$as$u20$forwarder..fwd_call_sync..ForwarderSyncCallModule$GT$36execute_on_dest_context_result_event17hecb58c7befef3daeE
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $echo_arguments_sync_twice (;343;) (type 14)
    (local i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb9581b71ea6307f7E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hb37baba980227158E
    i32.const 0
    i32.const 132241
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=40
    local.get 0
    i32.const 40
    i32.add
    i32.const 132237
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hdc5b09e71e2ad3d1E
    local.set 2
    local.get 0
    i32.load offset=40
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hbd3a9446c91f216eE
    local.get 0
    local.get 2
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    i32.const 40
    i32.add
    call $getGasLeft
    i64.const 3
    i64.div_u
    local.tee 3
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 12
    i32.add
    call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2642a594751154c9E
    call $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14echo_arguments17hd56a8ecff6ce8da8E
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
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17h63b8669bc3bef354E
    i32.store offset=40
    local.get 0
    i32.const 40
    i32.add
    call $_ZN71_$LT$C$u20$as$u20$forwarder..fwd_call_sync..ForwarderSyncCallModule$GT$36execute_on_dest_context_result_event17hecb58c7befef3daeE
    local.get 0
    i32.const 40
    i32.add
    local.get 3
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.load offset=12
    call $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14echo_arguments17hd56a8ecff6ce8da8E
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
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17h63b8669bc3bef354E
    i32.store offset=40
    local.get 0
    i32.const 40
    i32.add
    call $_ZN71_$LT$C$u20$as$u20$forwarder..fwd_call_sync..ForwarderSyncCallModule$GT$36execute_on_dest_context_result_event17hecb58c7befef3daeE
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_accept_funds (;344;) (type 14)
    (local i32 i32 i64 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 160
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    local.get 0
    i32.const 0
    i32.const 132241
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    local.tee 1
    i32.store offset=36
    local.get 0
    i32.const 40
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h5df87f3816375d02E
    call $getGasLeft
    local.set 2
    local.get 0
    i32.const 24
    i32.add
    i32.const 132179
    i32.const 25
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
    local.get 0
    local.get 2
    i64.const 1
    i64.shr_u
    local.tee 2
    i64.store offset=56
    local.get 0
    local.get 0
    i32.load offset=28
    local.tee 3
    i32.store offset=68
    local.get 0
    local.get 0
    i32.load offset=24
    local.tee 4
    i32.store offset=64
    local.get 0
    local.get 0
    i32.const 36
    i32.add
    i32.store offset=72
    local.get 0
    local.get 2
    i64.store offset=80
    local.get 0
    i32.load offset=52
    local.set 5
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load offset=48
        local.tee 6
        i32.const 2147483646
        i32.ne
        br_if 0 (;@2;)
        local.get 2
        local.get 1
        local.get 5
        local.get 4
        local.get 3
        call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17hb12d8b4f409f1b8eE
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      i64.load offset=40
      local.set 2
      local.get 0
      local.get 5
      i32.store offset=116
      local.get 0
      local.get 6
      i32.store offset=112
      local.get 0
      local.get 2
      i64.store offset=104
      local.get 0
      local.get 3
      i32.store offset=96
      local.get 0
      local.get 4
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
      local.get 2
      i64.store offset=128
      local.get 0
      local.get 0
      i32.const 76
      i32.add
      local.tee 5
      i32.store offset=152
      local.get 0
      local.get 5
      i32.store offset=148
      local.get 0
      local.get 3
      i32.store offset=124
      local.get 0
      local.get 4
      i32.store offset=120
      local.get 0
      local.get 0
      i32.const 80
      i32.add
      i32.store offset=144
      block ;; label = @2
        local.get 2
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 8
        i32.add
        local.get 4
        local.get 3
        local.get 7
        local.get 6
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17he682911a437c39d6E
        local.get 0
        i32.load offset=12
        local.set 3
        local.get 0
        i32.load offset=8
        local.set 4
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h8b79aa6bcab6cacbE
        local.set 5
        local.get 0
        i64.load offset=80
        local.get 0
        i32.load offset=36
        local.get 5
        local.get 4
        local.get 3
        call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17hb12d8b4f409f1b8eE
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      i32.const 16
      i32.add
      local.get 4
      local.get 3
      local.get 1
      local.get 0
      i32.const 128
      i32.add
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17ha53148665da6269bE
      local.get 0
      i32.load offset=20
      local.set 3
      local.get 0
      i32.load offset=16
      local.set 4
      call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hab6fdc55770704d5E
      local.set 5
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h8b79aa6bcab6cacbE
      local.set 1
      local.get 0
      i64.load offset=80
      local.get 5
      local.get 1
      local.get 4
      local.get 3
      call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17hb12d8b4f409f1b8eE
      local.set 3
    end
    call $cleanReturnData
    local.get 0
    local.get 3
    i32.store offset=88
    local.get 0
    i32.const 120
    i32.add
    local.get 0
    i32.const 88
    i32.add
    call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2642a594751154c9E
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h2d923a47c3d446c6E
    local.get 0
    i32.const 120
    i32.add
    i32.const 131740
    i32.const 11
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17ha10ae041da982dc1E
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.set 3
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.load offset=128
        local.get 0
        i32.load offset=124
        i32.ge_u
        br_if 1 (;@1;)
        local.get 3
        local.get 0
        i32.const 120
        i32.add
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17ha17772346edea882E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4a8d25352f4fdc92E
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 4
    i32.store offset=88
    local.get 0
    local.get 3
    i32.store offset=40
    i32.const 131976
    i32.const 24
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h379d61c3940dfe3fE
    local.tee 4
    local.get 0
    i32.const 88
    i32.add
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17h462934414920e9b0E
    local.get 0
    local.get 3
    call $mBufferGetLength
    i32.store offset=128
    local.get 0
    i32.const 0
    i32.store offset=124
    local.get 0
    local.get 0
    i32.const 40
    i32.add
    i32.store offset=120
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        local.get 0
        i32.const 120
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d7d0fb54c6b8c1cE
        local.get 0
        i32.load
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 0
        i32.load offset=4
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h04d64d755dd61c2eE
        br 0 (;@2;)
      end
    end
    local.get 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    call $managedWriteLog
    local.get 0
    i32.const 160
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_accept_funds_with_fees (;345;) (type 14)
    (local i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    i32.const 132241
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h406bc68df20c3ca5E
    local.set 2
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17h522dba0ae3fbe43aE
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
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators196_$LT$impl$u20$core..ops..arith..Mul$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3mul17h1d56a89c85af761cE
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u64$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h81caade251ad6d50E
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h733bf0c013170ff7E
    local.tee 5
    i32.store offset=28
    local.get 0
    i32.const 8
    i32.add
    i32.const 132110
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
    local.get 0
    i32.load offset=12
    local.set 4
    local.get 0
    i32.load offset=8
    local.set 2
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h1f7d586d66cdaa89E
    local.set 6
    block ;; label = @1
      block ;; label = @2
        local.get 3
        i32.const 2147483646
        i32.ne
        br_if 0 (;@2;)
        local.get 6
        local.get 1
        local.get 5
        local.get 2
        local.get 4
        call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17hb12d8b4f409f1b8eE
        local.set 4
        br 1 (;@1;)
      end
      local.get 0
      local.get 3
      i32.store offset=36
      local.get 0
      local.get 2
      local.get 4
      local.get 0
      i32.const 36
      i32.add
      local.get 0
      i32.const 28
      i32.add
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17he682911a437c39d6E
      local.get 0
      i32.load offset=4
      local.set 4
      local.get 0
      i32.load
      local.set 3
      local.get 6
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h8b79aa6bcab6cacbE
      local.get 3
      local.get 4
      call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17hb12d8b4f409f1b8eE
      local.set 4
    end
    call $cleanReturnData
    local.get 0
    local.get 4
    i32.store offset=32
    local.get 0
    i32.const 36
    i32.add
    local.get 0
    i32.const 32
    i32.add
    call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2642a594751154c9E
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h2d923a47c3d446c6E
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_accept_funds_then_read (;346;) (type 14)
    (local i32 i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 160
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    local.get 0
    i32.const 0
    i32.const 132241
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    i32.store offset=44
    local.get 0
    i32.const 48
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h5df87f3816375d02E
    local.get 0
    i32.const 32
    i32.add
    i32.const 132110
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
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
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h1f7d586d66cdaa89E
    local.tee 3
    i64.store offset=80
    local.get 0
    i32.load offset=60
    local.set 4
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load offset=56
        local.tee 5
        i32.const 2147483646
        i32.ne
        br_if 0 (;@2;)
        local.get 3
        local.get 0
        i32.load offset=44
        local.get 4
        local.get 2
        local.get 1
        call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h240b52b56bfc2ef0E
        br 1 (;@1;)
      end
      local.get 0
      i64.load offset=48
      local.set 3
      local.get 0
      local.get 4
      i32.store offset=116
      local.get 0
      local.get 5
      i32.store offset=112
      local.get 0
      local.get 3
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
      local.tee 5
      i32.store offset=140
      local.get 0
      local.get 0
      i32.const 112
      i32.add
      local.tee 6
      i32.store offset=136
      local.get 0
      local.get 3
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
      block ;; label = @2
        local.get 3
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 16
        i32.add
        local.get 2
        local.get 1
        local.get 6
        local.get 5
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17he682911a437c39d6E
        local.get 0
        i32.load offset=20
        local.set 1
        local.get 0
        i32.load offset=16
        local.set 2
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h8b79aa6bcab6cacbE
        local.set 4
        local.get 0
        i64.load offset=80
        local.get 0
        i32.load offset=44
        local.get 4
        local.get 2
        local.get 1
        call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h240b52b56bfc2ef0E
        br 1 (;@1;)
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
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17ha53148665da6269bE
      local.get 0
      i32.load offset=28
      local.set 1
      local.get 0
      i32.load offset=24
      local.set 2
      call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hab6fdc55770704d5E
      local.set 4
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h8b79aa6bcab6cacbE
      local.set 5
      local.get 0
      i64.load offset=80
      local.get 4
      local.get 5
      local.get 2
      local.get 1
      call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h240b52b56bfc2ef0E
    end
    call $cleanReturnData
    local.get 0
    i32.const 8
    i32.add
    i32.const 132099
    i32.const 11
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
    local.get 0
    i32.load offset=8
    local.set 2
    local.get 0
    i32.load offset=12
    local.set 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.tee 4
    i32.const 132110
    i32.const 12
    call $mBufferSetBytes
    drop
    local.get 1
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4a8d25352f4fdc92E
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h1f7d586d66cdaa89E
    local.set 3
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h8b79aa6bcab6cacbE
    local.set 4
    local.get 3
    local.get 0
    i32.load offset=44
    local.get 4
    local.get 2
    local.get 1
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17hc3be6bc89c88f62cE
    local.set 1
    call $cleanReturnData
    local.get 0
    local.get 1
    i32.store offset=88
    local.get 0
    i32.const 120
    i32.add
    local.get 0
    i32.const 88
    i32.add
    call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2642a594751154c9E
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h2d923a47c3d446c6E
    block ;; label = @1
      local.get 0
      i32.const 120
      i32.add
      i32.const 131740
      i32.const 11
      call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hc984367a4a982dc8E
      i32.const 131740
      i32.const 11
      call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417h2fc3cd6b02ea05b2E
      local.tee 3
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 131740
      i32.const 11
      i32.const 131072
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17ha0f12deeccb15319E
      unreachable
    end
    local.get 3
    call $smallIntFinishUnsigned
    local.get 0
    i32.const 160
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_retrieve_funds (;347;) (type 14)
    (local i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    i32.const 132241
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h204d7a5be78aa0c9E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hfdcd0b7e69c5d976E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h406bc68df20c3ca5E
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
    call $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14retrieve_funds17h1b2f0f747c8c7509E
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h1f7d586d66cdaa89E
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
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h8b79aa6bcab6cacbE
    local.set 5
    local.get 3
    local.get 4
    i32.load
    local.get 5
    local.get 2
    local.get 1
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17hc3be6bc89c88f62cE
    drop
    call $cleanReturnData
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_retrieve_funds_with_accept_func (;348;) (type 14)
    (local i32 i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 144
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    i32.const 132241
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h406bc68df20c3ca5E
    local.set 3
    local.get 0
    local.get 1
    i32.store offset=60
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h4a8c391d7e1ba5f1E
    local.set 1
    i32.const 132257
    i32.const 17
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h954e3eb7c7c8dac7E
    local.set 4
    local.get 0
    i32.const 48
    i32.add
    i32.const 132204
    i32.const 33
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
    local.get 0
    i32.const 40
    i32.add
    local.get 0
    i32.load offset=48
    local.get 0
    i32.load offset=52
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h316959d590b35e7dE
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    i32.load offset=40
    local.get 0
    i32.load offset=44
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h44f68a3aa260c2deE
    local.get 0
    i32.load offset=32
    local.set 2
    local.get 0
    i32.load offset=36
    local.tee 3
    i32.const 0
    local.get 4
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17h30e3ca3a32b62322E
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
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h1f7d586d66cdaa89E
    local.tee 5
    i64.store offset=80
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 1
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h6add63fea2b44796E
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
          call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17hf9d14ad6b3bf767dE
          local.get 0
          i32.load offset=12
          local.set 1
          local.get 0
          i32.load offset=8
          local.set 2
          local.get 5
          call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hab6fdc55770704d5E
          call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h8b79aa6bcab6cacbE
          local.get 2
          local.get 1
          call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h240b52b56bfc2ef0E
          br 2 (;@1;)
        end
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h8b79aa6bcab6cacbE
        local.set 1
        local.get 5
        local.get 0
        i32.load offset=60
        local.get 1
        local.get 2
        local.get 3
        call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h240b52b56bfc2ef0E
        br 1 (;@1;)
      end
      local.get 0
      i32.const 88
      i32.add
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17hbd43c146bf1fc57cE
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
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17he682911a437c39d6E
        local.get 0
        i32.load offset=20
        local.set 1
        local.get 0
        i32.load offset=16
        local.set 2
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h8b79aa6bcab6cacbE
        local.set 3
        local.get 0
        i64.load offset=80
        local.get 0
        i32.load offset=60
        local.get 3
        local.get 2
        local.get 1
        call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h240b52b56bfc2ef0E
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
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17ha53148665da6269bE
      local.get 0
      i32.load offset=28
      local.set 1
      local.get 0
      i32.load offset=24
      local.set 2
      call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hab6fdc55770704d5E
      local.set 3
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h8b79aa6bcab6cacbE
      local.set 4
      local.get 0
      i64.load offset=80
      local.get 3
      local.get 4
      local.get 2
      local.get 1
      call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h240b52b56bfc2ef0E
    end
    call $cleanReturnData
    local.get 0
    i32.const 144
    i32.add
    global.set $__stack_pointer
  )
  (func $accept_funds_func (;349;) (type 14)
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
  )
  (func $forward_sync_accept_funds_multi_transfer (;350;) (type 14)
    (local i32 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 144
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb9581b71ea6307f7E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hb37baba980227158E
    i32.const 0
    i32.const 132241
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=104
    local.get 0
    i32.const 104
    i32.add
    i32.const 132243
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hd725b8003e3d8d90E
    local.set 2
    local.get 0
    i32.load offset=104
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hbd3a9446c91f216eE
    local.get 0
    local.get 1
    i32.store offset=44
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.set 1
    local.get 0
    i32.const 88
    i32.add
    local.get 2
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h2d923a47c3d446c6E
    block ;; label = @1
      block ;; label = @2
        loop ;; label = @3
          local.get 0
          i32.const 104
          i32.add
          local.get 0
          i32.const 88
          i32.add
          call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h51a4ee9753ae3e76E
          block ;; label = @4
            local.get 0
            i64.load offset=104
            i64.const 0
            i64.ne
            br_if 0 (;@4;)
            local.get 0
            i32.const 32
            i32.add
            i32.const 132110
            i32.const 12
            call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
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
            call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h1f7d586d66cdaa89E
            local.tee 4
            i64.store offset=80
            block ;; label = @5
              block ;; label = @6
                local.get 1
                call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h6add63fea2b44796E
                br_table 0 (;@6;) 1 (;@5;) 4 (;@2;)
              end
              call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h8b79aa6bcab6cacbE
              local.set 1
              local.get 4
              local.get 0
              i32.load offset=44
              local.get 1
              local.get 3
              local.get 2
              call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h240b52b56bfc2ef0E
              br 4 (;@1;)
            end
            local.get 0
            i32.const 88
            i32.add
            local.get 1
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17hbd43c146bf1fc57cE
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
              call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17he682911a437c39d6E
              local.get 0
              i32.load offset=20
              local.set 1
              local.get 0
              i32.load offset=16
              local.set 2
              call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h8b79aa6bcab6cacbE
              local.set 3
              local.get 0
              i64.load offset=80
              local.get 0
              i32.load offset=44
              local.get 3
              local.get 2
              local.get 1
              call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h240b52b56bfc2ef0E
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
            call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17ha53148665da6269bE
            local.get 0
            i32.load offset=28
            local.set 1
            local.get 0
            i32.load offset=24
            local.set 2
            call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hab6fdc55770704d5E
            local.set 3
            call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h8b79aa6bcab6cacbE
            local.set 5
            local.get 0
            i64.load offset=80
            local.get 3
            local.get 5
            local.get 2
            local.get 1
            call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h240b52b56bfc2ef0E
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
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h9ac22400721cdddfE
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
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17hf9d14ad6b3bf767dE
      local.get 0
      i32.load offset=12
      local.set 1
      local.get 0
      i32.load offset=8
      local.set 2
      local.get 4
      call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hab6fdc55770704d5E
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h8b79aa6bcab6cacbE
      local.get 2
      local.get 1
      call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h240b52b56bfc2ef0E
    end
    call $cleanReturnData
    local.get 0
    i32.const 144
    i32.add
    global.set $__stack_pointer
  )
  (func $echo_args_async (;351;) (type 14)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb9581b71ea6307f7E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hb37baba980227158E
    i32.const 0
    i32.const 132241
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 132237
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hdc5b09e71e2ad3d1E
    local.set 2
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hbd3a9446c91f216eE
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
    call $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14echo_arguments17h191d00bbaf65c19cE
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    i32.store offset=24
    local.get 0
    i32.const 18
    i32.store offset=20
    local.get 0
    i32.const 132274
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h520128bf4032d559E
    unreachable
  )
  (func $forward_async_accept_funds (;352;) (type 14)
    (local i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    local.get 0
    i32.const 0
    i32.const 132241
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    i32.store offset=12
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h5df87f3816375d02E
    local.get 0
    i32.const 52
    i32.add
    local.get 0
    i32.const 12
    i32.add
    call $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$12accept_funds17h5094a8d44a430e4bE
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h5527fce92c500232E
    unreachable
  )
  (func $forward_async_accept_funds_half_payment (;353;) (type 14)
    (local i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    local.get 0
    i32.const 0
    i32.const 132241
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    i32.store offset=4
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h5df87f3816375d02E
    local.get 0
    local.get 0
    i32.load offset=20
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h7b800d8c0639ba6eE
    i32.store offset=28
    local.get 0
    i32.const 68
    i32.add
    local.get 0
    i32.const 4
    i32.add
    call $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$12accept_funds17h5094a8d44a430e4bE
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h14d17e2eb1393bedE
    unreachable
  )
  (func $forward_async_accept_funds_with_fees (;354;) (type 14)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    i32.const 132241
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h406bc68df20c3ca5E
    local.set 2
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h5df87f3816375d02E
    local.get 0
    i32.load offset=20
    local.set 1
    local.get 0
    local.get 1
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators196_$LT$impl$u20$core..ops..arith..Mul$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3mul17h1d56a89c85af761cE
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u64$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h81caade251ad6d50E
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators196_$LT$impl$u20$core..ops..arith..Sub$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h171f908febd9132eE
    i32.store offset=28
    local.get 0
    i32.const 68
    i32.add
    local.get 0
    i32.const 4
    i32.add
    call $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$12accept_funds17h5094a8d44a430e4bE
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h14d17e2eb1393bedE
    unreachable
  )
  (func $forward_async_retrieve_funds (;355;) (type 14)
    (local i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    i32.const 132241
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h204d7a5be78aa0c9E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hfdcd0b7e69c5d976E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h406bc68df20c3ca5E
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
    call $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14retrieve_funds17h1b2f0f747c8c7509E
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    i32.store offset=24
    local.get 0
    i32.const 23
    i32.store offset=20
    local.get 0
    i32.const 132039
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h520128bf4032d559E
    unreachable
  )
  (func $send_funds_twice (;356;) (type 14)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    i32.const 132241
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h204d7a5be78aa0c9E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h406bc68df20c3ca5E
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
    call $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$12accept_funds17h5094a8d44a430e4bE
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
    call $_ZN9forwarder14fwd_call_async13CallbackProxy25send_funds_twice_callback17h1188df354ca97ef2E
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h488f0db38251aa75E
    unreachable
  )
  (func $send_async_accept_multi_transfer (;357;) (type 14)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb9581b71ea6307f7E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hb37baba980227158E
    i32.const 0
    i32.const 132241
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i32.const 132243
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hd725b8003e3d8d90E
    local.set 2
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hbd3a9446c91f216eE
    local.get 0
    local.get 1
    i32.store offset=4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.set 1
    local.get 0
    i32.const 52
    i32.add
    local.get 2
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h2d923a47c3d446c6E
    loop ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.const 52
      i32.add
      call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h51a4ee9753ae3e76E
      block ;; label = @2
        local.get 0
        i64.load offset=8
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 52
        i32.add
        local.get 0
        i32.const 4
        i32.add
        call $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$12accept_funds17h5094a8d44a430e4bE
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
        call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h28634265bd294b03E
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
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h9ac22400721cdddfE
      br 0 (;@1;)
    end
  )
  (func $callback_data (;358;) (type 14)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    local.get 0
    call $_ZN73_$LT$C$u20$as$u20$forwarder..fwd_call_async..ForwarderAsyncCallModule$GT$13callback_data17h0719c5725f6d07c3E
    local.get 0
    i32.const 60
    i32.add
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.set 2
    local.get 0
    i32.load
    local.set 3
    local.get 0
    i32.load offset=4
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17hd0a1547b1535e699E
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
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$13get_unchecked17h49dd4e4a4b556290E
        local.get 0
        i32.const 40
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
        i32.const 40
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
        i64.store offset=40
        call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hf74003bb3416168fE
        local.set 8
        local.get 7
        i32.load
        local.get 8
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h4a08879f9b1acbbdE
        local.get 0
        i32.load offset=52
        local.get 8
        call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h94287d3351aaca2cE
        local.get 0
        i64.load offset=40
        local.get 8
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h1fc38bc197b6ece0E
        local.get 6
        i32.load
        local.get 8
        call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h1ac936f6e52fa334E
        local.get 1
        local.get 8
        call $_ZN145_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h55c302fd7b1731cfE
        local.get 8
        call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hdb8b72d6b620ace0E
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $callback_data_at_index (;359;) (type 14)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hab47ef385f7e2d67E
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    call $_ZN73_$LT$C$u20$as$u20$forwarder..fwd_call_async..ForwarderAsyncCallModule$GT$13callback_data17h0719c5725f6d07c3E
    block ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=8
      local.set 2
      local.get 0
      i32.load offset=12
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17hd0a1547b1535e699E
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 40
      i32.add
      local.get 2
      local.get 1
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$13get_unchecked17h49dd4e4a4b556290E
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
      call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17hd953ee0001f72746E
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
          call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d7d0fb54c6b8c1cE
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
    i32.const 132712
    i32.const 18
    call $signalError
    unreachable
  )
  (func $clear_callback_data (;360;) (type 14)
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
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    local.get 0
    i32.const 8
    i32.add
    call $_ZN73_$LT$C$u20$as$u20$forwarder..fwd_call_async..ForwarderAsyncCallModule$GT$13callback_data17h0719c5725f6d07c3E
    local.get 0
    i32.load offset=8
    local.set 2
    local.get 0
    i32.load offset=12
    local.tee 3
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17hd0a1547b1535e699E
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
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h81b153eedb74a1cbE
        call $_ZN11dharitri_sc7storage11storage_set13storage_clear17ha06e8b0bfaa75561E
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
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17h54adfd853d24cdbaE
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_exec_accept_funds (;361;) (type 14)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    local.get 0
    i32.const 0
    i32.const 132241
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    i32.store offset=12
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h5df87f3816375d02E
    local.get 0
    i32.const 132110
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17hffb8617c3d302b53E
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_execu_accept_funds_with_fees (;362;) (type 14)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    i32.const 132241
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h406bc68df20c3ca5E
    local.set 2
    local.get 0
    local.get 1
    i32.store offset=28
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17h522dba0ae3fbe43aE
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
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators196_$LT$impl$u20$core..ops..arith..Mul$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3mul17h1d56a89c85af761cE
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u64$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h81caade251ad6d50E
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h733bf0c013170ff7E
    local.tee 4
    i32.store offset=36
    local.get 0
    i32.const 8
    i32.add
    i32.const 132110
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
    local.get 0
    i32.load offset=12
    local.set 3
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load offset=8
          local.tee 2
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h702424924261bfccE
          br_if 0 (;@3;)
          call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h1f7d586d66cdaa89E
          local.set 5
          br 1 (;@2;)
        end
        i64.const 0
        local.set 5
        local.get 4
        call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h3eceefb576f648f8E
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
      i32.const 36
      i32.add
      i32.store offset=60
      local.get 0
      local.get 0
      i32.const 28
      i32.add
      i32.store offset=64
      local.get 0
      i32.const 40
      i32.add
      i32.const 16
      i32.add
      local.tee 4
      local.get 0
      i32.const 32
      i32.add
      i32.store
      local.get 0
      local.get 5
      i64.store offset=72
      local.get 0
      i32.const 80
      i32.add
      i32.const 16
      i32.add
      local.get 4
      i64.load
      i64.store
      local.get 0
      local.get 0
      i32.const 68
      i32.add
      i32.store offset=104
      local.get 0
      i64.const 0
      i64.store offset=88
      local.get 0
      local.get 3
      i32.store offset=84
      local.get 0
      local.get 2
      i32.store offset=80
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
      call $_ZN11dharitri_sc5types11interaction10tx_payment28tx_payment_rewa_or_dcdt_refs270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17hf8781c2672dc47edE
    end
    local.get 0
    i32.const 112
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_exec_accept_funds_twice (;363;) (type 14)
    (local i32 i64 i32 i64)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    local.get 0
    i32.const 0
    i32.const 132241
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    i32.store offset=28
    local.get 0
    i32.const 40
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h5df87f3816375d02E
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
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h7b800d8c0639ba6eE
    i32.store offset=36
    call $getGasLeft
    local.set 3
    local.get 0
    i32.const 16
    i32.add
    i32.const 132110
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17hc0452ecfdde51327E
    local.get 0
    i32.const 8
    i32.add
    i32.const 132110
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17hc0452ecfdde51327E
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_exec_accept_funds_return_values (;364;) (type 14)
    (local i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    local.get 0
    i32.const 0
    i32.const 132241
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    i32.store offset=12
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h5df87f3816375d02E
    i32.const 2147483646
    local.set 1
    block ;; label = @1
      local.get 0
      i32.load offset=24
      local.tee 2
      i32.const 2147483646
      i32.eq
      br_if 0 (;@1;)
      local.get 2
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8c610c1e598ecf95E
      local.set 1
    end
    call $getGasLeft
    local.set 3
    local.get 0
    i32.const 132110
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
    local.get 0
    i32.const 32
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17hffb8617c3d302b53E
    call $getGasLeft
    local.set 4
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17h1d9255fd5ea9b78bE
    local.set 2
    local.get 3
    call $smallIntFinishUnsigned
    local.get 4
    call $smallIntFinishUnsigned
    local.get 2
    call $bigIntFinishUnsigned
    local.get 1
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17hd953ee0001f72746E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_exec_reject_funds_multi_transfer (;365;) (type 14)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb9581b71ea6307f7E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hb37baba980227158E
    i32.const 0
    i32.const 132241
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=24
    local.get 0
    i32.const 24
    i32.add
    i32.const 132243
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hd725b8003e3d8d90E
    local.set 2
    local.get 0
    i32.load offset=24
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hbd3a9446c91f216eE
    local.get 0
    local.get 1
    i32.store offset=8
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.set 1
    local.get 0
    i32.const 12
    i32.add
    local.get 2
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h2d923a47c3d446c6E
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 24
        i32.add
        local.get 0
        i32.const 12
        i32.add
        call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h51a4ee9753ae3e76E
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
        local.get 1
        local.get 0
        i32.const 48
        i32.add
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h9ac22400721cdddfE
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 132110
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17h39455178e9104042E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $transf_exec_multi_reject_funds (;366;) (type 14)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb9581b71ea6307f7E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hb37baba980227158E
    i32.const 0
    i32.const 132241
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=24
    local.get 0
    i32.const 24
    i32.add
    i32.const 132243
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hd725b8003e3d8d90E
    local.set 2
    local.get 0
    i32.load offset=24
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hbd3a9446c91f216eE
    local.get 0
    local.get 1
    i32.store offset=8
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.set 1
    local.get 0
    i32.const 12
    i32.add
    local.get 2
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h2d923a47c3d446c6E
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 24
        i32.add
        local.get 0
        i32.const 12
        i32.add
        call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h51a4ee9753ae3e76E
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
        local.get 1
        local.get 0
        i32.const 48
        i32.add
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h9ac22400721cdddfE
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 132122
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17h39455178e9104042E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $changeOwnerAddress (;367;) (type 14)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    i32.const 132083
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    local.set 1
    i32.const 1
    i32.const 132419
    i32.const 9
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    local.set 2
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8c610c1e598ecf95E
    local.set 3
    local.get 0
    i32.const 24
    i32.add
    i32.const 131416
    i32.const 18
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.load offset=24
    local.get 0
    i32.load offset=28
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h316959d590b35e7dE
    local.get 0
    i32.load offset=20
    local.set 2
    local.get 0
    i32.load offset=16
    local.set 4
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h1f7d586d66cdaa89E
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h8b79aa6bcab6cacbE
    local.get 4
    local.get 2
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17hc3be6bc89c88f62cE
    drop
    call $cleanReturnData
    local.get 0
    i32.const 8
    i32.add
    i32.const 132162
    i32.const 17
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
    local.get 0
    i32.load offset=12
    local.set 2
    local.get 0
    i32.load offset=8
    local.set 3
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h1f7d586d66cdaa89E
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h8b79aa6bcab6cacbE
    local.get 3
    local.get 2
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17hc3be6bc89c88f62cE
    local.set 1
    call $cleanReturnData
    local.get 0
    local.get 1
    i32.store offset=32
    local.get 0
    i32.const 36
    i32.add
    local.get 0
    i32.const 32
    i32.add
    call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2642a594751154c9E
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h2d923a47c3d446c6E
    local.get 0
    i32.const 36
    i32.add
    i32.const 131740
    i32.const 11
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h4082b8aa2a34de6dE
    call $mBufferFinish
    drop
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $deploy_contract (;368;) (type 14)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb9581b71ea6307f7E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hb37baba980227158E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
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
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h01979e1879a26a5fE
    local.get 0
    i32.load offset=12
    local.set 2
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 0
    i32.load offset=20
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hbd3a9446c91f216eE
    local.get 0
    i32.const 20
    i32.add
    local.get 1
    local.get 3
    local.get 2
    call $_ZN9forwarder10fwd_deploy20DeployContractModule20perform_deploy_vault17hea4828ba3a980ea4E
    local.get 0
    i32.const 20
    i32.add
    call $_ZN11dharitri_sc2io6finish12finish_multi17h530cff12d8a3838eE
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $deploy_two_contracts (;369;) (type 14)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    local.get 0
    i32.const 4
    i32.add
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    local.tee 1
    i32.const 1
    local.get 0
    call $_ZN9forwarder10fwd_deploy20DeployContractModule20perform_deploy_vault17hea4828ba3a980ea4E
    local.get 0
    i32.load offset=4
    local.set 2
    local.get 0
    i32.const 4
    i32.add
    local.get 1
    i32.const 1
    local.get 0
    call $_ZN9forwarder10fwd_deploy20DeployContractModule20perform_deploy_vault17hea4828ba3a980ea4E
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
  (func $deploy_vault_from_source (;370;) (type 14)
    (local i32 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb9581b71ea6307f7E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hb37baba980227158E
    i32.const 0
    i32.const 132069
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=36
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 36
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h01979e1879a26a5fE
    local.get 0
    i32.load offset=12
    local.set 2
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 0
    i32.load offset=36
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hbd3a9446c91f216eE
    local.get 3
    local.get 2
    call $_ZN9forwarder11vault_proxy52VaultProxyMethods$LT$Env$C$From$C$$LP$$RP$$C$Gas$GT$4init17h82696875dc735db7E
    local.set 2
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17h1f7d586d66cdaa89E
    local.set 4
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17h1d9255fd5ea9b78bE
    local.set 3
    i32.const 0
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17hd4209dd883b83ed6E
    local.get 4
    local.get 3
    local.get 1
    i32.const -25
    local.get 2
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 5
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 6
    call $managedDeployFromSourceContract
    drop
    call $cleanReturnData
    local.get 0
    local.get 6
    i32.store offset=32
    local.get 0
    local.get 5
    i32.store offset=28
    local.get 0
    i32.const 36
    i32.add
    local.get 0
    i32.const 28
    i32.add
    call $_ZN258_$LT$dharitri_sc..types..interaction..tx_result_handler_list..tx_result_handler_list_cons..ConsRet$LT$Env$C$Head$C$Tail$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_result_handler_list..tx_result_handler_list_exec..RHListExec$LT$RawResult$C$Env$GT$$GT$19list_process_result17hfbf5560ee1d027b4E
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
    call $_ZN11dharitri_sc2io6finish12finish_multi17h530cff12d8a3838eE
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $upgradeVault (;371;) (type 14)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb9581b71ea6307f7E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hb37baba980227158E
    i32.const 0
    i32.const 132083
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
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
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h01979e1879a26a5fE
    local.get 0
    i32.load offset=12
    local.set 3
    local.get 0
    i32.load offset=8
    local.set 4
    local.get 0
    i32.load offset=20
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hbd3a9446c91f216eE
    local.get 0
    i32.const 20
    i32.add
    local.get 1
    local.get 4
    local.get 3
    call $_ZN9forwarder19vault_upgrade_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$7upgrade17h720946cd0b7dda1fE
    local.get 0
    i32.load offset=20
    local.set 1
    local.get 0
    i32.load offset=28
    local.set 3
    call $getGasLeft
    local.set 5
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17h1d9255fd5ea9b78bE
    local.set 4
    i32.const 256
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17hd4209dd883b83ed6E
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
  (func $upgrade_vault_from_source (;372;) (type 14)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb9581b71ea6307f7E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hb37baba980227158E
    i32.const 0
    i32.const 132083
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    local.set 1
    i32.const 1
    i32.const 132069
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
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
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h01979e1879a26a5fE
    local.get 0
    i32.load offset=12
    local.set 3
    local.get 0
    i32.load offset=8
    local.set 4
    local.get 0
    i32.load offset=20
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hbd3a9446c91f216eE
    local.get 0
    i32.const 20
    i32.add
    local.get 1
    local.get 4
    local.get 3
    call $_ZN9forwarder19vault_upgrade_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$7upgrade17h720946cd0b7dda1fE
    local.get 0
    i32.load offset=28
    local.set 1
    local.get 0
    i32.load offset=20
    local.set 3
    call $getGasLeft
    local.set 5
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17h1d9255fd5ea9b78bE
    local.set 4
    i32.const 256
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17hd4209dd883b83ed6E
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
  (func $getFungibleDcdtBalance (;373;) (type 14)
    (local i32)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    local.set 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hab6fdc55770704d5E
    local.get 0
    i64.const 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$16get_dcdt_balance17he21dba552bdee81cE
    call $bigIntFinishUnsigned
  )
  (func $getCurrentNftNonce (;374;) (type 14)
    (local i32 i32 i32)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    local.set 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hab6fdc55770704d5E
    local.set 1
    local.get 0
    call $mBufferGetLength
    local.set 2
    local.get 1
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node26unsafe_buffer_load_address17hd45b698bfdacadf0E
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node35unsafe_buffer_load_token_identifier17hab97fc9a139ece1cE
    i32.const 143085
    i32.const 143117
    local.get 2
    call $getCurrentDCDTNFTNonce
    call $smallIntFinishUnsigned
  )
  (func $send_dcdt (;375;) (type 14)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    i32.const 132241
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h406bc68df20c3ca5E
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te191_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$$LP$$RP$$C$$LP$$RP$$C$$LP$$RP$$GT$$GT$8transfer17hecdea23b3c010abcE
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $send_dcdt_with_fees (;376;) (type 14)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 1
    local.set 1
    i32.const 0
    local.set 2
    i32.const 0
    i32.const 132241
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    local.set 3
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h406bc68df20c3ca5E
    local.set 4
    local.get 0
    local.get 3
    i32.store offset=8
    block ;; label = @1
      block ;; label = @2
        call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h4a8c391d7e1ba5f1E
        local.tee 5
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h6add63fea2b44796E
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 5
        call $mBufferGetLength
        local.set 6
        local.get 0
        i32.const 24
        i32.add
        local.set 7
        i32.const 0
        local.set 3
        loop ;; label = @3
          local.get 3
          local.set 8
          local.get 2
          i32.const 16
          i32.add
          local.tee 9
          local.get 6
          i32.gt_u
          br_if 2 (;@1;)
          local.get 7
          i64.const 0
          i64.store
          local.get 0
          i64.const 0
          i64.store offset=16
          local.get 5
          local.get 2
          local.get 0
          i32.const 16
          i32.add
          i32.const 16
          call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hd40beec169d1bb3bE
          drop
          local.get 0
          i32.const 0
          i32.store offset=44
          i32.const 1
          local.set 3
          local.get 1
          i32.const 1
          i32.and
          local.set 10
          local.get 0
          i32.const 16
          i32.add
          local.get 0
          i32.const 44
          i32.add
          call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h53db2b2bf571a2d4E
          local.set 11
          local.get 0
          i32.const 16
          i32.add
          local.get 0
          i32.const 44
          i32.add
          call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17hbe7ae178b7e7042dE
          local.set 12
          local.get 0
          i32.const 16
          i32.add
          local.get 0
          i32.const 44
          i32.add
          call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h53db2b2bf571a2d4E
          local.set 13
          local.get 9
          local.set 2
          i32.const 0
          local.set 1
          local.get 10
          br_if 0 (;@3;)
        end
        local.get 8
        call $_ZN4core9panicking18panic_bounds_check17h125c3a5dd588952fE
        unreachable
      end
      i32.const 131143
      i32.const 34
      call $signalError
      unreachable
    end
    block ;; label = @1
      local.get 12
      i64.eqz
      br_if 0 (;@1;)
      i32.const 132684
      i32.const 28
      call $signalError
      unreachable
    end
    local.get 0
    local.get 11
    i32.store offset=12
    local.get 0
    local.get 13
    local.get 13
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators196_$LT$impl$u20$core..ops..arith..Mul$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3mul17h1d56a89c85af761cE
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u64$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h81caade251ad6d50E
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h733bf0c013170ff7E
    i32.store offset=44
    local.get 0
    i64.const 0
    i64.store offset=16
    local.get 0
    local.get 0
    i32.const 44
    i32.add
    i32.store offset=28
    local.get 0
    local.get 0
    i32.const 12
    i32.add
    i32.store offset=24
    local.get 0
    local.get 0
    i32.const 8
    i32.add
    i32.store offset=32
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te191_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$$LP$$RP$$C$$LP$$RP$$C$$LP$$RP$$GT$$GT$8transfer17hecdea23b3c010abcE
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN4core9panicking18panic_bounds_check17h125c3a5dd588952fE (;377;) (type 8) (param i32)
    call $_ZN4core9panicking9panic_fmt17hb859252f4b513814E
    unreachable
  )
  (func $send_dcdt_twice (;378;) (type 14)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    i32.const 132241
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h406bc68df20c3ca5E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h406bc68df20c3ca5E
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te191_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$$LP$$RP$$C$$LP$$RP$$C$$LP$$RP$$GT$$GT$8transfer17hecdea23b3c010abcE
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te191_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$$LP$$RP$$C$$LP$$RP$$C$$LP$$RP$$GT$$GT$8transfer17hecdea23b3c010abcE
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $send_dcdt_direct_multi_transfer (;379;) (type 14)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb9581b71ea6307f7E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hb37baba980227158E
    i32.const 0
    i32.const 132241
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=24
    local.get 0
    i32.const 24
    i32.add
    i32.const 132243
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hd725b8003e3d8d90E
    local.set 2
    local.get 0
    i32.load offset=24
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hbd3a9446c91f216eE
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.set 3
    local.get 0
    i32.const 12
    i32.add
    local.get 2
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h2d923a47c3d446c6E
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 24
        i32.add
        local.get 0
        i32.const 12
        i32.add
        call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h51a4ee9753ae3e76E
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
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h9ac22400721cdddfE
        br 0 (;@2;)
      end
    end
    local.get 0
    call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hf5e126a000ddfdbaE
    local.get 3
    local.get 1
    i64.const 0
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt398_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$24perform_transfer_execute17ha00b4267174f5cf5E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $issue_fungible_token (;380;) (type 14)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h3d33677909886f9dE
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h406bc68df20c3ca5E
    local.set 3
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17hfc56ef8b9f218556E
    local.set 4
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h3e8c731c5521fc0bE
    i32.store offset=8
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_ref23ManagedRef$LT$M$C$T$GT$11clone_value17h74dff60985bcdc23E
    local.set 4
    local.get 0
    i64.const 72340172838076673
    i64.store offset=16 align=4
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.const 36
    i32.add
    local.get 4
    local.get 1
    local.get 2
    local.get 3
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14issue_fungible17h41a1c9fb6453dbedE
    local.get 0
    i32.const 12
    i32.add
    local.get 0
    i32.const 8
    i32.add
    call $_ZN9forwarder8fwd_dcdt13CallbackProxy19dcdt_issue_callback17hc38f5f2776c0d0a4E
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h7a504f5b455f6ed4E
    unreachable
  )
  (func $local_mint (;381;) (type 14)
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    i64.const 0
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h406bc68df20c3ca5E
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_local_mint17hdfa1d8a682b60a13E
  )
  (func $local_burn (;382;) (type 14)
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    i64.const 0
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h406bc68df20c3ca5E
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_local_burn17h8c60213153b3f191E
  )
  (func $get_dcdt_local_roles (;383;) (type 14)
    (local i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const -8
    local.set 1
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    call $getDCDTLocalRoles
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.set 3
    loop ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.const 132976
          i32.add
          i32.load8_u
          local.tee 4
          i32.const 3
          i32.shl
          i32.const 132992
          i32.add
          i64.load
          local.get 2
          i64.and
          i64.const 0
          i64.eq
          br_if 1 (;@2;)
          local.get 0
          local.get 4
          call $_ZN11dharitri_sc5types5flags15dcdt_local_role13DcdtLocalRole12as_role_name17h730e7a20f658f40eE
          local.get 3
          local.get 0
          i32.load
          local.get 0
          i32.load offset=4
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h954e3eb7c7c8dac7E
          call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h04d64d755dd61c2eE
          br 1 (;@2;)
        end
        local.get 0
        local.get 3
        i32.store offset=12
        local.get 0
        i32.const 12
        i32.add
        call $_ZN11dharitri_sc2io6finish12finish_multi17h71bc99a01c8660d6E
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
  (func $get_dcdt_token_data (;384;) (type 14)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    local.get 0
    i32.const 48
    i32.add
    i32.const 0
    i32.const 132555
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hfdcd0b7e69c5d976E
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$19get_dcdt_token_data17haea5a39b71696af0E
    local.get 0
    local.get 0
    i32.load offset=72
    local.tee 1
    i32.store offset=44
    local.get 0
    local.get 0
    i32.load8_u offset=76
    local.tee 2
    i32.store8 offset=41
    local.get 0
    local.get 0
    i32.load8_u offset=77
    local.tee 3
    i32.store8 offset=40
    local.get 0
    local.get 0
    i32.load offset=68
    local.tee 4
    i32.store offset=36
    local.get 0
    local.get 0
    i32.load offset=64
    local.tee 5
    i32.store offset=32
    local.get 0
    local.get 0
    i32.load offset=60
    local.tee 6
    i32.store offset=28
    local.get 0
    local.get 0
    i32.load offset=56
    local.tee 7
    i32.store offset=24
    local.get 0
    local.get 0
    i32.load offset=52
    local.tee 8
    i32.store offset=20
    local.get 0
    local.get 0
    i32.load offset=48
    local.tee 9
    i32.store offset=16
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
    call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hf74003bb3416168fE
    local.set 2
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
        i32.const 8
        i32.add
        local.get 0
        i32.const 48
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d7d0fb54c6b8c1cE
        local.get 0
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=12
        local.get 2
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h4a08879f9b1acbbdE
        br 0 (;@2;)
      end
    end
    local.get 2
    call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hdb8b72d6b620ace0E
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $is_dcdt_frozen (;385;) (type 14)
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    i32.const 132555
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hfdcd0b7e69c5d976E
    call $managedIsDCDTFrozen
    i32.const 0
    i32.gt_s
    i64.extend_i32_u
    call $smallIntFinishSigned
  )
  (func $is_dcdt_paused (;386;) (type 14)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    call $managedIsDCDTPaused
    i32.const 0
    i32.gt_s
    i64.extend_i32_u
    call $smallIntFinishSigned
  )
  (func $is_dcdt_limited_transfer (;387;) (type 14)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    call $managedIsDCDTLimitedTransfer
    i32.const 0
    i32.gt_s
    i64.extend_i32_u
    call $smallIntFinishSigned
  )
  (func $validate_token_identifier (;388;) (type 14)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    call $validateTokenIdentifier
    i32.const 0
    i32.ne
    i64.extend_i32_u
    call $smallIntFinishSigned
  )
  (func $sft_issue (;389;) (type 14)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h3d33677909886f9dE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    local.set 2
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17hfc56ef8b9f218556E
    local.set 3
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h3e8c731c5521fc0bE
    i32.store offset=8
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_ref23ManagedRef$LT$M$C$T$GT$11clone_value17h74dff60985bcdc23E
    local.set 3
    local.get 0
    i32.const 16843009
    i32.store offset=15 align=1
    local.get 0
    i32.const 16843009
    i32.store offset=12
    local.get 0
    i32.const 36
    i32.add
    local.get 3
    local.get 1
    local.get 2
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$19issue_semi_fungible17h6cb43c896d7b977bE
    local.get 0
    i32.const 12
    i32.add
    local.get 0
    i32.const 8
    i32.add
    call $_ZN9forwarder7fwd_sft13CallbackProxy18sft_issue_callback17he79ff718cebee0adE
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h7a504f5b455f6ed4E
    unreachable
  )
  (func $get_nft_balance (;390;) (type 14)
    (local i32 i64)
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    local.set 0
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hfdcd0b7e69c5d976E
    local.set 1
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hab6fdc55770704d5E
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$16get_dcdt_balance17he21dba552bdee81cE
    call $bigIntFinishUnsigned
  )
  (func $buy_nft (;391;) (type 14)
    (local i32 i32 i64 i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hfdcd0b7e69c5d976E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h406bc68df20c3ca5E
    local.set 3
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h5df87f3816375d02E
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h3e8c731c5521fc0bE
    local.set 4
    local.get 0
    i64.load
    local.set 5
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hab6fdc55770704d5E
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$19get_dcdt_token_data17haea5a39b71696af0E
    local.get 0
    i32.load offset=12
    local.tee 6
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h28c8a67147b84629E
    local.tee 7
    local.get 7
    local.get 0
    i32.load offset=36
    call $bigIntMul
    local.get 7
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u64$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h81caade251ad6d50E
    local.set 7
    local.get 4
    local.get 1
    local.get 2
    local.get 3
    i64.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17h1626e39c56ea58eaE
    block ;; label = @1
      block ;; label = @2
        local.get 7
        call $_ZN11dharitri_sc5types7managed5basic11big_num_cmp7cmp_i6417h1e1dc0af5c7eb761E
        i32.const 255
        i32.and
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        local.get 6
        call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h28c8a67147b84629E
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
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
          local.set 3
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
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
            call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21transfer_dcdt_execute17h47f0d885fbb79ce8E
            br 2 (;@2;)
          end
          local.get 8
          local.get 1
          local.get 5
          local.get 7
          i64.const 0
          local.get 3
          local.get 4
          call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17h1626e39c56ea58eaE
          br 1 (;@2;)
        end
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
        local.set 1
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
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
      call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h28c8a67147b84629E
      local.get 7
      call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h733bf0c013170ff7E
      local.set 1
    end
    local.get 1
    call $bigIntFinishUnsigned
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $nft_issue (;392;) (type 14)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h3d33677909886f9dE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    local.set 2
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17hfc56ef8b9f218556E
    local.set 3
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h3e8c731c5521fc0bE
    i32.store offset=8
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_ref23ManagedRef$LT$M$C$T$GT$11clone_value17h74dff60985bcdc23E
    local.set 3
    local.get 0
    i32.const 16843009
    i32.store offset=15 align=1
    local.get 0
    i32.const 16843009
    i32.store offset=12
    local.get 0
    i32.const 36
    i32.add
    local.get 3
    local.get 1
    local.get 2
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$18issue_non_fungible17hccc145ea99c2f760E
    local.get 0
    i32.const 12
    i32.add
    local.get 0
    i32.const 8
    i32.add
    call $_ZN9forwarder7fwd_nft13CallbackProxy18nft_issue_callback17h55a209662a4c2b80E
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h7a504f5b455f6ed4E
    unreachable
  )
  (func $nft_create (;393;) (type 14)
    call $checkNoPayment
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h406bc68df20c3ca5E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h406bc68df20c3ca5E
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    i32.const 5
    i32.const 132446
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17haa714cb2216f2613E
    i32.const 6
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    call $_ZN9forwarder7fwd_nft18ForwarderNftModule10nft_create17hd3cdfb9d41e7c1b7E
    call $smallIntFinishUnsigned
  )
  (func $nft_create_compact (;394;) (type 14)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h406bc68df20c3ca5E
    local.set 2
    local.get 0
    i32.const 2
    i32.const 132446
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17haa714cb2216f2613E
    local.tee 3
    i32.const 16
    i32.shr_u
    i32.store8 offset=10
    local.get 0
    local.get 3
    i32.store16 offset=8
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.set 3
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17h1d9255fd5ea9b78bE
    local.set 4
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
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
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_nft_create17h637ede7ea4b55a7bE
    drop
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $nft_add_uris (;395;) (type 14)
    (local i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb9581b71ea6307f7E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hb37baba980227158E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hfdcd0b7e69c5d976E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=68
    local.get 0
    i32.const 68
    i32.add
    i32.const 132451
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hdc5b09e71e2ad3d1E
    local.set 3
    local.get 0
    i32.load offset=68
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hbd3a9446c91f216eE
    local.get 0
    local.get 3
    i32.store offset=60
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.set 4
    local.get 0
    local.get 3
    call $mBufferGetLength
    i32.store offset=76
    local.get 0
    i32.const 0
    i32.store offset=72
    local.get 0
    local.get 0
    i32.const 60
    i32.add
    i32.store offset=68
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 48
        i32.add
        local.get 0
        i32.const 68
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d7d0fb54c6b8c1cE
        local.get 0
        i32.load offset=48
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 0
        i32.load offset=52
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8c610c1e598ecf95E
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8c610c1e598ecf95E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4a8d25352f4fdc92E
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 4
    i32.store offset=64
    block ;; label = @1
      local.get 4
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h702424924261bfccE
      br_if 0 (;@1;)
      local.get 0
      i32.const 40
      i32.add
      i32.const 131434
      i32.const 13
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
      local.get 0
      i32.const 32
      i32.add
      local.get 0
      i32.load offset=40
      local.get 0
      i32.load offset=44
      local.get 1
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h316959d590b35e7dE
      local.get 0
      i32.const 24
      i32.add
      local.get 0
      i32.load offset=32
      local.get 0
      i32.load offset=36
      local.get 2
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hb49d3e4945570296E
      local.get 0
      i32.load offset=28
      local.set 3
      local.get 0
      i32.load offset=24
      local.set 1
      local.get 0
      local.get 4
      call $mBufferGetLength
      i32.store offset=76
      local.get 0
      i32.const 0
      i32.store offset=72
      local.get 0
      local.get 0
      i32.const 64
      i32.add
      i32.store offset=68
      block ;; label = @2
        loop ;; label = @3
          local.get 0
          i32.const 16
          i32.add
          local.get 0
          i32.const 68
          i32.add
          call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d7d0fb54c6b8c1cE
          local.get 0
          i32.load offset=16
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.const 8
          i32.add
          local.get 1
          local.get 3
          local.get 0
          i32.load offset=20
          call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17he18c885c93f5d14dE
          local.get 0
          i32.load offset=12
          local.set 3
          local.get 0
          i32.load offset=8
          local.set 1
          br 0 (;@3;)
        end
      end
      local.get 1
      local.get 3
      call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17hee4535e9504564a7E
    end
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $nft_update_attributes (;396;) (type 14)
    (local i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hfdcd0b7e69c5d976E
    local.set 2
    local.get 0
    i32.const 2
    i32.const 132461
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17haa714cb2216f2613E
    local.tee 3
    i32.const 16
    i32.shr_u
    i32.store8 offset=46
    local.get 0
    local.get 3
    i32.store16 offset=44
    local.get 0
    i32.const 32
    i32.add
    i32.const 131447
    i32.const 23
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
    local.get 0
    i32.const 24
    i32.add
    local.get 0
    i32.load offset=32
    local.get 0
    i32.load offset=36
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h316959d590b35e7dE
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.load offset=24
    local.get 0
    i32.load offset=28
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hb49d3e4945570296E
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
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h6b77cd7b34b30352E
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17hee4535e9504564a7E
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $nft_decode_complex_attributes (;397;) (type 14)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 144
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb9581b71ea6307f7E
    i32.const 6
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hb37baba980227158E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h406bc68df20c3ca5E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h406bc68df20c3ca5E
    local.set 4
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    local.set 5
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    local.set 6
    local.get 0
    i32.const 6
    i32.store offset=120
    local.get 0
    i32.const 88
    i32.add
    local.get 0
    i32.const 120
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h2f8aea97a02a07e8E
    local.get 0
    i32.load offset=120
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hbd3a9446c91f216eE
    local.get 0
    i32.load offset=104
    local.set 7
    local.get 0
    i32.load8_u offset=100
    local.set 8
    local.get 0
    i32.load offset=96
    local.set 9
    local.get 0
    i32.load offset=92
    local.set 10
    local.get 0
    i32.load offset=88
    local.set 11
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.tee 12
    i32.store offset=84
    local.get 12
    local.get 6
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4a8d25352f4fdc92E
    local.get 0
    i32.const 72
    i32.add
    i32.const 131403
    i32.const 13
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he66f50f3dcc4de9fE
    local.get 0
    i32.const 64
    i32.add
    local.get 0
    i32.load offset=72
    local.get 0
    i32.load offset=76
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h316959d590b35e7dE
    local.get 0
    i32.const 56
    i32.add
    local.get 0
    i32.load offset=64
    local.get 0
    i32.load offset=68
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h44f68a3aa260c2deE
    local.get 0
    i32.const 48
    i32.add
    local.get 0
    i32.load offset=56
    local.get 0
    i32.load offset=60
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17he18c885c93f5d14dE
    local.get 0
    i32.const 40
    i32.add
    local.get 0
    i32.load offset=48
    local.get 0
    i32.load offset=52
    local.get 4
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h44f68a3aa260c2deE
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    i32.load offset=40
    local.get 0
    i32.load offset=44
    local.get 5
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17he18c885c93f5d14dE
    local.get 0
    i32.load offset=32
    local.set 3
    local.get 0
    i32.load offset=36
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8c610c1e598ecf95E
    local.set 4
    local.get 11
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17he028281ef4410467E
    local.get 4
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h4a08879f9b1acbbdE
    local.get 10
    local.get 4
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h4a08879f9b1acbbdE
    local.get 9
    local.get 4
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h4a08879f9b1acbbdE
    local.get 8
    local.get 4
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h90235a7054103ac2E
    local.get 7
    local.get 4
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h4a08879f9b1acbbdE
    local.get 2
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4a8d25352f4fdc92E
    block ;; label = @1
      block ;; label = @2
        local.get 12
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h702424924261bfccE
        br_if 0 (;@2;)
        local.get 0
        local.get 12
        call $mBufferGetLength
        i32.store offset=96
        local.get 0
        i32.const 0
        i32.store offset=92
        local.get 0
        local.get 0
        i32.const 84
        i32.add
        i32.store offset=88
        loop ;; label = @3
          local.get 0
          i32.const 24
          i32.add
          local.get 0
          i32.const 88
          i32.add
          call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d7d0fb54c6b8c1cE
          local.get 0
          i32.load offset=24
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 16
          i32.add
          local.get 3
          local.get 2
          local.get 0
          i32.load offset=28
          call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17he18c885c93f5d14dE
          local.get 0
          i32.load offset=20
          local.set 2
          local.get 0
          i32.load offset=16
          local.set 3
          br 0 (;@3;)
        end
      end
      local.get 0
      i32.const 8
      i32.add
      local.get 3
      local.get 2
      call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h43f34474d9a2ace3E
      local.get 0
      i32.load offset=12
      local.set 2
      local.get 0
      i32.load offset=8
      local.set 3
    end
    local.get 3
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17ha0115b638e15f9a6E
    local.set 13
    local.get 0
    i32.const 88
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hab6fdc55770704d5E
    local.get 1
    local.get 13
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$19get_dcdt_token_data17haea5a39b71696af0E
    i32.const 0
    local.set 3
    local.get 0
    i32.load offset=100
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8c610c1e598ecf95E
    local.tee 4
    call $mBufferGetLength
    local.set 2
    local.get 0
    i32.const 0
    i32.store8 offset=136
    local.get 0
    local.get 2
    i32.store offset=132
    local.get 0
    local.get 4
    i32.store offset=128
    local.get 0
    local.get 2
    i32.store offset=124
    local.get 0
    i32.const 0
    i32.store offset=120
    local.get 0
    i32.const 120
    i32.add
    i32.const 131795
    i32.const 32
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h896649d052a69630E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h1ee5c52b6b284981E
    local.set 2
    local.get 0
    i32.const 120
    i32.add
    i32.const 131795
    i32.const 32
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h896649d052a69630E
    local.set 4
    local.get 0
    i32.const 120
    i32.add
    i32.const 131795
    i32.const 32
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h896649d052a69630E
    local.set 12
    local.get 0
    i32.const 0
    i32.store8 offset=143
    local.get 0
    i32.const 120
    i32.add
    local.get 0
    i32.const 143
    i32.add
    i32.const 1
    i32.const 131795
    i32.const 32
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hd5e478197ec876f7E
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load8_u offset=143
          br_table 2 (;@1;) 1 (;@2;) 0 (;@3;)
        end
        i32.const 131795
        i32.const 32
        i32.const 131849
        i32.const 13
        call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hbc2e1d8e291e306bE
        unreachable
      end
      i32.const 1
      local.set 3
    end
    local.get 0
    i32.const 120
    i32.add
    i32.const 131795
    i32.const 32
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h896649d052a69630E
    local.set 1
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load offset=124
        local.get 0
        i32.load offset=120
        i32.ne
        br_if 0 (;@2;)
        block ;; label = @3
          local.get 0
          i32.load8_u offset=136
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.const 0
          i32.store offset=143068
          i32.const 0
          i32.const 0
          i32.store8 offset=143072
        end
        local.get 11
        local.get 2
        call $bigIntCmp
        br_if 1 (;@1;)
        local.get 10
        local.get 4
        call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd0b752d83f0c99b9E
        i32.eqz
        br_if 1 (;@1;)
        local.get 9
        local.get 12
        call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd0b752d83f0c99b9E
        i32.eqz
        br_if 1 (;@1;)
        local.get 8
        i32.const 255
        i32.and
        i32.eqz
        local.get 3
        i32.xor
        i32.eqz
        br_if 1 (;@1;)
        local.get 7
        local.get 1
        call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd0b752d83f0c99b9E
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 144
        i32.add
        global.set $__stack_pointer
        return
      end
      i32.const 131795
      i32.const 32
      i32.const 131072
      i32.const 14
      call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hbc2e1d8e291e306bE
      unreachable
    end
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h12867aa22c1beb9fE
    unreachable
  )
  (func $nft_add_quantity (;398;) (type 14)
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hfdcd0b7e69c5d976E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h406bc68df20c3ca5E
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_local_mint17hdfa1d8a682b60a13E
  )
  (func $nft_burn (;399;) (type 14)
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hfdcd0b7e69c5d976E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h406bc68df20c3ca5E
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_local_burn17h8c60213153b3f191E
  )
  (func $transfer_nft_via_async_call (;400;) (type 14)
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    i32.const 132241
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hfdcd0b7e69c5d976E
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h406bc68df20c3ca5E
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$28transfer_dcdt_via_async_call17h32c7d42332c5f09aE
    unreachable
  )
  (func $transfer_nft_and_execute (;401;) (type 14)
    (local i32 i32 i32 i64 i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb9581b71ea6307f7E
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hb37baba980227158E
    i32.const 0
    i32.const 132241
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hfdcd0b7e69c5d976E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h406bc68df20c3ca5E
    local.set 4
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    local.set 5
    local.get 0
    i32.const 5
    i32.store offset=32
    local.get 0
    i32.const 32
    i32.add
    i32.const 132475
    i32.const 9
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hdc5b09e71e2ad3d1E
    local.set 6
    local.get 0
    i32.load offset=32
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hbd3a9446c91f216eE
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h3ebdee4a1dad3cc2E
    local.get 7
    local.set 8
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load offset=8
        local.tee 2
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h702424924261bfccE
        i32.eqz
        br_if 0 (;@2;)
        i64.const 0
        local.set 8
        local.get 4
        call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h3eceefb576f648f8E
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
      i32.const 28
      i32.add
      i32.store offset=60
      local.get 0
      local.get 0
      i32.const 20
      i32.add
      i32.store offset=64
      local.get 0
      i32.const 56
      i32.add
      local.tee 4
      local.get 0
      i32.const 24
      i32.add
      i32.store
      local.get 0
      local.get 8
      i64.store offset=72
      local.get 0
      i32.const 96
      i32.add
      local.get 4
      i64.load
      i64.store
      local.get 0
      local.get 0
      i32.const 68
      i32.add
      i32.store offset=104
      local.get 0
      local.get 3
      i64.store offset=88
      local.get 0
      local.get 6
      i32.store offset=84
      local.get 0
      local.get 2
      i32.store offset=80
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
      call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17h47945e8e133773efE
    end
    local.get 0
    i32.const 112
    i32.add
    global.set $__stack_pointer
  )
  (func $create_and_send (;402;) (type 14)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    i32.const 0
    i32.const 132241
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h406bc68df20c3ca5E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    local.set 4
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h406bc68df20c3ca5E
    local.set 5
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    local.set 6
    i32.const 6
    i32.const 132446
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17haa714cb2216f2613E
    local.set 7
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
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
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8c610c1e598ecf95E
    local.get 3
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h28c8a67147b84629E
    local.get 4
    local.get 5
    local.get 6
    local.get 7
    local.get 8
    call $_ZN9forwarder7fwd_nft18ForwarderNftModule10nft_create17hd3cdfb9d41e7c1b7E
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te191_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$$LP$$RP$$C$$LP$$RP$$C$$LP$$RP$$GT$$GT$8transfer17hecdea23b3c010abcE
    i32.const 131935
    i32.const 4
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h379d61c3940dfe3fE
    local.tee 2
    local.get 0
    i32.const 12
    i32.add
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h3053bd77437cc4bbE
    local.get 2
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17hdbc14e833ab6882bE
    local.get 2
    local.get 9
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17hf8eb8142ef223f8cE
    local.get 2
    local.get 0
    i32.const 20
    i32.add
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17h462934414920e9b0E
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    call $managedWriteLog
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $setLocalRoles (;403;) (type 14)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb9581b71ea6307f7E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hb37baba980227158E
    i32.const 0
    i32.const 132555
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 132583
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hd725b8003e3d8d90E
    local.set 3
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hbd3a9446c91f216eE
    local.get 0
    i32.const 12
    i32.add
    local.get 3
    call $_ZN11dharitri_sc5types7managed11multi_value24multi_value_encoded_iter165_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$GT$9into_iter17h8a75085343869464E
    local.get 0
    local.get 1
    local.get 2
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$17set_special_roles17hd61ea765d5cceceaE
    local.get 0
    i64.load
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.set 1
    local.get 0
    local.get 4
    i64.store offset=24 align=4
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    i32.const 21
    i32.store offset=16
    local.get 0
    i32.const 132562
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hbf99e9621009d4dcE
    unreachable
  )
  (func $unsetLocalRoles (;404;) (type 14)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb9581b71ea6307f7E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hb37baba980227158E
    i32.const 0
    i32.const 132555
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0e6f6ebadd0ad961E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8b9f42a6a36ff85bE
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 132583
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hd725b8003e3d8d90E
    local.set 3
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hbd3a9446c91f216eE
    local.get 0
    i32.const 12
    i32.add
    local.get 3
    call $_ZN11dharitri_sc5types7managed11multi_value24multi_value_encoded_iter165_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$GT$9into_iter17h8a75085343869464E
    local.get 0
    local.get 1
    local.get 2
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$19unset_special_roles17h2d45ea044b03557eE
    local.get 0
    i64.load
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
    local.set 1
    local.get 0
    local.get 4
    i64.store offset=24 align=4
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    i32.const 21
    i32.store offset=16
    local.get 0
    i32.const 132562
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hbf99e9621009d4dcE
    unreachable
  )
  (func $lastIssuedToken (;405;) (type 14)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    call $_ZN68_$LT$C$u20$as$u20$forwarder..fwd_storage..ForwarderStorageModule$GT$17last_issued_token17h23bd36c60f6730dbE
    call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h61e18f43ade6bbabE
    call $mBufferFinish
    drop
  )
  (func $lastErrorMessage (;406;) (type 14)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h17aac3cdbbb5544cE
    call $_ZN68_$LT$C$u20$as$u20$forwarder..fwd_storage..ForwarderStorageModule$GT$18last_error_message17h795999bba2480ae7E
    call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h61e18f43ade6bbabE
    call $mBufferFinish
    drop
  )
  (func $callBack (;407;) (type 14)
    (local i32 i32 i32 i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 176
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block ;; label = @1
      call $_ZN11dharitri_sc5types11interaction16callback_closure22cb_closure_storage_key17ha802713feed6a9d8E
      local.tee 1
      call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h61e18f43ade6bbabE
      local.tee 2
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h702424924261bfccE
      br_if 0 (;@1;)
      local.get 2
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8c610c1e598ecf95E
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
      call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h896649d052a69630E
      local.set 4
      local.get 0
      i32.const 140
      i32.add
      i32.const 131086
      i32.const 25
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17h71c3f02649418953E
      local.set 2
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
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
          call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h896649d052a69630E
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4a8d25352f4fdc92E
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
                i32.load offset=144
                local.get 0
                i32.load offset=140
                i32.ne
                br_if 0 (;@6;)
                block ;; label = @7
                  local.get 0
                  i32.load8_u offset=156
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 0
                  i32.const 0
                  i32.store offset=143068
                  i32.const 0
                  i32.const 0
                  i32.store8 offset=143072
                end
                local.get 1
                call $_ZN11dharitri_sc7storage11storage_set13storage_clear17ha06e8b0bfaa75561E
                local.get 0
                i32.const 36
                i32.add
                local.get 4
                call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h0752bc9cff2b9890E
                local.get 0
                i32.load offset=68
                i32.eqz
                br_if 5 (;@1;)
                local.get 0
                i32.const 140
                i32.add
                local.get 4
                call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h0752bc9cff2b9890E
                local.get 0
                i32.load offset=172
                i32.eqz
                br_if 5 (;@1;)
                block ;; label = @7
                  block ;; label = @8
                    block ;; label = @9
                      local.get 0
                      i32.const 140
                      i32.add
                      i32.const 132274
                      i32.const 18
                      call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17hb0b0d5447a3c7e23E
                      br_if 0 (;@9;)
                      local.get 0
                      i32.const 140
                      i32.add
                      i32.const 132039
                      i32.const 23
                      call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17hb0b0d5447a3c7e23E
                      br_if 2 (;@7;)
                      local.get 0
                      i32.const 140
                      i32.add
                      i32.const 132292
                      i32.const 25
                      call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17hb0b0d5447a3c7e23E
                      i32.eqz
                      br_if 1 (;@8;)
                      local.get 0
                      i32.const 80
                      i32.add
                      local.get 3
                      call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h2d923a47c3d446c6E
                      call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb9581b71ea6307f7E
                      local.get 0
                      i32.const 80
                      i32.add
                      i32.const 132241
                      i32.const 2
                      call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h26aa0434cd6bd691E
                      local.set 2
                      local.get 0
                      i32.const 80
                      i32.add
                      call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h2a6f38826cb51f45E
                      local.set 3
                      local.get 0
                      i32.const 80
                      i32.add
                      call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h507253d2877c92ffE
                      local.set 1
                      local.get 0
                      i32.load offset=84
                      local.get 0
                      i32.load offset=88
                      call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hee2d5993d501ea98E
                      local.get 0
                      local.get 2
                      i32.store offset=72
                      local.get 0
                      local.get 3
                      i32.store offset=76
                      local.get 0
                      local.get 1
                      i32.store offset=92
                      local.get 0
                      i32.const 128
                      i32.add
                      local.get 0
                      i32.const 72
                      i32.add
                      call $_ZN9forwarder11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$12accept_funds17h5094a8d44a430e4bE
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
                      i32.const 92
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
                      call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h14d17e2eb1393bedE
                      unreachable
                    end
                    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb9581b71ea6307f7E
                    i32.const 0
                    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hb37baba980227158E
                    local.get 0
                    i32.const 0
                    i32.store offset=128
                    local.get 0
                    i32.const 96
                    i32.add
                    local.get 0
                    i32.const 128
                    i32.add
                    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h7923a7b5a1223379E
                    local.get 0
                    i32.load offset=128
                    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hbd3a9446c91f216eE
                    local.get 0
                    i32.load offset=104
                    local.set 4
                    local.get 0
                    i32.load offset=100
                    local.set 2
                    local.get 0
                    i32.load offset=96
                    local.set 1
                    local.get 0
                    i32.const 96
                    i32.add
                    local.get 3
                    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h2d923a47c3d446c6E
                    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb9581b71ea6307f7E
                    local.get 0
                    i32.load offset=100
                    local.get 0
                    i32.load offset=104
                    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hee2d5993d501ea98E
                    block ;; label = @9
                      block ;; label = @10
                        local.get 1
                        br_if 0 (;@10;)
                        i32.const 132353
                        i32.const 7
                        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h954e3eb7c7c8dac7E
                        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$16from_single_item17h93f56de6b2e392f3E
                        local.tee 3
                        local.get 2
                        call $mBufferAppend
                        drop
                        br 1 (;@9;)
                      end
                      i32.const 132360
                      i32.const 5
                      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h954e3eb7c7c8dac7E
                      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$16from_single_item17h93f56de6b2e392f3E
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
                      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h954e3eb7c7c8dac7E
                      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4a8d25352f4fdc92E
                      local.get 3
                      local.get 4
                      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h4a8d25352f4fdc92E
                    end
                    local.get 0
                    local.get 3
                    i32.store offset=96
                    local.get 0
                    i32.const 96
                    i32.add
                    call $_ZN11dharitri_sc2io6finish12finish_multi17h71bc99a01c8660d6E
                    br 7 (;@1;)
                  end
                  local.get 0
                  i32.const 140
                  i32.add
                  local.get 4
                  call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h0752bc9cff2b9890E
                  local.get 0
                  i32.load offset=172
                  i32.eqz
                  br_if 6 (;@1;)
                  block ;; label = @8
                    local.get 0
                    i32.const 140
                    i32.add
                    i32.const 132536
                    i32.const 19
                    call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17hb0b0d5447a3c7e23E
                    i32.eqz
                    br_if 0 (;@8;)
                    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb9581b71ea6307f7E
                    i32.const 0
                    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hb37baba980227158E
                    local.get 0
                    i32.const 0
                    i32.store offset=80
                    local.get 0
                    i32.const 96
                    i32.add
                    local.get 0
                    i32.const 80
                    i32.add
                    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h760400bd3ef8f7dcE
                    local.get 0
                    i32.load offset=80
                    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hbd3a9446c91f216eE
                    local.get 0
                    i32.load offset=104
                    local.set 4
                    local.get 0
                    i32.load offset=96
                    local.set 1
                    local.get 0
                    i32.const 128
                    i32.add
                    local.get 3
                    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h2d923a47c3d446c6E
                    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb9581b71ea6307f7E
                    local.get 0
                    i32.const 128
                    i32.add
                    i32.const 132455
                    i32.const 6
                    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h26aa0434cd6bd691E
                    local.set 3
                    local.get 0
                    i32.load offset=132
                    local.get 0
                    i32.load offset=136
                    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hee2d5993d501ea98E
                    local.get 0
                    i32.const 8
                    i32.add
                    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17h522dba0ae3fbe43aE
                    local.get 0
                    i32.load offset=8
                    local.set 2
                    block ;; label = @9
                      local.get 1
                      br_if 0 (;@9;)
                      call $_ZN68_$LT$C$u20$as$u20$forwarder..fwd_storage..ForwarderStorageModule$GT$17last_issued_token17h23bd36c60f6730dbE
                      local.set 3
                      local.get 2
                      i32.const 2147483646
                      i32.eq
                      br_if 4 (;@5;)
                      local.get 3
                      local.get 2
                      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h586b3a99358b02d1E
                      call $_ZN68_$LT$C$u20$as$u20$forwarder..fwd_storage..ForwarderStorageModule$GT$18last_error_message17h795999bba2480ae7E
                      call $_ZN11dharitri_sc7storage11storage_set13storage_clear17ha06e8b0bfaa75561E
                      br 8 (;@1;)
                    end
                    local.get 2
                    i32.const 2147483646
                    i32.ne
                    br_if 6 (;@2;)
                    local.get 0
                    i32.load offset=12
                    local.tee 2
                    call $_ZN4core3cmp10PartialOrd2gt17h56b8e24c801bef10E
                    i32.eqz
                    br_if 6 (;@2;)
                    local.get 3
                    local.get 2
                    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te191_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$$LP$$RP$$C$$LP$$RP$$C$$LP$$RP$$GT$$GT$8transfer17ha29ae23fb6e853e6E
                    br 6 (;@2;)
                  end
                  local.get 0
                  i32.const 140
                  i32.add
                  local.get 4
                  call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h0752bc9cff2b9890E
                  local.get 0
                  i32.load offset=172
                  i32.eqz
                  br_if 6 (;@1;)
                  block ;; label = @8
                    local.get 0
                    i32.const 140
                    i32.add
                    i32.const 132518
                    i32.const 18
                    call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17hb0b0d5447a3c7e23E
                    i32.eqz
                    br_if 0 (;@8;)
                    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb9581b71ea6307f7E
                    i32.const 0
                    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hb37baba980227158E
                    local.get 0
                    i32.const 0
                    i32.store offset=80
                    local.get 0
                    i32.const 96
                    i32.add
                    local.get 0
                    i32.const 80
                    i32.add
                    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1e08fd7e1add7819E
                    local.get 0
                    i32.load offset=80
                    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hbd3a9446c91f216eE
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
                    i32.const 128
                    i32.add
                    local.get 3
                    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h2d923a47c3d446c6E
                    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb9581b71ea6307f7E
                    local.get 0
                    i32.const 128
                    i32.add
                    i32.const 132455
                    i32.const 6
                    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h26aa0434cd6bd691E
                    local.set 3
                    local.get 0
                    i32.load offset=132
                    local.get 0
                    i32.load offset=136
                    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hee2d5993d501ea98E
                    block ;; label = @9
                      local.get 2
                      br_if 0 (;@9;)
                      call $_ZN68_$LT$C$u20$as$u20$forwarder..fwd_storage..ForwarderStorageModule$GT$17last_issued_token17h23bd36c60f6730dbE
                      local.get 4
                      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h586b3a99358b02d1E
                      call $_ZN68_$LT$C$u20$as$u20$forwarder..fwd_storage..ForwarderStorageModule$GT$18last_error_message17h795999bba2480ae7E
                      call $_ZN11dharitri_sc7storage11storage_set13storage_clear17ha06e8b0bfaa75561E
                      br 8 (;@1;)
                    end
                    local.get 0
                    i32.const 16
                    i32.add
                    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17h522dba0ae3fbe43aE
                    local.get 0
                    i32.load offset=16
                    i32.const 2147483646
                    i32.ne
                    br_if 5 (;@3;)
                    local.get 0
                    i32.load offset=20
                    local.tee 2
                    call $_ZN4core3cmp10PartialOrd2gt17h56b8e24c801bef10E
                    i32.eqz
                    br_if 5 (;@3;)
                    local.get 3
                    local.get 2
                    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te191_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$$LP$$RP$$C$$LP$$RP$$C$$LP$$RP$$GT$$GT$8transfer17ha29ae23fb6e853e6E
                    br 5 (;@3;)
                  end
                  local.get 0
                  i32.const 140
                  i32.add
                  local.get 4
                  call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h0752bc9cff2b9890E
                  local.get 0
                  i32.load offset=172
                  i32.eqz
                  br_if 6 (;@1;)
                  block ;; label = @8
                    local.get 0
                    i32.const 140
                    i32.add
                    i32.const 132428
                    i32.const 18
                    call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17hb0b0d5447a3c7e23E
                    i32.eqz
                    br_if 0 (;@8;)
                    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb9581b71ea6307f7E
                    i32.const 0
                    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hb37baba980227158E
                    local.get 0
                    i32.const 0
                    i32.store offset=80
                    local.get 0
                    i32.const 96
                    i32.add
                    local.get 0
                    i32.const 80
                    i32.add
                    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h1e08fd7e1add7819E
                    local.get 0
                    i32.load offset=80
                    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hbd3a9446c91f216eE
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
                    i32.const 128
                    i32.add
                    local.get 3
                    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h2d923a47c3d446c6E
                    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb9581b71ea6307f7E
                    local.get 0
                    i32.const 128
                    i32.add
                    i32.const 132455
                    i32.const 6
                    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h26aa0434cd6bd691E
                    local.set 3
                    local.get 0
                    i32.load offset=132
                    local.get 0
                    i32.load offset=136
                    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hee2d5993d501ea98E
                    block ;; label = @9
                      local.get 2
                      br_if 0 (;@9;)
                      call $_ZN68_$LT$C$u20$as$u20$forwarder..fwd_storage..ForwarderStorageModule$GT$17last_issued_token17h23bd36c60f6730dbE
                      local.get 4
                      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h586b3a99358b02d1E
                      call $_ZN68_$LT$C$u20$as$u20$forwarder..fwd_storage..ForwarderStorageModule$GT$18last_error_message17h795999bba2480ae7E
                      call $_ZN11dharitri_sc7storage11storage_set13storage_clear17ha06e8b0bfaa75561E
                      br 8 (;@1;)
                    end
                    local.get 0
                    i32.const 24
                    i32.add
                    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17h522dba0ae3fbe43aE
                    local.get 0
                    i32.load offset=24
                    i32.const 2147483646
                    i32.ne
                    br_if 4 (;@4;)
                    local.get 0
                    i32.load offset=28
                    local.tee 2
                    call $_ZN4core3cmp10PartialOrd2gt17h56b8e24c801bef10E
                    i32.eqz
                    br_if 4 (;@4;)
                    local.get 3
                    local.get 2
                    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te191_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$$LP$$RP$$C$$LP$$RP$$C$$LP$$RP$$GT$$GT$8transfer17ha29ae23fb6e853e6E
                    br 4 (;@4;)
                  end
                  local.get 0
                  i32.const 140
                  i32.add
                  local.get 4
                  call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h0752bc9cff2b9890E
                  local.get 0
                  i32.load offset=172
                  i32.eqz
                  br_if 6 (;@1;)
                  block ;; label = @8
                    local.get 0
                    i32.const 140
                    i32.add
                    i32.const 132562
                    i32.const 21
                    call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17hb0b0d5447a3c7e23E
                    i32.eqz
                    br_if 0 (;@8;)
                    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb9581b71ea6307f7E
                    i32.const 0
                    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hb37baba980227158E
                    local.get 0
                    i32.const 0
                    i32.store offset=128
                    local.get 0
                    i32.const 96
                    i32.add
                    local.get 0
                    i32.const 128
                    i32.add
                    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h760400bd3ef8f7dcE
                    local.get 0
                    i32.load offset=128
                    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hbd3a9446c91f216eE
                    local.get 0
                    i32.load offset=104
                    local.set 1
                    local.get 0
                    i32.load offset=96
                    local.set 2
                    local.get 0
                    i32.const 96
                    i32.add
                    local.get 3
                    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h2d923a47c3d446c6E
                    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb9581b71ea6307f7E
                    local.get 0
                    i32.load offset=100
                    local.get 0
                    i32.load offset=104
                    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hee2d5993d501ea98E
                    call $_ZN68_$LT$C$u20$as$u20$forwarder..fwd_storage..ForwarderStorageModule$GT$18last_error_message17h795999bba2480ae7E
                    local.set 3
                    block ;; label = @9
                      local.get 2
                      br_if 0 (;@9;)
                      local.get 3
                      call $_ZN11dharitri_sc7storage11storage_set13storage_clear17ha06e8b0bfaa75561E
                      br 8 (;@1;)
                    end
                    local.get 3
                    local.get 1
                    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h586b3a99358b02d1E
                    br 7 (;@1;)
                  end
                  i32.const 132365
                  i32.const 54
                  call $signalError
                  unreachable
                end
                local.get 0
                i32.const 96
                i32.add
                local.get 3
                call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h2d923a47c3d446c6E
                call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hb9581b71ea6307f7E
                local.get 0
                i32.load offset=100
                local.get 0
                i32.load offset=104
                call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hee2d5993d501ea98E
                local.get 0
                i32.const 96
                i32.add
                call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h5df87f3816375d02E
                local.get 0
                i64.load offset=96
                local.set 5
                local.get 0
                i32.load offset=108
                local.set 2
                local.get 0
                local.get 0
                i32.load offset=104
                i32.store offset=92
                local.get 0
                local.get 2
                i32.store offset=128
                i32.const 132039
                i32.const 23
                call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h379d61c3940dfe3fE
                local.tee 2
                local.get 0
                i32.const 92
                i32.add
                call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h957a2f5c045c7692E
                local.get 2
                local.get 5
                call $_ZN11dharitri_sc8log_util21serialize_event_topic17hf8eb8142ef223f8cE
                local.get 2
                local.get 0
                i32.const 128
                i32.add
                call $_ZN11dharitri_sc8log_util21serialize_event_topic17h462934414920e9b0E
                local.get 2
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
                call $managedWriteLog
                local.get 0
                call $_ZN73_$LT$C$u20$as$u20$forwarder..fwd_call_async..ForwarderAsyncCallModule$GT$13callback_data17h0719c5725f6d07c3E
                local.get 0
                i32.load
                local.set 2
                local.get 0
                i32.load offset=4
                local.set 3
                i32.const 132039
                i32.const 23
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h954e3eb7c7c8dac7E
                local.set 1
                local.get 0
                i32.load offset=128
                local.set 4
                local.get 0
                i32.load offset=92
                local.set 6
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h3be79da245babac0E
                local.set 7
                local.get 0
                local.get 6
                i32.store offset=108
                local.get 0
                local.get 1
                i32.store offset=104
                local.get 0
                local.get 7
                i32.store offset=116
                local.get 0
                local.get 4
                i32.store offset=112
                local.get 0
                local.get 5
                i64.store offset=96
                local.get 2
                local.get 3
                call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17hd0a1547b1535e699E
                i32.const 1
                i32.add
                local.tee 7
                call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h81b153eedb74a1cbE
                local.set 8
                local.get 1
                call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hf74003bb3416168fE
                local.tee 2
                call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h4a08879f9b1acbbdE
                local.get 6
                local.get 2
                call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h94287d3351aaca2cE
                local.get 5
                local.get 2
                call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h1fc38bc197b6ece0E
                local.get 4
                local.get 2
                call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h1ac936f6e52fa334E
                local.get 0
                i32.const 116
                i32.add
                local.get 2
                call $_ZN145_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h55c302fd7b1731cfE
                local.get 8
                local.get 2
                call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h77c2eb50cfe37365E
                local.get 3
                local.get 7
                call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17h54adfd853d24cdbaE
                br 5 (;@1;)
              end
              i32.const 131086
              i32.const 25
              i32.const 131072
              i32.const 14
              call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hbc2e1d8e291e306bE
              unreachable
            end
            i32.const 131827
            i32.const 13
            call $signalError
            unreachable
          end
          call $_ZN68_$LT$C$u20$as$u20$forwarder..fwd_storage..ForwarderStorageModule$GT$18last_error_message17h795999bba2480ae7E
          local.get 1
          call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h586b3a99358b02d1E
          br 2 (;@1;)
        end
        call $_ZN68_$LT$C$u20$as$u20$forwarder..fwd_storage..ForwarderStorageModule$GT$18last_error_message17h795999bba2480ae7E
        local.get 1
        call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h586b3a99358b02d1E
        br 1 (;@1;)
      end
      call $_ZN68_$LT$C$u20$as$u20$forwarder..fwd_storage..ForwarderStorageModule$GT$18last_error_message17h795999bba2480ae7E
      local.get 4
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h586b3a99358b02d1E
    end
    local.get 0
    i32.const 176
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN4core9panicking9panic_fmt17hb859252f4b513814E (;408;) (type 14)
    call $rust_begin_unwind
    unreachable
  )
  (func $_ZN17compiler_builtins3mem6memcpy17h6a01844efc49c0e5E (;409;) (type 6) (param i32 i32 i32) (result i32)
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
  (func $_ZN17compiler_builtins3mem6memcmp17h0161c33af60bef75E (;410;) (type 6) (param i32 i32 i32) (result i32)
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
  (func $memcpy (;411;) (type 6) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN17compiler_builtins3mem6memcpy17h6a01844efc49c0e5E
  )
  (func $memcmp (;412;) (type 6) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN17compiler_builtins3mem6memcmp17h0161c33af60bef75E
  )
  (table (;0;) 1 1 funcref)
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 143149)
  (global (;2;) i32 i32.const 143152)
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
  (data $.rodata (;0;) (i32.const 131072) "input too longserializer decode error: \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00incorrect number of DCDT transfersargument decode error (): function does not accept DCDT paymenttoo few argumentstoo many argumentswrong number of argumentscannot subtract because result would be negativeDCDTLocalBurnDCDTNFTBurnDCDTLocalMintDCDTNFTAddQuantityDCDTNFTCreateChangeOwnerAddressDCDTNFTAddURIDCDTNFTUpdateAttributesfalsetruecanFreezecanWipecanPausecanTransferNFTCreateRolecanMintcanBurncanChangeOwnercanUpgradecanAddSpecialRolessetSpecialRoleunSetSpecialRoleissueissueNonFungibleissueSemiFungibleCB_CLOSURE#3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0230\00\00\00\00\00\00\00\00\00\02\ff\ffMultiDCDTNFTTransferDCDTNFTTransferDCDTTransfersync resultinput too shortManagedVec index out of rangeerror decoding DCDT attributes: DCDT expectedREWA.iteminvalid valuestorage decode error (key: .lenbad array lengthvar argsinput out of rangesendcreatelastIssuedTokenlastErrorMessageaccept_funds_sync_resultecho_arguments_sync_resultcallback_dataretrieve_funds_callbackopt_argsource_addresschild_sc_addresscall_countsaccept_fundsreject_fundsecho_argumentsretrieve_fundsget_owner_addressaccept_funds_echo_paymentretrieve_funds_with_transfer_execargstotoken_paymentsaccept_funds_funcecho_args_callbacksend_funds_twice_callbackcb_amounttoken_identifierresultindexsuccesserrorno callback function with that name exists in contractnew_ownernft_issue_callbackcoloruriscallernew_attributesargumentsattrs_argorig_attr != decoded_attrsft_issue_callbackdcdt_issue_callbackaddresschange_roles_callbackroles\05\00\00\00\10\00\00\00\11\00\00\00\1d\02\02\00\22\02\02\002\02\02\00\80\06\02\00\9c\06\02\00\b8\06\02\00\d4\06\02\00\f4\06\02\00\0c\07\02\00(\07\02\00L\07\02\00d\07\02\00|\06\02\00\98\06\02\00\b4\06\02\00\d0\06\02\00\f0\06\02\00\08\07\02\00$\07\02\00H\07\02\00`\07\02\00fungible DCDT token expectedindex out of range\00\00\01\00\00\00\00\00\00\00DCDTRoleLocalMint\00\00\00\84\06\02\00\11\00\00\00DCDTRoleLocalBurn\00\00\00\a0\06\02\00\11\00\00\00DCDTRoleNFTCreate\00\00\00\bc\06\02\00\11\00\00\00DCDTRoleNFTAddQuantity\00\00\d8\06\02\00\16\00\00\00DCDTRoleNFTBurn\00\f8\06\02\00\0f\00\00\00DCDTRoleNFTAddURI\00\00\00\10\07\02\00\11\00\00\00DCDTRoleNFTUpdateAttributes\00,\07\02\00\1b\00\00\00DCDTTransferRoleP\07\02\00\10\00\00\00\01\02\03\04\05\06\07\08panic occurred\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00 \00\00\00\00\00\00\00@\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00")
  (data $.data (;1;) (i32.const 133064) "8\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.80.1 (3f5fd8dd4 2024-08-06)")
  )
  (@custom "target_features" (after data) "\02+\0fmutable-globals+\08sign-ext")
)
