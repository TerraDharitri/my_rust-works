(module $forwarder_legacy_wasm.wasm
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (param i32 i64)))
  (type (;2;) (func (param i32 i32 i32)))
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
  (import "env" "signalError" (func $signalError (;0;) (type 0)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;1;) (type 1)))
  (import "env" "bigIntAdd" (func $bigIntAdd (;2;) (type 2)))
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
  (import "env" "bigIntSub" (func $bigIntSub (;25;) (type 2)))
  (import "env" "managedGetOriginalTxHash" (func $managedGetOriginalTxHash (;26;) (type 8)))
  (import "env" "getGasLeft" (func $getGasLeft (;27;) (type 14)))
  (import "env" "cleanReturnData" (func $cleanReturnData (;28;) (type 15)))
  (import "env" "bigIntTDiv" (func $bigIntTDiv (;29;) (type 2)))
  (import "env" "bigIntMul" (func $bigIntMul (;30;) (type 2)))
  (import "env" "mBufferCopyByteSlice" (func $mBufferCopyByteSlice (;31;) (type 16)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;32;) (type 4)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;33;) (type 4)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;34;) (type 4)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;35;) (type 4)))
  (import "env" "bigIntGetUnsignedArgument" (func $bigIntGetUnsignedArgument (;36;) (type 0)))
  (import "env" "managedWriteLog" (func $managedWriteLog (;37;) (type 0)))
  (import "env" "managedCreateContract" (func $managedCreateContract (;38;) (type 17)))
  (import "env" "finish" (func $finish (;39;) (type 0)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;40;) (type 15)))
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
  (func $_ZN100_$LT$vault..ProxyTo$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$16extract_proxy_to17h2bdee70fdf782a80E (;58;) (type 9) (param i32) (result i32)
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
      call $signalError
      unreachable
    end
    local.get 1
  )
  (func $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hedfb7cefa9bebb38E (;59;) (type 9) (param i32) (result i32)
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E (;60;) (type 3) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=133096
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=133096
    local.get 0
  )
  (func $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17h7b58e55d66f77fbaE (;61;) (type 15)
    i32.const 132031
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7634c4c62923ee3cE (;62;) (type 22) (param i32 i32 i32 i32)
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
  (func $_ZN4core5slice5index22slice_index_order_fail17h203c6e1b4907093dE (;63;) (type 0) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17hb859252f4b513814E
    unreachable
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E (;64;) (type 9) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h101e6ee837febe57E (;65;) (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $mBufferEq
    i32.const 0
    i32.gt_s
  )
  (func $_ZN117_$LT$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h28c845ee6857c16aE (;66;) (type 9) (param i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hbd2007ec1c91ab4bE (;67;) (type 15)
    call $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17h7b58e55d66f77fbaE
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$11direct_dcdt17h00af144db170ff53E (;68;) (type 23) (param i32 i32 i64 i32)
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
    call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17he7e692683c4e583cE
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17hbcfbb92b12da9314E
    local.get 4
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17he7e692683c4e583cE (;69;) (type 8) (param i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    local.set 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17hbcfbb92b12da9314E (;70;) (type 24) (param i32 i32 i64 i32 i32)
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
      call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21transfer_dcdt_execute17h24f7a56c8345dccdE
      return
    end
    local.get 1
    local.get 6
    local.get 7
    local.get 5
    local.get 2
    local.get 3
    local.get 4
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17hdcc4ba0dc2a5fdd5E
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$11direct_rewa17hd91ada6007fa8708E (;71;) (type 0) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17he7e692683c4e583cE
    local.get 1
    local.get 0
    i64.const 0
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load offset=12
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$24perform_transfer_execute17h8823cafb2dc93f8bE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$24perform_transfer_execute17h8823cafb2dc93f8bE (;72;) (type 24) (param i32 i32 i64 i32 i32)
    local.get 1
    local.get 0
    local.get 2
    local.get 3
    local.get 4
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$19direct_rewa_execute17h3c0cbe0266075e16E
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_local_burn17hdba05b19670378edE (;73;) (type 25) (param i32 i64 i32)
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
        i32.const 131373
        i32.const 13
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h1426fbba68b9e193E
        local.get 3
        i32.const 8
        i32.add
        local.get 3
        i32.load offset=16
        local.get 3
        i32.load offset=20
        local.get 0
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h12054abeaea8be71E
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
      i32.const 131386
      i32.const 11
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h1426fbba68b9e193E
      local.get 3
      i32.const 32
      i32.add
      local.get 3
      i32.load offset=40
      local.get 3
      i32.load offset=44
      local.get 0
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h12054abeaea8be71E
      local.get 3
      i32.const 24
      i32.add
      local.get 3
      i32.load offset=32
      local.get 3
      i32.load offset=36
      local.get 1
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17he8389f33fbd8d539E
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h153c45cfa49874c9E
    local.get 3
    i32.load
    local.get 3
    i32.load offset=4
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17hb32e8a6190777fd0E
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h1426fbba68b9e193E (;74;) (type 2) (param i32 i32 i32)
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34244212834151f1E
    local.set 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h12054abeaea8be71E (;75;) (type 22) (param i32 i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    drop
    local.get 2
    local.get 3
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h2054eeef4de04b79E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17he8389f33fbd8d539E (;76;) (type 26) (param i32 i32 i32 i64)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hf75923ef381ef211E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h153c45cfa49874c9E (;77;) (type 22) (param i32 i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    drop
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h352d7096ea4cc246E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h2054eeef4de04b79E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17hb32e8a6190777fd0E (;78;) (type 0) (param i32 i32)
    (local i64)
    call $getGasLeft
    local.set 2
    i32.const -30
    call $managedSCAddress
    local.get 2
    i32.const -30
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h75c49f50aaea571dE
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17hd920c1ae7c7e94feE
    drop
    call $cleanReturnData
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_local_mint17hd30301d8cbdd9236E (;79;) (type 25) (param i32 i64 i32)
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
        i32.const 131397
        i32.const 13
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h1426fbba68b9e193E
        local.get 3
        i32.const 8
        i32.add
        local.get 3
        i32.load offset=16
        local.get 3
        i32.load offset=20
        local.get 0
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h12054abeaea8be71E
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
      i32.const 131410
      i32.const 18
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h1426fbba68b9e193E
      local.get 3
      i32.const 32
      i32.add
      local.get 3
      i32.load offset=40
      local.get 3
      i32.load offset=44
      local.get 0
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h12054abeaea8be71E
      local.get 3
      i32.const 24
      i32.add
      local.get 3
      i32.load offset=32
      local.get 3
      i32.load offset=36
      local.get 1
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17he8389f33fbd8d539E
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h153c45cfa49874c9E
    local.get 3
    i32.load
    local.get 3
    i32.load offset=4
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17hb32e8a6190777fd0E
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_nft_create17h438664d089139614E (;80;) (type 27) (param i32 i32 i32 i32 i32 i32 i32) (result i64)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 7
    global.set $__stack_pointer
    local.get 7
    i32.const 72
    i32.add
    i32.const 131428
    i32.const 13
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h1426fbba68b9e193E
    local.get 7
    i32.const 64
    i32.add
    local.get 7
    i32.load offset=72
    local.get 7
    i32.load offset=76
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h12054abeaea8be71E
    local.get 7
    i32.const 56
    i32.add
    local.get 7
    i32.load offset=64
    local.get 7
    i32.load offset=68
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h153c45cfa49874c9E
    local.get 7
    i32.const 48
    i32.add
    local.get 7
    i32.load offset=56
    local.get 7
    i32.load offset=60
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h4e0ec958e5077669E
    local.get 7
    i32.const 40
    i32.add
    local.get 7
    i32.load offset=48
    local.get 7
    i32.load offset=52
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h153c45cfa49874c9E
    local.get 7
    i32.const 32
    i32.add
    local.get 7
    i32.load offset=40
    local.get 7
    i32.load offset=44
    local.get 4
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h4e0ec958e5077669E
    local.get 7
    i32.const 24
    i32.add
    local.get 7
    i32.load offset=32
    local.get 7
    i32.load offset=36
    local.get 5
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h8064c298c541042dE
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
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h3aa63a60b879d0e6E
        br_if 0 (;@2;)
        local.get 7
        local.get 2
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1d3755f5a00e246bE
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
          call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfe148ec32a4c6f69E
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
          call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h4e0ec958e5077669E
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
      call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h72ff4e9fe1577a64E
      local.get 7
      i32.load offset=4
      local.set 0
      local.get 7
      i32.load
      local.set 1
    end
    local.get 1
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17h6518100d16ca65adE
    local.set 8
    local.get 7
    i32.const 96
    i32.add
    global.set $__stack_pointer
    local.get 8
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h4e0ec958e5077669E (;81;) (type 22) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17he940dd5666109ff7E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h8064c298c541042dE (;82;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E
    local.set 4
    local.get 3
    i32.load8_u
    local.get 4
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17hd92a5bb3cd4af666E
    local.get 3
    i32.load8_u offset=1
    local.get 4
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17hd92a5bb3cd4af666E
    local.get 3
    i32.load8_u offset=2
    local.get 4
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17hd92a5bb3cd4af666E
    local.get 2
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h2054eeef4de04b79E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h3aa63a60b879d0e6E (;83;) (type 9) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1d3755f5a00e246bE
    i32.eqz
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1d3755f5a00e246bE (;84;) (type 9) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfe148ec32a4c6f69E (;85;) (type 0) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17ha28512c2b3cf1e8cE
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
  (func $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h72ff4e9fe1577a64E (;86;) (type 2) (param i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    local.tee 3
    i32.const 1
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h2054eeef4de04b79E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17h6518100d16ca65adE (;87;) (type 28) (param i32 i32) (result i64)
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
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h75c49f50aaea571dE
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17hd920c1ae7c7e94feE
    local.set 0
    call $cleanReturnData
    local.get 2
    local.get 0
    i32.store offset=16
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    local.set 1
    local.get 2
    local.get 0
    call $mBufferGetLength
    i32.store offset=28
    local.get 2
    i32.const 0
    i32.store offset=24
    local.get 2
    local.get 2
    i32.const 16
    i32.add
    i32.store offset=20
    block ;; label = @1
      loop ;; label = @2
        local.get 2
        i32.const 8
        i32.add
        local.get 2
        i32.const 20
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfe148ec32a4c6f69E
        local.get 2
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 2
        i32.load offset=12
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h2054eeef4de04b79E
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 20
    i32.add
    local.get 1
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h6e0deb4055166c25E
    local.get 2
    i32.const 20
    i32.add
    i32.const 131765
    i32.const 11
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h4789987ce3819459E
    local.set 3
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 3
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$28transfer_dcdt_via_async_call17h52d18a801888a8b7E (;88;) (type 23) (param i32 i32 i64 i32)
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h4f0fbbc6042d737aE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h4f0fbbc6042d737aE (;89;) (type 8) (param i32)
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
    call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17he7e692683c4e583cE
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment22tx_payment_single_dcdt252_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h0446d8dc0370436eE
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17had87ec7cb9a560faE (;90;) (type 22) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17h49538655f86aab68E
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17h49538655f86aab68E (;91;) (type 22) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $managedAsyncCall
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$19direct_rewa_execute17h3c0cbe0266075e16E (;92;) (type 24) (param i32 i32 i64 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $managedTransferValueExecute
    drop
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21transfer_dcdt_execute17h24f7a56c8345dccdE (;93;) (type 29) (param i32 i32 i32 i64 i32 i32)
    local.get 0
    local.get 1
    i64.const 0
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17hdcc4ba0dc2a5fdd5E
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17hdcc4ba0dc2a5fdd5E (;94;) (type 30) (param i32 i32 i64 i32 i64 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 7
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    local.set 8
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E
    local.set 1
    local.get 7
    local.get 3
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hedfb7cefa9bebb38E
    i32.store offset=12
    local.get 7
    local.get 2
    i64.store
    local.get 7
    local.get 1
    i32.store offset=8
    local.get 8
    local.get 7
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h70b2e9170f90509bE
    local.get 0
    local.get 8
    local.get 4
    local.get 5
    local.get 6
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27multi_dcdt_transfer_execute17h31ca1d8385ddef25E
    local.get 7
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17hc91c6141e20d1b3bE (;95;) (type 8) (param i32)
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE (;96;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    i32.const 1
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h70b2e9170f90509bE (;97;) (type 0) (param i32 i32)
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
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27multi_dcdt_transfer_execute17h31ca1d8385ddef25E (;98;) (type 24) (param i32 i32 i64 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $managedMultiTransferDCDTNFTExecute
    drop
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17hd920c1ae7c7e94feE (;99;) (type 31) (param i64 i32 i32 i32 i32) (result i32)
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
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17hb171bbdc74f756bfE (;100;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    call $managedCaller
    local.get 0
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hb63c483befd3ab95E (;101;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    call $managedSCAddress
    local.get 0
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$16get_dcdt_balance17h196f3d70ba4ee95bE (;102;) (type 21) (param i32 i32 i64) (result i32)
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
    i32.const 143117
    i32.const 143149
    local.get 4
    local.get 2
    local.get 3
    call $bigIntGetDCDTExternalBalance
    local.get 3
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node26unsafe_buffer_load_address17hd45b698bfdacadf0E (;103;) (type 8) (param i32)
    local.get 0
    i32.const 143117
    call $mBufferGetBytes
    drop
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node35unsafe_buffer_load_token_identifier17hab97fc9a139ece1cE (;104;) (type 8) (param i32)
    local.get 0
    i32.const 143149
    call $mBufferGetBytes
    drop
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$19get_dcdt_token_data17hba65b73bc337b81fE (;105;) (type 26) (param i32 i32 i32 i64)
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hd40beec169d1bb3bE (;106;) (type 16) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17hf935c0517984106bE (;107;) (type 3) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 0
      i32.load8_u offset=143112
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
    i32.store8 offset=143112
    i32.const -11
    call $bigIntGetCallValue
    i32.const -11
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$11single_dcdt17h3eb68b5302aa1606E (;108;) (type 8) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 1
    local.set 2
    block ;; label = @1
      block ;; label = @2
        call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h197601742c2a4b79E
        local.tee 3
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hb379ad6f4881cffeE
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        local.set 4
        local.get 3
        call $mBufferGetLength
        local.set 5
        local.get 1
        i32.const 16
        i32.add
        local.set 6
        i32.const 0
        local.set 7
        loop ;; label = @3
          local.get 7
          local.set 8
          local.get 4
          i32.const 16
          i32.add
          local.tee 9
          local.get 5
          i32.gt_u
          br_if 2 (;@1;)
          local.get 6
          i64.const 0
          i64.store
          local.get 1
          i64.const 0
          i64.store offset=8
          local.get 3
          local.get 4
          local.get 1
          i32.const 8
          i32.add
          i32.const 16
          call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hd40beec169d1bb3bE
          drop
          local.get 1
          i32.const 0
          i32.store offset=28
          i32.const 1
          local.set 7
          local.get 2
          i32.const 1
          i32.and
          local.set 10
          local.get 1
          i32.const 8
          i32.add
          local.get 1
          i32.const 28
          i32.add
          call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h133f4cc3fd2a1e6cE
          local.set 11
          local.get 1
          i32.const 8
          i32.add
          local.get 1
          i32.const 28
          i32.add
          call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17he72f37b4c3cab97cE
          local.set 12
          local.get 1
          i32.const 8
          i32.add
          local.get 1
          i32.const 28
          i32.add
          call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h133f4cc3fd2a1e6cE
          local.set 13
          local.get 9
          local.set 4
          i32.const 0
          local.set 2
          local.get 10
          br_if 0 (;@3;)
        end
        local.get 8
        call $_ZN4core9panicking18panic_bounds_check17h125c3a5dd588952fE
        unreachable
      end
      i32.const 131168
      i32.const 34
      call $signalError
      unreachable
    end
    local.get 0
    local.get 13
    i32.store offset=12
    local.get 0
    local.get 11
    i32.store offset=8
    local.get 0
    local.get 12
    i64.store
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h197601742c2a4b79E (;109;) (type 3) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 0
      i32.load8_u offset=143116
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
    i32.store8 offset=143116
    i32.const -21
    call $managedGetMultiDCDTCallValue
    i32.const -21
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hb379ad6f4881cffeE (;110;) (type 9) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1d3755f5a00e246bE
    i32.const 4
    i32.shr_u
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h133f4cc3fd2a1e6cE (;111;) (type 4) (param i32 i32) (result i32)
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
  (func $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17he72f37b4c3cab97cE (;112;) (type 28) (param i32 i32) (result i64)
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
  (func $_ZN4core9panicking18panic_bounds_check17h125c3a5dd588952fE (;113;) (type 8) (param i32)
    call $_ZN4core9panicking9panic_fmt17hb859252f4b513814E
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17he37b1da4837b910dE (;114;) (type 8) (param i32)
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
            call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h197601742c2a4b79E
            local.tee 2
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hb379ad6f4881cffeE
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          i32.const 131168
          i32.const 34
          call $signalError
          unreachable
        end
        local.get 0
        call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17hf935c0517984106bE
        call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hedfb7cefa9bebb38E
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
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h1c36d0ffc0a892fbE
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h1c36d0ffc0a892fbE (;115;) (type 0) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17ha28512c2b3cf1e8cE
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
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h133f4cc3fd2a1e6cE
    local.set 3
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17he72f37b4c3cab97cE
    local.set 4
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h133f4cc3fd2a1e6cE
    local.set 5
    block ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131791
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
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17h987d6e3c7db3d187E (;116;) (type 8) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17he37b1da4837b910dE
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
    i32.const 132712
    i32.const 28
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hca176ca05a7489a6E (;117;) (type 9) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h37f34317265be370E (;118;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131202
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34244212834151f1E
    local.tee 4
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 4
    i32.const 131225
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34244212834151f1E (;119;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h6eddff9cb5ccfe82E (;120;) (type 15)
    block ;; label = @1
      call $getNumDCDTTransfers
      br_if 0 (;@1;)
      return
    end
    i32.const 131228
    i32.const 37
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h3797548ef5939bcfE (;121;) (type 0) (param i32 i32)
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
          call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h6785f73dfec9f6fcE
          local.tee 3
          i32.const 28523
          i32.eq
          br_if 0 (;@3;)
          local.get 3
          br_if 1 (;@2;)
        end
        local.get 1
        i32.const 131985
        i32.const 6
        call $_ZN168_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17ha2020be9f98db161E
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
          i32.load offset=143108
          i32.lt_s
          br_if 0 (;@3;)
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
          local.set 1
          br 1 (;@2;)
        end
        local.get 1
        i32.const 131985
        i32.const 6
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1116799d6ed62b2fE
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
  (func $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h6785f73dfec9f6fcE (;122;) (type 9) (param i32) (result i32)
    (local i64)
    block ;; label = @1
      local.get 0
      i32.const 131985
      i32.const 6
      call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hb985d5ce6ef93f13E
      call $smallIntGetUnsignedArgument
      local.tee 1
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 131985
      i32.const 6
      i32.const 131097
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h37f34317265be370E
      unreachable
    end
    local.get 1
    i32.wrap_i64
  )
  (func $_ZN168_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17ha2020be9f98db161E (;123;) (type 6) (param i32 i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    local.set 3
    loop (result i32) ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load
        i32.const 0
        i32.load offset=143108
        i32.lt_s
        br_if 0 (;@2;)
        local.get 3
        return
      end
      local.get 3
      local.get 0
      local.get 1
      local.get 2
      call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1116799d6ed62b2fE
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h2054eeef4de04b79E
      br 0 (;@1;)
    end
  )
  (func $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1116799d6ed62b2fE (;124;) (type 6) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hb985d5ce6ef93f13E
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hca176ca05a7489a6E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h53ee7983499b26ebE (;125;) (type 9) (param i32) (result i32)
    local.get 0
    i32.const 131960
    i32.const 16
    call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h7eec8cdd5090e731E
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h5147bad98afd9546E
  )
  (func $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h7eec8cdd5090e731E (;126;) (type 6) (param i32 i32 i32) (result i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17ha28512c2b3cf1e8cE
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
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E
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
    i32.const 131265
    i32.const 17
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h37f34317265be370E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h5147bad98afd9546E (;127;) (type 9) (param i32) (result i32)
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
      i32.const 131865
      i32.const 4
      call $_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h94b1ffb8851d0592E
      select
      local.set 0
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h546b71b813152d4bE (;128;) (type 0) (param i32 i32)
    (local i32 i32 i32 i64 i32)
    local.get 1
    i32.const 132022
    i32.const 9
    call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hb985d5ce6ef93f13E
    call $_ZN129_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17hbbaa5909dd1bea05E
    local.set 2
    local.get 1
    i32.const 132022
    i32.const 9
    call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1116799d6ed62b2fE
    local.set 3
    local.get 1
    i32.const 132022
    i32.const 9
    call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1116799d6ed62b2fE
    local.set 4
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.const 132022
          i32.const 9
          call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hb985d5ce6ef93f13E
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
        i32.const 132022
        i32.const 9
        i32.const 132365
        i32.const 18
        call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h37f34317265be370E
        unreachable
      end
      i32.const 1
      local.set 6
    end
    local.get 0
    local.get 1
    i32.const 132022
    i32.const 9
    call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1116799d6ed62b2fE
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
  (func $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hb985d5ce6ef93f13E (;129;) (type 6) (param i32 i32 i32) (result i32)
    (local i32)
    block ;; label = @1
      local.get 0
      i32.load
      local.tee 3
      i32.const 0
      i32.load offset=143108
      i32.lt_s
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131265
      i32.const 17
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h37f34317265be370E
      unreachable
    end
    local.get 0
    local.get 3
    i32.const 1
    i32.add
    i32.store
    local.get 3
  )
  (func $_ZN129_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17hbbaa5909dd1bea05E (;130;) (type 9) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $bigIntGetUnsignedArgument
    local.get 1
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h56293dfdf760ad65E (;131;) (type 6) (param i32 i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    local.set 3
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.load
        i32.const 0
        i32.load offset=143108
        i32.ge_s
        br_if 1 (;@1;)
        local.get 3
        local.get 0
        local.get 1
        local.get 2
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1116799d6ed62b2fE
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h2054eeef4de04b79E
        br 0 (;@2;)
      end
    end
    local.get 3
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h2054eeef4de04b79E (;132;) (type 0) (param i32 i32)
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6d4637270632c7cfE (;133;) (type 0) (param i32 i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 2
    block ;; label = @1
      block ;; label = @2
        local.get 1
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h6785f73dfec9f6fcE
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
        i32.load offset=143108
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 1
        local.set 2
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
        local.set 4
        br 1 (;@1;)
      end
      i32.const 1
      local.set 2
      local.get 1
      i32.const 131985
      i32.const 6
      call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1116799d6ed62b2fE
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h7ddfd92472019882E (;134;) (type 6) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN168_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17ha2020be9f98db161E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h9d5b42fea2452387E (;135;) (type 9) (param i32) (result i32)
    local.get 0
    i32.const 132330
    i32.const 9
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17ha2361941b6f747c0E
  )
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17ha2361941b6f747c0E (;136;) (type 6) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h7eec8cdd5090e731E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h0fd8a6111dbed6daE
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17ha0de6034c81f1c62E (;137;) (type 0) (param i32 i32)
    (local i32)
    i32.const 0
    local.set 2
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load
        i32.const 0
        i32.load offset=143108
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 1
        local.set 2
        br 1 (;@1;)
      end
      local.get 1
      i32.const 132194
      i32.const 7
      call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1116799d6ed62b2fE
      local.set 1
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hb27a49d24b043286E (;138;) (type 0) (param i32 i32)
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
          call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h6785f73dfec9f6fcE
          local.tee 3
          i32.const 28523
          i32.eq
          br_if 0 (;@3;)
          local.get 3
          br_if 1 (;@2;)
        end
        local.get 1
        i32.const 131985
        i32.const 6
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1116799d6ed62b2fE
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
          i32.load offset=143108
          i32.lt_s
          br_if 0 (;@3;)
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
          local.set 1
          br 1 (;@2;)
        end
        local.get 1
        i32.const 131985
        i32.const 6
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h1116799d6ed62b2fE
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hb922d890e62cbbfaE (;139;) (type 6) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h2e202b1ece76b01fE
  )
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h2e202b1ece76b01fE (;140;) (type 6) (param i32 i32 i32) (result i32)
    block ;; label = @1
      local.get 0
      local.get 1
      local.get 2
      call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h7eec8cdd5090e731E
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131918
      i32.const 16
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h37f34317265be370E
      unreachable
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1c093037a3262c78E (;141;) (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hca176ca05a7489a6E
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
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17hd52066af7d8040d7E
    local.set 0
    local.get 3
    i32.const 12
    i32.add
    local.get 1
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17hd52066af7d8040d7E
    local.set 4
    local.get 3
    i32.const 12
    i32.add
    local.get 1
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17hd52066af7d8040d7E
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
        i32.store offset=143100
        i32.const 0
        i32.const 0
        i32.store8 offset=143104
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
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h37f34317265be370E
    unreachable
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17hd52066af7d8040d7E (;142;) (type 6) (param i32 i32 i32) (result i32)
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
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h35ce93795c027bdeE
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h45db8d9a0a55aa8cE
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h21a2b3429bafc3cbE (;143;) (type 3) (result i32)
    i32.const 1
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hca176ca05a7489a6E
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h5147bad98afd9546E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E (;144;) (type 9) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hca176ca05a7489a6E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb71eeb347ba8f0bdE (;145;) (type 13) (param i32) (result i64)
    local.get 0
    call $smallIntGetUnsignedArgument
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE (;146;) (type 6) (param i32 i32 i32) (result i32)
    block ;; label = @1
      local.get 0
      call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hca176ca05a7489a6E
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131918
      i32.const 16
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h37f34317265be370E
      unreachable
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd6cb8bdfc97bfce1E (;147;) (type 9) (param i32) (result i32)
    local.get 0
    call $_ZN129_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17hbbaa5909dd1bea05E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17he0448093401e948aE (;148;) (type 3) (result i32)
    (local i64)
    block ;; label = @1
      i32.const 0
      call $smallIntGetUnsignedArgument
      local.tee 0
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 132339
      i32.const 5
      i32.const 131097
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h37f34317265be370E
      unreachable
    end
    local.get 0
    i32.wrap_i64
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h1d163d7440768b08E (;149;) (type 8) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=143108
      local.get 0
      i32.gt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131282
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h9f76ad91960316fbE (;150;) (type 0) (param i32 i32)
    block ;; label = @1
      local.get 1
      local.get 0
      i32.lt_u
      br_if 0 (;@1;)
      return
    end
    i32.const 131282
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E (;151;) (type 8) (param i32)
    block ;; label = @1
      call $getNumArguments
      local.get 0
      i32.ne
      br_if 0 (;@1;)
      return
    end
    i32.const 131300
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hd21cee59871f8e36E (;152;) (type 8) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=143108
      local.get 0
      i32.lt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131265
    i32.const 17
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E (;153;) (type 15)
    i32.const 0
    call $getNumArguments
    i32.store offset=143108
  )
  (func $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h6e0deb4055166c25E (;154;) (type 0) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h5a026d1d64a4e9dbE
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h5a026d1d64a4e9dbE (;155;) (type 9) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1d3755f5a00e246bE
    i32.const 2
    i32.shr_u
  )
  (func $_ZN11dharitri_sc2io6finish12finish_multi17h9caf0bac21ad2802E (;156;) (type 8) (param i32)
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
  (func $_ZN11dharitri_sc2io6finish12finish_multi17hee5531f8a736e12dE (;157;) (type 8) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1d3755f5a00e246bE
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfe148ec32a4c6f69E
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
  (func $_ZN11dharitri_sc3api13managed_types11big_int_api13BigIntApiImpl15bi_sub_unsigned17h902f3297535d1450E (;158;) (type 2) (param i32 i32 i32)
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
    i32.const 131325
    i32.const 48
    call $signalError
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$7bi_sign17h80468100f519116eE (;159;) (type 9) (param i32) (result i32)
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
  (func $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h0b4c31f65df9eccaE (;160;) (type 2) (param i32 i32 i32)
    local.get 1
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h0d83ca6e10720107E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h0d83ca6e10720107E (;161;) (type 2) (param i32 i32 i32)
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h75c49f50aaea571dE
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h03e618350a1bb65cE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h2d55e0c88ee1fb7aE (;162;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h24c284b94a3412c2E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h24c284b94a3412c2E (;163;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction9annotated14AnnotatedValue14with_value_ref17h004f75680b23fb1eE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h75c49f50aaea571dE (;164;) (type 3) (result i32)
    i32.const -10
    i64.const 0
    call $bigIntSetInt64
    i32.const -10
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h03e618350a1bb65cE (;165;) (type 22) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17had87ec7cb9a560faE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt398_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized17h3be1eb7601e0a08cE (;166;) (type 32) (param i32 i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized17h35391d0baa7f0ab5E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized17h35391d0baa7f0ab5E (;167;) (type 32) (param i32 i32 i32 i32 i32 i32)
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
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hb379ad6f4881cffeE
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
        call $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h2745c97ecaa97c9cE
        unreachable
      end
      local.get 3
      local.get 4
      local.get 5
      call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h0b4c31f65df9eccaE
      unreachable
    end
    local.get 6
    i32.const 24
    i32.add
    local.get 7
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h1c36d0ffc0a892fbE
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h0d4ca46a3b4ed718E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h2745c97ecaa97c9cE (;168;) (type 0) (param i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17h4c3dc49ec23d8eb2E
    local.get 2
    i32.load offset=12
    local.set 0
    local.get 2
    i32.load offset=8
    local.set 2
    call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h7e8e09503ab8508eE
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h75c49f50aaea571dE
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h03e618350a1bb65cE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h0d4ca46a3b4ed718E (;169;) (type 32) (param i32 i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h251ec50ee1d534d9E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17h4c3dc49ec23d8eb2E (;170;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 48
    i32.add
    i32.const 131718
    i32.const 20
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h1426fbba68b9e193E
    local.get 5
    i32.load offset=48
    local.set 6
    local.get 5
    i32.load offset=52
    local.tee 7
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hac6f56bd747341a1E
    local.get 5
    i32.const 40
    i32.add
    local.get 6
    local.get 7
    local.get 4
    i32.load
    local.tee 8
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hb379ad6f4881cffeE
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h750e29ae0d85a371E
    local.get 5
    i32.load offset=44
    local.set 3
    local.get 5
    i32.load offset=40
    local.set 6
    local.get 5
    local.get 8
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1d3755f5a00e246bE
    i32.store offset=68
    local.get 5
    i32.const 0
    i32.store offset=64
    local.get 5
    local.get 4
    i32.store offset=60
    loop ;; label = @1
      local.get 5
      i32.const 72
      i32.add
      local.get 5
      i32.const 60
      i32.add
      call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4c9a38d815281c4cE
      block ;; label = @2
        local.get 5
        i64.load offset=72
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 5
        i32.const 8
        i32.add
        local.get 6
        local.get 3
        local.get 1
        local.get 2
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h9591dd7571b74300E
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
        i32.const 96
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 5
      i32.load offset=92
      local.set 4
      local.get 5
      i32.const 32
      i32.add
      local.get 6
      local.get 3
      local.get 5
      i32.load offset=88
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h12054abeaea8be71E
      local.get 5
      i32.const 24
      i32.add
      local.get 5
      i32.load offset=32
      local.get 5
      i32.load offset=36
      local.get 5
      i64.load offset=80
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17he8389f33fbd8d539E
      local.get 5
      i32.const 16
      i32.add
      local.get 5
      i32.load offset=24
      local.get 5
      i32.load offset=28
      local.get 4
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h153c45cfa49874c9E
      local.get 5
      i32.load offset=20
      local.set 3
      local.get 5
      i32.load offset=16
      local.set 6
      br 0 (;@1;)
    end
  )
  (func $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h7e8e09503ab8508eE (;171;) (type 3) (result i32)
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hb63c483befd3ab95E
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment22tx_payment_single_dcdt252_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h0446d8dc0370436eE (;172;) (type 32) (param i32 i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h0d4ca46a3b4ed718E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h89e07a4f98afe86cE (;173;) (type 32) (param i32 i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$16map_rewa_or_dcdt17h9ca93aa2e922f4d6E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$16map_rewa_or_dcdt17h9ca93aa2e922f4d6E (;174;) (type 33) (param i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$11map_or_else17h3ef44b0325cbfa3bE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h0b26ec26cffc0c92E (;175;) (type 2) (param i32 i32 i32)
    local.get 2
    local.get 0
    local.get 1
    i32.load offset=8
    local.get 1
    i32.load
    local.get 1
    i32.load offset=4
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h8bb43fead301f763E
    unreachable
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h8bb43fead301f763E (;176;) (type 33) (param i32 i32 i32 i32 i32)
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
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h44c0ba2f7a391e44E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h342ddc286f6a13caE (;177;) (type 22) (param i32 i32 i32 i32)
    local.get 3
    local.get 0
    local.get 1
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call $_ZN11dharitri_sc5types11interaction10tx_payment22tx_payment_single_dcdt252_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h0446d8dc0370436eE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17h8c2eb34ef18af0f8E (;178;) (type 24) (param i32 i32 i64 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load offset=8
        local.tee 6
        i32.const 2147483646
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=12
        local.get 1
        i32.load
        local.get 2
        local.get 3
        local.get 4
        call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$24perform_transfer_execute17h8823cafb2dc93f8bE
        br 1 (;@1;)
      end
      local.get 5
      local.get 6
      i32.store offset=12
      local.get 5
      local.get 0
      i32.const 12
      i32.add
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
      call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17hbcfbb92b12da9314E
    end
    local.get 5
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h251ec50ee1d534d9E (;179;) (type 0) (param i32 i32)
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
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17haa5632f2f719fffdE
      local.get 2
      i32.load offset=4
      local.set 0
      local.get 2
      i32.load
      local.set 2
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h75c49f50aaea571dE
      local.get 2
      local.get 0
      call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h03e618350a1bb65cE
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h7c1903839776cbd8E
    local.get 2
    i32.load offset=12
    local.set 0
    local.get 2
    i32.load offset=8
    local.set 2
    call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h7e8e09503ab8508eE
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h75c49f50aaea571dE
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h03e618350a1bb65cE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17haa5632f2f719fffdE (;180;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 24
    i32.add
    i32.const 131753
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h1426fbba68b9e193E
    local.get 5
    i32.const 16
    i32.add
    local.get 5
    i32.load offset=24
    local.get 5
    i32.load offset=28
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hd0a8f57a1702ed4fE
    local.get 5
    i32.const 8
    i32.add
    local.get 5
    i32.load offset=16
    local.get 5
    i32.load offset=20
    local.get 4
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h7a042ab37304297cE
    local.get 5
    local.get 5
    i32.load offset=8
    local.get 5
    i32.load offset=12
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h9591dd7571b74300E
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
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h7c1903839776cbd8E (;181;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 40
    i32.add
    i32.const 131738
    i32.const 15
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h1426fbba68b9e193E
    local.get 5
    i32.const 32
    i32.add
    local.get 5
    i32.load offset=40
    local.get 5
    i32.load offset=44
    local.get 4
    i32.load offset=8
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hd0a8f57a1702ed4fE
    local.get 5
    i32.const 24
    i32.add
    local.get 5
    i32.load offset=32
    local.get 5
    i32.load offset=36
    local.get 4
    i64.load
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17he8389f33fbd8d539E
    local.get 5
    i32.const 16
    i32.add
    local.get 5
    i32.load offset=24
    local.get 5
    i32.load offset=28
    local.get 4
    i32.load offset=12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h7a042ab37304297cE
    local.get 5
    i32.const 8
    i32.add
    local.get 5
    i32.load offset=16
    local.get 5
    i32.load offset=20
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h12054abeaea8be71E
    local.get 5
    local.get 5
    i32.load offset=8
    local.get 5
    i32.load offset=12
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h9591dd7571b74300E
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
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17h4f6001cbbef199f0E (;182;) (type 22) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17hf3bec56120c134aeE
    local.get 0
    i32.const 131500
    i32.const 131495
    local.get 3
    select
    i32.const 4
    i32.const 5
    local.get 3
    select
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17hf3bec56120c134aeE
  )
  (func $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17hf3bec56120c134aeE (;183;) (type 2) (param i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    local.tee 3
    local.get 1
    local.get 2
    call $mBufferSetBytes
    drop
    local.get 0
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h2054eeef4de04b79E
  )
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14issue_fungible17h2427b52cf05e0360E (;184;) (type 32) (param i32 i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$5issue17h8f874b7a9d1d0a0fE
    local.get 6
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$5issue17h8f874b7a9d1d0a0fE (;185;) (type 34) (param i32 i32 i32 i32 i32 i32 i32)
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
    i32.const 132628
    i32.add
    i32.load
    local.get 9
    i32.const 132616
    i32.add
    i32.load
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h1426fbba68b9e193E
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
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hc3e342a0d10c46dbE
    local.get 7
    i32.const 36
    i32.add
    local.get 7
    i32.const 24
    i32.add
    local.get 4
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hc3e342a0d10c46dbE
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
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h153c45cfa49874c9E
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
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h750e29ae0d85a371E
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
    i32.const 131504
    i32.const 9
    local.get 6
    i32.load8_u offset=4
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17h4f6001cbbef199f0E
    local.get 1
    i32.const 131513
    i32.const 7
    local.get 5
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17h4f6001cbbef199f0E
    local.get 1
    i32.const 131520
    i32.const 8
    local.get 9
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17h4f6001cbbef199f0E
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i32.const 255
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 131528
        i32.const 24
        local.get 10
        i32.const 255
        i32.and
        i32.const 0
        i32.ne
        call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17h4f6001cbbef199f0E
        br 1 (;@1;)
      end
      local.get 1
      i32.const 131552
      i32.const 7
      local.get 12
      i32.const 255
      i32.and
      i32.const 0
      i32.ne
      call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17h4f6001cbbef199f0E
      local.get 1
      i32.const 131559
      i32.const 7
      local.get 11
      i32.const 255
      i32.and
      i32.const 0
      i32.ne
      call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17h4f6001cbbef199f0E
    end
    local.get 1
    i32.const 131566
    i32.const 14
    local.get 8
    i32.const 255
    i32.and
    i32.const 0
    i32.ne
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17h4f6001cbbef199f0E
    local.get 1
    i32.const 131580
    i32.const 10
    local.get 4
    i32.const 255
    i32.and
    i32.const 0
    i32.ne
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17h4f6001cbbef199f0E
    local.get 1
    i32.const 131590
    i32.const 18
    local.get 3
    i32.const 255
    i32.and
    i32.const 0
    i32.ne
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy18set_token_property17h4f6001cbbef199f0E
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
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$17set_special_roles17h6ce91980bf0ec358E (;186;) (type 22) (param i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 40
    i32.add
    i32.const 131608
    i32.const 14
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h1426fbba68b9e193E
    local.get 4
    i32.const 32
    i32.add
    local.get 4
    i32.load offset=40
    local.get 4
    i32.load offset=44
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h12054abeaea8be71E
    local.get 4
    i32.const 24
    i32.add
    local.get 4
    i32.load offset=32
    local.get 4
    i32.load offset=36
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h12054abeaea8be71E
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
      call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h997b2a4629ea9a8fE
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
      call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hbe1d624ab467ac61E
      local.get 4
      i32.load offset=12
      local.set 1
      local.get 4
      i32.load offset=8
      local.set 5
      br 0 (;@1;)
    end
  )
  (func $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h997b2a4629ea9a8fE (;187;) (type 9) (param i32) (result i32)
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
            i32.const 131934
            i32.const 8
            call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h7eec8cdd5090e731E
            local.tee 0
            call $mBufferGetLength
            br_if 0 (;@4;)
            i32.const 0
            return
          end
          local.get 0
          i32.const 131934
          i32.const 8
          call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hf7f9b5b22a9b7326E
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
      i32.const 131934
      i32.const 8
      i32.const 131097
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h37f34317265be370E
      unreachable
    end
    i32.const 131934
    i32.const 8
    i32.const 131874
    i32.const 13
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h37f34317265be370E
    unreachable
  )
  (func $_ZN11dharitri_sc5types5flags15dcdt_local_role13DcdtLocalRole12as_role_name17h730e7a20f658f40eE (;188;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    local.tee 1
    i32.const 132640
    i32.add
    i32.load
    i32.load
    i32.store offset=4
    local.get 0
    local.get 1
    i32.const 132676
    i32.add
    i32.load
    i32.load
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hbe1d624ab467ac61E (;189;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    local.tee 5
    local.get 3
    local.get 4
    call $mBufferSetBytes
    drop
    local.get 2
    local.get 5
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h2054eeef4de04b79E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$18issue_non_fungible17ha1e1d76b65816654E (;190;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h75c49f50aaea571dE
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
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$5issue17h8f874b7a9d1d0a0fE
    local.get 5
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$19issue_semi_fungible17h269c802b621ef891E (;191;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hd99dbeac82c25cb0E
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
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$5issue17h8f874b7a9d1d0a0fE
    local.get 5
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hd99dbeac82c25cb0E (;192;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    i64.const 0
    call $bigIntSetInt64
    local.get 0
  )
  (func $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$19unset_special_roles17hc37d97e525330fb8E (;193;) (type 22) (param i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 40
    i32.add
    i32.const 131622
    i32.const 16
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h1426fbba68b9e193E
    local.get 4
    i32.const 32
    i32.add
    local.get 4
    i32.load offset=40
    local.get 4
    i32.load offset=44
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h12054abeaea8be71E
    local.get 4
    i32.const 24
    i32.add
    local.get 4
    i32.load offset=32
    local.get 4
    i32.load offset=36
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h12054abeaea8be71E
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
      call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h997b2a4629ea9a8fE
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
      call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hbe1d624ab467ac61E
      local.get 4
      i32.load offset=12
      local.set 1
      local.get 4
      i32.load offset=8
      local.set 5
      br 0 (;@1;)
    end
  )
  (func $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hc3e342a0d10c46dbE (;194;) (type 2) (param i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h4e0ec958e5077669E
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
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h750e29ae0d85a371E (;195;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    local.tee 4
    local.get 3
    i64.extend_i32_u
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h933892ad45fbedccE
    local.get 2
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h2054eeef4de04b79E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction16callback_closure22cb_closure_storage_key17hfa41d28f9d7b149dE (;196;) (type 3) (result i32)
    (local i32 i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    call $managedGetOriginalTxHash
    i32.const 131676
    i32.const 10
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34244212834151f1E
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h84d9fd5685260799E (;197;) (type 6) (param i32 i32 i32) (result i32)
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
      call $_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h94b1ffb8851d0592E
      local.set 3
    end
    local.get 3
  )
  (func $_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h94b1ffb8851d0592E (;198;) (type 16) (param i32 i32 i32 i32) (result i32)
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
  (func $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h91fde483c1d9cbb6E (;199;) (type 0) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1d3755f5a00e246bE
    local.tee 6
    local.get 2
    i32.const 16
    i32.add
    i32.const 32
    call $_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7634c4c62923ee3cE
    local.get 1
    i32.const 0
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17ha28512c2b3cf1e8cE
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17ha28512c2b3cf1e8cE (;200;) (type 16) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hd40beec169d1bb3bE
  )
  (func $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17hac8eccf561a46765E (;201;) (type 2) (param i32 i32 i32)
    block ;; label = @1
      local.get 1
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17he940dd5666109ff7E
    end
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17he940dd5666109ff7E (;202;) (type 0) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    drop
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h2054eeef4de04b79E
  )
  (func $_ZN11dharitri_sc5types11interaction2tx138Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..deploy_call..DeployCall$LT$Env$C$CodeSource$GT$$C$RH$GT$8argument17hab3507f71fd40ddbE (;203;) (type 6) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17hac8eccf561a46765E
    local.get 0
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17hd92a5bb3cd4af666E (;204;) (type 0) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17hb32cc3c429387724E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hc1cd44042e9b175cE (;205;) (type 2) (param i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h153c45cfa49874c9E
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
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h03bb3825afd4dee1E (;206;) (type 8) (param i32)
    local.get 0
    call $_ZN11dharitri_sc5types11interaction9annotated14AnnotatedValue14with_value_ref17h53d36b9e713d0c87E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated14AnnotatedValue14with_value_ref17h53d36b9e713d0c87E (;207;) (type 8) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    call $_ZN326_$LT$dharitri_sc..types..interaction..markers..dcdt_system_sc_address..DCDTSystemSCAddress$u20$as$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$Api$GT$$GT$$GT$8to_value17h34cf77cc4223925eE
    i32.store offset=12
    local.get 0
    local.get 1
    i32.const 12
    i32.add
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h44c0ba2f7a391e44E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated14AnnotatedValue14with_value_ref17h004f75680b23fb1eE (;208;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN326_$LT$dharitri_sc..types..interaction..markers..dcdt_system_sc_address..DCDTSystemSCAddress$u20$as$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$Api$GT$$GT$$GT$8to_value17h34cf77cc4223925eE
    call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h0d83ca6e10720107E
    unreachable
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hac6f56bd747341a1E (;209;) (type 0) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    drop
    local.get 0
    local.get 1
    i32.load
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h2054eeef4de04b79E
  )
  (func $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4c9a38d815281c4cE (;210;) (type 0) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17ha28512c2b3cf1e8cE
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
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h133f4cc3fd2a1e6cE
      local.set 4
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17he72f37b4c3cab97cE
      local.set 3
      local.get 0
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h133f4cc3fd2a1e6cE
      i32.store offset=20
      local.get 0
      local.get 4
      i32.store offset=16
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
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h9591dd7571b74300E (;211;) (type 33) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block ;; label = @1
      local.get 3
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h3aa63a60b879d0e6E
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17he940dd5666109ff7E
      local.get 4
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1d3755f5a00e246bE
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
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17ha28512c2b3cf1e8cE
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
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17he940dd5666109ff7E
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
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hd0a8f57a1702ed4fE (;212;) (type 22) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hac6f56bd747341a1E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h7a042ab37304297cE (;213;) (type 22) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h45ef86da9a967663E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h352d7096ea4cc246E (;214;) (type 9) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h933892ad45fbedccE (;215;) (type 1) (param i32 i64)
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
    call $_ZN11dharitri_sc5types7managed10codec_util28managed_buffer_top_en_output174_$LT$impl$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$u20$for$u20$$RF$mut$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$12set_slice_u817ha229e93c1989787aE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h45ef86da9a967663E (;216;) (type 0) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    drop
    local.get 0
    local.get 1
    i32.load
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h352d7096ea4cc246E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h2054eeef4de04b79E
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hf75923ef381ef211E (;217;) (type 1) (param i32 i64)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    local.tee 2
    local.get 1
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h933892ad45fbedccE
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h2054eeef4de04b79E
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17ha8483855b2b8f87eE (;218;) (type 8) (param i32)
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
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h3aa63a60b879d0e6E
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
        call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h970152f2ab4ca3c3E
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
      call $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17h8c2eb34ef18af0f8E
    end
    local.get 1
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h970152f2ab4ca3c3E (;219;) (type 9) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic11big_num_cmp7cmp_i6417h794d3ad29687fa87E
    i32.const 255
    i32.and
    i32.eqz
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17hcc1ada9dc3ee60ccE (;220;) (type 8) (param i32)
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
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h3aa63a60b879d0e6E
          br_if 0 (;@3;)
          call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17hc0bbdaf9c4a8e546E
          local.set 2
          br 1 (;@2;)
        end
        i64.const 0
        local.set 2
        local.get 0
        i32.load offset=12
        call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h970152f2ab4ca3c3E
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
      call $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17h8c2eb34ef18af0f8E
    end
    local.get 1
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17hc0bbdaf9c4a8e546E (;221;) (type 14) (result i64)
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
  (func $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17hce40aa9bce961916E (;222;) (type 8) (param i32)
    (local i32 i64 i32)
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load
          local.tee 1
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h3aa63a60b879d0e6E
          br_if 0 (;@3;)
          call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17hc0bbdaf9c4a8e546E
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
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1d3755f5a00e246bE
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
      call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27multi_dcdt_transfer_execute17h31ca1d8385ddef25E
    end
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h7cbdacb1420a31c0E (;223;) (type 31) (param i64 i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17hd920c1ae7c7e94feE
  )
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h4789987ce3819459E (;224;) (type 20) (param i32 i32 i32) (result i64)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h7eec8cdd5090e731E
    local.get 1
    local.get 2
    call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hf7f9b5b22a9b7326E
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync292_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$dharitri_sc..types..interaction..tx_result_handler_list..original_result..OriginalResultMarker$LT$OriginalResult$GT$$GT$$GT$23execute_on_dest_context17h0067f9488978fb48E (;225;) (type 8) (param i32)
    (local i32 i64 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17hc0bbdaf9c4a8e546E
    local.tee 2
    i64.store offset=24
    local.get 0
    i32.load
    local.set 3
    local.get 0
    i32.load offset=4
    local.set 4
    local.get 0
    i32.load offset=8
    local.set 5
    local.get 1
    local.get 0
    i32.load offset=12
    local.tee 6
    i32.store offset=32
    local.get 1
    local.get 5
    i32.store offset=36
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 6
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hb379ad6f4881cffeE
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          local.get 1
          local.get 3
          local.get 4
          local.get 1
          i32.const 36
          i32.add
          local.get 1
          i32.const 32
          i32.add
          call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17h4c3dc49ec23d8eb2E
          local.get 1
          i32.load offset=4
          local.set 0
          local.get 1
          i32.load
          local.set 5
          local.get 2
          call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hb63c483befd3ab95E
          call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h75c49f50aaea571dE
          local.get 5
          local.get 0
          call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h7cbdacb1420a31c0E
          local.set 0
          br 2 (;@1;)
        end
        local.get 2
        local.get 5
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h75c49f50aaea571dE
        local.get 3
        local.get 4
        call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h7cbdacb1420a31c0E
        local.set 0
        br 1 (;@1;)
      end
      local.get 1
      i32.const 40
      i32.add
      local.get 6
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h1c36d0ffc0a892fbE
      local.get 1
      i64.load offset=40
      local.set 2
      local.get 1
      local.get 1
      i32.const 52
      i32.add
      local.tee 6
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
        local.get 6
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17haa5632f2f719fffdE
        local.get 1
        i32.load offset=12
        local.set 0
        local.get 1
        i32.load offset=8
        local.set 3
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h75c49f50aaea571dE
        local.set 4
        local.get 1
        i64.load offset=24
        local.get 5
        local.get 4
        local.get 3
        local.get 0
        call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h7cbdacb1420a31c0E
        local.set 0
        br 1 (;@1;)
      end
      local.get 1
      i32.const 16
      i32.add
      local.get 3
      local.get 4
      local.get 5
      local.get 1
      i32.const 56
      i32.add
      i32.const 8
      i32.add
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h7c1903839776cbd8E
      local.get 1
      i32.load offset=20
      local.set 0
      local.get 1
      i32.load offset=16
      local.set 5
      call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hb63c483befd3ab95E
      local.set 3
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h75c49f50aaea571dE
      local.set 4
      local.get 1
      i64.load offset=24
      local.get 3
      local.get 4
      local.get 5
      local.get 0
      call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h7cbdacb1420a31c0E
      local.set 0
    end
    call $cleanReturnData
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13decode_result17hb57750c7cec03f48E
    local.get 1
    i32.const 96
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13decode_result17hb57750c7cec03f48E (;226;) (type 8) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 4
    i32.add
    local.get 0
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h6e0deb4055166c25E
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync292_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$dharitri_sc..types..interaction..tx_result_handler_list..original_result..OriginalResultMarker$LT$OriginalResult$GT$$GT$$GT$23execute_on_dest_context17h0745d2b0c65f5977E (;227;) (type 8) (param i32)
    (local i32 i64 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17hc0bbdaf9c4a8e546E
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
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load offset=8
        local.tee 7
        i32.const 2147483646
        i32.ne
        br_if 0 (;@2;)
        local.get 2
        local.get 5
        local.get 6
        local.get 4
        local.get 3
        call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h7cbdacb1420a31c0E
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      i64.load
      local.set 2
      local.get 1
      local.get 6
      i32.store offset=52
      local.get 1
      local.get 7
      i32.store offset=48
      local.get 1
      local.get 2
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
      local.tee 7
      i32.store offset=72
      local.get 1
      local.get 2
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
      block ;; label = @2
        local.get 2
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 1
        local.get 4
        local.get 3
        local.get 7
        local.get 6
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17haa5632f2f719fffdE
        local.get 1
        i32.load offset=4
        local.set 0
        local.get 1
        i32.load
        local.set 3
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h75c49f50aaea571dE
        local.set 4
        local.get 1
        i64.load offset=16
        local.get 5
        local.get 4
        local.get 3
        local.get 0
        call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h7cbdacb1420a31c0E
        local.set 0
        br 1 (;@1;)
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
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h7c1903839776cbd8E
      local.get 1
      i32.load offset=12
      local.set 0
      local.get 1
      i32.load offset=8
      local.set 3
      call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hb63c483befd3ab95E
      local.set 4
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h75c49f50aaea571dE
      local.set 5
      local.get 1
      i64.load offset=16
      local.get 4
      local.get 5
      local.get 3
      local.get 0
      call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h7cbdacb1420a31c0E
      local.set 0
    end
    call $cleanReturnData
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13decode_result17hb57750c7cec03f48E
    local.get 1
    i32.const 96
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync292_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$dharitri_sc..types..interaction..tx_result_handler_list..original_result..OriginalResultMarker$LT$OriginalResult$GT$$GT$$GT$23execute_on_dest_context17hd1b43d87ab5bdab2E (;228;) (type 9) (param i32) (result i32)
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
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h75c49f50aaea571dE
    local.get 3
    local.get 2
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17hd920c1ae7c7e94feE
    local.set 0
    call $cleanReturnData
    local.get 1
    i32.const 4
    i32.add
    local.get 0
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h6e0deb4055166c25E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
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
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17hc3f2187172f04c04E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h2054eeef4de04b79E
        br 0 (;@2;)
      end
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17hc3f2187172f04c04E (;229;) (type 9) (param i32) (result i32)
    local.get 0
    i32.const 131765
    i32.const 11
    call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h7eec8cdd5090e731E
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13decode_result17h79083207dd45eccfE (;230;) (type 0) (param i32 i32)
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
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h6e0deb4055166c25E
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
      call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17hc3f2187172f04c04E
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
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17h0a0a6aa5d201c10aE (;231;) (type 8) (param i32)
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17ha44de8891928fef4E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17ha44de8891928fef4E (;232;) (type 8) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i32.const 28
    i32.add
    call $_ZN185_$LT$dharitri_sc..types..interaction..callback_closure..CallbackClosure$LT$Api$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_exec..tx_exec_async..TxAsyncCallCallback$LT$Api$GT$$GT$32save_callback_closure_to_storage17h32f1308512f3cd34E
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h89e07a4f98afe86cE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17h182c4c491d9ee834E (;233;) (type 8) (param i32)
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h3fec53899e9dcd76E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h3fec53899e9dcd76E (;234;) (type 8) (param i32)
    local.get 0
    call $_ZN185_$LT$dharitri_sc..types..interaction..callback_closure..CallbackClosure$LT$Api$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_exec..tx_exec_async..TxAsyncCallCallback$LT$Api$GT$$GT$32save_callback_closure_to_storage17h32f1308512f3cd34E
    local.get 0
    i32.load offset=12
    local.get 0
    i32.const 24
    i32.add
    local.get 0
    i32.load offset=16
    local.get 0
    i32.load offset=20
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h7f05037512175587E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17h43a97f0183caf703E (;235;) (type 8) (param i32)
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hcb1fc7de7949d138E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hcb1fc7de7949d138E (;236;) (type 8) (param i32)
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt398_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized17h3be1eb7601e0a08cE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17h74f0618bf4065989E (;237;) (type 8) (param i32)
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hddbdadd10c88869cE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hddbdadd10c88869cE (;238;) (type 8) (param i32)
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h89e07a4f98afe86cE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17hd6f372a2f170e00aE (;239;) (type 8) (param i32)
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h7529883e6cc2bff2E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h7529883e6cc2bff2E (;240;) (type 8) (param i32)
    local.get 0
    call $_ZN185_$LT$dharitri_sc..types..interaction..callback_closure..CallbackClosure$LT$Api$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_exec..tx_exec_async..TxAsyncCallCallback$LT$Api$GT$$GT$32save_callback_closure_to_storage17h32f1308512f3cd34E
    local.get 0
    i32.load offset=12
    local.get 0
    i32.load offset=16
    call $_ZN165_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_not_payable..NotPayable$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h6a83e94faeb8f479E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17hfe5047f11a8fe7baE (;241;) (type 8) (param i32)
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hf14eae70ec63ba40E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hf14eae70ec63ba40E (;242;) (type 8) (param i32)
    local.get 0
    call $_ZN185_$LT$dharitri_sc..types..interaction..callback_closure..CallbackClosure$LT$Api$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_exec..tx_exec_async..TxAsyncCallCallback$LT$Api$GT$$GT$32save_callback_closure_to_storage17h32f1308512f3cd34E
    local.get 0
    i32.load offset=12
    local.get 0
    i32.load offset=16
    local.get 0
    i32.load offset=20
    call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h0b4c31f65df9eccaE
    unreachable
  )
  (func $_ZN185_$LT$dharitri_sc..types..interaction..callback_closure..CallbackClosure$LT$Api$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_exec..tx_exec_async..TxAsyncCallCallback$LT$Api$GT$$GT$32save_callback_closure_to_storage17h32f1308512f3cd34E (;243;) (type 8) (param i32)
    (local i32 i32)
    call $_ZN11dharitri_sc5types11interaction16callback_closure22cb_closure_storage_key17hfa41d28f9d7b149dE
    local.set 1
    call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h1627b420640b3c0eE
    local.set 2
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types10impl_slice96_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$$u5b$T$u5d$$GT$24dep_encode_or_handle_err17h05b46c222463323cE
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    call $_ZN145_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h30499a110ed87952E
    local.get 1
    local.get 2
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17heddb110705a767e7E
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h7f05037512175587E (;244;) (type 22) (param i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h03bb3825afd4dee1E
    unreachable
  )
  (func $_ZN165_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_not_payable..NotPayable$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h6a83e94faeb8f479E (;245;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h2d55e0c88ee1fb7aE
    unreachable
  )
  (func $_ZN326_$LT$dharitri_sc..types..interaction..markers..dcdt_system_sc_address..DCDTSystemSCAddress$u20$as$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$Api$GT$$GT$$GT$8to_value17h34cf77cc4223925eE (;246;) (type 3) (result i32)
    i32.const 131686
    i32.const 32
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34244212834151f1E
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h44c0ba2f7a391e44E (;247;) (type 0) (param i32 i32)
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
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1c580c72732eae11E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util28managed_buffer_top_en_output174_$LT$impl$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$u20$for$u20$$RF$mut$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$12set_slice_u817ha229e93c1989787aE (;248;) (type 2) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferSetBytes
    drop
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h25f6ce069fc59cb5E (;249;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17ha9edf5051f04fb1fE
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
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h0b372bfe327bd3e6E
    block ;; label = @1
      local.get 2
      i32.load offset=8
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      i32.const 131776
      i32.const 15
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h8a01cc06c9962301E
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17ha9edf5051f04fb1fE (;250;) (type 4) (param i32 i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h7ce1034811f99837E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h0b372bfe327bd3e6E (;251;) (type 22) (param i32 i32 i32 i32)
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
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h8a01cc06c9962301E (;252;) (type 2) (param i32 i32 i32)
    (local i32)
    i32.const 131887
    i32.const 27
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34244212834151f1E
    local.tee 3
    local.get 0
    call $mBufferAppend
    drop
    local.get 3
    i32.const 131225
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
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h52052bad577e2410E (;253;) (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    local.get 1
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17hf354f772b7d57df3E
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
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h0b372bfe327bd3e6E
    block ;; label = @1
      local.get 3
      i32.load offset=8
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131776
      i32.const 15
      call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h3ab4aeeaf2172ab9E
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17hf354f772b7d57df3E (;254;) (type 6) (param i32 i32 i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h6850ffee0a3f5ad8E
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
  (func $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h3ab4aeeaf2172ab9E (;255;) (type 22) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34244212834151f1E
    local.tee 1
    local.get 2
    local.get 3
    call $mBufferAppendBytes
    drop
    local.get 1
    call $managedSignalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17hb32cc3c429387724E (;256;) (type 2) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferAppendBytes
    drop
  )
  (func $_ZN11dharitri_sc5types7managed11multi_value24multi_value_encoded_iter165_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$GT$9into_iter17h6fe96a1fcea28ecaE (;257;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h6e0deb4055166c25E
  )
  (func $_ZN11dharitri_sc5types7managed5basic11big_num_cmp7cmp_i6417h794d3ad29687fa87E (;258;) (type 9) (param i32) (result i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$7bi_sign17h80468100f519116eE
    i32.const -1
    i32.add
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17hfbc752c20747506dE (;259;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferAppend
    drop
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_ref23ManagedRef$LT$M$C$T$GT$11clone_value17h68bf404de058c20cE (;260;) (type 9) (param i32) (result i32)
    local.get 0
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hedfb7cefa9bebb38E
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$16from_single_item17h9f81e89a93f58fa0E (;261;) (type 9) (param i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    local.tee 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h2054eeef4de04b79E
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped14managed_option26ManagedOption$LT$M$C$T$GT$11map_or_else17h0b10d2567170cb71E (;262;) (type 22) (param i32 i32 i32 i32)
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
      call $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$16map_rewa_or_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17h09389cdc063a6d98E
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
    call $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$16map_rewa_or_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17hb24369d0cc55a69dE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$16map_rewa_or_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17h09389cdc063a6d98E (;263;) (type 0) (param i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h0b26ec26cffc0c92E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$16map_rewa_or_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17hb24369d0cc55a69dE (;264;) (type 2) (param i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h342ddc286f6a13caE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h27d8e1e0413b682fE (;265;) (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc3api13managed_types11big_int_api13BigIntApiImpl15bi_sub_unsigned17h902f3297535d1450E
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17hf0ccf6fb237cefcaE (;266;) (type 9) (param i32) (result i32)
    i32.const -14
    i64.const 2
    call $bigIntSetInt64
    local.get 0
    local.get 0
    i32.const -14
    call $bigIntTDiv
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u64$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h689a7b24b3e022ddE (;267;) (type 9) (param i32) (result i32)
    i32.const -14
    i64.const 10000
    call $bigIntSetInt64
    local.get 0
    local.get 0
    i32.const -14
    call $bigIntTDiv
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators196_$LT$impl$u20$core..ops..arith..Mul$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3mul17h57df6d04fb2ecf7cE (;268;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 2
    local.get 0
    local.get 1
    call $bigIntMul
    local.get 2
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators196_$LT$impl$u20$core..ops..arith..Sub$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h40dbe7b86bafb18fE (;269;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc3api13managed_types11big_int_api13BigIntApiImpl15bi_sub_unsigned17h902f3297535d1450E
    local.get 2
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h35ce93795c027bdeE (;270;) (type 16) (param i32 i32 i32 i32) (result i32)
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
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1d3755f5a00e246bE
              local.tee 6
              i32.const 10000
              i32.gt_u
              br_if 1 (;@4;)
              i32.const 0
              i32.load8_u offset=143104
              i32.const 255
              i32.and
              br_if 1 (;@4;)
              i32.const 0
              local.get 6
              i32.store offset=143100
              i32.const 0
              i32.const 1
              i32.store8 offset=143104
              local.get 4
              i32.const 8
              i32.add
              local.get 6
              i32.const 133100
              i32.const 10000
              call $_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7634c4c62923ee3cE
              local.get 5
              i32.const 0
              local.get 4
              i32.load offset=8
              local.get 4
              i32.load offset=12
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17ha28512c2b3cf1e8cE
              drop
              block ;; label = @6
                local.get 0
                i32.load8_u offset=8
                i32.eqz
                br_if 0 (;@6;)
                i32.const 0
                i32.const 0
                i32.store offset=143100
                i32.const 0
                i32.const 0
                i32.store8 offset=143104
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
            i32.load offset=143100
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
            i32.const 133100
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
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17ha28512c2b3cf1e8cE
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
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$11map_or_else17h3ef44b0325cbfa3bE (;271;) (type 22) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped14managed_option26ManagedOption$LT$M$C$T$GT$11map_or_else17h0b10d2567170cb71E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h0fd8a6111dbed6daE (;272;) (type 9) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferToBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17ha5bfca18312d9676E (;273;) (type 9) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_set13storage_clear17hed9e3175487cd2a0E (;274;) (type 8) (param i32)
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
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17h070a1fb4c6fb1a2fE (;275;) (type 0) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34244212834151f1E
    call $mBufferStorageStore
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hefe4a2a354f0af59E (;276;) (type 25) (param i32 i64 i32)
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
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$13get_unchecked17hbb8a7c74f030c55aE (;277;) (type 2) (param i32 i32 i32)
    (local i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h21f92cfcc208a82bE
    local.tee 1
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17ha5bfca18312d9676E
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
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h25f6ce069fc59cb5E
    local.set 5
    local.get 3
    i32.const 4
    i32.add
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h25f6ce069fc59cb5E
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h5147bad98afd9546E
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h7ce1034811f99837E
    local.get 3
    i64.load offset=24
    local.set 7
    local.get 3
    i32.const 4
    i32.add
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h25f6ce069fc59cb5E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h0fd8a6111dbed6daE
    local.set 8
    local.get 3
    i32.const 4
    i32.add
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17ha9edf5051f04fb1fE
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
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
        call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h25f6ce069fc59cb5E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h2054eeef4de04b79E
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
        i32.store offset=143100
        i32.const 0
        i32.const 0
        i32.store8 offset=143104
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
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h8a01cc06c9962301E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h21f92cfcc208a82bE (;278;) (type 4) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E
    local.tee 0
    i32.const 131869
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
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h7ce1034811f99837E (;279;) (type 22) (param i32 i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h35ce93795c027bdeE
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h8b3138c84ae7eab0E
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17hbe3fbd52463a6e30E (;280;) (type 9) (param i32) (result i32)
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
        call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17ha5bfca18312d9676E
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
      i32.const 131097
      i32.const 14
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h8a01cc06c9962301E
      unreachable
    end
    local.get 0
    i32.const 131097
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h8a01cc06c9962301E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h17a8c098dbf9dcc0E (;281;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17h61542f92817e91a9E (;282;) (type 1) (param i32 i64)
    local.get 0
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hf75923ef381ef211E
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17h6b2840d7de0b6c3eE (;283;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h45ef86da9a967663E
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17he235f18db7fe4fc3E (;284;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hac6f56bd747341a1E
  )
  (func $_ZN11dharitri_sc8log_util23event_topic_accumulator17h482808a142f1918bE (;285;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    local.tee 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34244212834151f1E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h2054eeef4de04b79E
    local.get 2
  )
  (func $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h1627b420640b3c0eE (;286;) (type 3) (result i32)
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34244212834151f1E
  )
  (func $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17he3594514c548d63eE (;287;) (type 8) (param i32)
    local.get 0
    call $mBufferFinish
    drop
  )
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h1899e998c63a4df9E (;288;) (type 0) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h352d7096ea4cc246E
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hbf05302844e8eb1cE
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hbf05302844e8eb1cE (;289;) (type 0) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1d3755f5a00e246bE
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17hb32cc3c429387724E
    local.get 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17hfbc752c20747506dE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17heddb110705a767e7E (;290;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferStorageStore
    drop
  )
  (func $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17hb428528213ba04e5E (;291;) (type 9) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17ha5bfca18312d9676E
  )
  (func $_ZN142_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h05ae1bb80540c3b3E (;292;) (type 9) (param i32) (result i32)
    (local i32)
    i32.const 2147483646
    local.set 1
    block ;; label = @1
      local.get 0
      i32.const 2147483646
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E
      local.set 1
    end
    local.get 1
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h30499a110ed87952E (;293;) (type 0) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.tee 3
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h5a026d1d64a4e9dbE
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17he91a1aa0b08f9882E
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1d3755f5a00e246bE
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
      call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfe148ec32a4c6f69E
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
      call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hbf05302844e8eb1cE
      br 0 (;@1;)
    end
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17he91a1aa0b08f9882E (;294;) (type 0) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17hb32cc3c429387724E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h875968b09fceb464E (;295;) (type 0) (param i32 i32)
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
      i32.const 131934
      i32.const 8
      call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h7eec8cdd5090e731E
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E
      local.set 3
      local.get 1
      i32.const 131934
      i32.const 8
      call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h4789987ce3819459E
      local.set 2
      local.get 0
      local.get 1
      i32.const 131934
      i32.const 8
      call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17ha2361941b6f747c0E
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
  (func $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hf7f9b5b22a9b7326E (;296;) (type 20) (param i32 i32 i32) (result i64)
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
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h37f34317265be370E
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
  (func $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h45c6cb691ccf7b2bE (;297;) (type 0) (param i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 2147483646
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E
      i32.store
      return
    end
    local.get 1
    i32.load
    i32.const 131865
    i32.const 4
    call $_ZN11dharitri_sc5types7managed10codec_util28managed_buffer_top_en_output174_$LT$impl$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$u20$for$u20$$RF$mut$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$12set_slice_u817ha229e93c1989787aE
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1c580c72732eae11E (;298;) (type 0) (param i32 i32)
    local.get 0
    i32.load
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h03e618350a1bb65cE
    unreachable
  )
  (func $_ZN16forwarder_legacy14fwd_nft_legacy13CallbackProxy18nft_issue_callback17he88a6a94d6a766ebE (;299;) (type 0) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    local.tee 2
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hac6f56bd747341a1E
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    i32.const 18
    i32.store offset=4
    local.get 0
    i32.const 131942
    i32.store
  )
  (func $_ZN16forwarder_legacy14fwd_nft_legacy18ForwarderNftModule10nft_create17ha54498dd18b58de1E (;300;) (type 27) (param i32 i32 i32 i32 i32 i32 i32) (result i64)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    local.tee 5
    i32.store offset=12
    local.get 5
    local.get 6
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h2054eeef4de04b79E
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
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_nft_create17h438664d089139614E
    local.set 8
    i32.const 132513
    i32.const 6
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h482808a142f1918bE
    local.tee 1
    local.get 7
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17he235f18db7fe4fc3E
    local.get 1
    local.get 8
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17h61542f92817e91a9E
    local.get 1
    local.get 7
    i32.const 4
    i32.add
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17h6b2840d7de0b6c3eE
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    call $managedWriteLog
    local.get 7
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 8
  )
  (func $_ZN16forwarder_legacy14fwd_sft_legacy13CallbackProxy18sft_issue_callback17h1450f43989135b77E (;301;) (type 0) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    local.tee 2
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hac6f56bd747341a1E
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    i32.const 18
    i32.store offset=4
    local.get 0
    i32.const 132056
    i32.store
  )
  (func $_ZN16forwarder_legacy15fwd_dcdt_legacy13CallbackProxy19dcdt_issue_callback17h58447d972aca4d7aE (;302;) (type 0) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    local.tee 2
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hac6f56bd747341a1E
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    i32.const 19
    i32.store offset=4
    local.get 0
    i32.const 132074
    i32.store
  )
  (func $_ZN16forwarder_legacy17fwd_deploy_legacy20DeployContractModule20perform_deploy_vault17h268cb3ae95933853E (;303;) (type 22) (param i32 i32 i32 i32)
    (local i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 2
    local.get 3
    call $_ZN5vault10ProxyTrait4init17h192e9fce3700ba37E
    local.set 3
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E
    local.set 1
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17hc0bbdaf9c4a8e546E
    local.set 5
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hd99dbeac82c25cb0E
    local.set 2
    i32.const 0
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17hc91c6141e20d1b3bE
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
    i32.const 8
    i32.add
    local.get 7
    call $_ZN11dharitri_sc5types11interaction7tx_exec13decode_result17h79083207dd45eccfE
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
  (func $_ZN5vault10ProxyTrait4init17h192e9fce3700ba37E (;304;) (type 4) (param i32 i32) (result i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction2tx138Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..deploy_call..DeployCall$LT$Env$C$CodeSource$GT$$C$RH$GT$8argument17hab3507f71fd40ddbE
  )
  (func $_ZN16forwarder_legacy21fwd_call_async_legacy13CallbackProxy25send_funds_twice_callback17h05be9642b7bee676E (;305;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    local.tee 4
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hac6f56bd747341a1E
    local.get 4
    local.get 2
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hb991d32a6bdcd947E
    local.get 4
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h45ef86da9a967663E
    local.get 0
    local.get 4
    i32.store offset=8
    local.get 0
    i32.const 25
    i32.store offset=4
    local.get 0
    i32.const 132305
    i32.store
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hb991d32a6bdcd947E (;306;) (type 0) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    i32.store offset=12
    local.get 1
    i32.load
    local.get 2
    i32.const 12
    i32.add
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h45c6cb691ccf7b2bE
    local.get 0
    local.get 2
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h2054eeef4de04b79E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN172_$LT$$RF$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17h37309ccc97434a58E (;307;) (type 0) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1d3755f5a00e246bE
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
      call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfe148ec32a4c6f69E
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
      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17he940dd5666109ff7E
      br 0 (;@1;)
    end
  )
  (func $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h22107db081916d94E (;308;) (type 0) (param i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 2147483646
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hbf05302844e8eb1cE
      return
    end
    i32.const 131865
    i32.const 4
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types10impl_slice96_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$$u5b$T$u5d$$GT$24dep_encode_or_handle_err17h05b46c222463323cE
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types10impl_slice96_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$$u5b$T$u5d$$GT$24dep_encode_or_handle_err17h05b46c222463323cE (;309;) (type 2) (param i32 i32 i32)
    local.get 1
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17he91a1aa0b08f9882E
    local.get 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17hb32cc3c429387724E
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h45db8d9a0a55aa8cE (;310;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 131776
    i32.const 15
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h37f34317265be370E
    unreachable
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17hca33b5d7ad511fb2E (;311;) (type 35) (param i64 i32)
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17hb32cc3c429387724E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h6850ffee0a3f5ad8E (;312;) (type 33) (param i32 i32 i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h35ce93795c027bdeE
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 4
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h93db862f85a1b8bfE
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h8b3138c84ae7eab0E (;313;) (type 8) (param i32)
    local.get 0
    i32.const 131776
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h8a01cc06c9962301E
    unreachable
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h93db862f85a1b8bfE (;314;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 131776
    i32.const 15
    call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h3ab4aeeaf2172ab9E
    unreachable
  )
  (func $_ZN4core3cmp10PartialOrd2gt17h60c2c4bc20624990E (;315;) (type 9) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic11big_num_cmp7cmp_i6417h794d3ad29687fa87E
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
  )
  (func $_ZN5vault10ProxyTrait12accept_funds17hd35e3646c1e40a86E (;316;) (type 0) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    call $_ZN100_$LT$vault..ProxyTo$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$16extract_proxy_to17h2bdee70fdf782a80E
    local.set 1
    local.get 2
    i32.const 8
    i32.add
    i32.const 132235
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h1426fbba68b9e193E
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
  (func $_ZN5vault10ProxyTrait14echo_arguments17h04a4c662865004b6E (;317;) (type 2) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 1
    call $_ZN100_$LT$vault..ProxyTo$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$16extract_proxy_to17h2bdee70fdf782a80E
    local.set 1
    local.get 3
    i32.const 8
    i32.add
    i32.const 132406
    i32.const 14
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h1426fbba68b9e193E
    local.get 3
    i32.load offset=8
    local.set 4
    local.get 2
    local.get 3
    i32.load offset=12
    local.tee 5
    call $_ZN172_$LT$$RF$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17h37309ccc97434a58E
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
  (func $_ZN5vault10ProxyTrait14echo_arguments17hf5035be61f5d9725E (;318;) (type 2) (param i32 i32 i32)
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
    call $_ZN100_$LT$vault..ProxyTo$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$16extract_proxy_to17h2bdee70fdf782a80E
    local.set 2
    local.get 3
    i32.const 132406
    i32.const 14
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h1426fbba68b9e193E
    local.get 3
    i32.load
    local.set 1
    local.get 3
    i32.const 12
    i32.add
    local.get 3
    i32.load offset=4
    local.tee 4
    call $_ZN172_$LT$$RF$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17h37309ccc97434a58E
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
  (func $_ZN5vault10ProxyTrait14retrieve_funds17h8935e5f324d2d1e0E (;319;) (type 10) (param i32 i32 i32 i64 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 1
    call $_ZN100_$LT$vault..ProxyTo$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$16extract_proxy_to17h2bdee70fdf782a80E
    local.set 6
    local.get 5
    i32.const 8
    i32.add
    i32.const 132420
    i32.const 14
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h1426fbba68b9e193E
    local.get 5
    i32.load offset=8
    local.set 7
    local.get 5
    i32.load offset=12
    local.set 1
    local.get 5
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    i32.store offset=20
    local.get 2
    local.get 5
    i32.const 20
    i32.add
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h45c6cb691ccf7b2bE
    local.get 1
    local.get 5
    i32.load offset=20
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h2054eeef4de04b79E
    local.get 5
    local.get 7
    local.get 1
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17he8389f33fbd8d539E
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
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hc1cd44042e9b175cE
    local.get 5
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN5vault10ProxyTrait4init17h6d0ea2eefb29a871E (;320;) (type 22) (param i32 i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types11interaction2tx138Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..deploy_call..DeployCall$LT$Env$C$CodeSource$GT$$C$RH$GT$8argument17hab3507f71fd40ddbE
    local.set 3
    local.get 1
    call $_ZN100_$LT$vault..ProxyTo$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$16extract_proxy_to17h2bdee70fdf782a80E
    local.set 1
    local.get 0
    i32.const 0
    i32.store16 offset=4
    local.get 0
    local.get 3
    i32.store
    local.get 0
    local.get 1
    i32.store offset=8
  )
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17h19105b8e8864b673E (;321;) (type 8) (param i32)
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
    i32.const 131865
    i32.const 4
    call $finish
  )
  (func $_ZN82_$LT$C$u20$as$u20$forwarder_legacy..fwd_storage_legacy..ForwarderStorageModule$GT$17last_issued_token17h8211c509d1dc353bE (;322;) (type 3) (result i32)
    i32.const 132519
    i32.const 15
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34244212834151f1E
  )
  (func $_ZN82_$LT$C$u20$as$u20$forwarder_legacy..fwd_storage_legacy..ForwarderStorageModule$GT$18last_error_message17h7e68f67b97aa94e0E (;323;) (type 3) (result i32)
    i32.const 132534
    i32.const 16
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34244212834151f1E
  )
  (func $_ZN85_$LT$C$u20$as$u20$forwarder_legacy..fwd_call_sync_legacy..ForwarderSyncCallModule$GT$36execute_on_dest_context_result_event17h92fed184a76c6969E (;324;) (type 8) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 132574
    i32.const 26
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h482808a142f1918bE
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E
    local.set 3
    local.get 1
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1d3755f5a00e246bE
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfe148ec32a4c6f69E
        local.get 1
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.load offset=12
        local.get 3
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hbf05302844e8eb1cE
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
  (func $_ZN87_$LT$C$u20$as$u20$forwarder_legacy..fwd_call_async_legacy..ForwarderAsyncCallModule$GT$13callback_data17h98cd49ac07ca214fE (;325;) (type 8) (param i32)
    (local i32 i32)
    i32.const 132600
    i32.const 13
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34244212834151f1E
    local.tee 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E
    local.tee 2
    i32.const 131914
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
  (func $rust_begin_unwind (;326;) (type 15)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h8945d78c95e86419E
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h8945d78c95e86419E (;327;) (type 15)
    i32.const 133004
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;328;) (type 15)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
  )
  (func $send_rewa (;329;) (type 15)
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd6cb8bdfc97bfce1E
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$11direct_rewa17hd91ada6007fa8708E
  )
  (func $echo_arguments_sync (;330;) (type 15)
    (local i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hd21cee59871f8e36E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i32.const 132231
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h7ddfd92472019882E
    local.set 2
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h1d163d7440768b08E
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
    call $_ZN5vault10ProxyTrait14echo_arguments17hf5035be61f5d9725E
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
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync292_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$dharitri_sc..types..interaction..tx_result_handler_list..original_result..OriginalResultMarker$LT$OriginalResult$GT$$GT$$GT$23execute_on_dest_context17hd1b43d87ab5bdab2E
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    call $_ZN85_$LT$C$u20$as$u20$forwarder_legacy..fwd_call_sync_legacy..ForwarderSyncCallModule$GT$36execute_on_dest_context_result_event17h92fed184a76c6969E
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $echo_arguments_sync_twice (;331;) (type 15)
    (local i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hd21cee59871f8e36E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i32.const 132231
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h7ddfd92472019882E
    local.set 2
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h1d163d7440768b08E
    local.get 0
    local.get 2
    i32.store offset=4
    call $getGasLeft
    local.set 3
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E
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
    call $_ZN5vault10ProxyTrait14echo_arguments17h04a4c662865004b6E
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
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync292_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$dharitri_sc..types..interaction..tx_result_handler_list..original_result..OriginalResultMarker$LT$OriginalResult$GT$$GT$$GT$23execute_on_dest_context17hd1b43d87ab5bdab2E
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    call $_ZN85_$LT$C$u20$as$u20$forwarder_legacy..fwd_call_sync_legacy..ForwarderSyncCallModule$GT$36execute_on_dest_context_result_event17h92fed184a76c6969E
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
    call $_ZN5vault10ProxyTrait14echo_arguments17h04a4c662865004b6E
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
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync292_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$dharitri_sc..types..interaction..tx_result_handler_list..original_result..OriginalResultMarker$LT$OriginalResult$GT$$GT$$GT$23execute_on_dest_context17hd1b43d87ab5bdab2E
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    call $_ZN85_$LT$C$u20$as$u20$forwarder_legacy..fwd_call_sync_legacy..ForwarderSyncCallModule$GT$36execute_on_dest_context_result_event17h92fed184a76c6969E
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_accept_funds (;332;) (type 15)
    (local i32 i32 i64 i32 i64 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 160
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    local.get 0
    i32.const 120
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17he37b1da4837b910dE
    call $getGasLeft
    local.set 2
    local.get 0
    local.get 1
    i32.store offset=76
    local.get 0
    i32.const 76
    i32.add
    call $_ZN100_$LT$vault..ProxyTo$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$16extract_proxy_to17h2bdee70fdf782a80E
    local.set 1
    local.get 0
    i32.const 24
    i32.add
    i32.const 132451
    i32.const 25
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h1426fbba68b9e193E
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
    local.get 2
    i64.const 1
    i64.shr_u
    local.tee 2
    i64.store offset=48
    local.get 0
    local.get 0
    i64.load offset=120
    i64.store offset=32
    local.get 0
    local.get 0
    i32.load offset=28
    local.tee 5
    i32.store offset=60
    local.get 0
    local.get 0
    i32.load offset=24
    local.tee 6
    i32.store offset=56
    local.get 0
    local.get 2
    i64.store offset=80
    local.get 0
    i32.load offset=44
    local.set 7
    block ;; label = @1
      block ;; label = @2
        local.get 4
        i32.wrap_i64
        local.tee 8
        i32.const 2147483646
        i32.ne
        br_if 0 (;@2;)
        local.get 2
        local.get 1
        local.get 7
        local.get 6
        local.get 5
        call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h7cbdacb1420a31c0E
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      i64.load offset=32
      local.set 2
      local.get 0
      local.get 7
      i32.store offset=116
      local.get 0
      local.get 8
      i32.store offset=112
      local.get 0
      local.get 2
      i64.store offset=104
      local.get 0
      local.get 1
      i32.store offset=96
      local.get 0
      local.get 5
      i32.store offset=92
      local.get 0
      local.get 6
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
      local.tee 8
      i32.store offset=140
      local.get 0
      local.get 0
      i32.const 112
      i32.add
      local.tee 9
      i32.store offset=136
      local.get 0
      local.get 2
      i64.store offset=128
      local.get 0
      local.get 0
      i32.const 68
      i32.add
      local.tee 7
      i32.store offset=152
      local.get 0
      local.get 7
      i32.store offset=148
      local.get 0
      local.get 5
      i32.store offset=124
      local.get 0
      local.get 6
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
        local.get 6
        local.get 5
        local.get 9
        local.get 8
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17haa5632f2f719fffdE
        local.get 0
        i32.load offset=12
        local.set 5
        local.get 0
        i32.load offset=8
        local.set 6
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h75c49f50aaea571dE
        local.set 7
        local.get 0
        i64.load offset=80
        local.get 1
        local.get 7
        local.get 6
        local.get 5
        call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h7cbdacb1420a31c0E
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      i32.const 16
      i32.add
      local.get 6
      local.get 5
      local.get 1
      local.get 3
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h7c1903839776cbd8E
      local.get 0
      i32.load offset=20
      local.set 1
      local.get 0
      i32.load offset=16
      local.set 5
      call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hb63c483befd3ab95E
      local.set 6
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h75c49f50aaea571dE
      local.set 7
      local.get 0
      i64.load offset=80
      local.get 6
      local.get 7
      local.get 5
      local.get 1
      call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h7cbdacb1420a31c0E
      local.set 1
    end
    call $cleanReturnData
    local.get 0
    i32.const 120
    i32.add
    local.get 1
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h6e0deb4055166c25E
    local.get 0
    i32.const 120
    i32.add
    i32.const 131765
    i32.const 11
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17ha2361941b6f747c0E
    local.set 5
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    local.set 1
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.load offset=128
        local.get 0
        i32.load offset=124
        i32.ge_u
        br_if 1 (;@1;)
        local.get 1
        local.get 0
        i32.const 120
        i32.add
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17hc3f2187172f04c04E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h2054eeef4de04b79E
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 5
    i32.store offset=88
    local.get 0
    local.get 1
    i32.store offset=32
    i32.const 132550
    i32.const 24
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h482808a142f1918bE
    local.tee 5
    local.get 0
    i32.const 88
    i32.add
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17h6b2840d7de0b6c3eE
    local.get 0
    local.get 1
    call $mBufferGetLength
    i32.store offset=128
    local.get 0
    i32.const 0
    i32.store offset=124
    local.get 0
    local.get 0
    i32.const 32
    i32.add
    i32.store offset=120
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        local.get 0
        i32.const 120
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfe148ec32a4c6f69E
        local.get 0
        i32.load
        i32.eqz
        br_if 1 (;@1;)
        local.get 5
        local.get 0
        i32.load offset=4
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17he940dd5666109ff7E
        br 0 (;@2;)
      end
    end
    local.get 5
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    call $managedWriteLog
    local.get 0
    i32.const 160
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_accept_funds_with_fees (;333;) (type 15)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd6cb8bdfc97bfce1E
    local.set 2
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17h987d6e3c7db3d187E
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 0
    i32.load offset=12
    local.set 4
    local.get 4
    local.get 4
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators196_$LT$impl$u20$core..ops..arith..Mul$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3mul17h57df6d04fb2ecf7cE
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u64$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h689a7b24b3e022ddE
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h27d8e1e0413b682fE
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
    call $_ZN5vault10ProxyTrait12accept_funds17hd35e3646c1e40a86E
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync292_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$dharitri_sc..types..interaction..tx_result_handler_list..original_result..OriginalResultMarker$LT$OriginalResult$GT$$GT$$GT$23execute_on_dest_context17h0745d2b0c65f5977E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_accept_funds_then_read (;334;) (type 15)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17he37b1da4837b910dE
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E
    i32.store offset=60
    local.get 0
    i32.const 48
    i32.add
    local.get 0
    i32.const 60
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17hd35e3646c1e40a86E
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync292_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$dharitri_sc..types..interaction..tx_result_handler_list..original_result..OriginalResultMarker$LT$OriginalResult$GT$$GT$$GT$23execute_on_dest_context17h0745d2b0c65f5977E
    local.get 0
    local.get 1
    i32.store offset=48
    local.get 0
    i32.const 48
    i32.add
    call $_ZN100_$LT$vault..ProxyTo$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$16extract_proxy_to17h2bdee70fdf782a80E
    local.set 2
    local.get 0
    i32.const 8
    i32.add
    i32.const 132383
    i32.const 11
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h1426fbba68b9e193E
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 0
    i32.load offset=12
    local.set 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    local.tee 4
    i32.const 132235
    i32.const 12
    call $mBufferSetBytes
    drop
    local.get 1
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h2054eeef4de04b79E
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17hc0bbdaf9c4a8e546E
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h75c49f50aaea571dE
    local.get 3
    local.get 1
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17hd920c1ae7c7e94feE
    local.set 1
    call $cleanReturnData
    local.get 0
    i32.const 16
    i32.add
    local.get 1
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h6e0deb4055166c25E
    block ;; label = @1
      local.get 0
      i32.const 16
      i32.add
      i32.const 131765
      i32.const 11
      call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h7eec8cdd5090e731E
      i32.const 131765
      i32.const 11
      call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hf7f9b5b22a9b7326E
      local.tee 5
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 131765
      i32.const 11
      i32.const 131097
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h37f34317265be370E
      unreachable
    end
    local.get 5
    call $smallIntFinishUnsigned
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_retrieve_funds (;335;) (type 15)
    (local i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h21a2b3429bafc3cbE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb71eeb347ba8f0bdE
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd6cb8bdfc97bfce1E
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
    call $_ZN5vault10ProxyTrait14retrieve_funds17h8935e5f324d2d1e0E
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17hc0bbdaf9c4a8e546E
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
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h75c49f50aaea571dE
    local.get 2
    local.get 1
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17hd920c1ae7c7e94feE
    local.set 1
    call $cleanReturnData
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_exec13decode_result17hb57750c7cec03f48E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_retrieve_funds_with_accept_func (;336;) (type 15)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd6cb8bdfc97bfce1E
    local.set 3
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h197601742c2a4b79E
    local.tee 4
    i32.store offset=20
    local.get 0
    local.get 1
    i32.store offset=24
    i32.const 132247
    i32.const 17
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34244212834151f1E
    local.set 1
    local.get 0
    i32.const 24
    i32.add
    call $_ZN100_$LT$vault..ProxyTo$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$16extract_proxy_to17h2bdee70fdf782a80E
    local.set 5
    local.get 0
    i32.const 8
    i32.add
    i32.const 132476
    i32.const 33
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h1426fbba68b9e193E
    local.get 0
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h12054abeaea8be71E
    local.get 0
    local.get 5
    i32.store offset=48
    local.get 0
    local.get 0
    i64.load
    i64.store offset=40 align=4
    local.get 0
    i32.const 64
    i32.add
    local.get 0
    i32.const 40
    i32.add
    local.get 3
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17hc1cd44042e9b175cE
    local.get 0
    i32.load offset=64
    local.set 5
    local.get 0
    i32.load offset=68
    local.tee 6
    i32.const 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$14push_multi_arg17hac8eccf561a46765E
    local.get 0
    i32.load offset=72
    local.set 7
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    local.set 3
    local.get 0
    local.get 4
    call $mBufferGetLength
    i32.store offset=36
    local.get 0
    i32.const 0
    i32.store offset=32
    local.get 0
    local.get 0
    i32.const 20
    i32.add
    i32.store offset=28
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 40
        i32.add
        local.get 0
        i32.const 28
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4c9a38d815281c4cE
        local.get 0
        i64.load offset=40
        i64.eqz
        br_if 1 (;@1;)
        local.get 0
        i64.load offset=48
        local.set 8
        local.get 0
        i32.load offset=60
        local.set 1
        local.get 0
        i32.load offset=56
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E
        local.set 2
        local.get 0
        local.get 1
        call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hedfb7cefa9bebb38E
        i32.store offset=76
        local.get 0
        local.get 8
        i64.store offset=64
        local.get 0
        local.get 2
        i32.store offset=72
        local.get 3
        local.get 0
        i32.const 64
        i32.add
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h70b2e9170f90509bE
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 3
    i32.store offset=76
    local.get 0
    local.get 7
    i32.store offset=72
    local.get 0
    local.get 6
    i32.store offset=68
    local.get 0
    local.get 5
    i32.store offset=64
    local.get 0
    i32.const 64
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync292_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$dharitri_sc..types..interaction..tx_result_handler_list..original_result..OriginalResultMarker$LT$OriginalResult$GT$$GT$$GT$23execute_on_dest_context17h0067f9488978fb48E
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $accept_funds_func (;337;) (type 15)
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
  )
  (func $forward_sync_accept_funds_multi_transfer (;338;) (type 15)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hd21cee59871f8e36E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i32.const 132100
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h56293dfdf760ad65E
    local.set 2
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h1d163d7440768b08E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    local.set 3
    local.get 0
    i32.const 48
    i32.add
    local.get 2
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h6e0deb4055166c25E
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.get 0
        i32.const 48
        i32.add
        call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h875968b09fceb464E
        local.get 0
        i64.load offset=8
        i64.eqz
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
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h70b2e9170f90509bE
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
    call $_ZN5vault10ProxyTrait12accept_funds17hd35e3646c1e40a86E
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync292_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$dharitri_sc..types..interaction..tx_result_handler_list..original_result..OriginalResultMarker$LT$OriginalResult$GT$$GT$$GT$23execute_on_dest_context17h0067f9488978fb48E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $echo_args_async (;339;) (type 15)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hd21cee59871f8e36E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=4
    local.get 0
    i32.const 4
    i32.add
    i32.const 132231
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h7ddfd92472019882E
    local.set 2
    local.get 0
    i32.load offset=4
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h1d163d7440768b08E
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
    call $_ZN5vault10ProxyTrait14echo_arguments17hf5035be61f5d9725E
    local.get 0
    i32.load offset=12
    local.set 1
    local.get 0
    i32.load offset=4
    local.set 2
    local.get 0
    i32.load offset=8
    local.set 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
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
    i32.const 132264
    i32.store offset=4
    local.get 0
    i32.const 4
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17hfe5047f11a8fe7baE
    unreachable
  )
  (func $forward_async_accept_funds (;340;) (type 15)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17he37b1da4837b910dE
    local.get 0
    local.get 1
    i32.store offset=44
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    i32.const 44
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17hd35e3646c1e40a86E
    local.get 0
    local.get 0
    i32.load offset=40
    i32.store offset=24
    local.get 0
    local.get 0
    i64.load offset=32 align=4
    i64.store offset=16
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17h74f0618bf4065989E
    unreachable
  )
  (func $forward_async_accept_funds_half_payment (;341;) (type 15)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17he37b1da4837b910dE
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17hf0ccf6fb237cefcaE
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
    call $_ZN5vault10ProxyTrait12accept_funds17hd35e3646c1e40a86E
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17h74f0618bf4065989E
    unreachable
  )
  (func $forward_async_accept_funds_with_fees (;342;) (type 15)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd6cb8bdfc97bfce1E
    local.set 2
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17he37b1da4837b910dE
    local.get 0
    i32.load offset=12
    local.set 3
    local.get 3
    local.get 3
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators196_$LT$impl$u20$core..ops..arith..Mul$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3mul17h57df6d04fb2ecf7cE
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u64$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h689a7b24b3e022ddE
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators196_$LT$impl$u20$core..ops..arith..Sub$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h40dbe7b86bafb18fE
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
    call $_ZN5vault10ProxyTrait12accept_funds17hd35e3646c1e40a86E
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17h74f0618bf4065989E
    unreachable
  )
  (func $forward_async_retrieve_funds (;343;) (type 15)
    (local i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h21a2b3429bafc3cbE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb71eeb347ba8f0bdE
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd6cb8bdfc97bfce1E
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
    call $_ZN5vault10ProxyTrait14retrieve_funds17h8935e5f324d2d1e0E
    local.get 0
    i32.load offset=12
    local.set 1
    local.get 0
    i32.load offset=4
    local.set 2
    local.get 0
    i32.load offset=8
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
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
    i32.const 132282
    i32.store offset=4
    local.get 0
    i32.const 4
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17hfe5047f11a8fe7baE
    unreachable
  )
  (func $send_funds_twice (;344;) (type 15)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h21a2b3429bafc3cbE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd6cb8bdfc97bfce1E
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
    call $_ZN117_$LT$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h28c845ee6857c16aE
    i32.store offset=60
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.const 60
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17hd35e3646c1e40a86E
    local.get 2
    call $_ZN142_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h05ae1bb80540c3b3E
    local.set 1
    local.get 3
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hedfb7cefa9bebb38E
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
    call $_ZN16forwarder_legacy21fwd_call_async_legacy13CallbackProxy25send_funds_twice_callback17h05be9642b7bee676E
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17h0a0a6aa5d201c10aE
    unreachable
  )
  (func $send_async_accept_multi_transfer (;345;) (type 15)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hd21cee59871f8e36E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i32.const 132100
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h56293dfdf760ad65E
    local.set 2
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h1d163d7440768b08E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    local.set 3
    local.get 0
    i32.const 48
    i32.add
    local.get 2
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h6e0deb4055166c25E
    loop ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.const 48
      i32.add
      call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h875968b09fceb464E
      block ;; label = @2
        local.get 0
        i64.load offset=8
        i64.const 0
        i64.ne
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
        call $_ZN5vault10ProxyTrait12accept_funds17hd35e3646c1e40a86E
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
        call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17h43a97f0183caf703E
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
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h70b2e9170f90509bE
      br 0 (;@1;)
    end
  )
  (func $callback_data (;346;) (type 15)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    local.get 0
    call $_ZN87_$LT$C$u20$as$u20$forwarder_legacy..fwd_call_async_legacy..ForwarderAsyncCallModule$GT$13callback_data17h98cd49ac07ca214fE
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
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17hbe3fbd52463a6e30E
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
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$13get_unchecked17hbb8a7c74f030c55aE
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
        call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h1627b420640b3c0eE
        local.set 8
        local.get 7
        i32.load
        local.get 8
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hbf05302844e8eb1cE
        local.get 0
        i32.load offset=52
        local.get 8
        call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h22107db081916d94E
        local.get 0
        i64.load offset=40
        local.get 8
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17hca33b5d7ad511fb2E
        local.get 6
        i32.load
        local.get 8
        call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h1899e998c63a4df9E
        local.get 1
        local.get 8
        call $_ZN145_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h30499a110ed87952E
        local.get 8
        call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17he3594514c548d63eE
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
  (func $callback_data_at_index (;347;) (type 15)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17he0448093401e948aE
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    call $_ZN87_$LT$C$u20$as$u20$forwarder_legacy..fwd_call_async_legacy..ForwarderAsyncCallModule$GT$13callback_data17h98cd49ac07ca214fE
    block ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=8
      local.set 2
      local.get 0
      i32.load offset=12
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17hbe3fbd52463a6e30E
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 40
      i32.add
      local.get 2
      local.get 1
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$13get_unchecked17hbb8a7c74f030c55aE
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
      call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17h19105b8e8864b673E
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
          call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfe148ec32a4c6f69E
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
    i32.const 132740
    i32.const 18
    call $signalError
    unreachable
  )
  (func $clear_callback_data (;348;) (type 15)
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
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    local.get 0
    i32.const 8
    i32.add
    call $_ZN87_$LT$C$u20$as$u20$forwarder_legacy..fwd_call_async_legacy..ForwarderAsyncCallModule$GT$13callback_data17h98cd49ac07ca214fE
    local.get 0
    i32.load offset=8
    local.set 2
    local.get 0
    i32.load offset=12
    local.tee 3
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17hbe3fbd52463a6e30E
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
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h21f92cfcc208a82bE
        call $_ZN11dharitri_sc7storage11storage_set13storage_clear17hed9e3175487cd2a0E
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
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17h070a1fb4c6fb1a2fE
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_exec_accept_funds (;349;) (type 15)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17he37b1da4837b910dE
    local.get 0
    local.get 1
    i32.store offset=44
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    i32.const 44
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17hd35e3646c1e40a86E
    local.get 0
    local.get 0
    i32.load offset=40
    i32.store offset=24
    local.get 0
    local.get 0
    i64.load offset=32 align=4
    i64.store offset=16
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17hcc1ada9dc3ee60ccE
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_exec_accept_single_dcdt (;350;) (type 15)
    (local i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$11single_dcdt17h3eb68b5302aa1606E
    local.get 0
    local.get 1
    i32.store offset=28
    local.get 0
    i32.const 48
    i32.add
    local.get 0
    i32.const 28
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17hd35e3646c1e40a86E
    local.get 0
    i32.load offset=52
    local.set 2
    local.get 0
    i32.load offset=56
    local.set 3
    local.get 0
    i32.load offset=20
    local.set 1
    local.get 0
    i32.load offset=16
    local.set 4
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load offset=48
          local.tee 5
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h3aa63a60b879d0e6E
          br_if 0 (;@3;)
          call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17hc0bbdaf9c4a8e546E
          local.set 6
          br 1 (;@2;)
        end
        i64.const 0
        local.set 6
        local.get 1
        call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp126_$LT$impl$u20$core..cmp..PartialEq$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h970152f2ab4ca3c3E
        br_if 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.store offset=44
      local.get 0
      i64.const 0
      i64.store offset=32
      local.get 0
      local.get 4
      i32.store offset=40
      local.get 0
      local.get 0
      i32.const 44
      i32.add
      i32.store offset=60
      local.get 0
      i64.const 0
      i64.store offset=48
      local.get 0
      local.get 0
      i32.const 40
      i32.add
      i32.store offset=56
      local.get 0
      i32.const 48
      i32.add
      local.get 3
      local.get 6
      local.get 5
      local.get 2
      call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17hbcfbb92b12da9314E
    end
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_execu_accept_funds_with_fees (;351;) (type 15)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd6cb8bdfc97bfce1E
    local.set 2
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17h987d6e3c7db3d187E
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 0
    i32.load offset=12
    local.set 4
    local.get 4
    local.get 4
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators196_$LT$impl$u20$core..ops..arith..Mul$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3mul17h57df6d04fb2ecf7cE
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u64$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h689a7b24b3e022ddE
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h27d8e1e0413b682fE
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
    call $_ZN5vault10ProxyTrait12accept_funds17hd35e3646c1e40a86E
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17hcc1ada9dc3ee60ccE
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_exec_accept_funds_twice (;352;) (type 15)
    (local i32 i32 i64 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17he37b1da4837b910dE
    local.get 0
    i64.load offset=8
    local.set 2
    local.get 0
    i32.load offset=16
    local.set 3
    local.get 0
    i32.load offset=20
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17hf0ccf6fb237cefcaE
    local.set 4
    call $getGasLeft
    local.set 5
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E
    i32.store offset=60
    local.get 0
    i32.const 48
    i32.add
    local.get 0
    i32.const 60
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17hd35e3646c1e40a86E
    local.get 3
    call $_ZN142_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h05ae1bb80540c3b3E
    local.set 6
    local.get 4
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hedfb7cefa9bebb38E
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17ha8483855b2b8f87eE
    local.get 0
    local.get 1
    i32.store offset=60
    local.get 0
    i32.const 48
    i32.add
    local.get 0
    i32.const 60
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17hd35e3646c1e40a86E
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17ha8483855b2b8f87eE
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_exec_accept_funds_return_values (;353;) (type 15)
    (local i32 i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17he37b1da4837b910dE
    local.get 0
    i32.const 8
    i32.add
    local.tee 2
    i32.load
    call $_ZN142_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h05ae1bb80540c3b3E
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
    call $_ZN5vault10ProxyTrait12accept_funds17hd35e3646c1e40a86E
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17hcc1ada9dc3ee60ccE
    call $getGasLeft
    local.set 5
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hd99dbeac82c25cb0E
    local.set 1
    local.get 4
    call $smallIntFinishUnsigned
    local.get 5
    call $smallIntFinishUnsigned
    local.get 1
    call $bigIntFinishUnsigned
    local.get 3
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17h19105b8e8864b673E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $transf_exec_multi_accept_funds_v2 (;354;) (type 15)
    (local i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hd21cee59871f8e36E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=24
    local.get 0
    i32.const 24
    i32.add
    i32.const 132100
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h56293dfdf760ad65E
    local.set 2
    local.get 0
    i32.load offset=24
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h1d163d7440768b08E
    local.get 0
    local.get 1
    i32.store offset=48
    local.get 0
    i32.const 24
    i32.add
    local.get 0
    i32.const 48
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17hd35e3646c1e40a86E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
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
    i32.const 12
    i32.add
    local.get 2
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h6e0deb4055166c25E
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 24
        i32.add
        local.get 0
        i32.const 12
        i32.add
        call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h875968b09fceb464E
        local.get 0
        i64.load offset=24
        i64.eqz
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
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h70b2e9170f90509bE
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17hce40aa9bce961916E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_exec_reject_funds_multi_transfer (;355;) (type 15)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hd21cee59871f8e36E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i32.const 132100
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h56293dfdf760ad65E
    local.set 2
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h1d163d7440768b08E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    local.set 3
    local.get 0
    i32.const 48
    i32.add
    local.get 2
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h6e0deb4055166c25E
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.get 0
        i32.const 48
        i32.add
        call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h875968b09fceb464E
        local.get 0
        i64.load offset=8
        i64.eqz
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
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h70b2e9170f90509bE
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
    call $_ZN5vault10ProxyTrait12accept_funds17hd35e3646c1e40a86E
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17hce40aa9bce961916E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $transf_exec_multi_reject_funds (;356;) (type 15)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hd21cee59871f8e36E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=24
    local.get 0
    i32.const 24
    i32.add
    i32.const 132100
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h56293dfdf760ad65E
    local.set 2
    local.get 0
    i32.load offset=24
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h1d163d7440768b08E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    local.set 3
    local.get 0
    i32.const 12
    i32.add
    local.get 2
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h6e0deb4055166c25E
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 24
        i32.add
        local.get 0
        i32.const 12
        i32.add
        call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h875968b09fceb464E
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
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h70b2e9170f90509bE
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN100_$LT$vault..ProxyTo$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$16extract_proxy_to17h2bdee70fdf782a80E
    local.set 1
    local.get 0
    i32.const 132394
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h1426fbba68b9e193E
    local.get 0
    local.get 3
    i32.store offset=36
    local.get 0
    local.get 1
    i32.store offset=32
    local.get 0
    local.get 0
    i64.load
    i64.store offset=24 align=4
    local.get 0
    i32.const 24
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17hce40aa9bce961916E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $changeOwnerAddress (;357;) (type 15)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    i32.const 132215
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    i32.const 1
    i32.const 132356
    i32.const 9
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 2
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E
    local.set 3
    local.get 0
    i32.const 24
    i32.add
    i32.const 131441
    i32.const 18
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h1426fbba68b9e193E
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.load offset=24
    local.get 0
    i32.load offset=28
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h12054abeaea8be71E
    local.get 0
    i32.load offset=20
    local.set 2
    local.get 0
    i32.load offset=16
    local.set 4
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17hc0bbdaf9c4a8e546E
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h75c49f50aaea571dE
    local.get 4
    local.get 2
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17hd920c1ae7c7e94feE
    local.set 2
    call $cleanReturnData
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_exec13decode_result17hb57750c7cec03f48E
    local.get 0
    local.get 1
    i32.store offset=32
    local.get 0
    i32.const 32
    i32.add
    call $_ZN100_$LT$vault..ProxyTo$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$16extract_proxy_to17h2bdee70fdf782a80E
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    i32.const 132434
    i32.const 17
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h1426fbba68b9e193E
    local.get 0
    i32.load offset=12
    local.set 2
    local.get 0
    i32.load offset=8
    local.set 3
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17hc0bbdaf9c4a8e546E
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h75c49f50aaea571dE
    local.get 3
    local.get 2
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17hd920c1ae7c7e94feE
    local.set 1
    call $cleanReturnData
    local.get 0
    i32.const 36
    i32.add
    local.get 1
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h6e0deb4055166c25E
    local.get 0
    i32.const 36
    i32.add
    i32.const 131765
    i32.const 11
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h2e202b1ece76b01fE
    call $mBufferFinish
    drop
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $deploy_contract (;358;) (type 15)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hd21cee59871f8e36E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
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
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17ha0de6034c81f1c62E
    local.get 0
    i32.load offset=12
    local.set 2
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 0
    i32.load offset=20
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h1d163d7440768b08E
    local.get 0
    i32.const 20
    i32.add
    local.get 1
    local.get 3
    local.get 2
    call $_ZN16forwarder_legacy17fwd_deploy_legacy20DeployContractModule20perform_deploy_vault17h268cb3ae95933853E
    local.get 0
    i32.const 20
    i32.add
    call $_ZN11dharitri_sc2io6finish12finish_multi17h9caf0bac21ad2802E
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $deploy_two_contracts (;359;) (type 15)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    local.get 0
    i32.const 4
    i32.add
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    local.tee 1
    i32.const 1
    local.get 0
    call $_ZN16forwarder_legacy17fwd_deploy_legacy20DeployContractModule20perform_deploy_vault17h268cb3ae95933853E
    local.get 0
    i32.load offset=4
    local.set 2
    local.get 0
    i32.const 4
    i32.add
    local.get 1
    i32.const 1
    local.get 0
    call $_ZN16forwarder_legacy17fwd_deploy_legacy20DeployContractModule20perform_deploy_vault17h268cb3ae95933853E
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
  (func $deploy_vault_from_source (;360;) (type 15)
    (local i32 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hd21cee59871f8e36E
    i32.const 0
    i32.const 132201
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
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
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17ha0de6034c81f1c62E
    local.get 0
    i32.load offset=12
    local.set 2
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 0
    i32.load offset=20
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h1d163d7440768b08E
    local.get 3
    local.get 2
    call $_ZN5vault10ProxyTrait4init17h192e9fce3700ba37E
    local.set 2
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E
    local.set 1
    call $_ZN86_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_gas..TxGas$LT$Env$GT$$GT$9gas_value17hc0bbdaf9c4a8e546E
    local.set 4
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hd99dbeac82c25cb0E
    local.set 3
    i32.const 0
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17hc91c6141e20d1b3bE
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec13decode_result17h79083207dd45eccfE
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
    call $_ZN11dharitri_sc2io6finish12finish_multi17h9caf0bac21ad2802E
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $upgradeVault (;361;) (type 15)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hd21cee59871f8e36E
    i32.const 0
    i32.const 132215
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
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
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17ha0de6034c81f1c62E
    local.get 0
    i32.load offset=12
    local.set 3
    local.get 0
    i32.load offset=8
    local.set 4
    local.get 0
    i32.load offset=16
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h1d163d7440768b08E
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
    call $_ZN5vault10ProxyTrait4init17h6d0ea2eefb29a871E
    call $getGasLeft
    local.set 5
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hd99dbeac82c25cb0E
    local.set 1
    i32.const 256
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17hc91c6141e20d1b3bE
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
  (func $upgrade_vault_from_source (;362;) (type 15)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hd21cee59871f8e36E
    i32.const 0
    i32.const 132215
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    i32.const 1
    i32.const 132201
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
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
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17ha0de6034c81f1c62E
    local.get 0
    i32.load offset=12
    local.set 3
    local.get 0
    i32.load offset=8
    local.set 4
    local.get 0
    i32.load offset=16
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h1d163d7440768b08E
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
    call $_ZN5vault10ProxyTrait4init17h6d0ea2eefb29a871E
    call $getGasLeft
    local.set 5
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hd99dbeac82c25cb0E
    local.set 1
    i32.const 256
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17hc91c6141e20d1b3bE
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
  (func $getFungibleDcdtBalance (;363;) (type 15)
    (local i32)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    local.set 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hb63c483befd3ab95E
    local.get 0
    i64.const 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$16get_dcdt_balance17h196f3d70ba4ee95bE
    call $bigIntFinishUnsigned
  )
  (func $getCurrentNftNonce (;364;) (type 15)
    (local i32 i32 i32)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    local.set 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hb63c483befd3ab95E
    local.set 1
    local.get 0
    call $mBufferGetLength
    local.set 2
    local.get 1
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node26unsafe_buffer_load_address17hd45b698bfdacadf0E
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node35unsafe_buffer_load_token_identifier17hab97fc9a139ece1cE
    i32.const 143117
    i32.const 143149
    local.get 2
    call $getCurrentDCDTNFTNonce
    call $smallIntFinishUnsigned
  )
  (func $send_dcdt (;365;) (type 15)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd6cb8bdfc97bfce1E
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
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$11direct_dcdt17h00af144db170ff53E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $send_dcdt_with_fees (;366;) (type 15)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd6cb8bdfc97bfce1E
    local.set 2
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$11single_dcdt17h3eb68b5302aa1606E
    block ;; label = @1
      local.get 0
      i64.load offset=16
      i64.eqz
      br_if 0 (;@1;)
      i32.const 132712
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
    local.get 0
    local.get 1
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators196_$LT$impl$u20$core..ops..arith..Mul$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3mul17h57df6d04fb2ecf7cE
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u64$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h689a7b24b3e022ddE
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h27d8e1e0413b682fE
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
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$11direct_dcdt17h00af144db170ff53E
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $send_dcdt_twice (;367;) (type 15)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd6cb8bdfc97bfce1E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd6cb8bdfc97bfce1E
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
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$11direct_dcdt17h00af144db170ff53E
    local.get 0
    local.get 0
    i32.const 12
    i32.add
    i64.const 0
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$11direct_dcdt17h00af144db170ff53E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $send_dcdt_direct_multi_transfer (;368;) (type 15)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hd21cee59871f8e36E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=24
    local.get 0
    i32.const 24
    i32.add
    i32.const 132100
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h56293dfdf760ad65E
    local.set 2
    local.get 0
    i32.load offset=24
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h1d163d7440768b08E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    local.set 3
    local.get 0
    i32.const 12
    i32.add
    local.get 2
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h6e0deb4055166c25E
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 24
        i32.add
        local.get 0
        i32.const 12
        i32.add
        call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h875968b09fceb464E
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
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h70b2e9170f90509bE
        br 0 (;@2;)
      end
    end
    local.get 1
    local.get 3
    call $getGasLeft
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    call $managedMultiTransferDCDTNFTExecute
    drop
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $issue_fungible_token (;369;) (type 15)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h6eddff9cb5ccfe82E
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd6cb8bdfc97bfce1E
    local.set 3
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17hf935c0517984106bE
    local.set 4
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17hb171bbdc74f756bfE
    i32.store offset=8
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_ref23ManagedRef$LT$M$C$T$GT$11clone_value17h68bf404de058c20cE
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
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14issue_fungible17h2427b52cf05e0360E
    local.get 0
    i32.load offset=44
    local.set 1
    local.get 0
    i32.load offset=36
    local.set 2
    local.get 0
    i32.load offset=40
    local.set 3
    local.get 0
    i32.const 12
    i32.add
    local.get 0
    i32.const 8
    i32.add
    call $_ZN16forwarder_legacy15fwd_dcdt_legacy13CallbackProxy19dcdt_issue_callback17h58447d972aca4d7aE
    local.get 0
    local.get 3
    i32.store offset=32
    local.get 0
    local.get 2
    i32.store offset=28
    local.get 0
    local.get 1
    i32.store offset=24
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17h182c4c491d9ee834E
    unreachable
  )
  (func $local_mint (;370;) (type 15)
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    i64.const 0
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd6cb8bdfc97bfce1E
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_local_mint17hd30301d8cbdd9236E
  )
  (func $local_burn (;371;) (type 15)
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    i64.const 0
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd6cb8bdfc97bfce1E
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_local_burn17hdba05b19670378edE
  )
  (func $get_dcdt_local_roles (;372;) (type 15)
    (local i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const -8
    local.set 1
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    call $getDCDTLocalRoles
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    local.set 3
    loop ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.const 133004
          i32.add
          i32.load8_u
          local.tee 4
          i32.const 3
          i32.shl
          i32.const 133024
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
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34244212834151f1E
          call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17he940dd5666109ff7E
          br 1 (;@2;)
        end
        local.get 0
        local.get 3
        i32.store offset=12
        local.get 0
        i32.const 12
        i32.add
        call $_ZN11dharitri_sc2io6finish12finish_multi17hee5531f8a736e12dE
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
  (func $get_dcdt_token_data (;373;) (type 15)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    local.get 0
    i32.const 48
    i32.add
    i32.const 0
    i32.const 132093
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb71eeb347ba8f0bdE
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$19get_dcdt_token_data17hba65b73bc337b81fE
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
    call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h1627b420640b3c0eE
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfe148ec32a4c6f69E
        local.get 0
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=12
        local.get 2
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hbf05302844e8eb1cE
        br 0 (;@2;)
      end
    end
    local.get 2
    call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17he3594514c548d63eE
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $is_dcdt_frozen (;374;) (type 15)
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    i32.const 132093
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb71eeb347ba8f0bdE
    call $managedIsDCDTFrozen
    i32.const 0
    i32.gt_s
    i64.extend_i32_u
    call $smallIntFinishSigned
  )
  (func $is_dcdt_paused (;375;) (type 15)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    call $managedIsDCDTPaused
    i32.const 0
    i32.gt_s
    i64.extend_i32_u
    call $smallIntFinishSigned
  )
  (func $is_dcdt_limited_transfer (;376;) (type 15)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    call $managedIsDCDTLimitedTransfer
    i32.const 0
    i32.gt_s
    i64.extend_i32_u
    call $smallIntFinishSigned
  )
  (func $validate_token_identifier (;377;) (type 15)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    call $validateTokenIdentifier
    i32.const 0
    i32.ne
    i64.extend_i32_u
    call $smallIntFinishSigned
  )
  (func $sft_issue (;378;) (type 15)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h6eddff9cb5ccfe82E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    local.set 2
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17hf935c0517984106bE
    local.set 3
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17hb171bbdc74f756bfE
    i32.store offset=12
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_ref23ManagedRef$LT$M$C$T$GT$11clone_value17h68bf404de058c20cE
    local.set 3
    local.get 0
    i32.const 16843009
    i32.store offset=43 align=1
    local.get 0
    i32.const 16843009
    i32.store offset=40
    local.get 0
    i32.const 16
    i32.add
    local.get 3
    local.get 1
    local.get 2
    local.get 0
    i32.const 40
    i32.add
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$19issue_semi_fungible17h269c802b621ef891E
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
    call $_ZN16forwarder_legacy14fwd_sft_legacy13CallbackProxy18sft_issue_callback17h1450f43989135b77E
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17h182c4c491d9ee834E
    unreachable
  )
  (func $get_nft_balance (;379;) (type 15)
    (local i32 i64)
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    local.set 0
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb71eeb347ba8f0bdE
    local.set 1
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hb63c483befd3ab95E
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$16get_dcdt_balance17h196f3d70ba4ee95bE
    call $bigIntFinishUnsigned
  )
  (func $buy_nft (;380;) (type 15)
    (local i32 i32 i64 i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb71eeb347ba8f0bdE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd6cb8bdfc97bfce1E
    local.set 3
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17he37b1da4837b910dE
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17hb171bbdc74f756bfE
    local.set 4
    local.get 0
    i64.load
    local.set 5
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hb63c483befd3ab95E
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$19get_dcdt_token_data17hba65b73bc337b81fE
    local.get 0
    i32.load offset=12
    local.tee 6
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hedfb7cefa9bebb38E
    local.tee 7
    local.get 7
    local.get 0
    i32.load offset=36
    call $bigIntMul
    local.get 7
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u64$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h689a7b24b3e022ddE
    local.set 7
    local.get 4
    local.get 1
    local.get 2
    local.get 3
    i64.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17hdcc4ba0dc2a5fdd5E
    block ;; label = @1
      block ;; label = @2
        local.get 7
        call $_ZN11dharitri_sc5types7managed5basic11big_num_cmp7cmp_i6417h794d3ad29687fa87E
        i32.const 255
        i32.and
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        local.get 6
        call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hedfb7cefa9bebb38E
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
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
          local.set 3
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
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
            call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21transfer_dcdt_execute17h24f7a56c8345dccdE
            br 2 (;@2;)
          end
          local.get 8
          local.get 1
          local.get 5
          local.get 7
          i64.const 0
          local.get 3
          local.get 4
          call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17hdcc4ba0dc2a5fdd5E
          br 1 (;@2;)
        end
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
        local.set 1
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
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
      call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hedfb7cefa9bebb38E
      local.get 7
      call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Sub$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3sub17h27d8e1e0413b682fE
      local.set 1
    end
    local.get 1
    call $bigIntFinishUnsigned
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $nft_issue (;381;) (type 15)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h6eddff9cb5ccfe82E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    local.set 2
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17hf935c0517984106bE
    local.set 3
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17hb171bbdc74f756bfE
    i32.store offset=12
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_ref23ManagedRef$LT$M$C$T$GT$11clone_value17h68bf404de058c20cE
    local.set 3
    local.get 0
    i32.const 16843009
    i32.store offset=43 align=1
    local.get 0
    i32.const 16843009
    i32.store offset=40
    local.get 0
    i32.const 16
    i32.add
    local.get 3
    local.get 1
    local.get 2
    local.get 0
    i32.const 40
    i32.add
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$18issue_non_fungible17ha1e1d76b65816654E
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
    call $_ZN16forwarder_legacy14fwd_nft_legacy13CallbackProxy18nft_issue_callback17he88a6a94d6a766ebE
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17h182c4c491d9ee834E
    unreachable
  )
  (func $nft_create (;382;) (type 15)
    call $checkNoPayment
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd6cb8bdfc97bfce1E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd6cb8bdfc97bfce1E
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    i32.const 5
    i32.const 131976
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1c093037a3262c78E
    i32.const 6
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    call $_ZN16forwarder_legacy14fwd_nft_legacy18ForwarderNftModule10nft_create17ha54498dd18b58de1E
    call $smallIntFinishUnsigned
  )
  (func $nft_create_compact (;383;) (type 15)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd6cb8bdfc97bfce1E
    local.set 2
    local.get 0
    i32.const 2
    i32.const 131976
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1c093037a3262c78E
    local.tee 3
    i32.const 16
    i32.shr_u
    i32.store8 offset=10
    local.get 0
    local.get 3
    i32.store16 offset=8
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    local.set 3
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hd99dbeac82c25cb0E
    local.set 4
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
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
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_nft_create17h438664d089139614E
    drop
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $nft_add_uris (;384;) (type 15)
    (local i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hd21cee59871f8e36E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb71eeb347ba8f0bdE
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=68
    local.get 0
    i32.const 68
    i32.add
    i32.const 131981
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h7ddfd92472019882E
    local.set 3
    local.get 0
    i32.load offset=68
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h1d163d7440768b08E
    local.get 0
    local.get 3
    i32.store offset=60
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfe148ec32a4c6f69E
        local.get 0
        i32.load offset=48
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 0
        i32.load offset=52
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h2054eeef4de04b79E
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 4
    i32.store offset=64
    block ;; label = @1
      local.get 4
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h3aa63a60b879d0e6E
      br_if 0 (;@1;)
      local.get 0
      i32.const 40
      i32.add
      i32.const 131459
      i32.const 13
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h1426fbba68b9e193E
      local.get 0
      i32.const 32
      i32.add
      local.get 0
      i32.load offset=40
      local.get 0
      i32.load offset=44
      local.get 1
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h12054abeaea8be71E
      local.get 0
      i32.const 24
      i32.add
      local.get 0
      i32.load offset=32
      local.get 0
      i32.load offset=36
      local.get 2
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17he8389f33fbd8d539E
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
          call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfe148ec32a4c6f69E
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
          call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h4e0ec958e5077669E
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
      call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17hb32e8a6190777fd0E
    end
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $nft_update_attributes (;385;) (type 15)
    (local i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb71eeb347ba8f0bdE
    local.set 2
    local.get 0
    i32.const 2
    i32.const 131999
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1c093037a3262c78E
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
    i32.const 131472
    i32.const 23
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h1426fbba68b9e193E
    local.get 0
    i32.const 24
    i32.add
    local.get 0
    i32.load offset=32
    local.get 0
    i32.load offset=36
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h12054abeaea8be71E
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.load offset=24
    local.get 0
    i32.load offset=28
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17he8389f33fbd8d539E
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
    call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h8064c298c541042dE
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17hb32e8a6190777fd0E
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $nft_decode_complex_attributes (;386;) (type 15)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 144
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E
    i32.const 6
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hd21cee59871f8e36E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd6cb8bdfc97bfce1E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd6cb8bdfc97bfce1E
    local.set 4
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    local.set 5
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
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
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h546b71b813152d4bE
    local.get 0
    i32.load offset=120
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h1d163d7440768b08E
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    local.tee 12
    i32.store offset=84
    local.get 12
    local.get 6
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h2054eeef4de04b79E
    local.get 0
    i32.const 72
    i32.add
    i32.const 131428
    i32.const 13
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h1426fbba68b9e193E
    local.get 0
    i32.const 64
    i32.add
    local.get 0
    i32.load offset=72
    local.get 0
    i32.load offset=76
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h12054abeaea8be71E
    local.get 0
    i32.const 56
    i32.add
    local.get 0
    i32.load offset=64
    local.get 0
    i32.load offset=68
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h153c45cfa49874c9E
    local.get 0
    i32.const 48
    i32.add
    local.get 0
    i32.load offset=56
    local.get 0
    i32.load offset=60
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h4e0ec958e5077669E
    local.get 0
    i32.const 40
    i32.add
    local.get 0
    i32.load offset=48
    local.get 0
    i32.load offset=52
    local.get 4
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h153c45cfa49874c9E
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    i32.load offset=40
    local.get 0
    i32.load offset=44
    local.get 5
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h4e0ec958e5077669E
    local.get 0
    i32.load offset=32
    local.set 3
    local.get 0
    i32.load offset=36
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E
    local.set 4
    local.get 11
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h352d7096ea4cc246E
    local.get 4
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hbf05302844e8eb1cE
    local.get 10
    local.get 4
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hbf05302844e8eb1cE
    local.get 9
    local.get 4
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hbf05302844e8eb1cE
    local.get 8
    local.get 4
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17hd92a5bb3cd4af666E
    local.get 7
    local.get 4
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hbf05302844e8eb1cE
    local.get 2
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h2054eeef4de04b79E
    block ;; label = @1
      block ;; label = @2
        local.get 12
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h3aa63a60b879d0e6E
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
          call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfe148ec32a4c6f69E
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
          call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h4e0ec958e5077669E
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
      call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h72ff4e9fe1577a64E
      local.get 0
      i32.load offset=12
      local.set 2
      local.get 0
      i32.load offset=8
      local.set 3
    end
    local.get 3
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17h6518100d16ca65adE
    local.set 13
    local.get 0
    i32.const 88
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hb63c483befd3ab95E
    local.get 1
    local.get 13
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$19get_dcdt_token_data17hba65b73bc337b81fE
    i32.const 0
    local.set 3
    local.get 0
    i32.load offset=100
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E
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
    i32.const 131820
    i32.const 32
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h52052bad577e2410E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h0fd8a6111dbed6daE
    local.set 2
    local.get 0
    i32.const 120
    i32.add
    i32.const 131820
    i32.const 32
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h52052bad577e2410E
    local.set 4
    local.get 0
    i32.const 120
    i32.add
    i32.const 131820
    i32.const 32
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h52052bad577e2410E
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
    i32.const 131820
    i32.const 32
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h6850ffee0a3f5ad8E
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load8_u offset=143
          br_table 2 (;@1;) 1 (;@2;) 0 (;@3;)
        end
        i32.const 131820
        i32.const 32
        i32.const 131874
        i32.const 13
        call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h3ab4aeeaf2172ab9E
        unreachable
      end
      i32.const 1
      local.set 3
    end
    local.get 0
    i32.const 120
    i32.add
    i32.const 131820
    i32.const 32
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h52052bad577e2410E
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
          i32.store offset=143100
          i32.const 0
          i32.const 0
          i32.store8 offset=143104
        end
        local.get 11
        local.get 2
        call $bigIntCmp
        br_if 1 (;@1;)
        local.get 10
        local.get 4
        call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h101e6ee837febe57E
        i32.eqz
        br_if 1 (;@1;)
        local.get 9
        local.get 12
        call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h101e6ee837febe57E
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
        call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h101e6ee837febe57E
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 144
        i32.add
        global.set $__stack_pointer
        return
      end
      i32.const 131820
      i32.const 32
      i32.const 131097
      i32.const 14
      call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h3ab4aeeaf2172ab9E
      unreachable
    end
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hbd2007ec1c91ab4bE
    unreachable
  )
  (func $nft_add_quantity (;387;) (type 15)
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb71eeb347ba8f0bdE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd6cb8bdfc97bfce1E
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_local_mint17hd30301d8cbdd9236E
  )
  (func $nft_burn (;388;) (type 15)
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb71eeb347ba8f0bdE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd6cb8bdfc97bfce1E
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$15dcdt_local_burn17hdba05b19670378edE
  )
  (func $transfer_nft_via_async_call (;389;) (type 15)
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb71eeb347ba8f0bdE
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd6cb8bdfc97bfce1E
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$28transfer_dcdt_via_async_call17h52d18a801888a8b7E
    unreachable
  )
  (func $transfer_nft_and_execute (;390;) (type 15)
    (local i32 i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hd21cee59871f8e36E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb71eeb347ba8f0bdE
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd6cb8bdfc97bfce1E
    local.set 4
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    local.set 5
    local.get 0
    i32.const 5
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 132013
    i32.const 9
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h7ddfd92472019882E
    local.set 6
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h1d163d7440768b08E
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $getGasLeft
    local.get 5
    local.get 6
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17hdcc4ba0dc2a5fdd5E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $create_and_send (;391;) (type 15)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    i32.const 0
    i32.const 131997
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd6cb8bdfc97bfce1E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    local.set 4
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd6cb8bdfc97bfce1E
    local.set 5
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    local.set 6
    i32.const 6
    i32.const 131976
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1c093037a3262c78E
    local.set 7
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
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
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E
    local.get 3
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hedfb7cefa9bebb38E
    local.get 4
    local.get 5
    local.get 6
    local.get 7
    local.get 8
    call $_ZN16forwarder_legacy14fwd_nft_legacy18ForwarderNftModule10nft_create17ha54498dd18b58de1E
    local.tee 9
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$11direct_dcdt17h00af144db170ff53E
    i32.const 132509
    i32.const 4
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h482808a142f1918bE
    local.tee 2
    local.get 0
    i32.const 4
    i32.add
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hac6f56bd747341a1E
    local.get 2
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17he235f18db7fe4fc3E
    local.get 2
    local.get 9
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17h61542f92817e91a9E
    local.get 2
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17h6b2840d7de0b6c3eE
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
    call $managedWriteLog
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $setLocalRoles (;392;) (type 15)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hd21cee59871f8e36E
    i32.const 0
    i32.const 132093
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 132189
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h56293dfdf760ad65E
    local.set 3
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h1d163d7440768b08E
    local.get 0
    i32.const 12
    i32.add
    local.get 3
    call $_ZN11dharitri_sc5types7managed11multi_value24multi_value_encoded_iter165_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$GT$9into_iter17h6fe96a1fcea28ecaE
    local.get 0
    local.get 1
    local.get 2
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$17set_special_roles17h6ce91980bf0ec358E
    local.get 0
    i64.load
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
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
    i32.const 132168
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17hd6f372a2f170e00aE
    unreachable
  )
  (func $unsetLocalRoles (;393;) (type 15)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hd21cee59871f8e36E
    i32.const 0
    i32.const 132093
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc60f96300f8e3cfbE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7b66e6c464f11cb7E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 132189
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h56293dfdf760ad65E
    local.set 3
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h1d163d7440768b08E
    local.get 0
    i32.const 12
    i32.add
    local.get 3
    call $_ZN11dharitri_sc5types7managed11multi_value24multi_value_encoded_iter165_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$GT$9into_iter17h6fe96a1fcea28ecaE
    local.get 0
    local.get 1
    local.get 2
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types11interaction12system_proxy20dcdt_system_sc_proxy53DCDTSystemSCProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$19unset_special_roles17hc37d97e525330fb8E
    local.get 0
    i64.load
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
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
    i32.const 132168
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17hd6f372a2f170e00aE
    unreachable
  )
  (func $lastIssuedToken (;394;) (type 15)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    call $_ZN82_$LT$C$u20$as$u20$forwarder_legacy..fwd_storage_legacy..ForwarderStorageModule$GT$17last_issued_token17h8211c509d1dc353bE
    call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17hb428528213ba04e5E
    call $mBufferFinish
    drop
  )
  (func $lastErrorMessage (;395;) (type 15)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha24271f153c59758E
    call $_ZN82_$LT$C$u20$as$u20$forwarder_legacy..fwd_storage_legacy..ForwarderStorageModule$GT$18last_error_message17h7e68f67b97aa94e0E
    call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17hb428528213ba04e5E
    call $mBufferFinish
    drop
  )
  (func $callBack (;396;) (type 15)
    (local i32 i32 i32 i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 176
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block ;; label = @1
      call $_ZN11dharitri_sc5types11interaction16callback_closure22cb_closure_storage_key17hfa41d28f9d7b149dE
      local.tee 1
      call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17hb428528213ba04e5E
      local.tee 2
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h3aa63a60b879d0e6E
      br_if 0 (;@1;)
      local.get 2
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3804c30ceb3106f9E
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
      call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h52052bad577e2410E
      local.set 4
      local.get 0
      i32.const 140
      i32.add
      i32.const 131111
      i32.const 25
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17hf354f772b7d57df3E
      local.set 2
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
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
          call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h52052bad577e2410E
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h2054eeef4de04b79E
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
                  i32.store offset=143100
                  i32.const 0
                  i32.const 0
                  i32.store8 offset=143104
                end
                local.get 1
                call $_ZN11dharitri_sc7storage11storage_set13storage_clear17hed9e3175487cd2a0E
                local.get 0
                i32.const 40
                i32.add
                local.get 4
                call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h91fde483c1d9cbb6E
                local.get 0
                i32.load offset=72
                i32.eqz
                br_if 5 (;@1;)
                local.get 0
                i32.const 140
                i32.add
                local.get 4
                call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h91fde483c1d9cbb6E
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
                      i32.const 132264
                      i32.const 18
                      call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h84d9fd5685260799E
                      br_if 0 (;@9;)
                      local.get 0
                      i32.const 140
                      i32.add
                      i32.const 132282
                      i32.const 23
                      call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h84d9fd5685260799E
                      br_if 2 (;@7;)
                      local.get 0
                      i32.const 140
                      i32.add
                      i32.const 132305
                      i32.const 25
                      call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h84d9fd5685260799E
                      i32.eqz
                      br_if 1 (;@8;)
                      local.get 0
                      i32.const 76
                      i32.add
                      local.get 3
                      call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h6e0deb4055166c25E
                      call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E
                      local.get 0
                      i32.const 76
                      i32.add
                      i32.const 131997
                      i32.const 2
                      call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hb922d890e62cbbfaE
                      local.set 2
                      local.get 0
                      i32.const 76
                      i32.add
                      call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h53ee7983499b26ebE
                      local.set 3
                      local.get 0
                      i32.const 76
                      i32.add
                      call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h9d5b42fea2452387E
                      local.set 1
                      local.get 0
                      i32.load offset=80
                      local.get 0
                      i32.load offset=84
                      call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h9f76ad91960316fbE
                      local.get 0
                      local.get 2
                      call $_ZN117_$LT$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h28c845ee6857c16aE
                      i32.store offset=124
                      local.get 0
                      i32.const 128
                      i32.add
                      local.get 0
                      i32.const 124
                      i32.add
                      call $_ZN5vault10ProxyTrait12accept_funds17hd35e3646c1e40a86E
                      local.get 3
                      call $_ZN142_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h05ae1bb80540c3b3E
                      local.set 2
                      local.get 0
                      local.get 1
                      call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hedfb7cefa9bebb38E
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
                      call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$13call_and_exit17h74f0618bf4065989E
                      unreachable
                    end
                    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E
                    i32.const 0
                    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hd21cee59871f8e36E
                    local.get 0
                    i32.const 0
                    i32.store offset=128
                    local.get 0
                    i32.const 88
                    i32.add
                    local.get 0
                    i32.const 128
                    i32.add
                    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h3797548ef5939bcfE
                    local.get 0
                    i32.load offset=128
                    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h1d163d7440768b08E
                    local.get 0
                    i32.load offset=96
                    local.set 4
                    local.get 0
                    i32.load offset=92
                    local.set 2
                    local.get 0
                    i32.load offset=88
                    local.set 1
                    local.get 0
                    i32.const 88
                    i32.add
                    local.get 3
                    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h6e0deb4055166c25E
                    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E
                    local.get 0
                    i32.load offset=92
                    local.get 0
                    i32.load offset=96
                    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h9f76ad91960316fbE
                    block ;; label = @9
                      block ;; label = @10
                        local.get 1
                        br_if 0 (;@10;)
                        i32.const 132344
                        i32.const 7
                        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34244212834151f1E
                        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$16from_single_item17h9f81e89a93f58fa0E
                        local.tee 3
                        local.get 2
                        call $mBufferAppend
                        drop
                        br 1 (;@9;)
                      end
                      i32.const 132351
                      i32.const 5
                      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34244212834151f1E
                      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$16from_single_item17h9f81e89a93f58fa0E
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
                      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34244212834151f1E
                      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h2054eeef4de04b79E
                      local.get 3
                      local.get 4
                      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h2054eeef4de04b79E
                    end
                    local.get 0
                    local.get 3
                    i32.store offset=88
                    local.get 0
                    i32.const 88
                    i32.add
                    call $_ZN11dharitri_sc2io6finish12finish_multi17hee5531f8a736e12dE
                    br 7 (;@1;)
                  end
                  local.get 0
                  i32.const 140
                  i32.add
                  local.get 4
                  call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h91fde483c1d9cbb6E
                  local.get 0
                  i32.load offset=172
                  i32.eqz
                  br_if 6 (;@1;)
                  block ;; label = @8
                    local.get 0
                    i32.const 140
                    i32.add
                    i32.const 132074
                    i32.const 19
                    call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h84d9fd5685260799E
                    i32.eqz
                    br_if 0 (;@8;)
                    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E
                    i32.const 0
                    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hd21cee59871f8e36E
                    local.get 0
                    i32.const 0
                    i32.store offset=76
                    local.get 0
                    i32.const 88
                    i32.add
                    local.get 0
                    i32.const 76
                    i32.add
                    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6d4637270632c7cfE
                    local.get 0
                    i32.load offset=76
                    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h1d163d7440768b08E
                    local.get 0
                    i32.load offset=96
                    local.set 4
                    local.get 0
                    i32.load offset=88
                    local.set 1
                    local.get 0
                    i32.const 128
                    i32.add
                    local.get 3
                    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h6e0deb4055166c25E
                    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E
                    local.get 0
                    i32.const 128
                    i32.add
                    i32.const 131991
                    i32.const 6
                    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hb922d890e62cbbfaE
                    local.set 3
                    local.get 0
                    i32.load offset=132
                    local.get 0
                    i32.load offset=136
                    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h9f76ad91960316fbE
                    local.get 0
                    i32.const 16
                    i32.add
                    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17h987d6e3c7db3d187E
                    local.get 0
                    i32.load offset=16
                    local.set 2
                    block ;; label = @9
                      local.get 1
                      br_if 0 (;@9;)
                      call $_ZN82_$LT$C$u20$as$u20$forwarder_legacy..fwd_storage_legacy..ForwarderStorageModule$GT$17last_issued_token17h8211c509d1dc353bE
                      local.set 3
                      local.get 2
                      i32.const 2147483646
                      i32.eq
                      br_if 4 (;@5;)
                      local.get 3
                      local.get 2
                      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h17a8c098dbf9dcc0E
                      call $_ZN82_$LT$C$u20$as$u20$forwarder_legacy..fwd_storage_legacy..ForwarderStorageModule$GT$18last_error_message17h7e68f67b97aa94e0E
                      call $_ZN11dharitri_sc7storage11storage_set13storage_clear17hed9e3175487cd2a0E
                      br 8 (;@1;)
                    end
                    local.get 2
                    i32.const 2147483646
                    i32.ne
                    br_if 6 (;@2;)
                    local.get 0
                    i32.load offset=20
                    local.tee 2
                    call $_ZN4core3cmp10PartialOrd2gt17h60c2c4bc20624990E
                    i32.eqz
                    br_if 6 (;@2;)
                    local.get 3
                    local.get 2
                    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$11direct_rewa17hd91ada6007fa8708E
                    br 6 (;@2;)
                  end
                  local.get 0
                  i32.const 140
                  i32.add
                  local.get 4
                  call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h91fde483c1d9cbb6E
                  local.get 0
                  i32.load offset=172
                  i32.eqz
                  br_if 6 (;@1;)
                  block ;; label = @8
                    local.get 0
                    i32.const 140
                    i32.add
                    i32.const 132056
                    i32.const 18
                    call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h84d9fd5685260799E
                    i32.eqz
                    br_if 0 (;@8;)
                    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E
                    i32.const 0
                    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hd21cee59871f8e36E
                    local.get 0
                    i32.const 0
                    i32.store offset=76
                    local.get 0
                    i32.const 88
                    i32.add
                    local.get 0
                    i32.const 76
                    i32.add
                    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hb27a49d24b043286E
                    local.get 0
                    i32.load offset=76
                    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h1d163d7440768b08E
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
                    i32.const 128
                    i32.add
                    local.get 3
                    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h6e0deb4055166c25E
                    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E
                    local.get 0
                    i32.const 128
                    i32.add
                    i32.const 131991
                    i32.const 6
                    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hb922d890e62cbbfaE
                    local.set 3
                    local.get 0
                    i32.load offset=132
                    local.get 0
                    i32.load offset=136
                    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h9f76ad91960316fbE
                    block ;; label = @9
                      local.get 2
                      br_if 0 (;@9;)
                      call $_ZN82_$LT$C$u20$as$u20$forwarder_legacy..fwd_storage_legacy..ForwarderStorageModule$GT$17last_issued_token17h8211c509d1dc353bE
                      local.get 4
                      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h17a8c098dbf9dcc0E
                      call $_ZN82_$LT$C$u20$as$u20$forwarder_legacy..fwd_storage_legacy..ForwarderStorageModule$GT$18last_error_message17h7e68f67b97aa94e0E
                      call $_ZN11dharitri_sc7storage11storage_set13storage_clear17hed9e3175487cd2a0E
                      br 8 (;@1;)
                    end
                    local.get 0
                    i32.const 24
                    i32.add
                    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17h987d6e3c7db3d187E
                    local.get 0
                    i32.load offset=24
                    i32.const 2147483646
                    i32.ne
                    br_if 5 (;@3;)
                    local.get 0
                    i32.load offset=28
                    local.tee 2
                    call $_ZN4core3cmp10PartialOrd2gt17h60c2c4bc20624990E
                    i32.eqz
                    br_if 5 (;@3;)
                    local.get 3
                    local.get 2
                    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$11direct_rewa17hd91ada6007fa8708E
                    br 5 (;@3;)
                  end
                  local.get 0
                  i32.const 140
                  i32.add
                  local.get 4
                  call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h91fde483c1d9cbb6E
                  local.get 0
                  i32.load offset=172
                  i32.eqz
                  br_if 6 (;@1;)
                  block ;; label = @8
                    local.get 0
                    i32.const 140
                    i32.add
                    i32.const 131942
                    i32.const 18
                    call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h84d9fd5685260799E
                    i32.eqz
                    br_if 0 (;@8;)
                    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E
                    i32.const 0
                    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hd21cee59871f8e36E
                    local.get 0
                    i32.const 0
                    i32.store offset=76
                    local.get 0
                    i32.const 88
                    i32.add
                    local.get 0
                    i32.const 76
                    i32.add
                    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hb27a49d24b043286E
                    local.get 0
                    i32.load offset=76
                    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h1d163d7440768b08E
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
                    i32.const 128
                    i32.add
                    local.get 3
                    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h6e0deb4055166c25E
                    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E
                    local.get 0
                    i32.const 128
                    i32.add
                    i32.const 131991
                    i32.const 6
                    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hb922d890e62cbbfaE
                    local.set 3
                    local.get 0
                    i32.load offset=132
                    local.get 0
                    i32.load offset=136
                    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h9f76ad91960316fbE
                    block ;; label = @9
                      local.get 2
                      br_if 0 (;@9;)
                      call $_ZN82_$LT$C$u20$as$u20$forwarder_legacy..fwd_storage_legacy..ForwarderStorageModule$GT$17last_issued_token17h8211c509d1dc353bE
                      local.get 4
                      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h17a8c098dbf9dcc0E
                      call $_ZN82_$LT$C$u20$as$u20$forwarder_legacy..fwd_storage_legacy..ForwarderStorageModule$GT$18last_error_message17h7e68f67b97aa94e0E
                      call $_ZN11dharitri_sc7storage11storage_set13storage_clear17hed9e3175487cd2a0E
                      br 8 (;@1;)
                    end
                    local.get 0
                    i32.const 32
                    i32.add
                    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17h987d6e3c7db3d187E
                    local.get 0
                    i32.load offset=32
                    i32.const 2147483646
                    i32.ne
                    br_if 4 (;@4;)
                    local.get 0
                    i32.load offset=36
                    local.tee 2
                    call $_ZN4core3cmp10PartialOrd2gt17h60c2c4bc20624990E
                    i32.eqz
                    br_if 4 (;@4;)
                    local.get 3
                    local.get 2
                    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$11direct_rewa17hd91ada6007fa8708E
                    br 4 (;@4;)
                  end
                  local.get 0
                  i32.const 140
                  i32.add
                  local.get 4
                  call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h91fde483c1d9cbb6E
                  local.get 0
                  i32.load offset=172
                  i32.eqz
                  br_if 6 (;@1;)
                  block ;; label = @8
                    local.get 0
                    i32.const 140
                    i32.add
                    i32.const 132168
                    i32.const 21
                    call $_ZN11dharitri_sc5types11interaction16callback_closure31CallbackClosureMatcher$LT$_$GT$12name_matches17h84d9fd5685260799E
                    i32.eqz
                    br_if 0 (;@8;)
                    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E
                    i32.const 0
                    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hd21cee59871f8e36E
                    local.get 0
                    i32.const 0
                    i32.store offset=128
                    local.get 0
                    i32.const 88
                    i32.add
                    local.get 0
                    i32.const 128
                    i32.add
                    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6d4637270632c7cfE
                    local.get 0
                    i32.load offset=128
                    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h1d163d7440768b08E
                    local.get 0
                    i32.load offset=96
                    local.set 1
                    local.get 0
                    i32.load offset=88
                    local.set 2
                    local.get 0
                    i32.const 88
                    i32.add
                    local.get 3
                    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h6e0deb4055166c25E
                    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E
                    local.get 0
                    i32.load offset=92
                    local.get 0
                    i32.load offset=96
                    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h9f76ad91960316fbE
                    call $_ZN82_$LT$C$u20$as$u20$forwarder_legacy..fwd_storage_legacy..ForwarderStorageModule$GT$18last_error_message17h7e68f67b97aa94e0E
                    local.set 3
                    block ;; label = @9
                      local.get 2
                      br_if 0 (;@9;)
                      local.get 3
                      call $_ZN11dharitri_sc7storage11storage_set13storage_clear17hed9e3175487cd2a0E
                      br 8 (;@1;)
                    end
                    local.get 3
                    local.get 1
                    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h17a8c098dbf9dcc0E
                    br 7 (;@1;)
                  end
                  i32.const 132114
                  i32.const 54
                  call $signalError
                  unreachable
                end
                local.get 0
                i32.const 88
                i32.add
                local.get 3
                call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h6e0deb4055166c25E
                call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hef08343fff536622E
                local.get 0
                i32.load offset=92
                local.get 0
                i32.load offset=96
                call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h9f76ad91960316fbE
                local.get 0
                i32.const 88
                i32.add
                call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17he37b1da4837b910dE
                local.get 0
                i64.load offset=88
                local.set 5
                local.get 0
                i32.load offset=100
                local.set 2
                local.get 0
                local.get 0
                i32.load offset=96
                i32.store offset=124
                local.get 0
                local.get 2
                i32.store offset=128
                i32.const 132282
                i32.const 23
                call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h482808a142f1918bE
                local.tee 2
                local.get 0
                i32.const 124
                i32.add
                call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hb991d32a6bdcd947E
                local.get 2
                local.get 5
                call $_ZN11dharitri_sc8log_util21serialize_event_topic17h61542f92817e91a9E
                local.get 2
                local.get 0
                i32.const 128
                i32.add
                call $_ZN11dharitri_sc8log_util21serialize_event_topic17h6b2840d7de0b6c3eE
                local.get 2
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
                call $managedWriteLog
                local.get 0
                i32.const 8
                i32.add
                call $_ZN87_$LT$C$u20$as$u20$forwarder_legacy..fwd_call_async_legacy..ForwarderAsyncCallModule$GT$13callback_data17h98cd49ac07ca214fE
                local.get 0
                i32.load offset=8
                local.set 2
                local.get 0
                i32.load offset=12
                local.set 3
                i32.const 132282
                i32.const 23
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34244212834151f1E
                local.set 1
                local.get 0
                i32.load offset=128
                local.set 4
                local.get 0
                i32.load offset=124
                local.set 6
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he93730b1ba35279bE
                local.set 7
                local.get 0
                local.get 6
                i32.store offset=100
                local.get 0
                local.get 1
                i32.store offset=96
                local.get 0
                local.get 7
                i32.store offset=108
                local.get 0
                local.get 4
                i32.store offset=104
                local.get 0
                local.get 5
                i64.store offset=88
                local.get 2
                local.get 3
                call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17hbe3fbd52463a6e30E
                i32.const 1
                i32.add
                local.tee 7
                call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h21f92cfcc208a82bE
                local.set 8
                local.get 1
                call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h1627b420640b3c0eE
                local.tee 2
                call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hbf05302844e8eb1cE
                local.get 6
                local.get 2
                call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h22107db081916d94E
                local.get 5
                local.get 2
                call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17hca33b5d7ad511fb2E
                local.get 4
                local.get 2
                call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h1899e998c63a4df9E
                local.get 0
                i32.const 108
                i32.add
                local.get 2
                call $_ZN145_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h30499a110ed87952E
                local.get 8
                local.get 2
                call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17heddb110705a767e7E
                local.get 3
                local.get 7
                call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17h070a1fb4c6fb1a2fE
                br 5 (;@1;)
              end
              i32.const 131111
              i32.const 25
              i32.const 131097
              i32.const 14
              call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h3ab4aeeaf2172ab9E
              unreachable
            end
            i32.const 131852
            i32.const 13
            call $signalError
            unreachable
          end
          call $_ZN82_$LT$C$u20$as$u20$forwarder_legacy..fwd_storage_legacy..ForwarderStorageModule$GT$18last_error_message17h7e68f67b97aa94e0E
          local.get 1
          call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h17a8c098dbf9dcc0E
          br 2 (;@1;)
        end
        call $_ZN82_$LT$C$u20$as$u20$forwarder_legacy..fwd_storage_legacy..ForwarderStorageModule$GT$18last_error_message17h7e68f67b97aa94e0E
        local.get 1
        call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h17a8c098dbf9dcc0E
        br 1 (;@1;)
      end
      call $_ZN82_$LT$C$u20$as$u20$forwarder_legacy..fwd_storage_legacy..ForwarderStorageModule$GT$18last_error_message17h7e68f67b97aa94e0E
      local.get 4
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h17a8c098dbf9dcc0E
    end
    local.get 0
    i32.const 176
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN4core9panicking9panic_fmt17hb859252f4b513814E (;397;) (type 15)
    call $rust_begin_unwind
    unreachable
  )
  (func $_ZN17compiler_builtins3mem6memcpy17h6a01844efc49c0e5E (;398;) (type 6) (param i32 i32 i32) (result i32)
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
  (func $_ZN17compiler_builtins3mem6memcmp17h0161c33af60bef75E (;399;) (type 6) (param i32 i32 i32) (result i32)
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
  (func $memcpy (;400;) (type 6) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN17compiler_builtins3mem6memcpy17h6a01844efc49c0e5E
  )
  (func $memcmp (;401;) (type 6) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN17compiler_builtins3mem6memcmp17h0161c33af60bef75E
  )
  (table (;0;) 1 1 funcref)
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 143181)
  (global (;2;) i32 i32.const 143184)
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
  (data $.rodata (;0;) (i32.const 131072) "recipient address not setinput too longserializer decode error: \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00incorrect number of DCDT transfersargument decode error (): function does not accept DCDT paymenttoo few argumentstoo many argumentswrong number of argumentscannot subtract because result would be negativeDCDTLocalBurnDCDTNFTBurnDCDTLocalMintDCDTNFTAddQuantityDCDTNFTCreateChangeOwnerAddressDCDTNFTAddURIDCDTNFTUpdateAttributesfalsetruecanFreezecanWipecanPausecanTransferNFTCreateRolecanMintcanBurncanChangeOwnercanUpgradecanAddSpecialRolessetSpecialRoleunSetSpecialRoleissueissueNonFungibleissueSemiFungibleCB_CLOSURE#3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0230\00\00\00\00\00\00\00\00\00\02\ff\ffMultiDCDTNFTTransferDCDTNFTTransferDCDTTransfersync resultinput too shortManagedVec index out of rangeerror decoding DCDT attributes: DCDT expectedREWA.iteminvalid valuestorage decode error (key: .lenbad array lengthvar argsnft_issue_callbacktoken_identifiercolorurisresultcallertonew_attributesargumentsattrs_argorig_attr != decoded_attrsft_issue_callbackdcdt_issue_callbackaddresstoken_paymentsno callback function with that name exists in contractchange_roles_callbackrolesopt_argsource_addresschild_sc_addressargsaccept_fundsaccept_funds_funcecho_args_callbackretrieve_funds_callbacksend_funds_twice_callbackcb_amountindexsuccesserrornew_ownerinput out of rangecall_countsreject_fundsecho_argumentsretrieve_fundsget_owner_addressaccept_funds_echo_paymentretrieve_funds_with_transfer_execsendcreatelastIssuedTokenlastErrorMessageaccept_funds_sync_resultecho_arguments_sync_resultcallback_data\00\00\00\05\00\00\00\10\00\00\00\11\00\00\006\02\02\00;\02\02\00K\02\02\00\9c\06\02\00\b8\06\02\00\d4\06\02\00\f0\06\02\00\10\07\02\00(\07\02\00D\07\02\00h\07\02\00\80\07\02\00\98\06\02\00\b4\06\02\00\d0\06\02\00\ec\06\02\00\0c\07\02\00$\07\02\00@\07\02\00d\07\02\00|\07\02\00fungible DCDT token expectedindex out of range\00\00\01\00\00\00\00\00\00\00DCDTRoleLocalMint\00\00\00\a0\06\02\00\11\00\00\00DCDTRoleLocalBurn\00\00\00\bc\06\02\00\11\00\00\00DCDTRoleNFTCreate\00\00\00\d8\06\02\00\11\00\00\00DCDTRoleNFTAddQuantity\00\00\f4\06\02\00\16\00\00\00DCDTRoleNFTBurn\00\14\07\02\00\0f\00\00\00DCDTRoleNFTAddURI\00\00\00,\07\02\00\11\00\00\00DCDTRoleNFTUpdateAttributes\00H\07\02\00\1b\00\00\00DCDTTransferRolel\07\02\00\10\00\00\00\01\02\03\04\05\06\07\08panic occurred\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00 \00\00\00\00\00\00\00@\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00")
  (data $.data (;1;) (i32.const 133096) "8\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.80.1 (3f5fd8dd4 2024-08-06)")
  )
  (@custom "target_features" (after data) "\02+\0fmutable-globals+\08sign-ext")
)
