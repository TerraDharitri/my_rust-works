(module $vault_wasm.wasm
  (type (;0;) (func (param i32 i64)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i64 i32 i32 i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i64 i32 i32) (result i32)))
  (type (;7;) (func (param i32)))
  (type (;8;) (func (param i32 i32 i32) (result i32)))
  (type (;9;) (func (param i32) (result i32)))
  (type (;10;) (func (param i32) (result i64)))
  (type (;11;) (func (param i64)))
  (type (;12;) (func))
  (type (;13;) (func (result i64)))
  (type (;14;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;15;) (func (param i64 i32 i32 i32 i32) (result i32)))
  (type (;16;) (func (param i32 i32 i64 i32 i32)))
  (type (;17;) (func (param i32 i32 i32 i32)))
  (type (;18;) (func (param i32 i32) (result i64)))
  (type (;19;) (func (param i32 i64 i32)))
  (type (;20;) (func (param i32 i32 i32) (result i64)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;0;) (type 0)))
  (import "env" "bigIntAdd" (func $bigIntAdd (;1;) (type 1)))
  (import "env" "signalError" (func $signalError (;2;) (type 2)))
  (import "env" "mBufferNew" (func $mBufferNew (;3;) (type 3)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;4;) (type 4)))
  (import "env" "managedExecuteOnDestContext" (func $managedExecuteOnDestContext (;5;) (type 5)))
  (import "env" "managedMultiTransferDCDTNFTExecute" (func $managedMultiTransferDCDTNFTExecute (;6;) (type 6)))
  (import "env" "managedCaller" (func $managedCaller (;7;) (type 7)))
  (import "env" "bigIntGetCallValue" (func $bigIntGetCallValue (;8;) (type 7)))
  (import "env" "managedGetMultiDCDTCallValue" (func $managedGetMultiDCDTCallValue (;9;) (type 7)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;10;) (type 4)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;11;) (type 8)))
  (import "env" "managedSignalError" (func $managedSignalError (;12;) (type 7)))
  (import "env" "bigIntGetUnsignedArgument" (func $bigIntGetUnsignedArgument (;13;) (type 2)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;14;) (type 9)))
  (import "env" "smallIntGetUnsignedArgument" (func $smallIntGetUnsignedArgument (;15;) (type 10)))
  (import "env" "getNumArguments" (func $getNumArguments (;16;) (type 3)))
  (import "env" "smallIntFinishUnsigned" (func $smallIntFinishUnsigned (;17;) (type 11)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;18;) (type 9)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;19;) (type 8)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;20;) (type 4)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;21;) (type 4)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;22;) (type 4)))
  (import "env" "managedWriteLog" (func $managedWriteLog (;23;) (type 2)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;24;) (type 12)))
  (import "env" "finish" (func $finish (;25;) (type 2)))
  (import "env" "bigIntFinishUnsigned" (func $bigIntFinishUnsigned (;26;) (type 7)))
  (import "env" "bigIntSign" (func $bigIntSign (;27;) (type 9)))
  (import "env" "managedTransferValueExecute" (func $managedTransferValueExecute (;28;) (type 6)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;29;) (type 4)))
  (import "env" "getGasLeft" (func $getGasLeft (;30;) (type 13)))
  (import "env" "managedSCAddress" (func $managedSCAddress (;31;) (type 7)))
  (import "env" "cleanReturnData" (func $cleanReturnData (;32;) (type 12)))
  (import "env" "managedOwnerAddress" (func $managedOwnerAddress (;33;) (type 7)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;34;) (type 14)))
  (func $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h39555915fd10256dE (;35;) (type 9) (param i32) (result i32)
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E (;36;) (type 3) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=131520
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=131520
    local.get 0
  )
  (func $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17hb62bd24b75d16df3E (;37;) (type 12)
    i32.const 131324
    i32.const 12
    call $signalError
    unreachable
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae678f58912f635cE (;38;) (type 9) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h72aa35533b29e48dE (;39;) (type 12)
    call $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17hb62bd24b75d16df3E
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17h825ccfcda3e0d432E (;40;) (type 15) (param i64 i32 i32 i32 i32) (result i32)
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
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27multi_dcdt_transfer_execute17h5975099518c08215E (;41;) (type 16) (param i32 i32 i64 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $managedMultiTransferDCDTNFTExecute
    drop
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17hbda7ac83473c0f98E (;42;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    call $managedCaller
    local.get 0
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17hda27f93027924529E (;43;) (type 3) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 0
      i32.load8_u offset=131528
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
    i32.store8 offset=131528
    i32.const -11
    call $bigIntGetCallValue
    i32.const -11
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h5454ba207c06a4b3E (;44;) (type 3) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 0
      i32.load8_u offset=131532
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
    i32.store8 offset=131532
    i32.const -21
    call $managedGetMultiDCDTCallValue
    i32.const -21
  )
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h50e798bd06fc5938E (;45;) (type 9) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h98df3d16b8c2b242E (;46;) (type 17) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131106
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h78d3add406e90509E
    local.tee 4
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 4
    i32.const 131129
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h78d3add406e90509E (;47;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h39cf56ce4a632ff6E (;48;) (type 8) (param i32 i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17heae4b2e43d87de1eE
    local.set 3
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.load
        i32.const 0
        i32.load offset=131524
        i32.ge_s
        br_if 1 (;@1;)
        local.get 3
        local.get 0
        local.get 1
        local.get 2
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17hd88e181229699c56E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h50447127473263fcE
        br 0 (;@2;)
      end
    end
    local.get 3
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17heae4b2e43d87de1eE (;49;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    i32.const 1
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
  )
  (func $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17hd88e181229699c56E (;50;) (type 8) (param i32 i32 i32) (result i32)
    (local i32)
    block ;; label = @1
      local.get 0
      i32.load
      local.tee 3
      i32.const 0
      i32.load offset=131524
      i32.lt_s
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131132
      i32.const 17
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h98df3d16b8c2b242E
      unreachable
    end
    local.get 0
    local.get 3
    i32.const 1
    i32.add
    i32.store
    local.get 3
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h50e798bd06fc5938E
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h50447127473263fcE (;51;) (type 2) (param i32 i32)
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h3a2d32cfd03978cfE (;52;) (type 17) (param i32 i32 i32 i32)
    (local i32)
    i32.const 0
    local.set 4
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load
        i32.const 0
        i32.load offset=131524
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 1
        local.set 4
        br 1 (;@1;)
      end
      local.get 1
      local.get 2
      local.get 3
      call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17hd88e181229699c56E
      local.set 1
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1640e89b6ac43638E (;53;) (type 3) (result i32)
    i32.const 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h50e798bd06fc5938E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h65f18a805999debbE (;54;) (type 9) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $bigIntGetUnsignedArgument
    local.get 1
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h666b95b9c03451e4E (;55;) (type 3) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block ;; label = @1
      i32.const 0
      call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h50e798bd06fc5938E
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
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hd40beec169d1bb3bE
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hd40beec169d1bb3bE (;56;) (type 14) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbad583656d77b865E (;57;) (type 13) (result i64)
    i32.const 1
    call $smallIntGetUnsignedArgument
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h3606739af3cfc5bdE (;58;) (type 7) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=131524
      local.get 0
      i32.gt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131149
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hcf90d3022d67c7a8E (;59;) (type 7) (param i32)
    block ;; label = @1
      call $getNumArguments
      local.get 0
      i32.ne
      br_if 0 (;@1;)
      return
    end
    i32.const 131167
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hbc01fa0e3a849d97E (;60;) (type 7) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=131524
      local.get 0
      i32.lt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131132
    i32.const 17
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h57f4d6b7f60cdcd5E (;61;) (type 12)
    i32.const 0
    call $getNumArguments
    i32.store offset=131524
  )
  (func $_ZN11dharitri_sc2io6finish12finish_multi17h641a383df11e4630E (;62;) (type 7) (param i32)
    local.get 0
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h736344d6165b7357E
    i64.extend_i32_u
    call $smallIntFinishUnsigned
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h736344d6165b7357E (;63;) (type 9) (param i32) (result i32)
    (local i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i64.const 0
    i64.store offset=8
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 2
    call $mBufferStorageLoad
    drop
    block ;; label = @1
      local.get 2
      call $mBufferGetLength
      local.tee 3
      i32.const 9
      i32.ge_u
      br_if 0 (;@1;)
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
      br_if 0 (;@1;)
      local.get 1
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 4
      i32.wrap_i64
      return
    end
    local.get 0
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17heef89c9b8f4b3972E
    unreachable
  )
  (func $_ZN11dharitri_sc2io6finish12finish_multi17hcd5a04f4b8490de6E (;64;) (type 7) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h2232edc75083361eE
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h643c756adfd21268E
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h2232edc75083361eE (;65;) (type 9) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h643c756adfd21268E (;66;) (type 2) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hbc0a3a89ce9956bbE
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
  (func $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt398_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$24perform_transfer_execute17h9d1e8cfbe434a270E (;67;) (type 17) (param i32 i32 i32 i32)
    local.get 1
    local.get 0
    i64.const 0
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27multi_dcdt_transfer_execute17h5975099518c08215E
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17h8fcb905b9340e79eE (;68;) (type 16) (param i32 i32 i64 i32 i32)
    (local i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 0
    i64.load
    local.set 6
    local.get 0
    i32.load offset=12
    local.set 7
    local.get 0
    i32.load offset=8
    local.set 8
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17heae4b2e43d87de1eE
    local.set 0
    local.get 8
    i32.load
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae678f58912f635cE
    local.set 8
    local.get 5
    local.get 7
    i32.load
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h39555915fd10256dE
    i32.store offset=12
    local.get 5
    local.get 6
    i64.store
    local.get 5
    local.get 8
    i32.store offset=8
    local.get 0
    local.get 5
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h993b7882e7e8f91bE
    local.get 1
    local.get 0
    local.get 2
    local.get 3
    local.get 4
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27multi_dcdt_transfer_execute17h5975099518c08215E
    local.get 5
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h993b7882e7e8f91bE (;69;) (type 2) (param i32 i32)
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
  (func $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h21b4d0f312bbceb0E (;70;) (type 1) (param i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17heae4b2e43d87de1eE
    local.tee 3
    i32.const 1
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h50447127473263fcE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h71af14646c02dd1dE (;71;) (type 17) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h592041e6ac672997E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h592041e6ac672997E (;72;) (type 2) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17heae4b2e43d87de1eE
    drop
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae678f58912f635cE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h50447127473263fcE
  )
  (func $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h840a33dfdacffabcE (;73;) (type 17) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h6ecb824f704c00baE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h6ecb824f704c00baE (;74;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17heae4b2e43d87de1eE
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    call $_ZN129_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17hb4a2bc51b3b75eedE
    local.get 0
    local.get 2
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h50447127473263fcE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction2tx57Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$$LP$$RP$$C$RH$GT$8raw_call17h352e5490efd7a62fE (;75;) (type 1) (param i32 i32 i32)
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h78d3add406e90509E
    local.set 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17heae4b2e43d87de1eE
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h742316ffb2997a8bE (;76;) (type 2) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17heae4b2e43d87de1eE
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hbc0a3a89ce9956bbE (;77;) (type 14) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hd40beec169d1bb3bE
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h53c61c377a6424cbE (;78;) (type 4) (param i32 i32) (result i32)
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
    call $_ZN4core5slice5index24slice_end_index_len_fail17h7917b91b59da861bE
    unreachable
  )
  (func $_ZN4core5slice5index22slice_index_order_fail17h203c6e1b4907093dE (;79;) (type 2) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17hb859252f4b513814E
    unreachable
  )
  (func $_ZN4core5slice5index24slice_end_index_len_fail17h7917b91b59da861bE (;80;) (type 7) (param i32)
    call $_ZN4core9panicking9panic_fmt17hb859252f4b513814E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h833a9fe4262d29acE (;81;) (type 18) (param i32 i32) (result i64)
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
    call $_ZN4core5slice5index24slice_end_index_len_fail17h7917b91b59da861bE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h83a4bba7b90b1723E (;82;) (type 3) (result i32)
    i32.const -10
    i64.const 0
    call $bigIntSetInt64
    i32.const -10
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hbe3e1201e54bc85cE (;83;) (type 2) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h78d3add406e90509E
    call $mBufferStorageStore
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hefe4a2a354f0af59E (;84;) (type 19) (param i32 i64 i32)
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
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17heef89c9b8f4b3972E (;85;) (type 7) (param i32)
    (local i32)
    i32.const 131258
    i32.const 27
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h78d3add406e90509E
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
    i32.const 131129
    i32.const 3
    call $mBufferAppendBytes
    drop
    local.get 1
    i32.const 131240
    i32.const 14
    call $mBufferAppendBytes
    drop
    local.get 1
    call $managedSignalError
    unreachable
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17hd790785d4de8be58E (;86;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17heae4b2e43d87de1eE
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    call $_ZN129_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17hb4a2bc51b3b75eedE
    local.get 0
    local.get 2
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h50447127473263fcE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN129_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17hb4a2bc51b3b75eedE (;87;) (type 2) (param i32 i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 2
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 1
    local.get 2
    i32.store
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17he41ac739881d6eb1E (;88;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h2232edc75083361eE
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h643c756adfd21268E
        local.get 2
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 2
        i32.load offset=12
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h592041e6ac672997E
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc8log_util23event_topic_accumulator17he04b485690b0aec6E (;89;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17heae4b2e43d87de1eE
    local.tee 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h78d3add406e90509E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h50447127473263fcE
    local.get 2
  )
  (func $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0cc09e14e9022fdaE (;90;) (type 2) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hbc0a3a89ce9956bbE
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
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h53c61c377a6424cbE
      local.set 4
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h833a9fe4262d29acE
      local.set 3
      local.get 0
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h53c61c377a6424cbE
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
  (func $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h9fcab37f46fec2abE (;91;) (type 8) (param i32 i32 i32) (result i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hbc0a3a89ce9956bbE
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
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae678f58912f635cE
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
    i32.const 131132
    i32.const 17
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h98df3d16b8c2b242E
    unreachable
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h9779ca8796f802dbE (;92;) (type 0) (param i32 i64)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17heae4b2e43d87de1eE
    local.set 3
    local.get 2
    i64.const 0
    i64.store offset=8
    local.get 2
    local.get 1
    local.get 2
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hefe4a2a354f0af59E
    local.get 3
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call $mBufferSetBytes
    drop
    local.get 0
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h50447127473263fcE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$11call_counts17h2fa5c78bda263c23E (;93;) (type 9) (param i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 131293
    i32.const 11
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h78d3add406e90509E
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
  (func $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$18accept_funds_event17h19c4323d52440a86E (;94;) (type 2) (param i32 i32)
    (local i32)
    i32.const 131312
    i32.const 12
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17he04b485690b0aec6E
    local.tee 2
    local.get 0
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17hd790785d4de8be58E
    local.get 2
    local.get 1
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17he41ac739881d6eb1E
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17heae4b2e43d87de1eE
    call $managedWriteLog
  )
  (func $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$18reject_funds_event17h54eb3ca72f0494adE (;95;) (type 2) (param i32 i32)
    (local i32)
    i32.const 131324
    i32.const 12
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17he04b485690b0aec6E
    local.tee 2
    local.get 0
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17hd790785d4de8be58E
    local.get 2
    local.get 1
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17he41ac739881d6eb1E
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17heae4b2e43d87de1eE
    call $managedWriteLog
  )
  (func $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h9471ca9181d7f575E (;96;) (type 7) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17heae4b2e43d87de1eE
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h742316ffb2997a8bE
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
  (func $_ZN5vault5Vault20dcdt_transfers_multi17hc6df2e5dc4f1267bE (;97;) (type 3) (result i32)
    (local i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h5454ba207c06a4b3E
    local.tee 1
    i32.store offset=8
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17heae4b2e43d87de1eE
    local.set 2
    local.get 0
    local.get 1
    call $mBufferGetLength
    i32.store offset=20
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    local.get 0
    i32.const 8
    i32.add
    i32.store offset=12
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 40
        i32.add
        local.get 0
        i32.const 12
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0cc09e14e9022fdaE
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
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae678f58912f635cE
        local.set 4
        local.get 0
        local.get 1
        call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h39555915fd10256dE
        i32.store offset=36
        local.get 0
        local.get 3
        i64.store offset=24
        local.get 0
        local.get 4
        i32.store offset=32
        local.get 2
        local.get 0
        i32.const 24
        i32.add
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h993b7882e7e8f91bE
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 2
    i32.store offset=12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17heae4b2e43d87de1eE
    local.set 1
    local.get 0
    local.get 2
    call $mBufferGetLength
    i32.store offset=32
    local.get 0
    i32.const 0
    i32.store offset=28
    local.get 0
    local.get 0
    i32.const 12
    i32.add
    i32.store offset=24
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 40
        i32.add
        local.get 0
        i32.const 24
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0cc09e14e9022fdaE
        local.get 0
        i64.load offset=40
        i64.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=60
        local.set 4
        local.get 1
        local.get 0
        i32.load offset=56
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h592041e6ac672997E
        local.get 1
        local.get 0
        i64.load offset=48
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h9779ca8796f802dbE
        local.get 1
        local.get 4
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h6ecb824f704c00baE
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h5fbce781e0cec6fdE (;98;) (type 20) (param i32 i32 i32) (result i64)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    local.get 1
    local.get 2
    call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h9fcab37f46fec2abE
    local.set 0
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
      i32.const 131240
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h98df3d16b8c2b242E
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
  (func $rust_begin_unwind (;99;) (type 12)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h8945d78c95e86419E
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h8945d78c95e86419E (;100;) (type 12)
    i32.const 131503
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;101;) (type 12)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h57f4d6b7f60cdcd5E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hbc01fa0e3a849d97E
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    local.get 0
    i32.const 12
    i32.add
    i32.const 131415
    i32.const 15
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h3a2d32cfd03978cfE
    local.get 0
    i32.load offset=4
    local.set 1
    local.get 0
    i32.load
    local.set 2
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h3606739af3cfc5bdE
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
  (func $upgrade (;102;) (type 12)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h57f4d6b7f60cdcd5E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hbc01fa0e3a849d97E
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    local.get 0
    i32.const 12
    i32.add
    i32.const 131415
    i32.const 15
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h3a2d32cfd03978cfE
    local.get 0
    i32.load offset=4
    local.set 1
    local.get 0
    i32.load
    local.set 2
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h3606739af3cfc5bdE
    i32.const 131304
    i32.const 8
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17he04b485690b0aec6E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17heae4b2e43d87de1eE
    call $managedWriteLog
    i32.const 131304
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
  (func $echo_arguments (;103;) (type 12)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h57f4d6b7f60cdcd5E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hbc01fa0e3a849d97E
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 131430
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h39cf56ce4a632ff6E
    local.set 1
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h3606739af3cfc5bdE
    i32.const 131464
    i32.const 14
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h78d3add406e90509E
    call $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$11call_counts17h2fa5c78bda263c23E
    local.set 2
    local.get 2
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h736344d6165b7357E
    i32.const 1
    i32.add
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hbe3e1201e54bc85cE
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc2io6finish12finish_multi17hcd5a04f4b8490de6E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $echo_arguments_without_storage (;104;) (type 12)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h57f4d6b7f60cdcd5E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hbc01fa0e3a849d97E
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 131430
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h39cf56ce4a632ff6E
    local.set 1
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h3606739af3cfc5bdE
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc2io6finish12finish_multi17hcd5a04f4b8490de6E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $echo_caller (;105;) (type 12)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hcf90d3022d67c7a8E
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17hbda7ac83473c0f98E
    call $mBufferFinish
    drop
  )
  (func $accept_funds (;106;) (type 12)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hcf90d3022d67c7a8E
    local.get 0
    call $_ZN5vault5Vault20dcdt_transfers_multi17hc6df2e5dc4f1267bE
    i32.store offset=12
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17hda27f93027924529E
    local.get 0
    i32.const 12
    i32.add
    call $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$18accept_funds_event17h19c4323d52440a86E
    i32.const 131312
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h78d3add406e90509E
    call $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$11call_counts17h2fa5c78bda263c23E
    local.set 1
    local.get 1
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h736344d6165b7357E
    i32.const 1
    i32.add
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hbe3e1201e54bc85cE
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $accept_funds_echo_payment (;107;) (type 12)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hcf90d3022d67c7a8E
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17hda27f93027924529E
    local.set 1
    local.get 0
    call $_ZN5vault5Vault20dcdt_transfers_multi17hc6df2e5dc4f1267bE
    i32.store offset=20
    local.get 1
    local.get 0
    i32.const 20
    i32.add
    call $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$18accept_funds_event17h19c4323d52440a86E
    i32.const 131478
    i32.const 25
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h78d3add406e90509E
    call $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$11call_counts17h2fa5c78bda263c23E
    local.set 2
    local.get 2
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h736344d6165b7357E
    i32.const 1
    i32.add
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hbe3e1201e54bc85cE
    local.get 0
    local.get 1
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h39555915fd10256dE
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h643c756adfd21268E
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
  (func $accept_funds_single_dcdt_transfer (;108;) (type 12)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    local.set 1
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hcf90d3022d67c7a8E
    block ;; label = @1
      block ;; label = @2
        call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h5454ba207c06a4b3E
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
          call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hd40beec169d1bb3bE
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
          call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h53c61c377a6424cbE
          drop
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.const 28
          i32.add
          call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h833a9fe4262d29acE
          drop
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.const 28
          i32.add
          call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h53c61c377a6424cbE
          drop
          local.get 8
          local.set 1
          i32.const 0
          local.set 3
          local.get 9
          br_if 0 (;@3;)
        end
        local.get 7
        call $_ZN4core5slice5index24slice_end_index_len_fail17h7917b91b59da861bE
        unreachable
      end
      i32.const 131072
      i32.const 34
      call $signalError
      unreachable
    end
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $reject_funds (;109;) (type 12)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hcf90d3022d67c7a8E
    local.get 0
    call $_ZN5vault5Vault20dcdt_transfers_multi17hc6df2e5dc4f1267bE
    i32.store offset=12
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17hda27f93027924529E
    local.get 0
    i32.const 12
    i32.add
    call $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$18reject_funds_event17h54eb3ca72f0494adE
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h72aa35533b29e48dE
    unreachable
  )
  (func $retrieve_funds_with_transfer_exec (;110;) (type 12)
    (local i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h57f4d6b7f60cdcd5E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hbc01fa0e3a849d97E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1640e89b6ac43638E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h65f18a805999debbE
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=32
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 32
    i32.add
    i32.const 131448
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h3a2d32cfd03978cfE
    local.get 0
    i32.load offset=12
    local.set 3
    local.get 0
    i32.load offset=8
    local.set 4
    local.get 0
    i32.load offset=32
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h3606739af3cfc5bdE
    local.get 0
    local.get 2
    i32.store offset=24
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17hbda7ac83473c0f98E
    local.tee 5
    i32.store offset=28
    block ;; label = @1
      local.get 4
      i32.eqz
      br_if 0 (;@1;)
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17heae4b2e43d87de1eE
      local.set 3
    end
    local.get 0
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h742316ffb2997a8bE
    local.get 0
    i32.load offset=4
    local.set 3
    i64.const 50000000
    local.set 6
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load
        local.tee 1
        call $mBufferGetLength
        br_if 0 (;@2;)
        i64.const 0
        local.set 6
        local.get 2
        call $bigIntSign
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 0
      i64.const 0
      i64.store offset=48
      local.get 0
      local.get 3
      i32.store offset=44
      local.get 0
      local.get 1
      i32.store offset=40
      local.get 0
      i64.const 50000000
      i64.store offset=32
      local.get 0
      local.get 0
      i32.const 24
      i32.add
      i32.store offset=60
      local.get 0
      local.get 0
      i32.const 28
      i32.add
      i32.store offset=64
      local.get 0
      i32.const 56
      i32.add
      local.tee 2
      local.get 0
      i32.const 20
      i32.add
      i32.store
      local.get 0
      local.get 6
      i64.store offset=72
      local.get 0
      i32.const 96
      i32.add
      local.get 2
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
      local.get 1
      i32.store offset=80
      local.get 0
      local.get 0
      i32.const 72
      i32.add
      i32.store offset=108
      local.get 0
      i32.const 88
      i32.add
      local.get 5
      local.get 6
      local.get 1
      local.get 3
      call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17h8fcb905b9340e79eE
    end
    local.get 0
    i32.const 112
    i32.add
    global.set $__stack_pointer
  )
  (func $retrieve_funds (;111;) (type 12)
    (local i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hcf90d3022d67c7a8E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h666b95b9c03451e4E
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbad583656d77b865E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h65f18a805999debbE
    local.set 3
    i32.const 131336
    i32.const 14
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17he04b485690b0aec6E
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17heae4b2e43d87de1eE
    local.set 5
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.const 2147483646
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae678f58912f635cE
        local.set 5
        br 1 (;@1;)
      end
      local.get 5
      i32.const 131254
      i32.const 4
      call $mBufferSetBytes
      drop
    end
    local.get 4
    local.get 5
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h50447127473263fcE
    local.get 4
    local.get 2
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h9779ca8796f802dbE
    local.get 4
    local.get 3
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17hd790785d4de8be58E
    local.get 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17heae4b2e43d87de1eE
    call $managedWriteLog
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17hbda7ac83473c0f98E
    local.set 4
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.const 2147483646
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        local.get 3
        i32.store offset=28
        local.get 0
        local.get 1
        i32.store offset=24
        local.get 0
        local.get 2
        i64.store offset=16
        local.get 0
        i32.const 8
        i32.add
        call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h9471ca9181d7f575E
        local.get 0
        i32.load offset=12
        local.set 1
        local.get 0
        i32.load offset=8
        local.set 3
        local.get 0
        local.get 0
        i32.const 28
        i32.add
        i32.store offset=44
        local.get 0
        local.get 2
        i64.store offset=32
        local.get 0
        local.get 0
        i32.const 24
        i32.add
        i32.store offset=40
        local.get 0
        i32.const 32
        i32.add
        local.get 4
        i64.const 0
        local.get 3
        local.get 1
        call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17h8fcb905b9340e79eE
        br 1 (;@1;)
      end
      local.get 0
      call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h9471ca9181d7f575E
      local.get 4
      local.get 3
      i64.const 0
      local.get 0
      i32.load
      local.get 0
      i32.load offset=4
      call $managedTransferValueExecute
      drop
    end
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $retrieve_multi_funds_async (;112;) (type 12)
    (local i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h57f4d6b7f60cdcd5E
    i32.const 0
    local.set 1
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hbc01fa0e3a849d97E
    local.get 0
    i32.const 0
    i32.store offset=32
    local.get 0
    i32.const 32
    i32.add
    i32.const 131434
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h39cf56ce4a632ff6E
    local.set 2
    local.get 0
    i32.load offset=32
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h3606739af3cfc5bdE
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17hbda7ac83473c0f98E
    local.set 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17heae4b2e43d87de1eE
    local.set 4
    local.get 2
    call $mBufferGetLength
    local.set 5
    local.get 0
    i32.const 0
    i32.store offset=28
    local.get 0
    local.get 5
    i32.const 2
    i32.shr_u
    local.tee 5
    i32.store offset=24
    local.get 0
    local.get 2
    i32.store offset=20
    block ;; label = @1
      loop ;; label = @2
        local.get 1
        local.get 5
        i32.ge_u
        br_if 1 (;@1;)
        local.get 0
        i32.const 20
        i32.add
        i32.const 131285
        i32.const 8
        call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h9fcab37f46fec2abE
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae678f58912f635cE
        local.set 1
        local.get 0
        i32.const 20
        i32.add
        i32.const 131285
        i32.const 8
        call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h5fbce781e0cec6fdE
        local.set 6
        local.get 0
        i32.const 20
        i32.add
        i32.const 131285
        i32.const 8
        call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h9fcab37f46fec2abE
        call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
        local.tee 5
        call $mBufferToBigIntUnsigned
        drop
        local.get 0
        local.get 5
        i32.store offset=44
        local.get 0
        local.get 6
        i64.store offset=32
        local.get 0
        local.get 1
        i32.store offset=40
        local.get 4
        local.get 0
        i32.const 32
        i32.add
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h993b7882e7e8f91bE
        local.get 0
        i32.load offset=24
        local.set 5
        local.get 0
        i32.load offset=28
        local.set 1
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 8
    i32.add
    call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h9471ca9181d7f575E
    local.get 4
    local.get 3
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt398_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$24perform_transfer_execute17h9d1e8cfbe434a270E
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $burn_and_create_retrieve_async (;113;) (type 12)
    (local i32 i32 i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 224
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hcf90d3022d67c7a8E
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h5454ba207c06a4b3E
    local.tee 1
    i32.store offset=156
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17heae4b2e43d87de1eE
    local.tee 2
    i32.store offset=160
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17heae4b2e43d87de1eE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h50447127473263fcE
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17heae4b2e43d87de1eE
    local.set 3
    local.get 0
    local.get 1
    call $mBufferGetLength
    i32.store offset=172
    local.get 0
    i32.const 0
    i32.store offset=168
    local.get 0
    local.get 0
    i32.const 156
    i32.add
    i32.store offset=164
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 176
        i32.add
        local.get 0
        i32.const 164
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0cc09e14e9022fdaE
        local.get 0
        i64.load offset=176
        i64.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=196
        local.set 4
        local.get 0
        i32.load offset=192
        local.set 5
        block ;; label = @3
          block ;; label = @4
            local.get 0
            i64.load offset=184
            local.tee 6
            i64.const 0
            i64.ne
            br_if 0 (;@4;)
            local.get 0
            i32.const 120
            i32.add
            i32.const 131192
            i32.const 13
            call $_ZN11dharitri_sc5types11interaction2tx57Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$$LP$$RP$$C$RH$GT$8raw_call17h352e5490efd7a62fE
            local.get 0
            i32.const 112
            i32.add
            local.get 0
            i32.load offset=120
            local.get 0
            i32.load offset=124
            local.get 5
            call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h71af14646c02dd1dE
            local.get 0
            i32.const 104
            i32.add
            local.get 0
            i32.load offset=112
            local.get 0
            i32.load offset=116
            local.get 4
            call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h840a33dfdacffabcE
            local.get 0
            i32.load offset=108
            local.set 1
            local.get 0
            i32.load offset=104
            local.set 2
            br 1 (;@3;)
          end
          local.get 0
          i32.const 144
          i32.add
          i32.const 131205
          i32.const 11
          call $_ZN11dharitri_sc5types11interaction2tx57Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$$LP$$RP$$C$RH$GT$8raw_call17h352e5490efd7a62fE
          local.get 0
          i32.const 136
          i32.add
          local.get 0
          i32.load offset=144
          local.get 0
          i32.load offset=148
          local.get 5
          call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h71af14646c02dd1dE
          local.get 0
          i32.load offset=136
          local.set 1
          local.get 0
          i32.load offset=140
          local.tee 2
          local.get 6
          call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h9779ca8796f802dbE
          local.get 0
          i32.const 128
          i32.add
          local.get 1
          local.get 2
          local.get 4
          call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h840a33dfdacffabcE
          local.get 0
          i32.load offset=132
          local.set 1
          local.get 0
          i32.load offset=128
          local.set 2
        end
        call $getGasLeft
        local.set 6
        i32.const -30
        call $managedSCAddress
        local.get 6
        i32.const -30
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h83a4bba7b90b1723E
        local.get 2
        local.get 1
        call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17h825ccfcda3e0d432E
        drop
        call $cleanReturnData
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17heae4b2e43d87de1eE
        local.set 1
        call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
        local.tee 2
        i64.const 0
        call $bigIntSetInt64
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17heae4b2e43d87de1eE
        local.set 7
        local.get 0
        i32.const 96
        i32.add
        i32.const 131216
        i32.const 13
        call $_ZN11dharitri_sc5types11interaction2tx57Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$$LP$$RP$$C$RH$GT$8raw_call17h352e5490efd7a62fE
        local.get 0
        i32.const 88
        i32.add
        local.get 0
        i32.load offset=96
        local.get 0
        i32.load offset=100
        local.get 5
        call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h71af14646c02dd1dE
        local.get 0
        i32.const 80
        i32.add
        local.get 0
        i32.load offset=88
        local.get 0
        i32.load offset=92
        local.get 4
        call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h840a33dfdacffabcE
        local.get 0
        i32.const 72
        i32.add
        local.get 0
        i32.load offset=80
        local.get 0
        i32.load offset=84
        local.get 1
        call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h71af14646c02dd1dE
        local.get 0
        i32.const 64
        i32.add
        local.get 0
        i32.load offset=72
        local.get 0
        i32.load offset=76
        local.get 2
        call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h840a33dfdacffabcE
        local.get 0
        i32.const 56
        i32.add
        local.get 0
        i32.load offset=64
        local.get 0
        i32.load offset=68
        local.get 7
        call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h71af14646c02dd1dE
        local.get 0
        i32.const 48
        i32.add
        local.get 0
        i32.load offset=56
        local.get 0
        i32.load offset=60
        call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h21b4d0f312bbceb0E
        local.get 0
        i32.load offset=52
        local.set 1
        local.get 0
        i32.load offset=48
        local.set 2
        block ;; label = @3
          block ;; label = @4
            local.get 0
            i32.load offset=160
            call $mBufferGetLength
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 0
            i32.load offset=160
            call $mBufferGetLength
            i32.store offset=208
            local.get 0
            i32.const 0
            i32.store offset=204
            local.get 0
            local.get 0
            i32.const 160
            i32.add
            i32.store offset=200
            loop ;; label = @5
              local.get 0
              i32.const 40
              i32.add
              local.get 0
              i32.const 200
              i32.add
              call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h643c756adfd21268E
              local.get 0
              i32.load offset=40
              i32.eqz
              br_if 2 (;@3;)
              local.get 0
              i32.const 32
              i32.add
              local.get 2
              local.get 1
              local.get 0
              i32.load offset=44
              call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h71af14646c02dd1dE
              local.get 0
              i32.load offset=36
              local.set 1
              local.get 0
              i32.load offset=32
              local.set 2
              br 0 (;@5;)
            end
          end
          local.get 0
          i32.const 24
          i32.add
          local.get 2
          local.get 1
          call $_ZN11dharitri_sc5types11interaction2tx200Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$C$RH$GT$8argument17h21b4d0f312bbceb0E
          local.get 0
          i32.load offset=28
          local.set 1
          local.get 0
          i32.load offset=24
          local.set 2
        end
        call $getGasLeft
        local.set 6
        i32.const -30
        call $managedSCAddress
        local.get 6
        i32.const -30
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h83a4bba7b90b1723E
        local.get 2
        local.get 1
        call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17h825ccfcda3e0d432E
        local.set 2
        call $cleanReturnData
        local.get 0
        local.get 2
        i32.store offset=220
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17heae4b2e43d87de1eE
        local.set 1
        local.get 0
        local.get 2
        call $mBufferGetLength
        i32.store offset=208
        local.get 0
        i32.const 0
        i32.store offset=204
        local.get 0
        local.get 0
        i32.const 220
        i32.add
        i32.store offset=200
        block ;; label = @3
          loop ;; label = @4
            local.get 0
            i32.const 16
            i32.add
            local.get 0
            i32.const 200
            i32.add
            call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h643c756adfd21268E
            local.get 0
            i32.load offset=16
            i32.eqz
            br_if 1 (;@3;)
            local.get 1
            local.get 0
            i32.load offset=20
            call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae678f58912f635cE
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h50447127473263fcE
            br 0 (;@4;)
          end
        end
        local.get 1
        call $mBufferGetLength
        local.set 2
        local.get 0
        i32.const 0
        i32.store offset=208
        local.get 0
        local.get 1
        i32.store offset=200
        local.get 0
        local.get 2
        i32.const 2
        i32.shr_u
        i32.store offset=204
        local.get 0
        i32.const 200
        i32.add
        i32.const 131229
        i32.const 11
        call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h5fbce781e0cec6fdE
        local.set 6
        local.get 0
        local.get 4
        i32.store offset=212
        local.get 0
        local.get 6
        i64.store offset=200
        local.get 0
        local.get 5
        i32.store offset=208
        local.get 3
        local.get 0
        i32.const 200
        i32.add
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h993b7882e7e8f91bE
        br 0 (;@2;)
      end
    end
    i32.const -30
    call $managedCaller
    local.get 0
    i32.const 8
    i32.add
    call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h9471ca9181d7f575E
    local.get 3
    i32.const -30
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt398_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$24perform_transfer_execute17h9d1e8cfbe434a270E
    local.get 0
    i32.const 224
    i32.add
    global.set $__stack_pointer
  )
  (func $get_owner_address (;114;) (type 12)
    (local i32)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hcf90d3022d67c7a8E
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    call $managedOwnerAddress
    local.get 0
    call $mBufferFinish
    drop
  )
  (func $call_counts (;115;) (type 12)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hcf90d3022d67c7a8E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1640e89b6ac43638E
    call $_ZN34_$LT$C$u20$as$u20$vault..Vault$GT$11call_counts17h2fa5c78bda263c23E
    call $_ZN11dharitri_sc2io6finish12finish_multi17h641a383df11e4630E
  )
  (func $num_called_retrieve_funds_promises (;116;) (type 12)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hcf90d3022d67c7a8E
    i32.const 131381
    i32.const 34
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h78d3add406e90509E
    call $_ZN11dharitri_sc2io6finish12finish_multi17h641a383df11e4630E
  )
  (func $num_async_calls_sent_from_child (;117;) (type 12)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hcf90d3022d67c7a8E
    i32.const 131350
    i32.const 31
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h78d3add406e90509E
    call $_ZN11dharitri_sc2io6finish12finish_multi17h641a383df11e4630E
  )
  (func $callBack (;118;) (type 12))
  (func $_ZN4core9panicking9panic_fmt17hb859252f4b513814E (;119;) (type 12)
    call $rust_begin_unwind
    unreachable
  )
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 131533)
  (global (;2;) i32 i32.const 131536)
  (export "memory" (memory 0))
  (export "init" (func $init))
  (export "upgrade" (func $upgrade))
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
  (export "burn_and_create_retrieve_async" (func $burn_and_create_retrieve_async))
  (export "get_owner_address" (func $get_owner_address))
  (export "call_counts" (func $call_counts))
  (export "num_called_retrieve_funds_promises" (func $num_called_retrieve_funds_promises))
  (export "num_async_calls_sent_from_child" (func $num_async_calls_sent_from_child))
  (export "callBack" (func $callBack))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data $.rodata (;0;) (i32.const 131072) "incorrect number of DCDT transfersargument decode error (): too few argumentstoo many argumentswrong number of argumentsDCDTLocalBurnDCDTNFTBurnDCDTNFTCreatesync resultinput too longREWAstorage decode error (key: var argscall_countsupgradedaccept_fundsreject_fundsretrieve_fundsnum_async_calls_sent_from_childnum_called_retrieve_funds_promisesopt_arg_to_echoargstoken_paymentsopt_receive_funcecho_argumentsaccept_funds_echo_paymentpanic occurred")
  (data $.data (;1;) (i32.const 131520) "8\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.80.1 (3f5fd8dd4 2024-08-06)")
  )
  (@custom "target_features" (after data) "\02+\0fmutable-globals+\08sign-ext")
)
