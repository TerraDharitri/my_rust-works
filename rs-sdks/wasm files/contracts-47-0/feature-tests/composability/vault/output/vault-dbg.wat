(module
  (type (;0;) (func (param i32 i64)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i32)))
  (type (;6;) (func (param i64) (result i32)))
  (type (;7;) (func (param i64 i32 i32 i32 i32 i32) (result i32)))
  (type (;8;) (func))
  (type (;9;) (func (param i32 i32 i64 i32 i32) (result i32)))
  (type (;10;) (func (param i32 i32 i32) (result i32)))
  (type (;11;) (func (param i32) (result i32)))
  (type (;12;) (func (param i32) (result i64)))
  (type (;13;) (func (param i64)))
  (type (;14;) (func (result i64)))
  (type (;15;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;16;) (func (param i32 i32 i32 i64 i32 i32)))
  (type (;17;) (func (param i64 i32 i32) (result i32)))
  (type (;18;) (func (param i32 i32 i32 i64 i32 i32) (result i32)))
  (type (;19;) (func (param i32 i32 i64 i32 i64 i32 i32) (result i32)))
  (type (;20;) (func (param i32 i32 i32 i32)))
  (type (;21;) (func (param i32 i32) (result i64)))
  (type (;22;) (func (param i32 i64 i32)))
  (type (;23;) (func (param i64 i32)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;0;) (type 0)))
  (import "env" "bigIntAdd" (func $bigIntAdd (;1;) (type 1)))
  (import "env" "signalError" (func $signalError (;2;) (type 2)))
  (import "env" "mBufferNew" (func $mBufferNew (;3;) (type 3)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;4;) (type 4)))
  (import "env" "managedSCAddress" (func $managedSCAddress (;5;) (type 5)))
  (import "env" "bigIntNew" (func $bigIntNew (;6;) (type 6)))
  (import "env" "managedExecuteOnDestContext" (func $managedExecuteOnDestContext (;7;) (type 7)))
  (import "env" "cleanReturnData" (func $cleanReturnData (;8;) (type 8)))
  (import "env" "managedMultiTransferDCDTNFTExecute" (func $managedMultiTransferDCDTNFTExecute (;9;) (type 9)))
  (import "env" "managedCaller" (func $managedCaller (;10;) (type 5)))
  (import "env" "bigIntGetCallValue" (func $bigIntGetCallValue (;11;) (type 5)))
  (import "env" "managedGetMultiDCDTCallValue" (func $managedGetMultiDCDTCallValue (;12;) (type 5)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;13;) (type 4)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;14;) (type 10)))
  (import "env" "managedSignalError" (func $managedSignalError (;15;) (type 5)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;16;) (type 11)))
  (import "env" "smallIntGetUnsignedArgument" (func $smallIntGetUnsignedArgument (;17;) (type 12)))
  (import "env" "bigIntGetUnsignedArgument" (func $bigIntGetUnsignedArgument (;18;) (type 2)))
  (import "env" "getNumArguments" (func $getNumArguments (;19;) (type 3)))
  (import "env" "smallIntFinishUnsigned" (func $smallIntFinishUnsigned (;20;) (type 13)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;21;) (type 11)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;22;) (type 10)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;23;) (type 4)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;24;) (type 4)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;25;) (type 4)))
  (import "env" "managedWriteLog" (func $managedWriteLog (;26;) (type 2)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;27;) (type 8)))
  (import "env" "bigIntFinishUnsigned" (func $bigIntFinishUnsigned (;28;) (type 5)))
  (import "env" "managedTransferValueExecute" (func $managedTransferValueExecute (;29;) (type 9)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;30;) (type 4)))
  (import "env" "getGasLeft" (func $getGasLeft (;31;) (type 14)))
  (import "env" "managedOwnerAddress" (func $managedOwnerAddress (;32;) (type 5)))
  (import "env" "finish" (func $finish (;33;) (type 2)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;34;) (type 15)))
  (func $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h98f6c59de7135317E (;35;) (type 11) (param i32) (result i32)
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E (;36;) (type 3) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=131556
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=131556
    local.get 0
  )
  (func $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17h116d26aeec62ff9cE (;37;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $signalError
    unreachable
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h968eb2d0db346fd0E (;38;) (type 11) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17ha324da4875bb4fdbE (;39;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17h116d26aeec62ff9cE
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$12direct_multi17h83e674ada38fa302E (;40;) (type 2) (param i32 i32)
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
    local.get 1
    i64.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27multi_dcdt_transfer_execute17hf5ce8ac8f049c50cE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE (;41;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    i32.const 131508
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27multi_dcdt_transfer_execute17hf5ce8ac8f049c50cE (;42;) (type 16) (param i32 i32 i32 i64 i32 i32)
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    call $managedMultiTransferDCDTNFTExecute
    local.set 5
    local.get 0
    i32.const 34
    i32.store offset=4
    local.get 0
    i32.const 131508
    i32.const 0
    local.get 5
    select
    i32.store
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$33call_local_dcdt_built_in_function17h45db06bbc40107c7E (;43;) (type 17) (param i64 i32 i32) (result i32)
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
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21transfer_dcdt_execute17h7023b01f4f2c5361E (;44;) (type 18) (param i32 i32 i32 i64 i32 i32) (result i32)
    local.get 0
    local.get 1
    i64.const 0
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17h4cac86d8c58f9296E
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17h4cac86d8c58f9296E (;45;) (type 19) (param i32 i32 i64 i32 i64 i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 7
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
    local.set 8
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h968eb2d0db346fd0E
    local.set 1
    local.get 7
    local.get 3
    call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h98f6c59de7135317E
    i32.store offset=28
    local.get 7
    local.get 2
    i64.store offset=16
    local.get 7
    local.get 1
    i32.store offset=24
    local.get 8
    local.get 7
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hd782fe0e1dc54fb0E
    local.get 7
    i32.const 8
    i32.add
    local.get 0
    local.get 8
    local.get 4
    local.get 5
    local.get 6
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27multi_dcdt_transfer_execute17hf5ce8ac8f049c50cE
    local.get 7
    i32.load offset=8
    local.set 8
    local.get 7
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 8
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hd782fe0e1dc54fb0E (;46;) (type 2) (param i32 i32)
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
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h7d239d690188a742E (;47;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    call $managedCaller
    local.get 0
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17h2696e5d31ea06162E (;48;) (type 3) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 0
      i32.load8_u offset=131564
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
    i32.store8 offset=131564
    i32.const -11
    call $bigIntGetCallValue
    i32.const -11
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h4c54f5afb449b375E (;49;) (type 3) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 0
      i32.load8_u offset=131568
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
    i32.store8 offset=131568
    i32.const -21
    call $managedGetMultiDCDTCallValue
    i32.const -21
  )
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h7793e0ac849aaae9E (;50;) (type 11) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h56b1922b18ca019bE (;51;) (type 20) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131143
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hb45ccee6a0b55ba7E
    local.tee 4
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 4
    i32.const 131166
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hb45ccee6a0b55ba7E (;52;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h397c14dc02f7884aE (;53;) (type 10) (param i32 i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
    local.set 3
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.load
        i32.const 0
        i32.load offset=131560
        i32.ge_s
        br_if 1 (;@1;)
        local.get 3
        local.get 0
        local.get 1
        local.get 2
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h3786178ea672c268E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he6de0a91705c4006E
        br 0 (;@2;)
      end
    end
    local.get 3
  )
  (func $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h3786178ea672c268E (;54;) (type 10) (param i32 i32 i32) (result i32)
    (local i32)
    block ;; label = @1
      local.get 0
      i32.load
      local.tee 3
      i32.const 0
      i32.load offset=131560
      i32.lt_s
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131169
      i32.const 17
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h56b1922b18ca019bE
      unreachable
    end
    local.get 0
    local.get 3
    i32.const 1
    i32.add
    i32.store
    local.get 3
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h7793e0ac849aaae9E
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he6de0a91705c4006E (;55;) (type 2) (param i32 i32)
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h56ce6a93648e5b53E (;56;) (type 20) (param i32 i32 i32 i32)
    (local i32)
    i32.const 0
    local.set 4
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load
        i32.const 0
        i32.load offset=131560
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 1
        local.set 4
        br 1 (;@1;)
      end
      local.get 1
      local.get 2
      local.get 3
      call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h3786178ea672c268E
      local.set 1
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h369aed1b2ded893eE (;57;) (type 3) (result i32)
    i32.const 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h7793e0ac849aaae9E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h68fcf07f38337e43E (;58;) (type 3) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block ;; label = @1
      i32.const 0
      call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h7793e0ac849aaae9E
      local.tee 1
      call $mBufferGetLength
      i32.const 4
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store offset=12
      local.get 1
      i32.const 0
      local.get 0
      i32.const 12
      i32.add
      i32.const 4
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E
      drop
      i32.const 2147483646
      local.get 1
      local.get 0
      i32.load offset=12
      i32.const 1096238418
      i32.eq
      select
      local.set 1
    end
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E (;59;) (type 15) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hef7c468027c7b0dfE (;60;) (type 14) (result i64)
    i32.const 1
    call $smallIntGetUnsignedArgument
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hf94d0c30d51dcff4E (;61;) (type 11) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $bigIntGetUnsignedArgument
    local.get 1
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h6de4efec2dca522bE (;62;) (type 5) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=131560
      local.get 0
      i32.gt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131186
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc03f93a71620cac4E (;63;) (type 5) (param i32)
    block ;; label = @1
      call $getNumArguments
      local.get 0
      i32.ne
      br_if 0 (;@1;)
      return
    end
    i32.const 131204
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17ha541194bb20921cfE (;64;) (type 5) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=131560
      local.get 0
      i32.lt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131169
    i32.const 17
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h0ce91be4d17db061E (;65;) (type 8)
    i32.const 0
    call $getNumArguments
    i32.store offset=131560
  )
  (func $_ZN11dharitri_sc2io6finish12finish_multi17h79876a2335534fd9E (;66;) (type 5) (param i32)
    local.get 0
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17hbad588d3cba204dcE
    i64.extend_i32_u
    call $smallIntFinishUnsigned
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17hbad588d3cba204dcE (;67;) (type 11) (param i32) (result i32)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i64.const 0
    i64.store offset=8
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 2
    call $mBufferStorageLoad
    drop
    block ;; label = @1
      local.get 2
      call $mBufferGetLength
      local.tee 0
      i32.const 9
      i32.ge_u
      br_if 0 (;@1;)
      local.get 2
      i32.const 0
      local.get 1
      i32.const 8
      i32.add
      local.get 0
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E
      drop
      local.get 1
      i32.const 8
      i32.add
      local.get 0
      call $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E
      local.tee 3
      i64.const 4294967296
      i64.ge_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 3
      i32.wrap_i64
      return
    end
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h8408a9a4997d9b3fE
    unreachable
  )
  (func $_ZN11dharitri_sc2io6finish12finish_multi17hd3939567f0ab0503E (;68;) (type 5) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17ha116d7aa6bce7883E
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74cf3d8744b96cceE
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17ha116d7aa6bce7883E (;69;) (type 11) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74cf3d8744b96cceE (;70;) (type 2) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hac360a8a960d5577E
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
  (func $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17h7800c45a1f456e0aE (;71;) (type 2) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
    drop
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h968eb2d0db346fd0E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he6de0a91705c4006E
  )
  (func $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17h9a53c810769a554dE (;72;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    call $_ZN127_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h3c50ce363e2cf253E
    local.get 0
    local.get 2
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he6de0a91705c4006E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN127_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h3c50ce363e2cf253E (;73;) (type 2) (param i32 i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 2
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 1
    local.get 2
    i32.store
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hac360a8a960d5577E (;74;) (type 15) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$7try_get17hf8756200b841034bE (;75;) (type 1) (param i32 i32 i32)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hac360a8a960d5577E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h506a5f14096ef874E (;76;) (type 4) (param i32 i32) (result i32)
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
    local.get 0
    local.get 1
    i32.load
    local.tee 3
    local.get 3
    i32.const 4
    i32.add
    local.tee 3
    call $_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hcbf66dd4b326bed5E
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
  (func $_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hcbf66dd4b326bed5E (;77;) (type 20) (param i32 i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        local.get 3
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
        local.get 3
        i32.const 16
        i32.gt_u
        br_if 1 (;@1;)
        local.get 0
        local.get 3
        local.get 2
        i32.sub
        i32.store offset=4
        local.get 0
        local.get 1
        local.get 2
        i32.add
        i32.store
        return
      end
      local.get 2
      local.get 3
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE
      unreachable
    end
    local.get 3
    call $_ZN4core5slice5index24slice_end_index_len_fail17h071ab3c1906221bcE
    unreachable
  )
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E (;78;) (type 20) (param i32 i32 i32 i32)
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
  (func $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h86fefdce4aafbea4E (;79;) (type 21) (param i32 i32) (result i64)
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
    local.get 0
    local.get 1
    i32.load
    local.tee 3
    local.get 3
    i32.const 8
    i32.add
    local.tee 3
    call $_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hcbf66dd4b326bed5E
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
  (func $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E (;80;) (type 21) (param i32 i32) (result i64)
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
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h8408a9a4997d9b3fE (;81;) (type 8)
    (local i32)
    i32.const 131247
    i32.const 22
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hb45ccee6a0b55ba7E
    local.tee 0
    i32.const 131229
    i32.const 14
    call $mBufferAppendBytes
    drop
    local.get 0
    call $managedSignalError
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hd342497f6ca93ef9E (;82;) (type 2) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hb45ccee6a0b55ba7E
    call $mBufferStorageStore
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hfa66c899aa066fc8E (;83;) (type 22) (param i32 i64 i32)
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
        i32.const 131508
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
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17h42ae21d2a1a0310eE (;84;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17ha116d7aa6bce7883E
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74cf3d8744b96cceE
        local.get 2
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=12
        local.set 1
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
        drop
        local.get 0
        local.get 1
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h968eb2d0db346fd0E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he6de0a91705c4006E
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17h8eeff8510b0bd126E (;85;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    call $_ZN127_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h3c50ce363e2cf253E
    local.get 0
    local.get 2
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he6de0a91705c4006E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc8log_util23event_topic_accumulator17h9f034de2787c0f3eE (;86;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
    local.tee 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hb45ccee6a0b55ba7E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he6de0a91705c4006E
    local.get 2
  )
  (func $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ae62feb37495933E (;87;) (type 2) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hac360a8a960d5577E
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
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h506a5f14096ef874E
      local.set 4
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h86fefdce4aafbea4E
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
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h506a5f14096ef874E
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
  (func $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h3572ad8ffc15c86bE (;88;) (type 11) (param i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    i32.load
    local.get 0
    i32.load offset=8
    local.tee 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$7try_get17hf8756200b841034bE
    block ;; label = @1
      local.get 1
      i32.load offset=8
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=12
      local.set 3
      local.get 0
      local.get 2
      i32.const 1
      i32.add
      i32.store offset=8
      local.get 3
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h968eb2d0db346fd0E
      local.set 0
      local.get 1
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 0
      return
    end
    i32.const 131269
    i32.const 8
    i32.const 131169
    i32.const 17
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h56b1922b18ca019bE
    unreachable
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned78_$LT$impl$u20$dharitri_sc_codec..single..top_en..TopEncode$u20$for$u20$u64$GT$24top_encode_or_handle_err17hf12836d7d67a0ca2E (;89;) (type 23) (param i64 i32)
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
    local.get 0
    local.get 2
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hfa66c899aa066fc8E
    local.get 1
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
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h33ce00b41338e18cE (;90;) (type 0) (param i32 i64)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
    local.tee 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned78_$LT$impl$u20$dharitri_sc_codec..single..top_en..TopEncode$u20$for$u20$u64$GT$24top_encode_or_handle_err17hf12836d7d67a0ca2E
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he6de0a91705c4006E
  )
  (func $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$11call_counts17ha1a01850ff653ce7E (;91;) (type 11) (param i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 131277
    i32.const 11
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hb45ccee6a0b55ba7E
    local.set 2
    local.get 1
    local.get 0
    call $mBufferGetLength
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
    i32.const 12
    i32.add
    i32.const 4
    call $mBufferAppendBytes
    drop
    local.get 2
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
  )
  (func $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$18accept_funds_event17h5dd57a2d7bfbc00dE (;92;) (type 2) (param i32 i32)
    (local i32)
    i32.const 131296
    i32.const 12
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h9f034de2787c0f3eE
    local.tee 2
    local.get 0
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17h8eeff8510b0bd126E
    local.get 2
    local.get 1
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17h42ae21d2a1a0310eE
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
    call $managedWriteLog
  )
  (func $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$18reject_funds_event17h721559bdc9f8eb9bE (;93;) (type 2) (param i32 i32)
    (local i32)
    i32.const 131308
    i32.const 12
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h9f034de2787c0f3eE
    local.tee 2
    local.get 0
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17h8eeff8510b0bd126E
    local.get 2
    local.get 1
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17h42ae21d2a1a0310eE
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
    call $managedWriteLog
  )
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE (;94;) (type 2) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (func $_ZN4core5slice5index24slice_end_index_len_fail17h071ab3c1906221bcE (;95;) (type 5) (param i32)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (func $_ZN5vault5Vault20dcdt_transfers_multi17hce210b777e14275fE (;96;) (type 3) (result i32)
    (local i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h4c54f5afb449b375E
    local.tee 1
    i32.store
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
    local.set 2
    local.get 0
    local.get 1
    call $mBufferGetLength
    i32.store offset=12
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 0
    local.get 0
    i32.store offset=4
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 40
        i32.add
        local.get 0
        i32.const 4
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ae62feb37495933E
        local.get 0
        i64.load offset=40
        i64.eqz
        br_if 1 (;@1;)
        local.get 0
        i64.load offset=48
        local.set 3
        local.get 0
        i32.load offset=60
        local.set 1
        local.get 0
        i32.load offset=56
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h968eb2d0db346fd0E
        local.set 4
        local.get 0
        local.get 1
        call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h98f6c59de7135317E
        i32.store offset=28
        local.get 0
        local.get 3
        i64.store offset=16
        local.get 0
        local.get 4
        i32.store offset=24
        local.get 2
        local.get 0
        i32.const 16
        i32.add
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hd782fe0e1dc54fb0E
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 2
    i32.store offset=36
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
    local.set 1
    local.get 0
    local.get 2
    call $mBufferGetLength
    i32.store offset=24
    local.get 0
    i32.const 0
    i32.store offset=20
    local.get 0
    local.get 0
    i32.const 36
    i32.add
    i32.store offset=16
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 40
        i32.add
        local.get 0
        i32.const 16
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ae62feb37495933E
        local.get 0
        i64.load offset=40
        i64.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=60
        local.set 4
        local.get 0
        i32.load offset=56
        local.set 2
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
        drop
        local.get 1
        local.get 2
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h968eb2d0db346fd0E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he6de0a91705c4006E
        local.get 1
        local.get 0
        i64.load offset=48
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h33ce00b41338e18cE
        local.get 0
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
        i32.store offset=4
        local.get 4
        local.get 0
        i32.const 4
        i32.add
        call $_ZN127_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h3c50ce363e2cf253E
        local.get 1
        local.get 0
        i32.load offset=4
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he6de0a91705c4006E
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $rust_begin_unwind (;97;) (type 8)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE (;98;) (type 8)
    i32.const 131542
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;99;) (type 8)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h0ce91be4d17db061E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17ha541194bb20921cfE
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    local.get 0
    i32.const 12
    i32.add
    i32.const 131399
    i32.const 15
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h56ce6a93648e5b53E
    local.get 0
    i32.load offset=4
    local.set 1
    local.get 0
    i32.load
    local.set 2
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h6de4efec2dca522bE
    block ;; label = @1
      local.get 2
      br_if 0 (;@1;)
      local.get 1
      call $mBufferFinish
      drop
    end
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $echo_arguments (;100;) (type 8)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h0ce91be4d17db061E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17ha541194bb20921cfE
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 131414
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h397c14dc02f7884aE
    local.set 1
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h6de4efec2dca522bE
    i32.const 131448
    i32.const 14
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hb45ccee6a0b55ba7E
    call $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$11call_counts17ha1a01850ff653ce7E
    local.set 2
    local.get 2
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17hbad588d3cba204dcE
    i32.const 1
    i32.add
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hd342497f6ca93ef9E
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc2io6finish12finish_multi17hd3939567f0ab0503E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $echo_arguments_without_storage (;101;) (type 8)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h0ce91be4d17db061E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17ha541194bb20921cfE
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 131414
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h397c14dc02f7884aE
    local.set 1
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h6de4efec2dca522bE
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc2io6finish12finish_multi17hd3939567f0ab0503E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $echo_caller (;102;) (type 8)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc03f93a71620cac4E
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h7d239d690188a742E
    call $mBufferFinish
    drop
  )
  (func $accept_funds (;103;) (type 8)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc03f93a71620cac4E
    local.get 0
    call $_ZN5vault5Vault20dcdt_transfers_multi17hce210b777e14275fE
    i32.store offset=12
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17h2696e5d31ea06162E
    local.get 0
    i32.const 12
    i32.add
    call $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$18accept_funds_event17h5dd57a2d7bfbc00dE
    i32.const 131296
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hb45ccee6a0b55ba7E
    call $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$11call_counts17ha1a01850ff653ce7E
    local.set 1
    local.get 1
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17hbad588d3cba204dcE
    i32.const 1
    i32.add
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hd342497f6ca93ef9E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $accept_funds_echo_payment (;104;) (type 8)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc03f93a71620cac4E
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17h2696e5d31ea06162E
    local.set 1
    local.get 0
    call $_ZN5vault5Vault20dcdt_transfers_multi17hce210b777e14275fE
    i32.store offset=20
    local.get 1
    local.get 0
    i32.const 20
    i32.add
    call $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$18accept_funds_event17h5dd57a2d7bfbc00dE
    i32.const 131462
    i32.const 25
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hb45ccee6a0b55ba7E
    call $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$11call_counts17ha1a01850ff653ce7E
    local.set 2
    local.get 2
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17hbad588d3cba204dcE
    i32.const 1
    i32.add
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hd342497f6ca93ef9E
    local.get 0
    local.get 1
    call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h98f6c59de7135317E
    local.tee 1
    i32.store offset=12
    local.get 0
    local.get 0
    i32.load offset=20
    local.tee 2
    i32.store offset=16
    local.get 1
    call $bigIntFinishUnsigned
    local.get 0
    local.get 2
    call $mBufferGetLength
    i32.store offset=28
    local.get 0
    i32.const 0
    i32.store offset=24
    local.get 0
    local.get 0
    i32.const 16
    i32.add
    i32.store offset=20
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        local.get 0
        i32.const 20
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74cf3d8744b96cceE
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
  (func $accept_funds_single_dcdt_transfer (;105;) (type 8)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    local.set 1
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc03f93a71620cac4E
    block ;; label = @1
      block ;; label = @2
        call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h4c54f5afb449b375E
        local.tee 2
        call $mBufferGetLength
        i32.const -16
        i32.and
        i32.const 16
        i32.ne
        br_if 0 (;@2;)
        i32.const 1
        local.set 3
        local.get 2
        call $mBufferGetLength
        local.set 4
        local.get 0
        i32.const 16
        i32.add
        local.set 5
        i32.const 0
        local.set 6
        loop ;; label = @3
          local.get 6
          local.set 7
          local.get 1
          i32.const 16
          i32.add
          local.tee 8
          local.get 4
          i32.gt_u
          br_if 2 (;@1;)
          local.get 5
          i64.const 0
          i64.store
          local.get 0
          i64.const 0
          i64.store offset=8
          local.get 2
          local.get 1
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
          local.set 6
          local.get 3
          i32.const 1
          i32.and
          local.set 9
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.const 28
          i32.add
          call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h506a5f14096ef874E
          drop
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.const 28
          i32.add
          call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h86fefdce4aafbea4E
          drop
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.const 28
          i32.add
          call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h506a5f14096ef874E
          drop
          local.get 8
          local.set 1
          i32.const 0
          local.set 3
          local.get 9
          br_if 0 (;@3;)
        end
        local.get 7
        i32.const 1
        call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE
        unreachable
      end
      i32.const 131109
      i32.const 34
      call $signalError
      unreachable
    end
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $reject_funds (;106;) (type 8)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc03f93a71620cac4E
    local.get 0
    call $_ZN5vault5Vault20dcdt_transfers_multi17hce210b777e14275fE
    i32.store offset=12
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17h2696e5d31ea06162E
    local.get 0
    i32.const 12
    i32.add
    call $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$18reject_funds_event17h721559bdc9f8eb9bE
    i32.const 131308
    i32.const 12
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17ha324da4875bb4fdbE
    unreachable
  )
  (func $retrieve_funds_with_transfer_exec (;107;) (type 8)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h0ce91be4d17db061E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17ha541194bb20921cfE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h369aed1b2ded893eE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hf94d0c30d51dcff4E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    local.get 0
    i32.const 12
    i32.add
    i32.const 131432
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h56ce6a93648e5b53E
    local.get 0
    i32.load offset=4
    local.set 3
    local.get 0
    i32.load
    local.set 4
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h6de4efec2dca522bE
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h7d239d690188a742E
    local.set 5
    block ;; label = @1
      local.get 4
      i32.eqz
      br_if 0 (;@1;)
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
      local.set 3
    end
    block ;; label = @1
      local.get 5
      local.get 1
      local.get 2
      i64.const 50000000
      local.get 3
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
      call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21transfer_dcdt_execute17h7023b01f4f2c5361E
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131487
      i32.const 20
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17ha324da4875bb4fdbE
      unreachable
    end
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $retrieve_funds (;108;) (type 8)
    (local i32 i64 i32 i32 i32 i32)
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc03f93a71620cac4E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h68fcf07f38337e43E
    local.set 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hef7c468027c7b0dfE
    local.set 1
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hf94d0c30d51dcff4E
    local.set 2
    i32.const 131320
    i32.const 14
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h9f034de2787c0f3eE
    local.set 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
    local.set 4
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.const 2147483646
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h968eb2d0db346fd0E
        local.set 4
        br 1 (;@1;)
      end
      local.get 4
      i32.const 131243
      i32.const 4
      call $mBufferSetBytes
      drop
    end
    local.get 3
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he6de0a91705c4006E
    local.get 3
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h33ce00b41338e18cE
    local.get 3
    local.get 2
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17h8eeff8510b0bd126E
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
    call $managedWriteLog
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h7d239d690188a742E
    local.set 3
    block ;; label = @1
      local.get 0
      i32.const 2147483646
      i32.eq
      br_if 0 (;@1;)
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
      local.set 4
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
      local.set 5
      block ;; label = @2
        local.get 1
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 3
        local.get 0
        local.get 2
        i64.const 0
        local.get 4
        local.get 5
        call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21transfer_dcdt_execute17h7023b01f4f2c5361E
        drop
        return
      end
      local.get 3
      local.get 0
      local.get 1
      local.get 2
      i64.const 0
      local.get 4
      local.get 5
      call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17h4cac86d8c58f9296E
      drop
      return
    end
    i32.const -25
    i32.const 131508
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 3
    local.get 2
    i64.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
    i32.const -25
    call $managedTransferValueExecute
    drop
  )
  (func $retrieve_multi_funds_async (;109;) (type 8)
    (local i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h0ce91be4d17db061E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17ha541194bb20921cfE
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    i32.const 16
    i32.add
    i32.const 131418
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h397c14dc02f7884aE
    local.set 1
    local.get 0
    i32.load offset=16
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h6de4efec2dca522bE
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h7d239d690188a742E
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
    local.set 3
    local.get 1
    call $mBufferGetLength
    local.set 4
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    local.get 4
    i32.const 2
    i32.shr_u
    local.tee 4
    i32.store offset=8
    local.get 0
    local.get 1
    i32.store offset=4
    i32.const 0
    local.set 1
    block ;; label = @1
      block ;; label = @2
        loop ;; label = @3
          local.get 1
          local.get 4
          i32.ge_u
          br_if 1 (;@2;)
          local.get 0
          i32.const 4
          i32.add
          call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h3572ad8ffc15c86bE
          call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h968eb2d0db346fd0E
          local.set 5
          local.get 0
          i32.const 4
          i32.add
          call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h3572ad8ffc15c86bE
          local.set 4
          local.get 0
          i64.const 0
          i64.store offset=16
          local.get 4
          call $mBufferGetLength
          local.tee 1
          i32.const 9
          i32.ge_u
          br_if 2 (;@1;)
          local.get 4
          i32.const 0
          local.get 0
          i32.const 16
          i32.add
          local.get 1
          call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E
          drop
          local.get 0
          i32.const 16
          i32.add
          local.get 1
          call $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E
          local.set 6
          local.get 0
          i32.const 4
          i32.add
          call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h3572ad8ffc15c86bE
          call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
          local.tee 4
          call $mBufferToBigIntUnsigned
          drop
          local.get 0
          local.get 4
          i32.store offset=28
          local.get 0
          local.get 6
          i64.store offset=16
          local.get 0
          local.get 5
          i32.store offset=24
          local.get 3
          local.get 0
          i32.const 16
          i32.add
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hd782fe0e1dc54fb0E
          local.get 0
          i32.load offset=8
          local.set 4
          local.get 0
          i32.load offset=12
          local.set 1
          br 0 (;@3;)
        end
      end
      local.get 2
      local.get 3
      call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$12direct_multi17h83e674ada38fa302E
      local.get 0
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131269
    i32.const 8
    i32.const 131229
    i32.const 14
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h56b1922b18ca019bE
    unreachable
  )
  (func $burn_and_create_retrive_async (;110;) (type 8)
    (local i32 i32 i32 i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc03f93a71620cac4E
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h4c54f5afb449b375E
    local.tee 1
    i32.store offset=20
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
    local.tee 2
    i32.store offset=24
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he6de0a91705c4006E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
    local.set 3
    local.get 0
    local.get 1
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ae62feb37495933E
        local.get 0
        i64.load offset=40
        i64.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=60
        local.set 4
        local.get 0
        i64.load offset=48
        local.set 5
        local.get 0
        i32.load offset=56
        local.set 6
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
        local.tee 1
        local.get 6
        call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17h7800c45a1f456e0aE
        block ;; label = @3
          block ;; label = @4
            local.get 5
            i64.eqz
            i32.eqz
            br_if 0 (;@4;)
            i32.const 131072
            local.set 2
            i32.const 13
            local.set 7
            br 1 (;@3;)
          end
          local.get 5
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
          local.tee 2
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned78_$LT$impl$u20$dharitri_sc_codec..single..top_en..TopEncode$u20$for$u20$u64$GT$24top_encode_or_handle_err17hf12836d7d67a0ca2E
          local.get 1
          local.get 2
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he6de0a91705c4006E
          i32.const 131085
          local.set 2
          i32.const 11
          local.set 7
        end
        local.get 1
        local.get 4
        call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17h9a53c810769a554dE
        call $getGasLeft
        local.get 2
        local.get 7
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hb45ccee6a0b55ba7E
        local.get 1
        call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$33call_local_dcdt_built_in_function17h45db06bbc40107c7E
        drop
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
        local.set 1
        call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
        local.tee 7
        i64.const 0
        call $bigIntSetInt64
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
        local.set 8
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
        local.tee 2
        local.get 6
        call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17h7800c45a1f456e0aE
        local.get 2
        local.get 4
        call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17h9a53c810769a554dE
        local.get 2
        local.get 1
        call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17h7800c45a1f456e0aE
        local.get 2
        local.get 7
        call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17h9a53c810769a554dE
        local.get 2
        local.get 8
        call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17h7800c45a1f456e0aE
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
        local.tee 1
        i32.const 131508
        i32.const 0
        call $mBufferSetBytes
        drop
        local.get 2
        local.get 1
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he6de0a91705c4006E
        block ;; label = @3
          block ;; label = @4
            local.get 0
            i32.load offset=24
            call $mBufferGetLength
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 0
            i32.load offset=24
            call $mBufferGetLength
            i32.store offset=72
            local.get 0
            i32.const 0
            i32.store offset=68
            local.get 0
            local.get 0
            i32.const 24
            i32.add
            i32.store offset=64
            loop ;; label = @5
              local.get 0
              i32.const 8
              i32.add
              local.get 0
              i32.const 64
              i32.add
              call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74cf3d8744b96cceE
              local.get 0
              i32.load offset=8
              i32.eqz
              br_if 2 (;@3;)
              local.get 0
              i32.load offset=12
              local.set 1
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
              drop
              local.get 2
              local.get 1
              call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h968eb2d0db346fd0E
              call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he6de0a91705c4006E
              br 0 (;@5;)
            end
          end
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
          local.tee 1
          i32.const 131508
          i32.const 0
          call $mBufferSetBytes
          drop
          local.get 2
          local.get 1
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17he6de0a91705c4006E
        end
        local.get 0
        call $getGasLeft
        i32.const 131096
        i32.const 13
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hb45ccee6a0b55ba7E
        local.get 2
        call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$33call_local_dcdt_built_in_function17h45db06bbc40107c7E
        i32.const 0
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$7try_get17hf8756200b841034bE
        i64.const 0
        local.set 5
        block ;; label = @3
          local.get 0
          i32.load
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          i32.load offset=4
          local.tee 2
          call $mBufferGetLength
          local.tee 1
          i32.const 8
          i32.gt_u
          br_if 0 (;@3;)
          local.get 0
          i64.const 0
          i64.store offset=64
          local.get 2
          i32.const 0
          local.get 0
          i32.const 64
          i32.add
          local.get 1
          i32.sub
          i32.const 8
          i32.add
          local.get 1
          call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E
          br_if 0 (;@3;)
          local.get 0
          i64.load offset=64
          local.tee 5
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
          local.set 5
        end
        local.get 0
        local.get 4
        i32.store offset=76
        local.get 0
        local.get 5
        i64.store offset=64
        local.get 0
        local.get 6
        i32.store offset=72
        local.get 3
        local.get 0
        i32.const 64
        i32.add
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hd782fe0e1dc54fb0E
        br 0 (;@2;)
      end
    end
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h7d239d690188a742E
    local.get 3
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$12direct_multi17h83e674ada38fa302E
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $get_owner_address (;111;) (type 8)
    (local i32)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc03f93a71620cac4E
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    call $managedOwnerAddress
    local.get 0
    call $mBufferFinish
    drop
  )
  (func $call_counts (;112;) (type 8)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc03f93a71620cac4E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h369aed1b2ded893eE
    call $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$11call_counts17ha1a01850ff653ce7E
    call $_ZN11dharitri_sc2io6finish12finish_multi17h79876a2335534fd9E
  )
  (func $num_called_retrieve_funds_promises (;113;) (type 8)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc03f93a71620cac4E
    i32.const 131365
    i32.const 34
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hb45ccee6a0b55ba7E
    call $_ZN11dharitri_sc2io6finish12finish_multi17h79876a2335534fd9E
  )
  (func $num_async_calls_sent_from_child (;114;) (type 8)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc03f93a71620cac4E
    i32.const 131334
    i32.const 31
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hb45ccee6a0b55ba7E
    call $_ZN11dharitri_sc2io6finish12finish_multi17h79876a2335534fd9E
  )
  (func $upgrade (;115;) (type 8)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h0ce91be4d17db061E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17ha541194bb20921cfE
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    local.get 0
    i32.const 12
    i32.add
    i32.const 131399
    i32.const 15
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h56ce6a93648e5b53E
    local.get 0
    i32.load offset=4
    local.set 1
    local.get 0
    i32.load
    local.set 2
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h6de4efec2dca522bE
    i32.const 131288
    i32.const 8
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h9f034de2787c0f3eE
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h7a02888853766acdE
    call $managedWriteLog
    i32.const 131288
    i32.const 8
    call $finish
    block ;; label = @1
      local.get 2
      br_if 0 (;@1;)
      local.get 1
      call $mBufferFinish
      drop
    end
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $callBack (;116;) (type 8))
  (func $memcpy (;117;) (type 10) (param i32 i32 i32) (result i32)
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
  (func $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E (;118;) (type 8)
    call $rust_begin_unwind
    unreachable
  )
  (table (;0;) 1 1 funcref)
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 131569)
  (global (;2;) i32 i32.const 131584)
  (export "memory" (memory 0))
  (export "init" (func $init))
  (export "echo_arguments" (func $echo_arguments))
  (export "echo_arguments_without_storage" (func $echo_arguments_without_storage))
  (export "echo_caller" (func $echo_caller))
  (export "accept_funds" (func $accept_funds))
  (export "accept_funds_echo_payment" (func $accept_funds_echo_payment))
  (export "accept_funds_single_dcdt_transfer" (func $accept_funds_single_dcdt_transfer))
  (export "reject_funds" (func $reject_funds))
  (export "retrieve_funds_with_transfer_exec" (func $retrieve_funds_with_transfer_exec))
  (export "retrieve_funds" (func $retrieve_funds))
  (export "retrieve_multi_funds_async" (func $retrieve_multi_funds_async))
  (export "burn_and_create_retrive_async" (func $burn_and_create_retrive_async))
  (export "get_owner_address" (func $get_owner_address))
  (export "call_counts" (func $call_counts))
  (export "num_called_retrieve_funds_promises" (func $num_called_retrieve_funds_promises))
  (export "num_async_calls_sent_from_child" (func $num_async_calls_sent_from_child))
  (export "upgrade" (func $upgrade))
  (export "callBack" (func $callBack))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data $.rodata (;0;) (i32.const 131072) "DCDTLocalBurnDCDTNFTBurnDCDTNFTCreateincorrect number of DCDT transfersargument decode error (): too few argumentstoo many argumentswrong number of argumentsinput too longREWAstorage decode error: var argscall_countsupgradedaccept_fundsreject_fundsretrieve_fundsnum_async_calls_sent_from_childnum_called_retrieve_funds_promisesopt_arg_to_echoargstoken_paymentsopt_receive_funcecho_argumentsaccept_funds_echo_paymentDCDT transfer failed\00multiTransferDCDTNFTExecute failedpanic occurred")
  (data $.data (;1;) (i32.const 131556) "\9c\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.76.0-nightly (d86d65bbc 2023-12-10)")
  )
)