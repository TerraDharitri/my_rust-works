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
  (type (;11;) (func (param i32) (result i64)))
  (type (;12;) (func (param i32) (result i32)))
  (type (;13;) (func (param i64)))
  (type (;14;) (func (result i64)))
  (type (;15;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;16;) (func (param i32 i32 i32 i64 i32 i32)))
  (type (;17;) (func (param i64 i32 i32) (result i32)))
  (type (;18;) (func (param i32 i32 i32 i64 i32 i32) (result i32)))
  (type (;19;) (func (param i32 i32 i64 i32 i64 i32 i32) (result i32)))
  (type (;20;) (func (param i32 i32 i32 i32)))
  (type (;21;) (func (param i64) (result i64)))
  (type (;22;) (func (param i32 i32) (result i64)))
  (type (;23;) (func (param i32 i64 i32)))
  (type (;24;) (func (param i64 i32)))
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
  (import "env" "smallIntGetUnsignedArgument" (func $smallIntGetUnsignedArgument (;16;) (type 11)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;17;) (type 12)))
  (import "env" "getNumArguments" (func $getNumArguments (;18;) (type 3)))
  (import "env" "smallIntFinishUnsigned" (func $smallIntFinishUnsigned (;19;) (type 13)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;20;) (type 12)))
  (import "env" "getGasLeft" (func $getGasLeft (;21;) (type 14)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;22;) (type 10)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;23;) (type 4)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;24;) (type 4)))
  (import "env" "bigIntGetUnsignedArgument" (func $bigIntGetUnsignedArgument (;25;) (type 2)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;26;) (type 4)))
  (import "env" "managedWriteLog" (func $managedWriteLog (;27;) (type 2)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;28;) (type 8)))
  (import "env" "bigIntFinishUnsigned" (func $bigIntFinishUnsigned (;29;) (type 5)))
  (import "env" "managedTransferValueExecute" (func $managedTransferValueExecute (;30;) (type 9)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;31;) (type 4)))
  (import "env" "managedOwnerAddress" (func $managedOwnerAddress (;32;) (type 5)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;33;) (type 15)))
  (func $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd316ac9c544c352bE (;34;) (type 12) (param i32) (result i32)
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E (;35;) (type 3) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=131664
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=131664
    local.get 0
  )
  (func $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17h0618805556c21ec0E (;36;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $signalError
    unreachable
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h59a10efa4409a120E (;37;) (type 12) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf9fb432a192e4307E (;38;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17h0618805556c21ec0E
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$12direct_multi17h2f55691779323d5bE (;39;) (type 2) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27multi_dcdt_transfer_execute17ha07ab39a6db396f6E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE (;40;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    i32.const 131616
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27multi_dcdt_transfer_execute17ha07ab39a6db396f6E (;41;) (type 16) (param i32 i32 i32 i64 i32 i32)
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
    i32.const 131616
    i32.const 0
    local.get 5
    select
    i32.store
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$33call_local_dcdt_built_in_function17had0c85ea058edb56E (;42;) (type 17) (param i64 i32 i32) (result i32)
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
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21transfer_dcdt_execute17h90ca91651f7d7ac7E (;43;) (type 18) (param i32 i32 i32 i64 i32 i32) (result i32)
    local.get 0
    local.get 1
    i64.const 0
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17h6d416035965233a6E
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17h6d416035965233a6E (;44;) (type 19) (param i32 i32 i64 i32 i64 i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 7
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
    local.set 8
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h59a10efa4409a120E
    local.set 1
    local.get 7
    local.get 3
    call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd316ac9c544c352bE
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
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h6bc56330baa968b0E
    local.get 7
    i32.const 8
    i32.add
    local.get 0
    local.get 8
    local.get 4
    local.get 5
    local.get 6
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27multi_dcdt_transfer_execute17ha07ab39a6db396f6E
    local.get 7
    i32.load offset=8
    local.set 8
    local.get 7
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 8
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h6bc56330baa968b0E (;45;) (type 2) (param i32 i32)
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
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h1b695ba4471147d9E (;46;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    call $managedCaller
    local.get 0
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17h899b07bad40f1748E (;47;) (type 3) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 0
      i32.load8_u offset=131672
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
    i32.store8 offset=131672
    i32.const -11
    call $bigIntGetCallValue
    i32.const -11
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h89e9447fa17b1c0bE (;48;) (type 3) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 0
      i32.load8_u offset=131676
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
    i32.store8 offset=131676
    i32.const -21
    call $managedGetMultiDCDTCallValue
    i32.const -21
  )
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hd3d419e4f48b0907E (;49;) (type 12) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h4968fcc15853b44eE (;50;) (type 20) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131143
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6cd07e44b40b32ebE
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6cd07e44b40b32ebE (;51;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h490401d5343d8d3aE (;52;) (type 20) (param i32 i32 i32 i32)
    (local i32)
    i32.const 0
    local.set 4
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load
        i32.const 0
        i32.load offset=131668
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 1
        local.set 4
        br 1 (;@1;)
      end
      local.get 1
      local.get 2
      local.get 3
      call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17hf63f7e012c449c49E
      local.set 1
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store
  )
  (func $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17hf63f7e012c449c49E (;53;) (type 10) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hd938610d666877e7E
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hd3d419e4f48b0907E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6e49a2e38efac3b8E (;54;) (type 2) (param i32 i32)
    (local i64 i64)
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load
        i32.const 0
        i32.load offset=131668
        i32.lt_s
        br_if 0 (;@2;)
        i64.const 1
        local.set 2
        br 1 (;@1;)
      end
      i64.const 0
      local.set 2
      local.get 1
      i32.const 131443
      i32.const 14
      call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hd938610d666877e7E
      call $smallIntGetUnsignedArgument
      local.set 3
    end
    local.get 0
    local.get 3
    i64.store offset=8
    local.get 0
    local.get 2
    i64.store
  )
  (func $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hd938610d666877e7E (;55;) (type 10) (param i32 i32 i32) (result i32)
    (local i32)
    block ;; label = @1
      local.get 0
      i32.load
      local.tee 3
      i32.const 0
      i32.load offset=131668
      i32.lt_s
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131169
      i32.const 17
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h4968fcc15853b44eE
      unreachable
    end
    local.get 0
    local.get 3
    i32.const 1
    i32.add
    i32.store
    local.get 3
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h8b2bb101367c651aE (;56;) (type 2) (param i32 i32)
    (local i32)
    i32.const 0
    local.set 2
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load
        i32.const 0
        i32.load offset=131668
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 1
        local.set 2
        br 1 (;@1;)
      end
      local.get 1
      i32.const 131424
      i32.const 19
      call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hd938610d666877e7E
      call $_ZN127_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h2180e6ea6892291bE
      local.set 1
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN127_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h2180e6ea6892291bE (;57;) (type 12) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $bigIntGetUnsignedArgument
    local.get 1
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h95e839d16e5eaaeeE (;58;) (type 10) (param i32 i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
    local.set 3
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.load
        i32.const 0
        i32.load offset=131668
        i32.ge_s
        br_if 1 (;@1;)
        local.get 3
        local.get 0
        local.get 1
        local.get 2
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17hf63f7e012c449c49E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h64422dec3233683aE
        br 0 (;@2;)
      end
    end
    local.get 3
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h64422dec3233683aE (;59;) (type 2) (param i32 i32)
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h03dfa5b49a441681E (;60;) (type 12) (param i32) (result i32)
    local.get 0
    call $_ZN127_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h2180e6ea6892291bE
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0a82597aeb291155E (;61;) (type 3) (result i32)
    i32.const 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hd3d419e4f48b0907E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h51d3aebb17a07559E (;62;) (type 14) (result i64)
    i32.const 1
    call $smallIntGetUnsignedArgument
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hae0ba18f9c4d9506E (;63;) (type 3) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block ;; label = @1
      i32.const 0
      call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hd3d419e4f48b0907E
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E (;64;) (type 15) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h4f1fe9cf62c0a471E (;65;) (type 5) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=131668
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h636d98f4c4fc2a3dE (;66;) (type 5) (param i32)
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h936bba4b4f244f1dE (;67;) (type 5) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=131668
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h9a9682c32e871abcE (;68;) (type 8)
    i32.const 0
    call $getNumArguments
    i32.store offset=131668
  )
  (func $_ZN11dharitri_sc2io6finish12finish_multi17hc9aed651fd96e191E (;69;) (type 5) (param i32)
    local.get 0
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17hc90ed32c561a9724E
    i64.extend_i32_u
    call $smallIntFinishUnsigned
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17hc90ed32c561a9724E (;70;) (type 12) (param i32) (result i32)
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
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17haf1005f20bfeda7eE
    unreachable
  )
  (func $_ZN11dharitri_sc2io6finish12finish_multi17hf3f0128097b7e489E (;71;) (type 5) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h93d3d4a0aa298505E
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h393913114012f19cE
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h93d3d4a0aa298505E (;72;) (type 12) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h393913114012f19cE (;73;) (type 2) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h4bf8d20c9047ca2eE
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
  (func $_ZN11dharitri_sc5types11interaction18contract_call_exec125_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_no_payment..ContractCallNoPayment$LT$SA$C$OriginalResult$GT$$GT$31resolve_gas_limit_with_leftover17hdd50ea5168fef8f1E (;74;) (type 21) (param i64) (result i64)
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
  (func $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17h908f36605a6c5ca3E (;75;) (type 2) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
    drop
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h59a10efa4409a120E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h64422dec3233683aE
  )
  (func $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17he8ae77a0bc6b3fb7E (;76;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    call $_ZN127_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h4656b37d1fc08e25E
    local.get 0
    local.get 2
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h64422dec3233683aE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN127_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h4656b37d1fc08e25E (;77;) (type 2) (param i32 i32)
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h4bf8d20c9047ca2eE (;78;) (type 15) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hb49dd88a9eb57296E (;79;) (type 12) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h93d3d4a0aa298505E
    i32.const 4
    i32.shr_u
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$7try_get17h05afed8c679d53b9E (;80;) (type 1) (param i32 i32 i32)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h4bf8d20c9047ca2eE
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
  (func $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h1932f93dd1f1fb99E (;81;) (type 4) (param i32 i32) (result i32)
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
    call $_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h6e4d5926b0a27d22E
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
  (func $_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h6e4d5926b0a27d22E (;82;) (type 20) (param i32 i32 i32 i32)
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
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E (;83;) (type 20) (param i32 i32 i32 i32)
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
  (func $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17hc83b5d004a01509eE (;84;) (type 22) (param i32 i32) (result i64)
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
    call $_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h6e4d5926b0a27d22E
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
  (func $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E (;85;) (type 22) (param i32 i32) (result i64)
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
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17haf1005f20bfeda7eE (;86;) (type 8)
    (local i32)
    i32.const 131276
    i32.const 22
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6cd07e44b40b32ebE
    local.tee 0
    i32.const 131229
    i32.const 14
    call $mBufferAppendBytes
    drop
    local.get 0
    call $managedSignalError
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h0a7d4b8a611b9264E (;87;) (type 2) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6cd07e44b40b32ebE
    call $mBufferStorageStore
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hfa66c899aa066fc8E (;88;) (type 23) (param i32 i64 i32)
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
        i32.const 131616
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
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17h0567fe2362faf50eE (;89;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    call $_ZN127_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h4656b37d1fc08e25E
    local.get 0
    local.get 2
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h64422dec3233683aE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17h1a4e0a30cb7ead4bE (;90;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h93d3d4a0aa298505E
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h393913114012f19cE
        local.get 2
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=12
        local.set 1
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
        drop
        local.get 0
        local.get 1
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h59a10efa4409a120E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h64422dec3233683aE
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc8log_util23event_topic_accumulator17h9ac924ef98bdf9e0E (;91;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
    local.tee 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6cd07e44b40b32ebE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h64422dec3233683aE
    local.get 2
  )
  (func $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h15d9f7d6f41f882eE (;92;) (type 2) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h4bf8d20c9047ca2eE
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
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h1932f93dd1f1fb99E
      local.set 4
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17hc83b5d004a01509eE
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
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h1932f93dd1f1fb99E
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
  (func $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h6bdb3479d225a57aE (;93;) (type 12) (param i32) (result i32)
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
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$7try_get17h05afed8c679d53b9E
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
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h59a10efa4409a120E
      local.set 0
      local.get 1
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 0
      return
    end
    i32.const 131298
    i32.const 8
    i32.const 131169
    i32.const 17
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h4968fcc15853b44eE
    unreachable
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned78_$LT$impl$u20$dharitri_sc_codec..single..top_en..TopEncode$u20$for$u20$u64$GT$24top_encode_or_handle_err17he2f661cbd3120004E (;94;) (type 24) (param i64 i32)
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
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h907cb71d5060dd0bE (;95;) (type 0) (param i32 i64)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
    local.tee 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned78_$LT$impl$u20$dharitri_sc_codec..single..top_en..TopEncode$u20$for$u20$u64$GT$24top_encode_or_handle_err17he2f661cbd3120004E
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h64422dec3233683aE
  )
  (func $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$11call_counts17h623d3c19a2bc0348E (;96;) (type 12) (param i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 131306
    i32.const 11
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6cd07e44b40b32ebE
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
  (func $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$18accept_funds_event17h8433f1c723c267deE (;97;) (type 2) (param i32 i32)
    (local i32)
    i32.const 131317
    i32.const 12
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h9ac924ef98bdf9e0E
    local.tee 2
    local.get 0
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17h0567fe2362faf50eE
    local.get 2
    local.get 1
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17h1a4e0a30cb7ead4bE
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
    call $managedWriteLog
  )
  (func $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$18reject_funds_event17h78bc7d7c22af5adeE (;98;) (type 2) (param i32 i32)
    (local i32)
    i32.const 131329
    i32.const 12
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h9ac924ef98bdf9e0E
    local.tee 2
    local.get 0
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17h0567fe2362faf50eE
    local.get 2
    local.get 1
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17h1a4e0a30cb7ead4bE
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
    call $managedWriteLog
  )
  (func $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$31num_async_calls_sent_from_child17h96cb59a0352d52f3E (;99;) (type 3) (result i32)
    i32.const 131355
    i32.const 31
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6cd07e44b40b32ebE
  )
  (func $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$34num_called_retrieve_funds_promises17h044f0cc715953120E (;100;) (type 3) (result i32)
    i32.const 131386
    i32.const 34
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6cd07e44b40b32ebE
  )
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE (;101;) (type 2) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (func $_ZN4core5slice5index24slice_end_index_len_fail17h071ab3c1906221bcE (;102;) (type 5) (param i32)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (func $_ZN5vault5Vault20dcdt_transfers_multi17h5930ddfc702083cbE (;103;) (type 3) (result i32)
    (local i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h89e9447fa17b1c0bE
    local.tee 1
    i32.store
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h15d9f7d6f41f882eE
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
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h59a10efa4409a120E
        local.set 4
        local.get 0
        local.get 1
        call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd316ac9c544c352bE
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
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h6bc56330baa968b0E
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 2
    i32.store offset=36
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h15d9f7d6f41f882eE
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
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
        drop
        local.get 1
        local.get 2
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h59a10efa4409a120E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h64422dec3233683aE
        local.get 1
        local.get 0
        i64.load offset=48
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h907cb71d5060dd0bE
        local.get 0
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
        i32.store offset=4
        local.get 4
        local.get 0
        i32.const 4
        i32.add
        call $_ZN127_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h4656b37d1fc08e25E
        local.get 1
        local.get 0
        i32.load offset=4
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h64422dec3233683aE
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $rust_begin_unwind (;104;) (type 8)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE (;105;) (type 8)
    i32.const 131650
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;106;) (type 8)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h9a9682c32e871abcE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h936bba4b4f244f1dE
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    local.get 0
    i32.const 12
    i32.add
    i32.const 131487
    i32.const 15
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h490401d5343d8d3aE
    local.get 0
    i32.load offset=4
    local.set 1
    local.get 0
    i32.load
    local.set 2
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h4f1fe9cf62c0a471E
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
  (func $echo_arguments (;107;) (type 8)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h9a9682c32e871abcE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h936bba4b4f244f1dE
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 131420
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h95e839d16e5eaaeeE
    local.set 1
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h4f1fe9cf62c0a471E
    i32.const 131502
    i32.const 14
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6cd07e44b40b32ebE
    call $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$11call_counts17h623d3c19a2bc0348E
    local.set 2
    local.get 2
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17hc90ed32c561a9724E
    i32.const 1
    i32.add
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h0a7d4b8a611b9264E
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc2io6finish12finish_multi17hf3f0128097b7e489E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $echo_arguments_without_storage (;108;) (type 8)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h9a9682c32e871abcE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h936bba4b4f244f1dE
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 131420
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h95e839d16e5eaaeeE
    local.set 1
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h4f1fe9cf62c0a471E
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc2io6finish12finish_multi17hf3f0128097b7e489E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $echo_caller (;109;) (type 8)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h636d98f4c4fc2a3dE
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h1b695ba4471147d9E
    call $mBufferFinish
    drop
  )
  (func $accept_funds (;110;) (type 8)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h636d98f4c4fc2a3dE
    local.get 0
    call $_ZN5vault5Vault20dcdt_transfers_multi17h5930ddfc702083cbE
    i32.store offset=12
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17h899b07bad40f1748E
    local.get 0
    i32.const 12
    i32.add
    call $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$18accept_funds_event17h8433f1c723c267deE
    i32.const 131317
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6cd07e44b40b32ebE
    call $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$11call_counts17h623d3c19a2bc0348E
    local.set 1
    local.get 1
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17hc90ed32c561a9724E
    i32.const 1
    i32.add
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h0a7d4b8a611b9264E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $accept_funds_echo_payment (;111;) (type 8)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h636d98f4c4fc2a3dE
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17h899b07bad40f1748E
    local.set 1
    local.get 0
    call $_ZN5vault5Vault20dcdt_transfers_multi17h5930ddfc702083cbE
    i32.store offset=20
    local.get 1
    local.get 0
    i32.const 20
    i32.add
    call $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$18accept_funds_event17h8433f1c723c267deE
    i32.const 131568
    i32.const 25
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6cd07e44b40b32ebE
    call $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$11call_counts17h623d3c19a2bc0348E
    local.set 2
    local.get 2
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17hc90ed32c561a9724E
    i32.const 1
    i32.add
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h0a7d4b8a611b9264E
    local.get 0
    local.get 1
    call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd316ac9c544c352bE
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h393913114012f19cE
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
  (func $accept_funds_single_dcdt_transfer (;112;) (type 8)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    local.set 1
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h636d98f4c4fc2a3dE
    i32.const 1
    local.set 2
    block ;; label = @1
      block ;; label = @2
        call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h89e9447fa17b1c0bE
        local.tee 3
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hb49dd88a9eb57296E
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 3
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
          local.get 3
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
          local.get 2
          i32.const 1
          i32.and
          local.set 9
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.const 28
          i32.add
          call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h1932f93dd1f1fb99E
          drop
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.const 28
          i32.add
          call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17hc83b5d004a01509eE
          drop
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.const 28
          i32.add
          call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h1932f93dd1f1fb99E
          drop
          local.get 8
          local.set 1
          i32.const 0
          local.set 2
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
  (func $reject_funds (;113;) (type 8)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h636d98f4c4fc2a3dE
    local.get 0
    call $_ZN5vault5Vault20dcdt_transfers_multi17h5930ddfc702083cbE
    i32.store offset=12
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17h899b07bad40f1748E
    local.get 0
    i32.const 12
    i32.add
    call $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$18reject_funds_event17h78bc7d7c22af5adeE
    i32.const 131329
    i32.const 12
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf9fb432a192e4307E
    unreachable
  )
  (func $retrieve_funds_with_transfer_exec (;114;) (type 8)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h9a9682c32e871abcE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h936bba4b4f244f1dE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0a82597aeb291155E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h03dfa5b49a441681E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    local.get 0
    i32.const 12
    i32.add
    i32.const 131471
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h490401d5343d8d3aE
    local.get 0
    i32.load offset=4
    local.set 3
    local.get 0
    i32.load
    local.set 4
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h4f1fe9cf62c0a471E
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h1b695ba4471147d9E
    local.set 5
    block ;; label = @1
      local.get 4
      i32.eqz
      br_if 0 (;@1;)
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
      local.set 3
    end
    block ;; label = @1
      local.get 5
      local.get 1
      local.get 2
      i64.const 50000000
      local.get 3
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
      call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21transfer_dcdt_execute17h90ca91651f7d7ac7E
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131593
      i32.const 20
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf9fb432a192e4307E
      unreachable
    end
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $retrieve_funds (;115;) (type 8)
    (local i32 i64 i32 i32 i32 i32)
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h636d98f4c4fc2a3dE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hae0ba18f9c4d9506E
    local.set 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h51d3aebb17a07559E
    local.set 1
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h03dfa5b49a441681E
    local.set 2
    i32.const 131341
    i32.const 14
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h9ac924ef98bdf9e0E
    local.set 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
    local.set 4
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.const 2147483646
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h59a10efa4409a120E
        local.set 4
        br 1 (;@1;)
      end
      local.get 4
      i32.const 131272
      i32.const 4
      call $mBufferSetBytes
      drop
    end
    local.get 3
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h64422dec3233683aE
    local.get 3
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h907cb71d5060dd0bE
    local.get 3
    local.get 2
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17h0567fe2362faf50eE
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
    call $managedWriteLog
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h1b695ba4471147d9E
    local.set 3
    block ;; label = @1
      local.get 0
      i32.const 2147483646
      i32.eq
      br_if 0 (;@1;)
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
      local.set 4
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
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
        call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21transfer_dcdt_execute17h90ca91651f7d7ac7E
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
      call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17h6d416035965233a6E
      drop
      return
    end
    i32.const -25
    i32.const 131616
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 3
    local.get 2
    i64.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
    i32.const -25
    call $managedTransferValueExecute
    drop
  )
  (func $retrieve_multi_funds_async (;116;) (type 8)
    (local i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h9a9682c32e871abcE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h936bba4b4f244f1dE
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    i32.const 16
    i32.add
    i32.const 131457
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h95e839d16e5eaaeeE
    local.set 1
    local.get 0
    i32.load offset=16
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h4f1fe9cf62c0a471E
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h1b695ba4471147d9E
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
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
          call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h6bdb3479d225a57aE
          call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h59a10efa4409a120E
          local.set 5
          local.get 0
          i32.const 4
          i32.add
          call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h6bdb3479d225a57aE
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
          call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h6bdb3479d225a57aE
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
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h6bc56330baa968b0E
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
      call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$12direct_multi17h2f55691779323d5bE
      local.get 0
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131298
    i32.const 8
    i32.const 131229
    i32.const 14
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h4968fcc15853b44eE
    unreachable
  )
  (func $burn_and_create_retrive_async (;117;) (type 8)
    (local i32 i32 i32 i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h636d98f4c4fc2a3dE
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h89e9447fa17b1c0bE
    local.tee 1
    i32.store offset=20
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
    local.tee 2
    i32.store offset=24
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h64422dec3233683aE
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h15d9f7d6f41f882eE
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
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
        local.tee 1
        local.get 6
        call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17h908f36605a6c5ca3E
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
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
          local.tee 2
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned78_$LT$impl$u20$dharitri_sc_codec..single..top_en..TopEncode$u20$for$u20$u64$GT$24top_encode_or_handle_err17he2f661cbd3120004E
          local.get 1
          local.get 2
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h64422dec3233683aE
          i32.const 131085
          local.set 2
          i32.const 11
          local.set 7
        end
        local.get 1
        local.get 4
        call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17he8ae77a0bc6b3fb7E
        call $getGasLeft
        local.get 2
        local.get 7
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6cd07e44b40b32ebE
        local.get 1
        call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$33call_local_dcdt_built_in_function17had0c85ea058edb56E
        drop
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
        local.set 1
        call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
        local.tee 7
        i64.const 0
        call $bigIntSetInt64
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
        local.set 8
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
        local.tee 2
        local.get 6
        call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17h908f36605a6c5ca3E
        local.get 2
        local.get 4
        call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17he8ae77a0bc6b3fb7E
        local.get 2
        local.get 1
        call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17h908f36605a6c5ca3E
        local.get 2
        local.get 7
        call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17he8ae77a0bc6b3fb7E
        local.get 2
        local.get 8
        call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$8push_arg17h908f36605a6c5ca3E
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
        local.tee 1
        i32.const 131616
        i32.const 0
        call $mBufferSetBytes
        drop
        local.get 2
        local.get 1
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h64422dec3233683aE
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
              call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h393913114012f19cE
              local.get 0
              i32.load offset=8
              i32.eqz
              br_if 2 (;@3;)
              local.get 0
              i32.load offset=12
              local.set 1
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
              drop
              local.get 2
              local.get 1
              call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h59a10efa4409a120E
              call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h64422dec3233683aE
              br 0 (;@5;)
            end
          end
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
          local.tee 1
          i32.const 131616
          i32.const 0
          call $mBufferSetBytes
          drop
          local.get 2
          local.get 1
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h64422dec3233683aE
        end
        local.get 0
        call $getGasLeft
        i32.const 131096
        i32.const 13
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6cd07e44b40b32ebE
        local.get 2
        call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$33call_local_dcdt_built_in_function17had0c85ea058edb56E
        i32.const 0
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$7try_get17h05afed8c679d53b9E
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
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h6bc56330baa968b0E
        br 0 (;@2;)
      end
    end
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h1b695ba4471147d9E
    local.get 3
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$12direct_multi17h2f55691779323d5bE
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $get_owner_address (;118;) (type 8)
    (local i32)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h636d98f4c4fc2a3dE
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    call $managedOwnerAddress
    local.get 0
    call $mBufferFinish
    drop
  )
  (func $call_counts (;119;) (type 8)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h636d98f4c4fc2a3dE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0a82597aeb291155E
    call $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$11call_counts17h623d3c19a2bc0348E
    call $_ZN11dharitri_sc2io6finish12finish_multi17hc9aed651fd96e191E
  )
  (func $num_called_retrieve_funds_promises (;120;) (type 8)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h636d98f4c4fc2a3dE
    call $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$34num_called_retrieve_funds_promises17h044f0cc715953120E
    call $_ZN11dharitri_sc2io6finish12finish_multi17hc9aed651fd96e191E
  )
  (func $num_async_calls_sent_from_child (;121;) (type 8)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h636d98f4c4fc2a3dE
    call $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$31num_async_calls_sent_from_child17h96cb59a0352d52f3E
    call $_ZN11dharitri_sc2io6finish12finish_multi17hc9aed651fd96e191E
  )
  (func $retrieve_funds_promises (;122;) (type 8)
    (local i32 i64 i64 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h9a9682c32e871abcE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h936bba4b4f244f1dE
    local.get 0
    i32.const 0
    i32.store offset=44
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 44
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6e49a2e38efac3b8E
    local.get 0
    i64.load offset=16
    local.set 1
    local.get 0
    i64.load offset=8
    local.set 2
    local.get 0
    local.get 0
    i32.load offset=44
    i32.store offset=24
    local.get 0
    local.get 0
    i32.const 24
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h8b2bb101367c651aE
    local.get 0
    i32.load offset=4
    local.set 3
    local.get 0
    i32.load
    local.set 4
    local.get 0
    i32.load offset=24
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h4f1fe9cf62c0a471E
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h89e9447fa17b1c0bE
            local.tee 5
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hb49dd88a9eb57296E
            br_table 2 (;@2;) 1 (;@3;) 0 (;@4;)
          end
          i32.const 131109
          i32.const 34
          call $signalError
          unreachable
        end
        local.get 0
        i32.const 32
        i32.add
        i64.const 0
        i64.store
        local.get 0
        i64.const 0
        i64.store offset=24
        local.get 5
        i32.const 0
        local.get 0
        i32.const 24
        i32.add
        i32.const 16
        call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E
        local.set 5
        local.get 0
        i32.const 0
        i32.store offset=44
        local.get 0
        i32.const 24
        i32.add
        local.get 0
        i32.const 44
        i32.add
        call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h1932f93dd1f1fb99E
        local.set 6
        local.get 0
        i32.const 24
        i32.add
        local.get 0
        i32.const 44
        i32.add
        call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17hc83b5d004a01509eE
        local.set 7
        local.get 0
        i32.const 24
        i32.add
        local.get 0
        i32.const 44
        i32.add
        call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h1932f93dd1f1fb99E
        drop
        local.get 5
        i32.eqz
        br_if 1 (;@1;)
        i32.const 131243
        i32.const 29
        call $signalError
        unreachable
      end
      call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17h899b07bad40f1748E
      call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd316ac9c544c352bE
      drop
      i64.const 0
      local.set 7
      i32.const 2147483646
      local.set 6
    end
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h1b695ba4471147d9E
    local.set 8
    i32.const 131616
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6cd07e44b40b32ebE
    local.set 9
    block ;; label = @1
      local.get 2
      i32.wrap_i64
      br_if 0 (;@1;)
      block ;; label = @2
        local.get 4
        br_if 0 (;@2;)
        call $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$34num_called_retrieve_funds_promises17h044f0cc715953120E
        local.set 4
        local.get 4
        local.get 4
        call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17hc90ed32c561a9724E
        i32.const 1
        i32.add
        call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h0a7d4b8a611b9264E
        loop ;; label = @3
          block ;; label = @4
            block ;; label = @5
              local.get 1
              i64.eqz
              br_if 0 (;@5;)
              call $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$31num_async_calls_sent_from_child17h96cb59a0352d52f3E
              local.set 4
              local.get 4
              local.get 4
              call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17hc90ed32c561a9724E
              i32.const 1
              i32.add
              call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h0a7d4b8a611b9264E
              i32.const 2147483646
              local.set 4
              local.get 8
              call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h59a10efa4409a120E
              local.set 5
              local.get 9
              call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h59a10efa4409a120E
              local.set 10
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8aa001ac573c391dE
              local.set 11
              block ;; label = @6
                local.get 6
                i32.const 2147483646
                i32.eq
                br_if 0 (;@6;)
                local.get 6
                call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h59a10efa4409a120E
                local.set 4
              end
              local.get 3
              call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd316ac9c544c352bE
              local.set 12
              call $getGasLeft
              i64.const 1
              i64.shr_u
              call $_ZN11dharitri_sc5types11interaction18contract_call_exec125_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_no_payment..ContractCallNoPayment$LT$SA$C$OriginalResult$GT$$GT$31resolve_gas_limit_with_leftover17hdd50ea5168fef8f1E
              local.set 2
              block ;; label = @6
                local.get 4
                i32.const 2147483646
                i32.eq
                br_if 0 (;@6;)
                block ;; label = @7
                  local.get 7
                  i64.const 0
                  i64.ne
                  br_if 0 (;@7;)
                  local.get 5
                  local.get 4
                  local.get 12
                  local.get 2
                  local.get 10
                  local.get 11
                  call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21transfer_dcdt_execute17h90ca91651f7d7ac7E
                  drop
                  br 3 (;@4;)
                end
                local.get 5
                local.get 4
                local.get 7
                local.get 12
                local.get 2
                local.get 10
                local.get 11
                call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17h6d416035965233a6E
                drop
                br 2 (;@4;)
              end
              local.get 5
              local.get 12
              local.get 2
              local.get 10
              local.get 11
              call $managedTransferValueExecute
              drop
              br 1 (;@4;)
            end
            local.get 0
            i32.const 48
            i32.add
            global.set $__stack_pointer
            return
          end
          local.get 1
          i64.const -1
          i64.add
          local.set 1
          br 0 (;@3;)
        end
      end
      i32.const 131535
      i32.const 33
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf9fb432a192e4307E
      unreachable
    end
    i32.const 131516
    i32.const 19
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf9fb432a192e4307E
    unreachable
  )
  (func $callBack (;123;) (type 8))
  (func $memcpy (;124;) (type 10) (param i32 i32 i32) (result i32)
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
  (func $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E (;125;) (type 8)
    call $rust_begin_unwind
    unreachable
  )
  (table (;0;) 1 1 funcref)
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 131677)
  (global (;2;) i32 i32.const 131680)
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
  (export "retrieve_funds_promises" (func $retrieve_funds_promises))
  (export "callBack" (func $callBack))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data $.rodata (;0;) (i32.const 131072) "DCDTLocalBurnDCDTNFTBurnDCDTNFTCreateincorrect number of DCDT transfersargument decode error (): too few argumentstoo many argumentswrong number of argumentsinput too longManagedVec index out of rangeREWAstorage decode error: var argscall_countsaccept_fundsreject_fundsretrieve_fundsnum_async_calls_sent_from_childnum_called_retrieve_funds_promisesargsback_transfer_valueback_transferstoken_paymentsopt_receive_funcopt_arg_to_echoecho_argumentsNr of calls is NoneValue for parent callback is Noneaccept_funds_echo_paymentDCDT transfer failed\00\00\00multiTransferDCDTNFTExecute failedpanic occurred")
  (data $.data (;1;) (i32.const 131664) "\9c\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.76.0-nightly (d86d65bbc 2023-12-10)")
  )
)