(module $token_release_wasm.wasm
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (result i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i32 i32 i32) (result i32)))
  (type (;5;) (func (param i32) (result i64)))
  (type (;6;) (func (param i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32)))
  (type (;8;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;9;) (func (param i32 i64)))
  (type (;10;) (func (result i64)))
  (type (;11;) (func))
  (type (;12;) (func (param i64 i32 i32 i32 i32 i32) (result i32)))
  (type (;13;) (func (param i32 i32 i64 i32 i32) (result i32)))
  (type (;14;) (func (param i64) (result i32)))
  (type (;15;) (func (param i32 i32 i32 i32)))
  (type (;16;) (func (param i32 i64 i32 i32)))
  (type (;17;) (func (param i32 i32) (result i64)))
  (import "env" "signalError" (func $signalError (;0;) (type 0)))
  (import "env" "mBufferNew" (func $mBufferNew (;1;) (type 1)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;2;) (type 2)))
  (import "env" "managedCaller" (func $managedCaller (;3;) (type 3)))
  (import "env" "managedOwnerAddress" (func $managedOwnerAddress (;4;) (type 3)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;5;) (type 2)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;6;) (type 4)))
  (import "env" "managedSignalError" (func $managedSignalError (;7;) (type 3)))
  (import "env" "smallIntGetUnsignedArgument" (func $smallIntGetUnsignedArgument (;8;) (type 5)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;9;) (type 6)))
  (import "env" "bigIntGetUnsignedArgument" (func $bigIntGetUnsignedArgument (;10;) (type 0)))
  (import "env" "getNumArguments" (func $getNumArguments (;11;) (type 1)))
  (import "env" "bigIntSub" (func $bigIntSub (;12;) (type 7)))
  (import "env" "bigIntSign" (func $bigIntSign (;13;) (type 6)))
  (import "env" "mBufferCopyByteSlice" (func $mBufferCopyByteSlice (;14;) (type 8)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;15;) (type 4)))
  (import "env" "bigIntAdd" (func $bigIntAdd (;16;) (type 7)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;17;) (type 2)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;18;) (type 2)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;19;) (type 9)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;20;) (type 2)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;21;) (type 2)))
  (import "env" "getBlockTimestamp" (func $getBlockTimestamp (;22;) (type 10)))
  (import "env" "bigIntMul" (func $bigIntMul (;23;) (type 7)))
  (import "env" "bigIntTDiv" (func $bigIntTDiv (;24;) (type 7)))
  (import "env" "bigIntCmp" (func $bigIntCmp (;25;) (type 2)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;26;) (type 11)))
  (import "env" "validateTokenIdentifier" (func $validateTokenIdentifier (;27;) (type 6)))
  (import "env" "getGasLeft" (func $getGasLeft (;28;) (type 10)))
  (import "env" "managedSCAddress" (func $managedSCAddress (;29;) (type 3)))
  (import "env" "managedExecuteOnDestContext" (func $managedExecuteOnDestContext (;30;) (type 12)))
  (import "env" "cleanReturnData" (func $cleanReturnData (;31;) (type 11)))
  (import "env" "managedMultiTransferDCDTNFTExecute" (func $managedMultiTransferDCDTNFTExecute (;32;) (type 13)))
  (import "env" "bigIntFinishUnsigned" (func $bigIntFinishUnsigned (;33;) (type 3)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;34;) (type 6)))
  (import "env" "finish" (func $finish (;35;) (type 0)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;36;) (type 8)))
  (import "env" "mBufferEq" (func $mBufferEq (;37;) (type 2)))
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 142020)
  (global (;2;) i32 i32.const 142032)
  (export "memory" (memory 0))
  (export "init" (func $init))
  (export "addFixedAmountGroup" (func $addFixedAmountGroup))
  (export "addPercentageBasedGroup" (func $addPercentageBasedGroup))
  (export "removeGroup" (func $removeGroup))
  (export "addUserGroup" (func $addUserGroup))
  (export "removeUser" (func $removeUser))
  (export "requestAddressChange" (func $requestAddressChange))
  (export "approveAddressChange" (func $approveAddressChange))
  (export "endSetupPeriod" (func $endSetupPeriod))
  (export "claimTokens" (func $claimTokens))
  (export "verify_address_change" (func $verify_address_change))
  (export "get_claimable_tokens" (func $get_claimable_tokens))
  (export "getTokenIdentifier" (func $getTokenIdentifier))
  (export "getTokenTotalSupply" (func $getTokenTotalSupply))
  (export "callBack" (func $callBack))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (func $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17h84800fd1e500817aE (;38;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $signalError
    unreachable
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6addd5776154626eE (;39;) (type 6) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN115_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..convert..From$LT$u64$GT$$GT$4from17h79efe0c24a92c2a4E (;40;) (type 14) (param i64) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$9set_value17h899bc3ab173b9424E
    local.get 1
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE (;41;) (type 1) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=132008
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=132008
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$9set_value17h899bc3ab173b9424E (;42;) (type 9) (param i32 i64)
    block ;; label = @1
      local.get 1
      i64.const -1
      i64.gt_s
      br_if 0 (;@1;)
      i32.const 131213
      i32.const 17
      call $signalError
      unreachable
    end
    local.get 0
    local.get 1
    call $bigIntSetInt64
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hc1e91bbf7f13ba04E (;43;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17h84800fd1e500817aE
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h9af3edde3a86b263E (;44;) (type 1) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 0
    call $managedCaller
    local.get 0
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17he47670658dc08c35E (;45;) (type 11)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 0
    call $managedOwnerAddress
    block ;; label = @1
      local.get 0
      call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h9af3edde3a86b263E
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h00ec339cb3020c69E
      i32.eqz
      br_if 0 (;@1;)
      return
    end
    i32.const 131957
    i32.const 36
    call $signalError
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h00ec339cb3020c69E (;46;) (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $mBufferEq
    i32.const 0
    i32.gt_s
  )
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h36514987926e6839E (;47;) (type 6) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hf737554d42572499E (;48;) (type 15) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131086
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6e9c79b5d55271e8E
    local.tee 4
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 4
    i32.const 131109
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6e9c79b5d55271e8E (;49;) (type 2) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h503a776713beccb9E (;50;) (type 6) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h36514987926e6839E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7802324e32549f44E (;51;) (type 1) (result i32)
    (local i64)
    block ;; label = @1
      i32.const 2
      call $smallIntGetUnsignedArgument
      local.tee 0
      i64.const 256
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 131707
      i32.const 24
      i32.const 131072
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hf737554d42572499E
      unreachable
    end
    local.get 0
    i32.wrap_i64
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h81c44607b2dfa5f7E (;52;) (type 1) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 8
    i32.add
    i32.const 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h36514987926e6839E
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h985b96b14df63bfdE
    call $_ZN11dharitri_sc5types7managed7wrapped16token_identifier24TokenIdentifier$LT$M$GT$7try_new17hc5e8c5702db67170E
    block ;; label = @1
      local.get 0
      i32.load offset=8
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      i32.const 131731
      i32.const 16
      i32.const 131774
      i32.const 13
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hf737554d42572499E
      unreachable
    end
    local.get 0
    i32.load offset=12
    local.set 1
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h985b96b14df63bfdE (;53;) (type 6) (param i32) (result i32)
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
      i32.const 131230
      i32.const 11
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6e9c79b5d55271e8E
      local.set 0
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped16token_identifier24TokenIdentifier$LT$M$GT$7try_new17hc5e8c5702db67170E (;54;) (type 0) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17hc8ae669dd6dd32a7E
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h848d891676c6f057E (;55;) (type 2) (param i32 i32) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 0
      call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h36514987926e6839E
      local.tee 2
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.const 131787
      i32.const 16
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hf737554d42572499E
      unreachable
    end
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd0773f7571be09c2E (;56;) (type 6) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    call $bigIntGetUnsignedArgument
    local.get 1
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd5f42a4630cf4480E (;57;) (type 5) (param i32) (result i64)
    local.get 0
    call $smallIntGetUnsignedArgument
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hb90ca0110ddeb0c7E (;58;) (type 3) (param i32)
    block ;; label = @1
      call $getNumArguments
      local.get 0
      i32.ne
      br_if 0 (;@1;)
      return
    end
    i32.const 131112
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc3api13managed_types11big_int_api13BigIntApiImpl15bi_sub_unsigned17h43d12fcb4ec43217E (;59;) (type 7) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $bigIntSub
    block ;; label = @1
      local.get 0
      call $bigIntSign
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131137
    i32.const 48
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$13read_big_uint17h7da9e670b3e02ac2E (;60;) (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h933ad134f2d9c73eE
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h8b6a35e94b8ead1bE
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h933ad134f2d9c73eE (;61;) (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h42dd330903d5e3ecE
    local.get 2
    i32.load offset=12
    local.set 3
    local.get 0
    i32.load
    local.set 4
    call $mBufferNew
    local.set 5
    block ;; label = @1
      local.get 0
      i32.load offset=8
      local.get 4
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
      local.tee 3
      local.get 5
      call $mBufferCopyByteSlice
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 131198
      i32.const 15
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hb97183230172400cE
      unreachable
    end
    local.get 0
    local.get 4
    local.get 3
    i32.add
    i32.store
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 5
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h8b6a35e94b8ead1bE (;62;) (type 6) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    call $mBufferToBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h42dd330903d5e3ecE (;63;) (type 15) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.load
    local.set 4
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              local.get 0
              i32.load8_u offset=16
              local.tee 5
              br_if 0 (;@5;)
              block ;; label = @6
                local.get 0
                i32.load offset=8
                local.tee 6
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h44d99b9edf97b9f7E
                local.tee 7
                i32.const 10000
                i32.gt_u
                i32.const 0
                i32.load8_u offset=142016
                i32.or
                local.tee 8
                i32.const 1
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 7
                i32.store offset=142012
                i32.const 0
                i32.const 1
                i32.store8 offset=142016
                local.get 6
                i32.const 0
                i32.const 132012
                local.get 7
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h0bb8f00d31267a34E
                drop
              end
              local.get 8
              i32.const 1
              i32.xor
              local.set 7
              block ;; label = @6
                local.get 5
                i32.eqz
                br_if 0 (;@6;)
                i32.const 0
                i32.const 0
                i32.store offset=142012
                i32.const 0
                i32.const 0
                i32.store8 offset=142016
              end
              local.get 0
              local.get 7
              i32.const 1
              i32.and
              i32.store8 offset=16
              local.get 8
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              local.get 4
              local.get 1
              local.get 2
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h0bb8f00d31267a34E
              br_if 4 (;@1;)
              local.get 4
              local.get 2
              i32.add
              local.set 5
              br 1 (;@4;)
            end
            local.get 4
            local.get 2
            i32.add
            local.tee 5
            i32.const 0
            i32.load offset=142012
            i32.gt_u
            br_if 3 (;@1;)
            local.get 5
            local.get 4
            i32.lt_u
            br_if 1 (;@3;)
            local.get 5
            i32.const 10000
            i32.gt_u
            br_if 2 (;@2;)
            local.get 1
            local.get 4
            i32.const 132012
            i32.add
            local.get 2
            call $memcpy
            drop
          end
          local.get 0
          local.get 5
          i32.store
          return
        end
        local.get 4
        local.get 5
        call $_ZN4core5slice5index22slice_index_order_fail17hce8d8012711d5a00E
        unreachable
      end
      local.get 5
      call $_ZN4core5slice5index24slice_end_index_len_fail17h07937a589bfe269aE
      unreachable
    end
    local.get 3
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h69c0baa27c855ae7E
    unreachable
  )
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hb97183230172400cE (;64;) (type 7) (param i32 i32 i32)
    (local i32)
    i32.const 131747
    i32.const 27
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6e9c79b5d55271e8E
    local.tee 3
    local.get 0
    call $mBufferAppend
    drop
    local.get 3
    i32.const 131109
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h0bb8f00d31267a34E (;65;) (type 8) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17he59cf7a5329a8f5dE
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17he59cf7a5329a8f5dE (;66;) (type 8) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h44d99b9edf97b9f7E (;67;) (type 6) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h06382d62b25b5ebbE (;68;) (type 1) (result i32)
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6e9c79b5d55271e8E
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17hba418fae9786bcecE (;69;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferAppend
    drop
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h026b057f1e0278c2E (;70;) (type 0) (param i32 i32)
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
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17hc8ae669dd6dd32a7E (;71;) (type 6) (param i32) (result i32)
    i32.const -40
    i32.const 131230
    i32.const 11
    call $mBufferSetBytes
    drop
    i32.const -40
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h00ec339cb3020c69E
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..AddAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17h7be1ff523ac0128fE (;72;) (type 0) (param i32 i32)
    local.get 0
    local.get 0
    local.get 1
    call $bigIntAdd
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h97312e1db5fc2205E (;73;) (type 6) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17h74510bf442cd471dE (;74;) (type 1) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 0
    i64.const 0
    call $bigIntSetInt64
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$9make_temp17h1928af4ada8dfae0E (;75;) (type 14) (param i64) (result i32)
    i32.const -11
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$9set_value17h899bc3ab173b9424E
    i32.const -11
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17ha8ae2f302dfd7363E (;76;) (type 6) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h933f768fd4c099d5E (;77;) (type 0) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h44d99b9edf97b9f7E
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
    local.get 0
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    call $mBufferAppendBytes
    drop
    local.get 0
    local.get 1
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17hba418fae9786bcecE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage11storage_set11storage_set17ha42fb4f655e827abE (;78;) (type 0) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h0ae4de2484106b5dE
    local.set 3
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
    block ;; label = @1
      loop ;; label = @2
        local.get 2
        i32.const 8
        i32.add
        local.get 2
        i32.const 20
        i32.add
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb78d85936d826e18E
        local.get 2
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=12
        local.get 3
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h1672955d6d3b7a5cE
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 3
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h6480f7049972129aE
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h0ae4de2484106b5dE (;79;) (type 1) (result i32)
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6e9c79b5d55271e8E
  )
  (func $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb78d85936d826e18E (;80;) (type 0) (param i32 i32)
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
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h1672955d6d3b7a5cE (;81;) (type 0) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h44d99b9edf97b9f7E
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
    call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17hcfe72838fd101737E
    local.get 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17hba418fae9786bcecE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h6480f7049972129aE (;82;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage11storage_set11storage_set17hae5d5dd42997d450E (;83;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h97312e1db5fc2205E
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage11storage_set13storage_clear17h4169ded9940ef45aE (;84;) (type 3) (param i32)
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
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h231df3e05064199cE (;85;) (type 0) (param i32 i32)
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
    i32.const 1
    local.get 2
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec8num_conv17top_encode_number17he16fb69829eeed2eE
    local.get 0
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h254ed43c5b5b1bc5E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec8num_conv17top_encode_number17he16fb69829eeed2eE (;86;) (type 16) (param i32 i64 i32 i32)
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
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h254ed43c5b5b1bc5E (;87;) (type 7) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6e9c79b5d55271e8E
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h8011f6e76556cb7eE (;88;) (type 9) (param i32 i64)
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
    call $_ZN17dharitri_sc_codec8num_conv17top_encode_number17he16fb69829eeed2eE
    local.get 0
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h254ed43c5b5b1bc5E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h8632cd6e8a3aa301E (;89;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_set11storage_set17hae5d5dd42997d450E
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17heaea3070a4e2e975E (;90;) (type 0) (param i32 i32)
    (local i32)
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h0ae4de2484106b5dE
    local.set 2
    local.get 1
    i32.load offset=24
    local.get 2
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h3b933df5f544c098E
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load8_u
        br_if 0 (;@2;)
        i32.const 0
        local.get 2
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h883f371a4125eb43E
        local.get 1
        i32.load offset=4
        local.get 2
        call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h3b933df5f544c098E
        br 1 (;@1;)
      end
      i32.const 1
      local.get 2
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h883f371a4125eb43E
      local.get 1
      i32.load8_u offset=1
      local.get 2
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h883f371a4125eb43E
    end
    local.get 1
    i32.const 8
    i32.add
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types8impl_ref86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$T$GT$24dep_encode_or_handle_err17h084334f1a9743331E
    local.get 1
    i32.const 16
    i32.add
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types8impl_ref86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$T$GT$24dep_encode_or_handle_err17h084334f1a9743331E
    local.get 0
    local.get 2
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h6480f7049972129aE
  )
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h3b933df5f544c098E (;91;) (type 0) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h97312e1db5fc2205E
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h1672955d6d3b7a5cE
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h883f371a4125eb43E (;92;) (type 0) (param i32 i32)
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
    call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17hcfe72838fd101737E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types8impl_ref86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$T$GT$24dep_encode_or_handle_err17h084334f1a9743331E (;93;) (type 0) (param i32 i32)
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
    call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17hcfe72838fd101737E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h22fa64475fe2add6E (;94;) (type 6) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h5d7638b03e4fda75E
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h985b96b14df63bfdE
    call $_ZN11dharitri_sc5types7managed7wrapped16token_identifier24TokenIdentifier$LT$M$GT$7try_new17hc5e8c5702db67170E
    block ;; label = @1
      local.get 1
      i32.load offset=8
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.const 131774
      i32.const 13
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hb97183230172400cE
      unreachable
    end
    local.get 1
    i32.load offset=12
    local.set 0
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h5d7638b03e4fda75E (;95;) (type 6) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17ha8ae2f302dfd7363E
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h4b7e71ecf95a89f5E (;96;) (type 6) (param i32) (result i32)
    (local i64)
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          local.get 0
          call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417h420e2110917accc7E
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
        i32.const 131803
        i32.const 18
        call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hb97183230172400cE
        unreachable
      end
      i32.const 1
      local.set 0
    end
    local.get 0
  )
  (func $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417h420e2110917accc7E (;97;) (type 17) (param i32 i32) (result i64)
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
      call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17ha8ae2f302dfd7363E
      local.tee 3
      call $mBufferGetLength
      local.tee 0
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 131072
      i32.const 14
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hb97183230172400cE
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
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17he59cf7a5329a8f5dE
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
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h696abe2c681761e9E (;98;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17ha8ae2f302dfd7363E
    local.tee 3
    call $mBufferGetLength
    local.set 4
    local.get 2
    i32.const 0
    i32.store8 offset=28
    local.get 2
    local.get 4
    i32.store offset=24
    local.get 2
    local.get 3
    i32.store offset=20
    local.get 2
    local.get 4
    i32.store offset=16
    local.get 2
    i32.const 0
    i32.store offset=12
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$13read_big_uint17h7da9e670b3e02ac2E
    local.set 4
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 2
            i32.const 12
            i32.add
            local.get 1
            call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h7eefbe3be27427e9E
            local.tee 3
            i32.const 255
            i32.and
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          local.get 1
          i32.const 131245
          i32.const 13
          call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hb97183230172400cE
          unreachable
        end
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$13read_big_uint17h7da9e670b3e02ac2E
        local.set 5
        br 1 (;@1;)
      end
      local.get 2
      i32.const 12
      i32.add
      local.get 1
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h7eefbe3be27427e9E
      local.set 6
    end
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h8367f1302652e321E
    local.set 7
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h8367f1302652e321E
    local.set 8
    block ;; label = @1
      local.get 2
      i32.load offset=16
      local.get 2
      i32.load offset=12
      i32.ne
      br_if 0 (;@1;)
      block ;; label = @2
        local.get 2
        i32.load8_u offset=28
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        i32.store offset=142012
        i32.const 0
        i32.const 0
        i32.store8 offset=142016
      end
      local.get 0
      local.get 4
      i32.store offset=24
      local.get 0
      local.get 8
      i64.store offset=16
      local.get 0
      local.get 7
      i64.store offset=8
      local.get 0
      local.get 5
      i32.store offset=4
      local.get 0
      local.get 6
      i32.store8 offset=1
      local.get 0
      local.get 3
      i32.store8
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 1
    i32.const 131072
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hb97183230172400cE
    unreachable
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h7eefbe3be27427e9E (;99;) (type 2) (param i32 i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h42dd330903d5e3ecE
    local.get 2
    i32.load8_u offset=15
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h8367f1302652e321E (;100;) (type 17) (param i32 i32) (result i64)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h42dd330903d5e3ecE
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
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h83f21e45aad4e1a8E (;101;) (type 6) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17ha8ae2f302dfd7363E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h8b6a35e94b8ead1bE
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h94a042be447cd601E (;102;) (type 6) (param i32) (result i32)
    (local i32)
    block ;; label = @1
      local.get 0
      call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h5d7638b03e4fda75E
      local.tee 1
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.const 131787
      i32.const 16
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hb97183230172400cE
      unreachable
    end
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17hce9801cf69dfc508E (;103;) (type 5) (param i32) (result i64)
    local.get 0
    local.get 0
    call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417h420e2110917accc7E
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he5138e69e9363ec5E (;104;) (type 6) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h5d7638b03e4fda75E
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h06382d62b25b5ebbE
    local.set 3
    i32.const 0
    local.set 4
    local.get 2
    call $mBufferGetLength
    local.set 5
    local.get 1
    i32.const 0
    i32.store8 offset=28
    local.get 1
    local.get 5
    i32.store offset=24
    local.get 1
    local.get 2
    i32.store offset=20
    local.get 1
    local.get 5
    i32.store offset=16
    local.get 1
    i32.const 0
    i32.store offset=12
    loop (result i32) ;; label = @1
      block ;; label = @2
        local.get 5
        local.get 4
        i32.ne
        br_if 0 (;@2;)
        block ;; label = @3
          local.get 1
          i32.load8_u offset=28
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.const 0
          i32.store offset=142012
          i32.const 0
          i32.const 0
          i32.store8 offset=142016
        end
        local.get 1
        i32.const 32
        i32.add
        global.set $__stack_pointer
        local.get 3
        return
      end
      local.get 3
      local.get 1
      i32.const 12
      i32.add
      local.get 0
      call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h933ad134f2d9c73eE
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h026b057f1e0278c2E
      local.get 1
      i32.load offset=12
      local.set 4
      local.get 1
      i32.load offset=16
      local.set 5
      br 0 (;@1;)
    end
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$8is_empty17hf227922be91c2275E (;105;) (type 6) (param i32) (result i32)
    local.get 0
    call $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$23address_storage_get_len17h558c9f2f8c213449E
    i32.eqz
  )
  (func $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$23address_storage_get_len17h558c9f2f8c213449E (;106;) (type 6) (param i32) (result i32)
    local.get 0
    i32.const -25
    call $mBufferStorageLoad
    drop
    i32.const -25
    call $mBufferGetLength
  )
  (func $_ZN13token_release12TokenRelease20get_claimable_tokens17h5d24b22e3aa50311E (;107;) (type 6) (param i32) (result i32)
    (local i32 i64 i64 i32 i32 i64 i64 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$20activation_timestamp17h7a25e6bd9076c6eaE
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17hce9801cf69dfc508E
    local.set 2
    call $getBlockTimestamp
    local.set 3
    local.get 0
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$11user_groups17h43cf700f4b592892E
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he5138e69e9363ec5E
    local.set 4
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17h74510bf442cd471dE
    local.set 5
    local.get 1
    local.get 4
    call $mBufferGetLength
    i32.store offset=24
    local.get 1
    i32.const 0
    i32.store offset=20
    local.get 1
    local.get 4
    i32.store offset=16
    local.get 3
    local.get 2
    i64.sub
    local.set 6
    loop (result i32) ;; label = @1
      local.get 1
      i32.const 8
      i32.add
      local.get 1
      i32.const 16
      i32.add
      call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb78d85936d826e18E
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 1
            i32.load offset=8
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            local.get 1
            i32.load offset=12
            i32.store offset=28
            local.get 1
            i32.const 32
            i32.add
            local.get 1
            i32.const 28
            i32.add
            call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14group_schedule17h40dc41c5b68e8675E
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h696abe2c681761e9E
            local.get 1
            i32.const 28
            i32.add
            call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14users_in_group17h54016bd256c83481E
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17hce9801cf69dfc508E
            local.set 7
            local.get 1
            i64.load offset=48
            local.set 3
            local.get 1
            i64.load offset=40
            local.set 2
            block ;; label = @5
              local.get 1
              i32.load8_u offset=32
              br_if 0 (;@5;)
              local.get 2
              i64.eqz
              br_if 2 (;@3;)
              local.get 2
              local.get 6
              i64.gt_u
              br_if 4 (;@1;)
              local.get 1
              i32.load offset=36
              local.set 8
              local.get 6
              local.get 2
              i64.div_u
              local.tee 2
              local.get 3
              local.get 2
              local.get 3
              i64.lt_u
              select
              call $_ZN115_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..convert..From$LT$u64$GT$$GT$4from17h79efe0c24a92c2a4E
              local.tee 4
              local.get 4
              local.get 8
              call $bigIntMul
              br 3 (;@2;)
            end
            local.get 2
            i64.eqz
            br_if 1 (;@3;)
            local.get 2
            local.get 6
            i64.gt_u
            br_if 3 (;@1;)
            local.get 1
            i64.load8_u offset=33
            local.set 9
            local.get 6
            local.get 2
            i64.div_u
            local.tee 2
            local.get 3
            local.get 2
            local.get 3
            i64.lt_u
            select
            call $_ZN115_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..convert..From$LT$u64$GT$$GT$4from17h79efe0c24a92c2a4E
            local.tee 4
            local.get 4
            local.get 1
            i32.load offset=56
            call $bigIntMul
            local.get 4
            local.get 4
            local.get 9
            call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$9make_temp17h1928af4ada8dfae0E
            call $bigIntMul
            local.get 4
            local.get 4
            i64.const 100
            call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$9make_temp17h1928af4ada8dfae0E
            call $bigIntTDiv
            br 2 (;@2;)
          end
          block ;; label = @4
            block ;; label = @5
              local.get 5
              local.get 0
              call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$15claimed_balance17h253059d93cdb1bf1E
              call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h83f21e45aad4e1a8E
              local.tee 4
              call $_ZN4core3cmp10PartialOrd2gt17h6f925cf9c19e6effE
              br_if 0 (;@5;)
              call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17h74510bf442cd471dE
              local.set 5
              br 1 (;@4;)
            end
            local.get 5
            local.get 5
            local.get 4
            call $_ZN11dharitri_sc3api13managed_types11big_int_api13BigIntApiImpl15bi_sub_unsigned17h43d12fcb4ec43217E
          end
          local.get 1
          i32.const 64
          i32.add
          global.set $__stack_pointer
          local.get 5
          return
        end
        call $_ZN4core9panicking11panic_const23panic_const_div_by_zero17h96000c50d6e34eb3E
        unreachable
      end
      local.get 4
      local.get 4
      local.get 7
      call $_ZN115_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..convert..From$LT$u64$GT$$GT$4from17h79efe0c24a92c2a4E
      call $bigIntTDiv
      local.get 5
      local.get 5
      local.get 4
      call $bigIntAdd
      br 0 (;@1;)
    end
  )
  (func $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$20activation_timestamp17h7a25e6bd9076c6eaE (;108;) (type 1) (result i32)
    i32.const 131918
    i32.const 19
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6e9c79b5d55271e8E
  )
  (func $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$11user_groups17h43cf700f4b592892E (;109;) (type 6) (param i32) (result i32)
    (local i32)
    i32.const 131821
    i32.const 10
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6e9c79b5d55271e8E
    local.tee 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17hba418fae9786bcecE
    local.get 1
  )
  (func $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14group_schedule17h40dc41c5b68e8675E (;110;) (type 6) (param i32) (result i32)
    (local i32)
    i32.const 131831
    i32.const 13
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6e9c79b5d55271e8E
    local.tee 1
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h933f768fd4c099d5E
    local.get 1
  )
  (func $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14users_in_group17h54016bd256c83481E (;111;) (type 6) (param i32) (result i32)
    (local i32)
    i32.const 131844
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6e9c79b5d55271e8E
    local.tee 1
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h933f768fd4c099d5E
    local.get 1
  )
  (func $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$15claimed_balance17h253059d93cdb1bf1E (;112;) (type 6) (param i32) (result i32)
    (local i32)
    i32.const 131856
    i32.const 14
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6e9c79b5d55271e8E
    local.tee 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17hba418fae9786bcecE
    local.get 1
  )
  (func $_ZN4core3cmp10PartialOrd2gt17h6f925cf9c19e6effE (;113;) (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$6bi_cmp17h8ae012d63aea1825E
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
  )
  (func $_ZN4core9panicking11panic_const23panic_const_div_by_zero17h96000c50d6e34eb3E (;114;) (type 11)
    call $_ZN4core9panicking9panic_fmt17h931ec2537c26fa22E
    unreachable
  )
  (func $_ZN13token_release12TokenRelease25require_setup_period_live17hcb88b6da01975a30E (;115;) (type 11)
    block ;; label = @1
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$19setup_period_status17h759933be5dd5a5c1E
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h4b7e71ecf95a89f5E
      br_if 0 (;@1;)
      i32.const 131574
      i32.const 22
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hc1e91bbf7f13ba04E
      unreachable
    end
  )
  (func $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$19setup_period_status17h759933be5dd5a5c1E (;116;) (type 1) (result i32)
    i32.const 131901
    i32.const 17
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6e9c79b5d55271e8E
  )
  (func $_ZN13token_release12TokenRelease26require_setup_period_ended17h160b27f408e9fa5dE (;117;) (type 11)
    block ;; label = @1
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$19setup_period_status17h759933be5dd5a5c1E
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h4b7e71ecf95a89f5E
      br_if 0 (;@1;)
      return
    end
    i32.const 131627
    i32.const 28
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hc1e91bbf7f13ba04E
    unreachable
  )
  (func $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17hcfe72838fd101737E (;118;) (type 7) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferAppendBytes
    drop
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h69c0baa27c855ae7E (;119;) (type 3) (param i32)
    local.get 0
    i32.const 131198
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hb97183230172400cE
    unreachable
  )
  (func $_ZN4core5slice5index22slice_index_order_fail17hce8d8012711d5a00E (;120;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN4core5slice5index22slice_index_order_fail8do_panic7runtime17h3eb440503b756a77E
    unreachable
  )
  (func $_ZN4core5slice5index24slice_end_index_len_fail17h07937a589bfe269aE (;121;) (type 3) (param i32)
    local.get 0
    call $_ZN4core5slice5index24slice_end_index_len_fail8do_panic7runtime17h40abf6316be1d38dE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$6bi_cmp17h8ae012d63aea1825E (;122;) (type 2) (param i32 i32) (result i32)
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
  (func $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$16token_identifier17h391d06831749bc1eE (;123;) (type 1) (result i32)
    i32.const 131870
    i32.const 15
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6e9c79b5d55271e8E
  )
  (func $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$18token_total_supply17h8a799eac2b3b95fbE (;124;) (type 1) (result i32)
    i32.const 131885
    i32.const 16
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6e9c79b5d55271e8E
  )
  (func $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$22address_change_request17h98257c8ab104b291E (;125;) (type 6) (param i32) (result i32)
    (local i32)
    i32.const 131937
    i32.const 20
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6e9c79b5d55271e8E
    local.tee 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17hba418fae9786bcecE
    local.get 1
  )
  (func $rust_begin_unwind (;126;) (type 11)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17hbce93cd107d2a5cdE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17hbce93cd107d2a5cdE (;127;) (type 11)
    i32.const 131993
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;128;) (type 11)
    (local i32 i32)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hb90ca0110ddeb0c7E
    block ;; label = @1
      call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h81c44607b2dfa5f7E
      local.tee 0
      call $validateTokenIdentifier
      i32.eqz
      br_if 0 (;@1;)
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$16token_identifier17h391d06831749bc1eE
      local.set 1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17hc8ae669dd6dd32a7E
          br_if 0 (;@3;)
          local.get 1
          local.get 0
          call $mBufferStorageStore
          drop
          br 1 (;@2;)
        end
        local.get 1
        i32.const 131241
        i32.const 4
        call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h254ed43c5b5b1bc5E
      end
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$19setup_period_status17h759933be5dd5a5c1E
      i32.const 1
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h231df3e05064199cE
      return
    end
    i32.const 131655
    i32.const 22
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hc1e91bbf7f13ba04E
    unreachable
  )
  (func $addFixedAmountGroup (;129;) (type 11)
    (local i32 i32 i32 i32 i64 i64 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17he47670658dc08c35E
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hb90ca0110ddeb0c7E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h503a776713beccb9E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd0773f7571be09c2E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd0773f7571be09c2E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd5f42a4630cf4480E
    local.set 4
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd5f42a4630cf4480E
    local.set 5
    local.get 0
    local.get 1
    i32.store offset=12
    call $_ZN13token_release12TokenRelease25require_setup_period_live17hcb88b6da01975a30E
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 0
            i32.const 12
            i32.add
            call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14group_schedule17h40dc41c5b68e8675E
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$8is_empty17hf227922be91c2275E
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            i64.const 0
            i64.eq
            br_if 1 (;@3;)
            local.get 2
            call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17h74510bf442cd471dE
            call $_ZN4core3cmp10PartialOrd2gt17h6f925cf9c19e6effE
            i32.eqz
            br_if 2 (;@2;)
            local.get 5
            call $_ZN115_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..convert..From$LT$u64$GT$$GT$4from17h79efe0c24a92c2a4E
            local.set 1
            call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
            local.tee 6
            local.get 3
            local.get 1
            call $bigIntMul
            local.get 6
            local.get 2
            call $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$6bi_cmp17h8ae012d63aea1825E
            i32.const 255
            i32.and
            br_if 3 (;@1;)
            call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$18token_total_supply17h8a799eac2b3b95fbE
            local.tee 1
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h83f21e45aad4e1a8E
            local.tee 6
            local.get 2
            call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..AddAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17h7be1ff523ac0128fE
            local.get 1
            local.get 6
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h8632cd6e8a3aa301E
            local.get 0
            local.get 5
            i64.store offset=32
            local.get 0
            local.get 4
            i64.store offset=24
            local.get 0
            local.get 3
            i32.store offset=20
            local.get 0
            i32.const 0
            i32.store8 offset=16
            local.get 0
            local.get 2
            i32.store offset=40
            local.get 0
            i32.const 12
            i32.add
            call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14group_schedule17h40dc41c5b68e8675E
            local.get 0
            i32.const 16
            i32.add
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17heaea3070a4e2e975E
            local.get 0
            i32.const 48
            i32.add
            global.set $__stack_pointer
            return
          end
          i32.const 131359
          i32.const 24
          call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hc1e91bbf7f13ba04E
          unreachable
        end
        i32.const 131383
        i32.const 47
        call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hc1e91bbf7f13ba04E
        unreachable
      end
      i32.const 131430
      i32.const 65
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hc1e91bbf7f13ba04E
      unreachable
    end
    i32.const 131495
    i32.const 37
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hc1e91bbf7f13ba04E
    unreachable
  )
  (func $addPercentageBasedGroup (;130;) (type 11)
    (local i32 i32 i32 i32 i64 i64 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17he47670658dc08c35E
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hb90ca0110ddeb0c7E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h503a776713beccb9E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd0773f7571be09c2E
    local.set 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7802324e32549f44E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd5f42a4630cf4480E
    local.set 4
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd5f42a4630cf4480E
    local.set 5
    local.get 0
    local.get 1
    i32.store offset=12
    call $_ZN13token_release12TokenRelease25require_setup_period_live17hcb88b6da01975a30E
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 0
            i32.const 12
            i32.add
            call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14group_schedule17h40dc41c5b68e8675E
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$8is_empty17hf227922be91c2275E
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            i64.const 0
            i64.eq
            br_if 1 (;@3;)
            local.get 2
            call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17h74510bf442cd471dE
            call $_ZN4core3cmp10PartialOrd2gt17h6f925cf9c19e6effE
            i32.eqz
            br_if 2 (;@2;)
            local.get 5
            local.get 3
            i64.extend_i32_u
            i64.const 255
            i64.and
            i64.mul
            i64.const 100
            i64.ne
            br_if 3 (;@1;)
            call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$18token_total_supply17h8a799eac2b3b95fbE
            local.tee 1
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h83f21e45aad4e1a8E
            local.tee 6
            local.get 2
            call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..AddAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17h7be1ff523ac0128fE
            local.get 1
            local.get 6
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h8632cd6e8a3aa301E
            local.get 0
            local.get 5
            i64.store offset=32
            local.get 0
            local.get 4
            i64.store offset=24
            local.get 0
            local.get 3
            i32.store8 offset=17
            local.get 0
            i32.const 1
            i32.store8 offset=16
            local.get 0
            local.get 2
            i32.store offset=40
            local.get 0
            i32.const 12
            i32.add
            call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14group_schedule17h40dc41c5b68e8675E
            local.get 0
            i32.const 16
            i32.add
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17heaea3070a4e2e975E
            local.get 0
            i32.const 48
            i32.add
            global.set $__stack_pointer
            return
          end
          i32.const 131359
          i32.const 24
          call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hc1e91bbf7f13ba04E
          unreachable
        end
        i32.const 131383
        i32.const 47
        call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hc1e91bbf7f13ba04E
        unreachable
      end
      i32.const 131430
      i32.const 65
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hc1e91bbf7f13ba04E
      unreachable
    end
    i32.const 131596
    i32.const 31
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hc1e91bbf7f13ba04E
    unreachable
  )
  (func $removeGroup (;131;) (type 11)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17he47670658dc08c35E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hb90ca0110ddeb0c7E
    local.get 0
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h503a776713beccb9E
    i32.store offset=12
    call $_ZN13token_release12TokenRelease25require_setup_period_live17hcb88b6da01975a30E
    block ;; label = @1
      local.get 0
      i32.const 12
      i32.add
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14group_schedule17h40dc41c5b68e8675E
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$8is_empty17hf227922be91c2275E
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131335
      i32.const 24
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hc1e91bbf7f13ba04E
      unreachable
    end
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.const 12
    i32.add
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14group_schedule17h40dc41c5b68e8675E
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h696abe2c681761e9E
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$18token_total_supply17h8a799eac2b3b95fbE
    local.tee 1
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h83f21e45aad4e1a8E
    local.tee 2
    local.get 2
    local.get 0
    i32.load offset=40
    call $_ZN11dharitri_sc3api13managed_types11big_int_api13BigIntApiImpl15bi_sub_unsigned17h43d12fcb4ec43217E
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h8632cd6e8a3aa301E
    local.get 0
    i32.const 12
    i32.add
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14group_schedule17h40dc41c5b68e8675E
    call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h4169ded9940ef45aE
    local.get 0
    i32.const 12
    i32.add
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14users_in_group17h54016bd256c83481E
    call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h4169ded9940ef45aE
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $addUserGroup (;132;) (type 11)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17he47670658dc08c35E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hb90ca0110ddeb0c7E
    i32.const 131677
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h848d891676c6f057E
    local.set 1
    local.get 0
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h503a776713beccb9E
    i32.store offset=20
    call $_ZN13token_release12TokenRelease25require_setup_period_live17hcb88b6da01975a30E
    block ;; label = @1
      local.get 0
      i32.const 20
      i32.add
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14group_schedule17h40dc41c5b68e8675E
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$8is_empty17hf227922be91c2275E
      br_if 0 (;@1;)
      local.get 1
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$11user_groups17h43cf700f4b592892E
      local.set 2
      local.get 0
      i32.load offset=20
      local.set 1
      local.get 2
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he5138e69e9363ec5E
      local.set 3
      local.get 0
      local.get 1
      i32.store offset=28
      local.get 0
      local.get 0
      i32.const 47
      i32.add
      i32.store offset=24
      local.get 0
      local.get 3
      call $mBufferGetLength
      i32.store offset=40
      local.get 0
      i32.const 0
      i32.store offset=36
      local.get 0
      local.get 3
      i32.store offset=32
      local.get 0
      i32.const 28
      i32.add
      local.set 4
      block ;; label = @2
        loop ;; label = @3
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.const 32
          i32.add
          call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb78d85936d826e18E
          block ;; label = @4
            local.get 0
            i32.load offset=8
            br_if 0 (;@4;)
            local.get 4
            call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14users_in_group17h54016bd256c83481E
            local.set 1
            local.get 1
            local.get 1
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17hce9801cf69dfc508E
            i64.const 1
            i64.add
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h8011f6e76556cb7eE
            local.get 3
            local.get 0
            i32.load offset=28
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h026b057f1e0278c2E
            br 2 (;@2;)
          end
          local.get 0
          i32.load offset=12
          local.get 1
          call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h00ec339cb3020c69E
          i32.eqz
          br_if 0 (;@3;)
        end
      end
      local.get 2
      local.get 3
      call $_ZN11dharitri_sc7storage11storage_set11storage_set17ha42fb4f655e827abE
      local.get 0
      i32.const 48
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131335
    i32.const 24
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hc1e91bbf7f13ba04E
    unreachable
  )
  (func $removeUser (;133;) (type 11)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17he47670658dc08c35E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hb90ca0110ddeb0c7E
    i32.const 131677
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h848d891676c6f057E
    local.set 1
    call $_ZN13token_release12TokenRelease25require_setup_period_live17hcb88b6da01975a30E
    block ;; label = @1
      local.get 1
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$11user_groups17h43cf700f4b592892E
      call $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$23address_storage_get_len17h558c9f2f8c213449E
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$11user_groups17h43cf700f4b592892E
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he5138e69e9363ec5E
      local.tee 2
      call $mBufferGetLength
      i32.store offset=24
      local.get 0
      i32.const 0
      i32.store offset=20
      local.get 0
      local.get 2
      i32.store offset=16
      block ;; label = @2
        loop ;; label = @3
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.const 16
          i32.add
          call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb78d85936d826e18E
          local.get 0
          i32.load offset=8
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          local.get 0
          i32.load offset=12
          i32.store offset=28
          local.get 0
          i32.const 28
          i32.add
          call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14users_in_group17h54016bd256c83481E
          local.set 2
          local.get 2
          local.get 2
          call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17hce9801cf69dfc508E
          i64.const -1
          i64.add
          call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h8011f6e76556cb7eE
          br 0 (;@3;)
        end
      end
      local.get 1
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$11user_groups17h43cf700f4b592892E
      call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h4169ded9940ef45aE
      local.get 1
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$15claimed_balance17h253059d93cdb1bf1E
      call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h4169ded9940ef45aE
      local.get 0
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131258
    i32.const 26
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hc1e91bbf7f13ba04E
    unreachable
  )
  (func $requestAddressChange (;134;) (type 11)
    (local i32)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hb90ca0110ddeb0c7E
    i32.const 131696
    i32.const 11
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h848d891676c6f057E
    local.set 0
    call $_ZN13token_release12TokenRelease26require_setup_period_ended17h160b27f408e9fa5dE
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h9af3edde3a86b263E
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$22address_change_request17h98257c8ab104b291E
    local.get 0
    call $mBufferStorageStore
    drop
  )
  (func $approveAddressChange (;135;) (type 11)
    (local i32 i32 i32 i32)
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17he47670658dc08c35E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hb90ca0110ddeb0c7E
    i32.const 131684
    i32.const 12
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h848d891676c6f057E
    local.set 0
    call $_ZN13token_release12TokenRelease26require_setup_period_ended17h160b27f408e9fa5dE
    block ;; label = @1
      local.get 0
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$22address_change_request17h98257c8ab104b291E
      call $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$23address_storage_get_len17h558c9f2f8c213449E
      br_if 0 (;@1;)
      i32.const 131532
      i32.const 42
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hc1e91bbf7f13ba04E
      unreachable
    end
    local.get 0
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$22address_change_request17h98257c8ab104b291E
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h94a042be447cd601E
    local.set 1
    local.get 0
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$11user_groups17h43cf700f4b592892E
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17he5138e69e9363ec5E
    local.set 2
    local.get 0
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$15claimed_balance17h253059d93cdb1bf1E
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h83f21e45aad4e1a8E
    local.set 3
    local.get 1
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$11user_groups17h43cf700f4b592892E
    local.get 2
    call $_ZN11dharitri_sc7storage11storage_set11storage_set17ha42fb4f655e827abE
    local.get 1
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$15claimed_balance17h253059d93cdb1bf1E
    local.get 3
    call $_ZN11dharitri_sc7storage11storage_set11storage_set17hae5d5dd42997d450E
    local.get 0
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$11user_groups17h43cf700f4b592892E
    call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h4169ded9940ef45aE
    local.get 0
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$15claimed_balance17h253059d93cdb1bf1E
    call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h4169ded9940ef45aE
    local.get 0
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$22address_change_request17h98257c8ab104b291E
    call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h4169ded9940ef45aE
  )
  (func $endSetupPeriod (;136;) (type 11)
    (local i32 i32 i32 i32 i32 i64)
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17he47670658dc08c35E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hb90ca0110ddeb0c7E
    call $_ZN13token_release12TokenRelease25require_setup_period_live17hcb88b6da01975a30E
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$16token_identifier17h391d06831749bc1eE
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h22fa64475fe2add6E
    local.set 0
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$18token_total_supply17h8a799eac2b3b95fbE
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h83f21e45aad4e1a8E
    local.set 1
    i32.const 131185
    i32.const 13
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6e9c79b5d55271e8E
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h06382d62b25b5ebbE
    local.set 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h06382d62b25b5ebbE
    local.set 4
    block ;; label = @1
      block ;; label = @2
        local.get 0
        call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17hc8ae669dd6dd32a7E
        br_if 0 (;@2;)
        local.get 0
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6addd5776154626eE
        local.set 4
        br 1 (;@1;)
      end
      local.get 4
      i32.const 131241
      i32.const 4
      call $mBufferSetBytes
      drop
    end
    local.get 3
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h026b057f1e0278c2E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h06382d62b25b5ebbE
    drop
    local.get 3
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h97312e1db5fc2205E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h026b057f1e0278c2E
    call $getGasLeft
    local.set 5
    i32.const -30
    call $managedSCAddress
    i32.const -10
    i64.const 0
    call $bigIntSetInt64
    local.get 5
    i32.const -30
    i32.const -10
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    call $managedExecuteOnDestContext
    drop
    call $cleanReturnData
    call $getBlockTimestamp
    local.set 5
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$20activation_timestamp17h7a25e6bd9076c6eaE
    local.get 5
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h8011f6e76556cb7eE
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$19setup_period_status17h759933be5dd5a5c1E
    i32.const 0
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h231df3e05064199cE
  )
  (func $claimTokens (;137;) (type 11)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hb90ca0110ddeb0c7E
    call $_ZN13token_release12TokenRelease26require_setup_period_ended17h160b27f408e9fa5dE
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$16token_identifier17h391d06831749bc1eE
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h22fa64475fe2add6E
    local.set 1
    block ;; label = @1
      call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h9af3edde3a86b263E
      local.tee 2
      call $_ZN13token_release12TokenRelease20get_claimable_tokens17h5d24b22e3aa50311E
      local.tee 3
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17h74510bf442cd471dE
      call $_ZN4core3cmp10PartialOrd2gt17h6f925cf9c19e6effE
      br_if 0 (;@1;)
      i32.const 131284
      i32.const 51
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hc1e91bbf7f13ba04E
      unreachable
    end
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h06382d62b25b5ebbE
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h06382d62b25b5ebbE
    local.set 5
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h06382d62b25b5ebbE
    local.set 6
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6addd5776154626eE
    local.set 7
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    i64.const 0
    call $bigIntSetInt64
    local.get 1
    local.get 1
    local.get 3
    call $bigIntAdd
    local.get 0
    i64.const 0
    i64.store offset=4 align=4
    local.get 0
    local.get 7
    i32.const 24
    i32.shl
    local.get 7
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 7
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 7
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store
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
    i32.store offset=12
    local.get 6
    local.get 0
    i32.const 16
    call $mBufferAppendBytes
    drop
    local.get 2
    local.get 6
    i64.const 0
    local.get 4
    local.get 5
    call $managedMultiTransferDCDTNFTExecute
    drop
    local.get 2
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$15claimed_balance17h253059d93cdb1bf1E
    local.tee 1
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h83f21e45aad4e1a8E
    local.tee 7
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..AddAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17h7be1ff523ac0128fE
    local.get 1
    local.get 7
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h8632cd6e8a3aa301E
    local.get 3
    call $bigIntFinishUnsigned
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $verify_address_change (;138;) (type 11)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hb90ca0110ddeb0c7E
    i32.const 131677
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h848d891676c6f057E
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$22address_change_request17h98257c8ab104b291E
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h94a042be447cd601E
    call $mBufferFinish
    drop
  )
  (func $get_claimable_tokens (;139;) (type 11)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hb90ca0110ddeb0c7E
    i32.const 131677
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h848d891676c6f057E
    call $_ZN13token_release12TokenRelease20get_claimable_tokens17h5d24b22e3aa50311E
    call $bigIntFinishUnsigned
  )
  (func $getTokenIdentifier (;140;) (type 11)
    (local i32)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hb90ca0110ddeb0c7E
    block ;; label = @1
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$16token_identifier17h391d06831749bc1eE
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h22fa64475fe2add6E
      local.tee 0
      call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17hc8ae669dd6dd32a7E
      br_if 0 (;@1;)
      local.get 0
      call $mBufferFinish
      drop
      return
    end
    i32.const 131241
    i32.const 4
    call $finish
  )
  (func $getTokenTotalSupply (;141;) (type 11)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hb90ca0110ddeb0c7E
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$18token_total_supply17h8a799eac2b3b95fbE
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h83f21e45aad4e1a8E
    call $bigIntFinishUnsigned
  )
  (func $callBack (;142;) (type 11))
  (func $_ZN4core9panicking9panic_fmt17h931ec2537c26fa22E (;143;) (type 11)
    call $rust_begin_unwind
    unreachable
  )
  (func $_ZN4core5slice5index24slice_end_index_len_fail8do_panic7runtime17h40abf6316be1d38dE (;144;) (type 3) (param i32)
    call $_ZN4core9panicking9panic_fmt17h931ec2537c26fa22E
    unreachable
  )
  (func $_ZN4core5slice5index22slice_index_order_fail8do_panic7runtime17h3eb440503b756a77E (;145;) (type 0) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17h931ec2537c26fa22E
    unreachable
  )
  (func $memcpy (;146;) (type 4) (param i32 i32 i32) (result i32)
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
  (data $.rodata (;0;) (i32.const 131072) "input too longargument decode error (): wrong number of argumentscannot subtract because result would be negativeDCDTLocalMintinput too shortcast to i64 errorREWA-000000REWAinvalid valueThe address is not definedThis address cannot currently claim any more tokensThe group does not existThe group already existsThe schedule must have at least 1 unlock periodThe schedule must have a positive number of total tokens releasedThe total number of tokens is invalidThe address does not have a change requestSetup period has endedThe final percentage is invalidSetup period is still activeInvalid token providedaddressuser_addressnew_addressperiod_unlock_percentagetoken_identifierstorage decode error (key: DCDT expectedbad array lengthinput out of rangeuserGroupsgroupScheduleusersInGroupclaimedBalancetokenIdentifiertokenTotalSupplysetupPeriodStatusactivationTimestampaddressChangeRequestEndpoint can only be called by ownerpanic occurred")
  (data $.data (;1;) (i32.const 132008) "8\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.84.1 (e71f9a9a9 2025-01-27)")
  )
  (@custom "target_features" (after data) "\04+\0amultivalue+\0fmutable-globals+\0freference-types+\08sign-ext")
)
