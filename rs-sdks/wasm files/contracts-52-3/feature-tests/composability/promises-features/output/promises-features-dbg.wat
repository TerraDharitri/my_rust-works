(module $promises_features_wasm.wasm
  (type (;0;) (func (param i32 i64)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32) (result i32)))
  (type (;6;) (func (param i32)))
  (type (;7;) (func (param i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32) (result i64)))
  (type (;9;) (func (param i32) (result i32)))
  (type (;10;) (func (result i64)))
  (type (;11;) (func (param i64 i32 i32 i32 i32 i32) (result i32)))
  (type (;12;) (func))
  (type (;13;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;14;) (func (param i64)))
  (type (;15;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32)))
  (type (;16;) (func (param i32 i32 i32 i32)))
  (type (;17;) (func (param i32 i32 i32) (result i64)))
  (type (;18;) (func (param i32 i32 i32 i32 i32)))
  (type (;19;) (func (param i32 i32 i32 i64)))
  (type (;20;) (func (param i32 i32) (result i64)))
  (type (;21;) (func (param i32 i64 i32)))
  (type (;22;) (func (param i64 i32)))
  (type (;23;) (func (param i32 i32 i32 i64 i32)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;0;) (type 0)))
  (import "env" "bigIntAdd" (func $bigIntAdd (;1;) (type 1)))
  (import "env" "signalError" (func $signalError (;2;) (type 2)))
  (import "env" "mBufferNew" (func $mBufferNew (;3;) (type 3)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;4;) (type 4)))
  (import "env" "managedCreateAsyncCall" (func $managedCreateAsyncCall (;5;) (type 5)))
  (import "env" "managedGetBackTransfers" (func $managedGetBackTransfers (;6;) (type 2)))
  (import "env" "managedGetMultiDCDTCallValue" (func $managedGetMultiDCDTCallValue (;7;) (type 6)))
  (import "env" "bigIntGetCallValue" (func $bigIntGetCallValue (;8;) (type 6)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;9;) (type 4)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;10;) (type 7)))
  (import "env" "managedSignalError" (func $managedSignalError (;11;) (type 6)))
  (import "env" "bigIntGetUnsignedArgument" (func $bigIntGetUnsignedArgument (;12;) (type 2)))
  (import "env" "smallIntGetUnsignedArgument" (func $smallIntGetUnsignedArgument (;13;) (type 8)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;14;) (type 9)))
  (import "env" "getNumArguments" (func $getNumArguments (;15;) (type 3)))
  (import "env" "managedGetCallbackClosure" (func $managedGetCallbackClosure (;16;) (type 6)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;17;) (type 7)))
  (import "env" "getGasLeft" (func $getGasLeft (;18;) (type 10)))
  (import "env" "managedExecuteOnDestContext" (func $managedExecuteOnDestContext (;19;) (type 11)))
  (import "env" "cleanReturnData" (func $cleanReturnData (;20;) (type 12)))
  (import "env" "mBufferCopyByteSlice" (func $mBufferCopyByteSlice (;21;) (type 13)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;22;) (type 4)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;23;) (type 4)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;24;) (type 4)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;25;) (type 4)))
  (import "env" "bigIntSign" (func $bigIntSign (;26;) (type 9)))
  (import "env" "managedWriteLog" (func $managedWriteLog (;27;) (type 2)))
  (import "env" "managedSCAddress" (func $managedSCAddress (;28;) (type 6)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;29;) (type 12)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;30;) (type 9)))
  (import "env" "finish" (func $finish (;31;) (type 2)))
  (import "env" "smallIntFinishUnsigned" (func $smallIntFinishUnsigned (;32;) (type 14)))
  (import "env" "bigIntFinishUnsigned" (func $bigIntFinishUnsigned (;33;) (type 6)))
  (import "env" "bigIntCmp" (func $bigIntCmp (;34;) (type 4)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;35;) (type 13)))
  (func $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb917022dd8fa29c6E (;36;) (type 9) (param i32) (result i32)
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E (;37;) (type 3) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=131648
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=131648
    local.get 0
  )
  (func $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17h13c03d1d1ee4c4bcE (;38;) (type 12)
    i32.const 131414
    i32.const 30
    call $signalError
    unreachable
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h16b57d3424966b92E (;39;) (type 9) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h05e6f9e13a60203dE (;40;) (type 12)
    call $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17h13c03d1d1ee4c4bcE
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21create_async_call_raw17h1c51649b7ff6d4c5E (;41;) (type 15) (param i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    local.get 6
    local.get 7
    local.get 8
    local.get 9
    local.get 10
    call $managedCreateAsyncCall
    drop
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$18get_back_transfers17h3cc1cdbbb82dc93fE (;42;) (type 6) (param i32)
    (local i32 i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 2
    call $managedGetBackTransfers
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h7e0c90abe6ecf41aE (;43;) (type 6) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const -21
    local.set 2
    block ;; label = @1
      block ;; label = @2
        i32.const 0
        i32.load8_u offset=141668
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        i32.const -21
        i32.const 2147483647
        local.get 3
        select
        local.set 2
        br 1 (;@1;)
      end
      i32.const 0
      i32.const 1
      i32.store8 offset=141668
      i32.const -21
      call $managedGetMultiDCDTCallValue
    end
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 2
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h88bcf2b405ee41acE
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          i32.const 131086
          i32.const 34
          call $signalError
          unreachable
        end
        i32.const -11
        local.set 2
        block ;; label = @3
          block ;; label = @4
            i32.const 0
            i32.load8_u offset=141664
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            i32.const -11
            i32.const 2147483647
            local.get 3
            select
            local.set 2
            br 1 (;@3;)
          end
          i32.const 0
          i32.const 1
          i32.store8 offset=141664
          i32.const -11
          call $bigIntGetCallValue
        end
        local.get 0
        local.get 2
        call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb917022dd8fa29c6E
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
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17hf7ac85a1ddec144bE
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h88bcf2b405ee41acE (;44;) (type 9) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1dae91c9a62e3db0E
    i32.const 4
    i32.shr_u
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17hf7ac85a1ddec144bE (;45;) (type 2) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hd622375d93e93433E
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
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17hd92612e69ab3cc36E
    local.set 3
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h94c0fd14fb0b5d80E
    local.set 4
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17hd92612e69ab3cc36E
    local.set 5
    block ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131293
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
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hab36255595cf417dE (;46;) (type 9) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17he4e144c50c9f695aE (;47;) (type 16) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131120
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h52ba09aaed8a3d9dE
    local.tee 4
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 4
    i32.const 131143
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h52ba09aaed8a3d9dE (;48;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h26878fe6921badfbE (;49;) (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha928fc0bccb1eaadE
    local.set 3
    local.get 0
    i32.load
    local.set 4
    block ;; label = @1
      loop ;; label = @2
        local.get 4
        i32.const 0
        i32.load offset=141660
        i32.ge_s
        br_if 1 (;@1;)
        local.get 0
        local.get 4
        i32.const 1
        i32.add
        local.tee 5
        i32.store
        local.get 3
        local.get 4
        call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hab36255595cf417dE
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h335800d9e687fe0fE
        local.get 5
        local.set 4
        br 0 (;@2;)
      end
    end
    local.get 3
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha928fc0bccb1eaadE (;50;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    i32.const 1
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h335800d9e687fe0fE (;51;) (type 2) (param i32 i32)
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h43d54d601554610cE (;52;) (type 9) (param i32) (result i32)
    (local i64)
    block ;; label = @1
      local.get 0
      i32.const 131525
      i32.const 4
      call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h5b9364a1d5b9e947E
      i32.const 131525
      i32.const 4
      call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hec7bed42295778f1E
      local.tee 1
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 131525
      i32.const 4
      i32.const 131072
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17he4e144c50c9f695aE
      unreachable
    end
    local.get 1
    i32.wrap_i64
  )
  (func $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h5b9364a1d5b9e947E (;53;) (type 7) (param i32 i32 i32) (result i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hd622375d93e93433E
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
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h16b57d3424966b92E
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
    i32.const 131146
    i32.const 17
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17he4e144c50c9f695aE
    unreachable
  )
  (func $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hec7bed42295778f1E (;54;) (type 17) (param i32 i32 i32) (result i64)
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
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17he4e144c50c9f695aE
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h9b21f15a67dae543E (;55;) (type 9) (param i32) (result i32)
    local.get 0
    i32.const 131521
    i32.const 4
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h06ac762f152d4254E
  )
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h06ac762f152d4254E (;56;) (type 7) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h5b9364a1d5b9e947E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17hb9d1f855b3ba24adE
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1797f3871b4fc6a2E (;57;) (type 3) (result i32)
    i32.const 1
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hab36255595cf417dE
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17hffd9c1c1be177a93E
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17hffd9c1c1be177a93E (;58;) (type 9) (param i32) (result i32)
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
      i32.load offset=12
      i32.const 1096238418
      i32.eq
      select
      local.set 0
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h3c13ddc51860961bE (;59;) (type 3) (result i32)
    (local i32)
    i32.const 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    call $bigIntGetUnsignedArgument
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h478d500c5e034048E (;60;) (type 3) (result i32)
    (local i64)
    block ;; label = @1
      i32.const 0
      call $smallIntGetUnsignedArgument
      local.tee 0
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 131557
      i32.const 5
      i32.const 131072
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17he4e144c50c9f695aE
      unreachable
    end
    local.get 0
    i32.wrap_i64
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h671f4374a1b57d92E (;61;) (type 3) (result i32)
    i32.const 1
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hab36255595cf417dE
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7d0c956ef8a370fdE (;62;) (type 3) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 0
      call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hab36255595cf417dE
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      i32.const 131412
      i32.const 2
      i32.const 131362
      i32.const 16
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17he4e144c50c9f695aE
      unreachable
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd2762ffb44d03478E (;63;) (type 8) (param i32) (result i64)
    local.get 0
    call $smallIntGetUnsignedArgument
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h864306c89a911fe7E (;64;) (type 2) (param i32 i32)
    block ;; label = @1
      local.get 1
      local.get 0
      i32.lt_u
      br_if 0 (;@1;)
      return
    end
    i32.const 131163
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hfa83c2d1736c81cbE (;65;) (type 6) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=141660
      local.get 0
      i32.gt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131163
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd1666cc8b4097568E (;66;) (type 6) (param i32)
    block ;; label = @1
      call $getNumArguments
      local.get 0
      i32.ne
      br_if 0 (;@1;)
      return
    end
    i32.const 131181
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h230782bdaa65122eE (;67;) (type 6) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=141660
      local.get 0
      i32.lt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131146
    i32.const 17
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h76d1a517d93dd437E (;68;) (type 12)
    i32.const 0
    call $getNumArguments
    i32.store offset=141660
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple28callback_closure_args_loader17h1a5487fa800cc1b6E (;69;) (type 6) (param i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const -25
    call $managedGetCallbackClosure
    i32.const -23
    i32.const 1
    i32.const 0
    call $mBufferSetBytes
    drop
    i32.const -25
    call $mBufferGetLength
    local.set 2
    local.get 1
    i32.const 0
    i32.store8 offset=24
    local.get 1
    local.get 2
    i32.store offset=20
    local.get 1
    i32.const -25
    i32.store offset=16
    local.get 1
    local.get 2
    i32.store offset=12
    local.get 1
    i32.const 0
    i32.store offset=8
    local.get 1
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.set 3
    i32.const 0
    local.set 4
    block ;; label = @1
      loop ;; label = @2
        block ;; label = @3
          local.get 2
          local.get 4
          i32.ne
          br_if 0 (;@3;)
          block ;; label = @4
            local.get 1
            i32.load8_u offset=24
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            i32.const 0
            i32.store offset=141652
            i32.const 0
            i32.const 0
            i32.store8 offset=141656
          end
          local.get 0
          i32.const -23
          call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h292506b14e010becE
          local.get 1
          i32.const 32
          i32.add
          global.set $__stack_pointer
          return
        end
        local.get 1
        i32.const 0
        i32.store offset=28
        block ;; label = @3
          local.get 3
          local.get 4
          local.get 1
          i32.const 28
          i32.add
          i32.const 4
          call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h99d193c653944415E
          br_if 0 (;@3;)
          local.get 1
          local.get 1
          i32.load offset=16
          local.get 1
          i32.load offset=8
          i32.const 4
          i32.add
          local.tee 2
          local.get 1
          i32.load offset=28
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
          local.tee 4
          call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17hb9c5dbfc518a3547E
          local.get 1
          i32.load
          i32.const 1
          i32.ne
          br_if 2 (;@1;)
          local.get 1
          i32.load offset=4
          local.set 5
          local.get 1
          local.get 4
          local.get 2
          i32.add
          local.tee 4
          i32.store offset=8
          i32.const -23
          local.get 5
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h335800d9e687fe0fE
          local.get 1
          i32.load offset=12
          local.set 2
          br 1 (;@2;)
        end
      end
      i32.const 131206
      i32.const 25
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h25c8c9b6e43449e9E
      unreachable
    end
    i32.const 131206
    i32.const 25
    call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17ha6c338e5f907d057E
    unreachable
  )
  (func $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h292506b14e010becE (;70;) (type 2) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h8a74d8fc8dd05fb8E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h99d193c653944415E (;71;) (type 13) (param i32 i32 i32 i32) (result i32)
    (local i32 i32)
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
              local.tee 4
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1dae91c9a62e3db0E
              local.tee 5
              i32.const 10000
              i32.gt_u
              br_if 1 (;@4;)
              i32.const 0
              i32.load8_u offset=141656
              i32.const 255
              i32.and
              br_if 1 (;@4;)
              i32.const 0
              local.get 5
              i32.store offset=141652
              i32.const 0
              i32.const 1
              i32.store8 offset=141656
              local.get 4
              i32.const 0
              i32.const 131652
              local.get 5
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hd622375d93e93433E
              drop
              local.get 0
              i32.const 1
              i32.store8 offset=8
            end
            i32.const 1
            local.set 4
            local.get 3
            local.get 1
            i32.add
            local.tee 0
            i32.const 0
            i32.load offset=141652
            i32.gt_u
            br_if 1 (;@3;)
            local.get 0
            local.get 1
            i32.lt_u
            br_if 2 (;@2;)
            local.get 0
            i32.const 10000
            i32.gt_u
            br_if 3 (;@1;)
            local.get 2
            local.get 3
            local.get 1
            i32.const 131652
            i32.add
            local.get 3
            call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17he3585b619b30c76fE
            i32.const 0
            return
          end
          local.get 0
          i32.const 0
          i32.store8 offset=8
          local.get 4
          local.get 1
          local.get 2
          local.get 3
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hd622375d93e93433E
          local.set 4
        end
        local.get 4
        return
      end
      local.get 1
      local.get 0
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17h471e892540b809f6E
      unreachable
    end
    local.get 0
    i32.const 10000
    call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17h471e892540b809f6E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17hb9c5dbfc518a3547E (;72;) (type 16) (param i32 i32 i32 i32)
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
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h25c8c9b6e43449e9E (;73;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17ha6c338e5f907d057E
    unreachable
  )
  (func $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17ha6c338e5f907d057E (;74;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h52ba09aaed8a3d9dE
    local.tee 1
    i32.const 131278
    i32.const 15
    call $mBufferAppendBytes
    drop
    local.get 1
    call $managedSignalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h8a74d8fc8dd05fb8E (;75;) (type 9) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1dae91c9a62e3db0E
    i32.const 2
    i32.shr_u
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h7509a282570e7df9E (;76;) (type 18) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 40
    i32.add
    i32.const 131251
    i32.const 15
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hddef9948e6066c58E
    local.get 5
    i32.const 32
    i32.add
    local.get 5
    i32.load offset=40
    local.get 5
    i32.load offset=44
    local.get 4
    i32.load offset=8
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h21d56d58c709bdf1E
    local.get 5
    i32.const 24
    i32.add
    local.get 5
    i32.load offset=32
    local.get 5
    i32.load offset=36
    local.get 4
    i64.load
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h6dd98a14683647e0E
    local.get 5
    i32.const 16
    i32.add
    local.get 5
    i32.load offset=24
    local.get 5
    i32.load offset=28
    local.get 4
    i32.load offset=12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hb5d23fd60fcf4bd7E
    local.get 5
    i32.load offset=16
    local.set 6
    local.get 5
    i32.load offset=20
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha928fc0bccb1eaadE
    drop
    local.get 4
    local.get 3
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h16b57d3424966b92E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h335800d9e687fe0fE
    local.get 5
    i32.const 8
    i32.add
    local.get 6
    local.get 4
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hdd61d806cb2cc4a9E
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
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hddef9948e6066c58E (;77;) (type 1) (param i32 i32 i32)
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h52ba09aaed8a3d9dE
    local.set 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha928fc0bccb1eaadE
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h21d56d58c709bdf1E (;78;) (type 16) (param i32 i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha928fc0bccb1eaadE
    drop
    local.get 2
    local.get 3
    i32.load
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h16b57d3424966b92E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h335800d9e687fe0fE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h6dd98a14683647e0E (;79;) (type 19) (param i32 i32 i32 i64)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h219dbf7a25a1a79cE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hb5d23fd60fcf4bd7E (;80;) (type 16) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h0230ba870dd194adE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hdd61d806cb2cc4a9E (;81;) (type 18) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block ;; label = @1
      local.get 3
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1dae91c9a62e3db0E
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hc0902f88371e06bfE
      local.get 4
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1dae91c9a62e3db0E
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
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hd622375d93e93433E
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
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hc0902f88371e06bfE
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
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h6e0e907c09b41c03E (;82;) (type 18) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 24
    i32.add
    i32.const 131266
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hddef9948e6066c58E
    local.get 5
    i32.const 16
    i32.add
    local.get 5
    i32.load offset=24
    local.get 5
    i32.load offset=28
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h21d56d58c709bdf1E
    local.get 5
    i32.const 8
    i32.add
    local.get 5
    i32.load offset=16
    local.get 5
    i32.load offset=20
    local.get 4
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hb5d23fd60fcf4bd7E
    local.get 5
    local.get 5
    i32.load offset=8
    local.get 5
    i32.load offset=12
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hdd61d806cb2cc4a9E
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
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h21c8027ff1a3384aE (;83;) (type 16) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h4a8be9354695fd7aE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h4a8be9354695fd7aE (;84;) (type 2) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha928fc0bccb1eaadE
    drop
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h04f5bae350c4885dE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h335800d9e687fe0fE
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h219dbf7a25a1a79cE (;85;) (type 0) (param i32 i64)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha928fc0bccb1eaadE
    local.tee 2
    local.get 1
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h567e95b01e42be02E
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h335800d9e687fe0fE
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h0230ba870dd194adE (;86;) (type 2) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha928fc0bccb1eaadE
    drop
    local.get 0
    local.get 1
    i32.load
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h04f5bae350c4885dE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h335800d9e687fe0fE
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1dae91c9a62e3db0E (;87;) (type 9) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hc0902f88371e06bfE (;88;) (type 2) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha928fc0bccb1eaadE
    drop
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h16b57d3424966b92E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h335800d9e687fe0fE
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hd622375d93e93433E (;89;) (type 13) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hd40beec169d1bb3bE
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17hbb763c981d423cc4E (;90;) (type 2) (param i32 i32)
    (local i32 i64 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    call $getGasLeft
    local.set 3
    local.get 1
    i32.load offset=8
    local.set 4
    local.get 1
    i32.load offset=4
    local.set 5
    local.get 1
    i32.load
    local.set 1
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h22b7f9442bbe05ffE
    local.set 6
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.set 7
    local.get 3
    i64.const -100000
    i64.add
    local.get 3
    local.get 3
    i64.const 100000
    i64.gt_u
    select
    local.get 1
    i32.load
    local.get 6
    local.get 5
    local.get 4
    local.get 7
    call $managedExecuteOnDestContext
    drop
    call $cleanReturnData
    local.get 2
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$18get_back_transfers17h3cc1cdbbb82dc93fE
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
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h22b7f9442bbe05ffE (;91;) (type 3) (result i32)
    i32.const -10
    i64.const 0
    call $bigIntSetInt64
    i32.const -10
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise17h7aaa3be0d754ad8dE (;92;) (type 6) (param i32)
    (local i32 i32 i32 i32 i32 i64 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i32.load offset=28
    local.set 2
    local.get 0
    i32.load offset=24
    local.set 3
    local.get 1
    i32.const -25
    i32.store offset=12
    local.get 0
    i32.const 16
    i32.add
    local.get 1
    i32.const 12
    i32.add
    call $_ZN200_$LT$dharitri_sc..types..interaction..callback_closure..CallbackClosureWithGas$LT$Api$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_exec..tx_exec_async_promises..TxPromisesCallback$LT$Api$GT$$GT$30overwrite_with_serialized_args17hdeb52cdfad83edc4E
    local.get 0
    i32.load offset=12
    local.set 4
    local.get 0
    i32.load offset=8
    local.set 5
    local.get 0
    i64.load
    local.set 6
    local.get 0
    i64.load offset=16
    local.set 7
    local.get 0
    i32.load offset=40
    local.set 0
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h22b7f9442bbe05ffE
    local.set 8
    local.get 0
    i32.load
    local.get 8
    local.get 5
    local.get 4
    local.get 3
    local.get 2
    local.get 3
    local.get 2
    local.get 6
    local.get 7
    local.get 1
    i32.load offset=12
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21create_async_call_raw17h1c51649b7ff6d4c5E
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN200_$LT$dharitri_sc..types..interaction..callback_closure..CallbackClosureWithGas$LT$Api$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_exec..tx_exec_async_promises..TxPromisesCallback$LT$Api$GT$$GT$30overwrite_with_serialized_args17hdeb52cdfad83edc4E (;93;) (type 2) (param i32 i32)
    local.get 1
    i32.load
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$9overwrite17hdd76284dd49e23eaE
    local.get 0
    i32.const 16
    i32.add
    local.get 1
    call $_ZN139_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17he8a28f444d96a287E
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h0a5483115047da7fE (;94;) (type 18) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 0
    i32.load
    local.tee 5
    local.get 0
    i32.load offset=4
    local.tee 6
    local.get 5
    local.get 6
    local.get 0
    i32.load offset=8
    i64.load
    local.get 0
    i32.load offset=12
    i64.load
    local.get 0
    i32.load offset=16
    i32.load
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21create_async_call_raw17h1c51649b7ff6d4c5E
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h6de0eb72129e4436E (;95;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17hcc3442e51c969a3fE
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
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17hb9c5dbfc518a3547E
    block ;; label = @1
      local.get 2
      i32.load offset=8
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      i32.const 131278
      i32.const 15
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hd004f34049bf6fe5E
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17hcc3442e51c969a3fE (;96;) (type 4) (param i32 i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hd08239c389707b80E
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
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hd004f34049bf6fe5E (;97;) (type 1) (param i32 i32 i32)
    (local i32)
    i32.const 131331
    i32.const 27
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h52ba09aaed8a3d9dE
    local.tee 3
    local.get 0
    call $mBufferAppend
    drop
    local.get 3
    i32.const 131143
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hd40beec169d1bb3bE (;98;) (type 13) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$9overwrite17hdd76284dd49e23eaE (;99;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferSetBytes
    drop
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17hd92612e69ab3cc36E (;100;) (type 4) (param i32 i32) (result i32)
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
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17h471e892540b809f6E
      unreachable
    end
    local.get 3
    i32.const 16
    call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17h471e892540b809f6E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h94c0fd14fb0b5d80E (;101;) (type 20) (param i32 i32) (result i64)
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
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17h471e892540b809f6E
      unreachable
    end
    local.get 3
    i32.const 16
    call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17h471e892540b809f6E
    unreachable
  )
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17h471e892540b809f6E (;102;) (type 2) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17hb859252f4b513814E
    unreachable
  )
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17he3585b619b30c76fE (;103;) (type 16) (param i32 i32 i32 i32)
    block ;; label = @1
      local.get 1
      local.get 3
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 3
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17h471e892540b809f6E
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    call $memcpy
    drop
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h04f5bae350c4885dE (;104;) (type 9) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17hb9d1f855b3ba24adE (;105;) (type 9) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferToBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17ha85492b67d7b94eeE (;106;) (type 9) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17h1d409439be803f00E (;107;) (type 2) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h52ba09aaed8a3d9dE
    call $mBufferStorageStore
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hefe4a2a354f0af59E (;108;) (type 21) (param i32 i64 i32)
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
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$4push17hc36832c0ac945c42E (;109;) (type 1) (param i32 i32 i32)
    (local i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h5ced354d587e0976E
    i32.const 1
    i32.add
    local.tee 3
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h8a548b073e0dea61E
    local.set 4
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h52ba09aaed8a3d9dE
    local.set 0
    local.get 2
    i32.load offset=8
    local.get 0
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h3c6290feec6ca469E
    local.get 2
    i32.load offset=12
    local.get 0
    call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he03142dd24c9bf1eE
    local.get 2
    i64.load
    local.get 0
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17hf25c58122d8d341fE
    local.get 2
    i32.load offset=16
    local.get 0
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17heafbfcd596607c76E
    local.get 2
    i32.const 20
    i32.add
    local.get 0
    call $_ZN145_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hf4ffbbdea937b6b3E
    local.get 4
    local.get 0
    call $mBufferStorageStore
    drop
    local.get 1
    local.get 3
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17h1d409439be803f00E
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h5ced354d587e0976E (;110;) (type 9) (param i32) (result i32)
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
        call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17ha85492b67d7b94eeE
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
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hd004f34049bf6fe5E
      unreachable
    end
    local.get 0
    i32.const 131072
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hd004f34049bf6fe5E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h8a548b073e0dea61E (;111;) (type 4) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h16b57d3424966b92E
    local.tee 0
    i32.const 131326
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
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h3c6290feec6ca469E (;112;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1dae91c9a62e3db0E
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
    call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h2725f9a1c9d40ff4E
    local.get 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he03142dd24c9bf1eE (;113;) (type 2) (param i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 2147483646
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h3c6290feec6ca469E
      return
    end
    i32.const 4
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h2162cd1ddd4679b9E
    local.get 1
    i32.const 131322
    i32.const 4
    call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h2725f9a1c9d40ff4E
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17hf25c58122d8d341fE (;114;) (type 22) (param i64 i32)
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
    call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h2725f9a1c9d40ff4E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17heafbfcd596607c76E (;115;) (type 2) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h04f5bae350c4885dE
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h3c6290feec6ca469E
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hf4ffbbdea937b6b3E (;116;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.tee 3
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h8a74d8fc8dd05fb8E
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h2162cd1ddd4679b9E
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1dae91c9a62e3db0E
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
      call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8cc0145cc184d9f7E
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
      call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h3c6290feec6ca469E
      br 0 (;@1;)
    end
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$13get_unchecked17hda6e0173766c8eb1E (;117;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h8a548b073e0dea61E
    local.tee 1
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17ha85492b67d7b94eeE
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
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h6de0eb72129e4436E
    local.set 5
    local.get 3
    i32.const 4
    i32.add
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h6de0eb72129e4436E
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17hffd9c1c1be177a93E
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hd08239c389707b80E
    local.get 3
    i64.load offset=24
    local.set 7
    local.get 3
    i32.const 4
    i32.add
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h6de0eb72129e4436E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17hb9d1f855b3ba24adE
    local.set 8
    local.get 3
    i32.const 4
    i32.add
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17hcc3442e51c969a3fE
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha928fc0bccb1eaadE
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
        call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h6de0eb72129e4436E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h335800d9e687fe0fE
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
        i32.store offset=141652
        i32.const 0
        i32.const 0
        i32.store8 offset=141656
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
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hd004f34049bf6fe5E
    unreachable
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hd08239c389707b80E (;118;) (type 16) (param i32 i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h99d193c653944415E
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17ha3e64f6bf168e408E
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17hbab8cf9988cdd8e2E (;119;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h0230ba870dd194adE
  )
  (func $_ZN11dharitri_sc8log_util23event_topic_accumulator17hec538b6d863f7cf6E (;120;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha928fc0bccb1eaadE
    local.tee 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h52ba09aaed8a3d9dE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h335800d9e687fe0fE
    local.get 2
  )
  (func $_ZN139_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17he8a28f444d96a287E (;121;) (type 2) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.load
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h16b57d3424966b92E
    local.set 3
    local.get 2
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1dae91c9a62e3db0E
    i32.store offset=24
    local.get 2
    i32.const 0
    i32.store offset=20
    local.get 2
    local.get 0
    i32.store offset=16
    loop ;; label = @1
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 16
      i32.add
      call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8cc0145cc184d9f7E
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
      local.get 2
      i32.load offset=12
      local.tee 4
      call $mBufferGetLength
      local.tee 0
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
      i32.store offset=28
      local.get 3
      local.get 2
      i32.const 28
      i32.add
      i32.const 4
      call $mBufferAppendBytes
      drop
      local.get 3
      local.get 4
      call $mBufferAppend
      drop
      br 0 (;@1;)
    end
  )
  (func $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8cc0145cc184d9f7E (;122;) (type 2) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hd622375d93e93433E
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
  (func $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h2725f9a1c9d40ff4E (;123;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferAppendBytes
    drop
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h2162cd1ddd4679b9E (;124;) (type 2) (param i32 i32)
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
    call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h2725f9a1c9d40ff4E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN149_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u3b$$u20$N$u5d$$GT$$GT$4from17hfc004255e4e80407E (;125;) (type 3) (result i32)
    i32.const 131444
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h52ba09aaed8a3d9dE
  )
  (func $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..into_multi_value..IntoMultiValue$GT$16into_multi_value17hd459a789b0b3fc4dE (;126;) (type 9) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha928fc0bccb1eaadE
    local.set 2
    local.get 1
    local.get 0
    call $mBufferGetLength
    i32.store offset=20
    local.get 1
    i32.const 0
    i32.store offset=16
    local.get 1
    local.get 1
    i32.const 8
    i32.add
    i32.store offset=12
    loop (result i32) ;; label = @1
      local.get 1
      i32.const 24
      i32.add
      local.get 1
      i32.const 12
      i32.add
      call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8e2d85ec7b11e644E
      block ;; label = @2
        local.get 1
        i64.load offset=24
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 1
        i32.const 48
        i32.add
        global.set $__stack_pointer
        local.get 2
        return
      end
      local.get 1
      i32.load offset=44
      local.set 0
      local.get 2
      local.get 1
      i32.load offset=40
      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hc0902f88371e06bfE
      local.get 2
      local.get 1
      i64.load offset=32
      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h219dbf7a25a1a79cE
      local.get 2
      local.get 0
      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h4a8be9354695fd7aE
      br 0 (;@1;)
    end
  )
  (func $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8e2d85ec7b11e644E (;127;) (type 2) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hd622375d93e93433E
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
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17hd92612e69ab3cc36E
      local.set 4
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h94c0fd14fb0b5d80E
      local.set 3
      local.get 0
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17hd92612e69ab3cc36E
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
  (func $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17ha0cb7c14a4133a10E (;128;) (type 2) (param i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 2147483646
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h16b57d3424966b92E
      i32.store
      return
    end
    local.get 1
    i32.load
    i32.const 131322
    i32.const 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$9overwrite17hdd76284dd49e23eaE
  )
  (func $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h567e95b01e42be02E (;129;) (type 0) (param i32 i64)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$9overwrite17hdd76284dd49e23eaE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17promises_features11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14retrieve_funds17hcb89d508638070f8E (;130;) (type 23) (param i32 i32 i32 i64 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 16
    i32.add
    i32.const 131398
    i32.const 14
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hddef9948e6066c58E
    local.get 5
    i32.load offset=16
    local.set 6
    local.get 5
    i32.load offset=20
    local.set 7
    local.get 5
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha928fc0bccb1eaadE
    i32.store offset=28
    local.get 2
    local.get 5
    i32.const 28
    i32.add
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17ha0cb7c14a4133a10E
    local.get 7
    local.get 5
    i32.load offset=28
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h335800d9e687fe0fE
    local.get 5
    i32.const 8
    i32.add
    local.get 6
    local.get 7
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h6dd98a14683647e0E
    local.get 5
    local.get 5
    i32.load offset=8
    local.get 5
    i32.load offset=12
    local.get 4
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h21c8027ff1a3384aE
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
  (func $_ZN17promises_features23fwd_call_promise_direct13CallbackProxy16the_one_callback17h7bace0d27f5f15adE (;131;) (type 1) (param i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha928fc0bccb1eaadE
    local.tee 3
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hfa509b370ad823f3E
    local.get 3
    local.get 2
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h4a8be9354695fd7aE
    local.get 0
    local.get 3
    i32.store offset=8
    local.get 0
    i32.const 16
    i32.store offset=4
    local.get 0
    i32.const 131505
    i32.store
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hfa509b370ad823f3E (;132;) (type 2) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha928fc0bccb1eaadE
    local.tee 2
    local.get 1
    i64.extend_i32_u
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h567e95b01e42be02E
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h335800d9e687fe0fE
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17ha3e64f6bf168e408E (;133;) (type 6) (param i32)
    local.get 0
    i32.const 131278
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hd004f34049bf6fe5E
    unreachable
  )
  (func $_ZN4core3cmp9PartialEq2ne17h8762429ff4ca24a3E (;134;) (type 9) (param i32) (result i32)
    local.get 0
    call $bigIntSign
    i32.const 0
    i32.ne
  )
  (func $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17he2501586be7df3a8E (;135;) (type 9) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    local.get 0
    i64.extend_i32_u
    call $bigIntSetInt64
    local.get 1
  )
  (func $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$13callback_data17h87cffea3a62c35e0E (;136;) (type 6) (param i32)
    (local i32 i32)
    i32.const 131562
    i32.const 13
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h52ba09aaed8a3d9dE
    local.tee 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h16b57d3424966b92E
    local.tee 2
    i32.const 131358
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
  (func $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$29retrieve_funds_callback_event17h3c904f4840bc1911E (;137;) (type 21) (param i32 i64 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const 131444
    i32.const 23
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17hec538b6d863f7cf6E
    local.set 4
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha928fc0bccb1eaadE
    i32.store offset=12
    local.get 0
    local.get 3
    i32.const 12
    i32.add
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17ha0cb7c14a4133a10E
    local.get 4
    local.get 3
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h335800d9e687fe0fE
    local.get 4
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h219dbf7a25a1a79cE
    local.get 4
    local.get 2
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17hbab8cf9988cdd8e2E
    local.get 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha928fc0bccb1eaadE
    call $managedWriteLog
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN85_$LT$C$u20$as$u20$promises_features..fwd_call_sync_bt..BackTransfersFeatureModule$GT$20back_transfers_event17ha3f8a763030e814aE (;138;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 131575
    i32.const 13
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17hec538b6d863f7cf6E
    local.tee 3
    local.get 0
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17hbab8cf9988cdd8e2E
    local.get 2
    local.get 1
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1dae91c9a62e3db0E
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8cc0145cc184d9f7E
        local.get 2
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        local.get 2
        i32.load offset=12
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hc0902f88371e06bfE
        br 0 (;@2;)
      end
    end
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha928fc0bccb1eaadE
    call $managedWriteLog
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h5f827d0df12c15aeE (;139;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    call $managedSCAddress
    local.get 0
  )
  (func $rust_begin_unwind (;140;) (type 12)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h8945d78c95e86419E
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h8945d78c95e86419E (;141;) (type 12)
    i32.const 131631
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;142;) (type 12)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd1666cc8b4097568E
  )
  (func $callback_data (;143;) (type 12)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd1666cc8b4097568E
    local.get 0
    call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$13callback_data17h87cffea3a62c35e0E
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
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h5ced354d587e0976E
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
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$13get_unchecked17hda6e0173766c8eb1E
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
        i32.const 1
        i32.const 0
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h52ba09aaed8a3d9dE
        local.set 8
        local.get 7
        i32.load
        local.get 8
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h3c6290feec6ca469E
        local.get 0
        i32.load offset=52
        local.get 8
        call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he03142dd24c9bf1eE
        local.get 0
        i64.load offset=40
        local.get 8
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17hf25c58122d8d341fE
        local.get 6
        i32.load
        local.get 8
        call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17heafbfcd596607c76E
        local.get 1
        local.get 8
        call $_ZN145_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hf4ffbbdea937b6b3E
        local.get 8
        call $mBufferFinish
        drop
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
  (func $callback_data_at_index (;144;) (type 12)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd1666cc8b4097568E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h478d500c5e034048E
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$13callback_data17h87cffea3a62c35e0E
    block ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=8
      local.set 2
      local.get 0
      i32.load offset=12
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h5ced354d587e0976E
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 40
      i32.add
      local.get 2
      local.get 1
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$13get_unchecked17hda6e0173766c8eb1E
      local.get 0
      local.get 0
      i32.load offset=60
      local.tee 2
      i32.store offset=36
      local.get 0
      local.get 0
      i32.load offset=56
      local.tee 3
      i32.store offset=32
      local.get 0
      local.get 0
      i32.load offset=52
      local.tee 1
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
      local.get 0
      i32.const 36
      i32.add
      local.set 4
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.const 2147483646
          i32.eq
          br_if 0 (;@3;)
          local.get 1
          call $mBufferFinish
          drop
          br 1 (;@2;)
        end
        i32.const 131322
        i32.const 4
        call $finish
      end
      local.get 5
      call $smallIntFinishUnsigned
      local.get 3
      call $bigIntFinishUnsigned
      local.get 0
      local.get 2
      call $mBufferGetLength
      i32.store offset=48
      local.get 0
      i32.const 0
      i32.store offset=44
      local.get 0
      local.get 4
      i32.store offset=40
      block ;; label = @2
        loop ;; label = @3
          local.get 0
          local.get 0
          i32.const 40
          i32.add
          call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8cc0145cc184d9f7E
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
    i32.const 131613
    i32.const 18
    call $signalError
    unreachable
  )
  (func $clear_callback_data (;145;) (type 12)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd1666cc8b4097568E
    local.get 0
    i32.const 8
    i32.add
    call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$13callback_data17h87cffea3a62c35e0E
    local.get 0
    i32.load offset=8
    local.set 1
    local.get 0
    i32.load offset=12
    local.tee 2
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h5ced354d587e0976E
    local.set 3
    i32.const 1
    local.set 4
    i32.const 0
    local.set 5
    block ;; label = @1
      loop ;; label = @2
        local.get 5
        i32.const 1
        i32.and
        br_if 1 (;@1;)
        local.get 4
        local.get 3
        i32.gt_u
        br_if 1 (;@1;)
        local.get 1
        local.get 4
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h8a548b073e0dea61E
        local.set 5
        i32.const -20
        i32.const 1
        i32.const 0
        call $mBufferSetBytes
        drop
        local.get 5
        i32.const -20
        call $mBufferStorageStore
        drop
        local.get 4
        local.get 3
        i32.ge_u
        local.set 5
        local.get 4
        local.get 4
        local.get 3
        i32.lt_u
        i32.add
        local.set 4
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 0
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17h1d409439be803f00E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_promise_accept_funds (;146;) (type 12)
    (local i32 i64 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 208
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd1666cc8b4097568E
    local.get 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7d0c956ef8a370fdE
    i32.store offset=36
    local.get 0
    i32.const 40
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h7e0c90abe6ecf41aE
    call $getGasLeft
    local.set 1
    local.get 0
    i32.const 24
    i32.add
    i32.const 131386
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hddef9948e6066c58E
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
    i32.const -25
    i32.store offset=84
    i32.const -25
    i32.const 1
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
    i64.const 0
    i64.store offset=88
    local.get 0
    local.get 1
    i64.store offset=96
    local.get 0
    i32.load offset=52
    local.set 4
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load offset=48
        local.tee 5
        i32.const 2147483646
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        local.get 2
        i32.store offset=180
        local.get 0
        local.get 3
        i32.store offset=176
        local.get 0
        i64.const 1
        i64.store offset=152 align=4
        local.get 0
        local.get 0
        i32.const 36
        i32.add
        i32.store offset=172
        local.get 0
        local.get 0
        i32.const 84
        i32.add
        i32.store offset=168
        local.get 0
        local.get 0
        i32.const 88
        i32.add
        i32.store offset=164
        local.get 0
        local.get 0
        i32.const 96
        i32.add
        i32.store offset=160
        local.get 0
        i32.const 152
        i32.add
        local.get 0
        i32.load offset=36
        local.get 4
        local.get 3
        local.get 2
        call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h0a5483115047da7fE
        br 1 (;@1;)
      end
      local.get 0
      i64.load offset=40
      local.set 1
      local.get 0
      local.get 4
      i32.store offset=148
      local.get 0
      local.get 5
      i32.store offset=144
      local.get 0
      local.get 1
      i64.store offset=136
      local.get 0
      i64.const 1
      i64.store offset=116 align=4
      local.get 0
      local.get 2
      i32.store offset=112
      local.get 0
      local.get 3
      i32.store offset=108
      local.get 0
      local.get 0
      i32.const 84
      i32.add
      i32.store offset=132
      local.get 0
      local.get 0
      i32.const 88
      i32.add
      i32.store offset=128
      local.get 0
      local.get 0
      i32.const 96
      i32.add
      i32.store offset=124
      local.get 0
      local.get 0
      i32.const 36
      i32.add
      i32.store offset=104
      local.get 0
      i64.const 1
      i64.store offset=176
      local.get 0
      local.get 0
      i32.const 148
      i32.add
      local.tee 5
      i32.store offset=172
      local.get 0
      local.get 0
      i32.const 144
      i32.add
      local.tee 6
      i32.store offset=168
      local.get 0
      local.get 1
      i64.store offset=160
      local.get 0
      local.get 0
      i32.const 76
      i32.add
      local.tee 4
      i32.store offset=200
      local.get 0
      local.get 4
      i32.store offset=196
      local.get 0
      local.get 2
      i32.store offset=156
      local.get 0
      local.get 3
      i32.store offset=152
      local.get 0
      local.get 0
      i32.const 84
      i32.add
      i32.store offset=192
      local.get 0
      local.get 0
      i32.const 88
      i32.add
      i32.store offset=188
      local.get 0
      local.get 0
      i32.const 96
      i32.add
      i32.store offset=184
      local.get 0
      i32.const 176
      i32.add
      local.set 4
      block ;; label = @2
        local.get 1
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 8
        i32.add
        local.get 3
        local.get 2
        local.get 6
        local.get 5
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h6e0e907c09b41c03E
        local.get 0
        i32.load offset=12
        local.set 2
        local.get 0
        i32.load offset=8
        local.set 3
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h22b7f9442bbe05ffE
        local.set 5
        local.get 4
        local.get 0
        i32.load offset=36
        local.get 5
        local.get 3
        local.get 2
        call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h0a5483115047da7fE
        br 1 (;@1;)
      end
      local.get 0
      i32.const 16
      i32.add
      local.get 3
      local.get 2
      local.get 0
      i32.load offset=36
      local.get 0
      i32.const 160
      i32.add
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h7509a282570e7df9E
      local.get 0
      i32.load offset=20
      local.set 2
      local.get 0
      i32.load offset=16
      local.set 3
      local.get 4
      call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h5f827d0df12c15aeE
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h22b7f9442bbe05ffE
      local.get 3
      local.get 2
      call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h0a5483115047da7fE
    end
    local.get 0
    i32.const 208
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_promise_retrieve_funds (;147;) (type 12)
    (local i32 i32 i32 i64 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd1666cc8b4097568E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7d0c956ef8a370fdE
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1797f3871b4fc6a2E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd2762ffb44d03478E
    local.set 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h3c13ddc51860961bE
    local.set 4
    local.get 0
    local.get 1
    i32.store offset=12
    call $getGasLeft
    local.set 5
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.const 12
    i32.add
    local.get 2
    local.get 3
    local.get 4
    call $_ZN17promises_features11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14retrieve_funds17hcb89d508638070f8E
    local.get 0
    i64.load offset=20 align=4
    local.set 3
    local.get 0
    i32.load offset=16
    local.set 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha928fc0bccb1eaadE
    local.set 2
    local.get 0
    local.get 1
    i32.store offset=56
    local.get 0
    local.get 2
    i32.store offset=48
    local.get 0
    i32.const 23
    i32.store offset=44
    local.get 0
    i32.const 131444
    i32.store offset=40
    local.get 0
    i64.const 10000000
    i64.store offset=32
    local.get 0
    local.get 3
    i64.store offset=24
    local.get 0
    local.get 5
    i64.const -20000000
    i64.add
    i64.store offset=16
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise17h7aaa3be0d754ad8dE
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $promise_raw_single_token (;148;) (type 12)
    (local i32 i32 i32 i64 i64 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 224
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h76d1a517d93dd437E
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h230782bdaa65122eE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7d0c956ef8a370fdE
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h671f4374a1b57d92E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd2762ffb44d03478E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd2762ffb44d03478E
    local.set 4
    local.get 0
    i32.const 4
    i32.store offset=32
    local.get 0
    i32.const 32
    i32.add
    i32.const 131535
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h26878fe6921badfbE
    local.set 5
    local.get 0
    i32.load offset=32
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hfa83c2d1736c81cbE
    local.get 0
    local.get 1
    i32.store offset=28
    local.get 0
    i32.const 168
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h7e0c90abe6ecf41aE
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha928fc0bccb1eaadE
    drop
    local.get 0
    i32.const 32
    i32.add
    i32.const 40
    i32.add
    i32.const 1001
    i32.const 1002
    call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17he2501586be7df3a8E
    call $_ZN17promises_features23fwd_call_promise_direct13CallbackProxy16the_one_callback17h7bace0d27f5f15adE
    local.get 0
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.tee 6
    local.get 0
    i32.const 168
    i32.add
    i32.const 8
    i32.add
    local.tee 7
    i64.load
    i64.store
    local.get 0
    local.get 4
    i64.store offset=64
    local.get 0
    local.get 5
    i32.store offset=60
    local.get 0
    local.get 2
    i32.store offset=56
    local.get 0
    local.get 3
    i64.store offset=48
    local.get 0
    local.get 0
    i64.load offset=168
    i64.store offset=32
    local.get 0
    local.get 0
    i32.const 28
    i32.add
    i32.store offset=88
    local.get 0
    i32.load offset=72
    local.set 1
    local.get 0
    i32.load offset=76
    local.set 8
    local.get 0
    i32.const -25
    i32.store offset=100
    local.get 0
    i32.const 64
    i32.add
    local.get 0
    i32.const 100
    i32.add
    call $_ZN200_$LT$dharitri_sc..types..interaction..callback_closure..CallbackClosureWithGas$LT$Api$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_exec..tx_exec_async_promises..TxPromisesCallback$LT$Api$GT$$GT$30overwrite_with_serialized_args17hdeb52cdfad83edc4E
    local.get 0
    local.get 4
    i64.store offset=104
    local.get 0
    local.get 3
    i64.store offset=112
    local.get 0
    i32.load offset=44
    local.set 9
    block ;; label = @1
      block ;; label = @2
        local.get 6
        i32.load
        local.tee 6
        i32.const 2147483646
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        local.get 5
        i32.store offset=196
        local.get 0
        local.get 2
        i32.store offset=192
        local.get 0
        local.get 8
        i32.store offset=172
        local.get 0
        local.get 1
        i32.store offset=168
        local.get 0
        local.get 0
        i32.const 28
        i32.add
        i32.store offset=188
        local.get 0
        local.get 0
        i32.const 100
        i32.add
        i32.store offset=184
        local.get 0
        local.get 0
        i32.const 104
        i32.add
        i32.store offset=180
        local.get 0
        local.get 0
        i32.const 112
        i32.add
        i32.store offset=176
        local.get 0
        i32.const 168
        i32.add
        local.get 0
        i32.load offset=28
        local.get 9
        local.get 2
        local.get 5
        call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h0a5483115047da7fE
        br 1 (;@1;)
      end
      local.get 0
      i64.load offset=32
      local.set 3
      local.get 0
      local.get 9
      i32.store offset=164
      local.get 0
      local.get 6
      i32.store offset=160
      local.get 0
      local.get 3
      i64.store offset=152
      local.get 0
      local.get 8
      i32.store offset=136
      local.get 0
      local.get 1
      i32.store offset=132
      local.get 0
      local.get 5
      i32.store offset=128
      local.get 0
      local.get 2
      i32.store offset=124
      local.get 0
      local.get 0
      i32.const 100
      i32.add
      i32.store offset=148
      local.get 0
      local.get 0
      i32.const 104
      i32.add
      i32.store offset=144
      local.get 0
      local.get 0
      i32.const 112
      i32.add
      i32.store offset=140
      local.get 0
      local.get 0
      i32.const 28
      i32.add
      i32.store offset=120
      local.get 0
      local.get 8
      i32.store offset=196
      local.get 0
      local.get 1
      i32.store offset=192
      local.get 0
      local.get 0
      i32.const 164
      i32.add
      local.tee 8
      i32.store offset=188
      local.get 0
      local.get 0
      i32.const 120
      i32.add
      i32.const 40
      i32.add
      local.tee 6
      i32.store offset=184
      local.get 0
      local.get 3
      i64.store offset=176
      local.get 0
      local.get 0
      i32.const 92
      i32.add
      local.tee 1
      i32.store offset=216
      local.get 0
      local.get 1
      i32.store offset=212
      local.get 0
      local.get 5
      i32.store offset=172
      local.get 0
      local.get 2
      i32.store offset=168
      local.get 0
      local.get 0
      i32.const 100
      i32.add
      i32.store offset=208
      local.get 0
      local.get 0
      i32.const 104
      i32.add
      i32.store offset=204
      local.get 0
      local.get 0
      i32.const 112
      i32.add
      i32.store offset=200
      local.get 0
      i32.const 192
      i32.add
      local.set 1
      block ;; label = @2
        local.get 3
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 8
        i32.add
        local.get 2
        local.get 5
        local.get 6
        local.get 8
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h6e0e907c09b41c03E
        local.get 0
        i32.load offset=12
        local.set 2
        local.get 0
        i32.load offset=8
        local.set 5
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h22b7f9442bbe05ffE
        local.set 8
        local.get 1
        local.get 0
        i32.load offset=28
        local.get 8
        local.get 5
        local.get 2
        call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h0a5483115047da7fE
        br 1 (;@1;)
      end
      local.get 0
      i32.const 16
      i32.add
      local.get 2
      local.get 5
      local.get 0
      i32.load offset=28
      local.get 7
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h7509a282570e7df9E
      local.get 0
      i32.load offset=20
      local.set 2
      local.get 0
      i32.load offset=16
      local.set 5
      local.get 1
      call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h5f827d0df12c15aeE
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h22b7f9442bbe05ffE
      local.get 5
      local.get 2
      call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h0a5483115047da7fE
    end
    local.get 0
    i32.const 224
    i32.add
    global.set $__stack_pointer
  )
  (func $promise_raw_multi_transfer (;149;) (type 12)
    (local i32 i32 i32 i64 i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 240
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h76d1a517d93dd437E
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h230782bdaa65122eE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7d0c956ef8a370fdE
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h671f4374a1b57d92E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd2762ffb44d03478E
    local.set 3
    local.get 0
    i32.const 3
    i32.store offset=184
    local.get 0
    i32.const 184
    i32.add
    i32.const 131539
    i32.const 18
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h26878fe6921badfbE
    local.set 4
    local.get 0
    i32.load offset=184
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hfa83c2d1736c81cbE
    local.get 0
    local.get 1
    i32.store offset=52
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha928fc0bccb1eaadE
    local.set 5
    local.get 0
    i32.const 56
    i32.add
    local.get 4
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h292506b14e010becE
    block ;; label = @1
      block ;; label = @2
        loop ;; label = @3
          block ;; label = @4
            local.get 0
            i32.load offset=64
            local.get 0
            i32.load offset=60
            i32.lt_u
            br_if 0 (;@4;)
            call $getGasLeft
            local.set 6
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha928fc0bccb1eaadE
            local.set 7
            local.get 0
            i32.const 72
            i32.add
            i32.const 2001
            i32.const 2002
            call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17he2501586be7df3a8E
            call $_ZN17promises_features23fwd_call_promise_direct13CallbackProxy16the_one_callback17h7bace0d27f5f15adE
            local.get 0
            local.get 7
            i32.store offset=100
            local.get 0
            local.get 2
            i32.store offset=96
            local.get 0
            local.get 6
            local.get 3
            i64.sub
            i64.const 9
            i64.mul
            i64.const 10
            i64.div_u
            local.tee 6
            i64.store offset=88
            local.get 0
            local.get 5
            i32.store offset=60
            local.get 0
            i32.const 1
            i32.store offset=56
            local.get 0
            local.get 3
            i64.store offset=64
            local.get 0
            local.get 0
            i32.const 52
            i32.add
            i32.store offset=104
            local.get 0
            i32.load offset=72
            local.set 4
            local.get 0
            i32.load offset=76
            local.set 8
            local.get 0
            i32.const -25
            i32.store offset=116
            local.get 0
            i32.const 56
            i32.add
            i32.const 8
            i32.add
            local.get 0
            i32.const 116
            i32.add
            call $_ZN200_$LT$dharitri_sc..types..interaction..callback_closure..CallbackClosureWithGas$LT$Api$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_exec..tx_exec_async_promises..TxPromisesCallback$LT$Api$GT$$GT$30overwrite_with_serialized_args17hdeb52cdfad83edc4E
            local.get 0
            local.get 3
            i64.store offset=120
            local.get 0
            local.get 6
            i64.store offset=128
            local.get 0
            local.get 5
            i32.store offset=144
            local.get 0
            i32.const 1
            i32.store offset=140
            local.get 0
            i32.const 108
            i32.add
            local.set 1
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  local.get 5
                  call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h88bcf2b405ee41acE
                  br_table 1 (;@6;) 2 (;@5;) 0 (;@7;)
                end
                local.get 0
                local.get 7
                i32.store offset=220
                local.get 0
                local.get 2
                i32.store offset=216
                local.get 0
                local.get 1
                i32.store offset=212
                local.get 0
                local.get 1
                i32.store offset=208
                local.get 0
                local.get 8
                i32.store offset=192
                local.get 0
                local.get 4
                i32.store offset=188
                local.get 0
                local.get 0
                i32.const 140
                i32.add
                i32.const 4
                i32.add
                local.tee 5
                i32.store offset=184
                local.get 0
                local.get 0
                i32.const 116
                i32.add
                i32.store offset=204
                local.get 0
                local.get 0
                i32.const 120
                i32.add
                i32.store offset=200
                local.get 0
                local.get 0
                i32.const 128
                i32.add
                i32.store offset=196
                local.get 0
                i32.const 24
                i32.add
                i32.const 131231
                i32.const 20
                call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hddef9948e6066c58E
                local.get 0
                i32.load offset=24
                local.set 4
                local.get 0
                i32.load offset=28
                local.set 1
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha928fc0bccb1eaadE
                drop
                local.get 1
                local.get 0
                i32.load offset=52
                call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h16b57d3424966b92E
                call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h335800d9e687fe0fE
                local.get 1
                local.get 0
                i32.load offset=144
                call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h88bcf2b405ee41acE
                call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hfa509b370ad823f3E
                local.get 0
                local.get 0
                i32.load offset=144
                call $mBufferGetLength
                i32.store offset=156
                local.get 0
                i32.const 0
                i32.store offset=152
                local.get 0
                local.get 5
                i32.store offset=148
                local.get 0
                i32.const 184
                i32.add
                i32.const 4
                i32.add
                local.set 8
                loop ;; label = @7
                  local.get 0
                  i32.const 160
                  i32.add
                  local.get 0
                  i32.const 148
                  i32.add
                  call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8e2d85ec7b11e644E
                  local.get 0
                  i64.load offset=160
                  i64.eqz
                  br_if 5 (;@2;)
                  local.get 0
                  i32.load offset=180
                  local.set 5
                  local.get 1
                  local.get 0
                  i32.load offset=176
                  call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hc0902f88371e06bfE
                  local.get 0
                  i32.const 16
                  i32.add
                  local.get 4
                  local.get 1
                  local.get 0
                  i64.load offset=168
                  call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h6dd98a14683647e0E
                  local.get 0
                  i32.const 8
                  i32.add
                  local.get 0
                  i32.load offset=16
                  local.get 0
                  i32.load offset=20
                  local.get 5
                  call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h21c8027ff1a3384aE
                  local.get 0
                  i32.load offset=12
                  local.set 1
                  local.get 0
                  i32.load offset=8
                  local.set 4
                  br 0 (;@7;)
                end
              end
              local.get 0
              local.get 7
              i32.store offset=208
              local.get 0
              local.get 2
              i32.store offset=204
              local.get 0
              local.get 8
              i32.store offset=188
              local.get 0
              local.get 4
              i32.store offset=184
              local.get 0
              local.get 0
              i32.const 116
              i32.add
              i32.store offset=200
              local.get 0
              local.get 0
              i32.const 120
              i32.add
              i32.store offset=196
              local.get 0
              local.get 0
              i32.const 128
              i32.add
              i32.store offset=192
              call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h22b7f9442bbe05ffE
              local.set 1
              local.get 0
              i32.const 184
              i32.add
              local.get 0
              i32.load offset=52
              local.get 1
              local.get 2
              local.get 7
              call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h0a5483115047da7fE
              br 4 (;@1;)
            end
            local.get 0
            i32.const 160
            i32.add
            local.get 5
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17hf7ac85a1ddec144bE
            local.get 0
            i64.load offset=160
            local.set 6
            local.get 0
            local.get 0
            i32.const 172
            i32.add
            local.tee 5
            i32.store offset=204
            local.get 0
            local.get 0
            i32.const 160
            i32.add
            i32.const 8
            i32.add
            local.tee 9
            i32.store offset=200
            local.get 0
            local.get 6
            i64.store offset=192
            local.get 0
            local.get 1
            i32.store offset=232
            local.get 0
            local.get 1
            i32.store offset=228
            local.get 0
            local.get 8
            i32.store offset=212
            local.get 0
            local.get 4
            i32.store offset=208
            local.get 0
            local.get 7
            i32.store offset=188
            local.get 0
            local.get 2
            i32.store offset=184
            local.get 0
            local.get 0
            i32.const 116
            i32.add
            i32.store offset=224
            local.get 0
            local.get 0
            i32.const 120
            i32.add
            i32.store offset=220
            local.get 0
            local.get 0
            i32.const 128
            i32.add
            i32.store offset=216
            local.get 0
            i32.const 208
            i32.add
            local.set 1
            block ;; label = @5
              local.get 6
              i64.const 0
              i64.ne
              br_if 0 (;@5;)
              local.get 0
              i32.const 32
              i32.add
              local.get 2
              local.get 7
              local.get 9
              local.get 5
              call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h6e0e907c09b41c03E
              local.get 0
              i32.load offset=36
              local.set 4
              local.get 0
              i32.load offset=32
              local.set 5
              call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h22b7f9442bbe05ffE
              local.set 2
              local.get 1
              local.get 0
              i32.load offset=52
              local.get 2
              local.get 5
              local.get 4
              call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h0a5483115047da7fE
              br 4 (;@1;)
            end
            local.get 0
            i32.const 40
            i32.add
            local.get 2
            local.get 7
            local.get 0
            i32.load offset=52
            local.get 0
            i32.const 184
            i32.add
            i32.const 8
            i32.add
            call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h7509a282570e7df9E
            local.get 0
            i32.load offset=44
            local.set 4
            local.get 0
            i32.load offset=40
            local.set 5
            local.get 1
            call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h5f827d0df12c15aeE
            call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h22b7f9442bbe05ffE
            local.get 5
            local.get 4
            call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h0a5483115047da7fE
            br 3 (;@1;)
          end
          local.get 0
          i32.const 56
          i32.add
          i32.const 131378
          i32.const 8
          call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h5b9364a1d5b9e947E
          call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h16b57d3424966b92E
          local.set 1
          local.get 0
          i32.const 56
          i32.add
          i32.const 131378
          i32.const 8
          call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h5b9364a1d5b9e947E
          i32.const 131378
          i32.const 8
          call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hec7bed42295778f1E
          local.set 6
          local.get 0
          i32.const 56
          i32.add
          i32.const 131378
          i32.const 8
          call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h06ac762f152d4254E
          local.set 4
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
          i32.store offset=184
          local.get 0
          local.get 4
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
          i32.store offset=196
          local.get 0
          local.get 6
          i64.const 56
          i64.shl
          local.get 6
          i64.const 65280
          i64.and
          i64.const 40
          i64.shl
          i64.or
          local.get 6
          i64.const 16711680
          i64.and
          i64.const 24
          i64.shl
          local.get 6
          i64.const 4278190080
          i64.and
          i64.const 8
          i64.shl
          i64.or
          i64.or
          local.get 6
          i64.const 8
          i64.shr_u
          i64.const 4278190080
          i64.and
          local.get 6
          i64.const 24
          i64.shr_u
          i64.const 16711680
          i64.and
          i64.or
          local.get 6
          i64.const 40
          i64.shr_u
          i64.const 65280
          i64.and
          local.get 6
          i64.const 56
          i64.shr_u
          i64.or
          i64.or
          i64.or
          i64.store offset=188 align=4
          local.get 5
          local.get 0
          i32.const 184
          i32.add
          i32.const 16
          call $mBufferAppendBytes
          drop
          br 0 (;@3;)
        end
      end
      local.get 0
      local.get 4
      local.get 1
      local.get 2
      local.get 7
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hdd61d806cb2cc4a9E
      local.get 0
      i32.load offset=4
      local.set 1
      local.get 0
      i32.load
      local.set 4
      local.get 8
      call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h5f827d0df12c15aeE
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h22b7f9442bbe05ffE
      local.get 4
      local.get 1
      call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h0a5483115047da7fE
    end
    local.get 0
    i32.const 240
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_retrieve_funds_bt (;150;) (type 12)
    (local i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd1666cc8b4097568E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7d0c956ef8a370fdE
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1797f3871b4fc6a2E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd2762ffb44d03478E
    local.set 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h3c13ddc51860961bE
    local.set 4
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    i32.const 36
    i32.add
    local.get 0
    i32.const 20
    i32.add
    local.get 2
    local.get 3
    local.get 4
    call $_ZN17promises_features11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14retrieve_funds17hcb89d508638070f8E
    local.get 0
    local.get 0
    i32.load offset=44
    i32.store offset=32
    local.get 0
    local.get 0
    i64.load offset=36 align=4
    i64.store offset=24 align=4
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 24
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17hbb763c981d423cc4E
    local.get 0
    local.get 0
    i32.load offset=12
    local.tee 1
    i32.store offset=40
    local.get 0
    local.get 0
    i32.load offset=8
    local.tee 2
    i32.store offset=36
    block ;; label = @1
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h88bcf2b405ee41acE
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      local.get 2
      call $_ZN4core3cmp9PartialEq2ne17h8762429ff4ca24a3E
      br_if 0 (;@1;)
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h05e6f9e13a60203dE
      unreachable
    end
    local.get 0
    local.get 1
    call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..into_multi_value..IntoMultiValue$GT$16into_multi_value17hd459a789b0b3fc4dE
    i32.store offset=24
    local.get 0
    i32.const 36
    i32.add
    local.get 0
    i32.const 24
    i32.add
    call $_ZN85_$LT$C$u20$as$u20$promises_features..fwd_call_sync_bt..BackTransfersFeatureModule$GT$20back_transfers_event17ha3f8a763030e814aE
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_retrieve_funds_bt_twice (;151;) (type 12)
    (local i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd1666cc8b4097568E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7d0c956ef8a370fdE
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1797f3871b4fc6a2E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd2762ffb44d03478E
    local.set 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h3c13ddc51860961bE
    local.set 4
    local.get 0
    local.get 1
    i32.store offset=28
    i32.const 2147483646
    local.set 1
    block ;; label = @1
      local.get 2
      i32.const 2147483646
      i32.eq
      br_if 0 (;@1;)
      local.get 2
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h16b57d3424966b92E
      local.set 1
    end
    local.get 0
    i32.const 52
    i32.add
    local.get 0
    i32.const 28
    i32.add
    local.get 1
    local.get 3
    local.get 4
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb917022dd8fa29c6E
    call $_ZN17promises_features11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14retrieve_funds17hcb89d508638070f8E
    local.get 0
    local.get 0
    i32.load offset=60
    i32.store offset=48
    local.get 0
    local.get 0
    i64.load offset=52 align=4
    i64.store offset=40 align=4
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.const 40
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17hbb763c981d423cc4E
    local.get 0
    local.get 0
    i32.load offset=20
    local.tee 1
    i32.store offset=36
    local.get 0
    local.get 0
    i32.load offset=16
    local.tee 5
    i32.store offset=32
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h88bcf2b405ee41acE
          i32.const 1
          i32.eq
          br_if 0 (;@3;)
          local.get 5
          call $_ZN4core3cmp9PartialEq2ne17h8762429ff4ca24a3E
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 0
        local.get 1
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..into_multi_value..IntoMultiValue$GT$16into_multi_value17hd459a789b0b3fc4dE
        i32.store offset=52
        local.get 0
        i32.const 32
        i32.add
        local.get 0
        i32.const 52
        i32.add
        call $_ZN85_$LT$C$u20$as$u20$promises_features..fwd_call_sync_bt..BackTransfersFeatureModule$GT$20back_transfers_event17ha3f8a763030e814aE
        local.get 0
        i32.const 52
        i32.add
        local.get 0
        i32.const 28
        i32.add
        local.get 2
        local.get 3
        local.get 4
        call $_ZN17promises_features11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14retrieve_funds17hcb89d508638070f8E
        local.get 0
        local.get 0
        i32.load offset=60
        i32.store offset=48
        local.get 0
        local.get 0
        i64.load offset=52 align=4
        i64.store offset=40 align=4
        local.get 0
        i32.const 8
        i32.add
        local.get 0
        i32.const 40
        i32.add
        call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17hbb763c981d423cc4E
        local.get 0
        local.get 0
        i32.load offset=12
        local.tee 2
        i32.store offset=56
        local.get 0
        local.get 0
        i32.load offset=8
        local.tee 4
        i32.store offset=52
        local.get 2
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h88bcf2b405ee41acE
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        local.get 4
        call $_ZN4core3cmp9PartialEq2ne17h8762429ff4ca24a3E
        br_if 1 (;@1;)
      end
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h05e6f9e13a60203dE
      unreachable
    end
    local.get 0
    local.get 2
    call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..into_multi_value..IntoMultiValue$GT$16into_multi_value17hd459a789b0b3fc4dE
    i32.store offset=40
    local.get 0
    i32.const 52
    i32.add
    local.get 0
    i32.const 40
    i32.add
    call $_ZN85_$LT$C$u20$as$u20$promises_features..fwd_call_sync_bt..BackTransfersFeatureModule$GT$20back_transfers_event17ha3f8a763030e814aE
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_promise_retrieve_funds_back_transfers (;152;) (type 12)
    (local i32 i32 i32 i64 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hd1666cc8b4097568E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7d0c956ef8a370fdE
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1797f3871b4fc6a2E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd2762ffb44d03478E
    local.set 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h3c13ddc51860961bE
    local.set 4
    local.get 0
    local.get 1
    i32.store offset=12
    call $getGasLeft
    local.set 5
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.const 12
    i32.add
    local.get 2
    local.get 3
    local.get 4
    call $_ZN17promises_features11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14retrieve_funds17hcb89d508638070f8E
    local.get 0
    i64.load offset=20 align=4
    local.set 3
    local.get 0
    i32.load offset=16
    local.set 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha928fc0bccb1eaadE
    local.set 2
    local.get 0
    local.get 1
    i32.store offset=56
    local.get 0
    local.get 2
    i32.store offset=48
    local.get 0
    i32.const 38
    i32.store offset=44
    local.get 0
    i32.const 131467
    i32.store offset=40
    local.get 0
    i64.const 10000000
    i64.store offset=32
    local.get 0
    local.get 3
    i64.store offset=24
    local.get 0
    local.get 5
    i64.const -20000000
    i64.add
    i64.store offset=16
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise17h7aaa3be0d754ad8dE
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $retrieve_funds_callback (;153;) (type 12)
    (local i32 i64 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 24
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple28callback_closure_args_loader17h1a5487fa800cc1b6E
    local.get 0
    i32.load offset=28
    local.get 0
    i32.load offset=32
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h864306c89a911fe7E
    local.get 0
    i32.const 24
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h7e0c90abe6ecf41aE
    local.get 0
    i64.load offset=24
    local.set 1
    local.get 0
    i32.load offset=32
    local.set 2
    local.get 0
    local.get 0
    i32.load offset=36
    i32.store offset=20
    local.get 2
    local.get 1
    local.get 0
    i32.const 20
    i32.add
    call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$29retrieve_funds_callback_event17h3c904f4840bc1911E
    local.get 0
    i32.const 8
    i32.add
    call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$13callback_data17h87cffea3a62c35e0E
    local.get 0
    i32.load offset=12
    local.set 3
    local.get 0
    i32.load offset=8
    local.set 4
    call $_ZN149_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u3b$$u20$N$u5d$$GT$$GT$4from17hfc004255e4e80407E
    local.set 5
    local.get 0
    i32.load offset=20
    local.set 6
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha928fc0bccb1eaadE
    local.set 7
    local.get 0
    local.get 2
    i32.store offset=36
    local.get 0
    local.get 5
    i32.store offset=32
    local.get 0
    local.get 7
    i32.store offset=44
    local.get 0
    local.get 6
    i32.store offset=40
    local.get 0
    local.get 1
    i64.store offset=24
    local.get 4
    local.get 3
    local.get 0
    i32.const 24
    i32.add
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$4push17hc36832c0ac945c42E
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $the_one_callback (;154;) (type 12)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple28callback_closure_args_loader17h1a5487fa800cc1b6E
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h43d54d601554610cE
    local.set 1
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h9b21f15a67dae543E
    local.set 2
    local.get 0
    i32.load offset=16
    local.get 0
    i32.load offset=20
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h864306c89a911fe7E
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h76d1a517d93dd437E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h230782bdaa65122eE
    local.get 0
    i32.const 0
    i32.store offset=28
    local.get 0
    i32.const 28
    i32.add
    i32.const 131529
    i32.const 6
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h26878fe6921badfbE
    local.set 3
    local.get 0
    i32.load offset=28
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hfa83c2d1736c81cbE
    local.get 0
    local.get 3
    i32.store offset=24
    i32.const 131588
    i32.const 25
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17hec538b6d863f7cf6E
    local.tee 3
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hfa509b370ad823f3E
    local.get 3
    local.get 2
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h4a8be9354695fd7aE
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha928fc0bccb1eaadE
    i32.store offset=28
    local.get 0
    i32.const 24
    i32.add
    local.get 0
    i32.const 28
    i32.add
    call $_ZN139_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17he8a28f444d96a287E
    local.get 3
    local.get 0
    i32.load offset=28
    call $managedWriteLog
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $retrieve_funds_back_transfers_callback (;155;) (type 12)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 88
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple28callback_closure_args_loader17h1a5487fa800cc1b6E
    local.get 0
    i32.load offset=92
    local.get 0
    i32.load offset=96
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h864306c89a911fe7E
    local.get 0
    i32.const 24
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$18get_back_transfers17h3cc1cdbbb82dc93fE
    local.get 0
    local.get 0
    i32.load offset=28
    local.tee 1
    i32.store offset=36
    local.get 0
    local.get 0
    i32.load offset=24
    local.tee 2
    i32.store offset=32
    local.get 0
    local.get 2
    i32.store offset=40
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 3
    i64.const 0
    call $bigIntSetInt64
    local.get 0
    i32.const 36
    i32.add
    local.set 4
    block ;; label = @1
      local.get 2
      local.get 3
      call $bigIntCmp
      i32.eqz
      br_if 0 (;@1;)
      i32.const 2147483646
      i64.const 0
      local.get 0
      i32.const 40
      i32.add
      call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$29retrieve_funds_callback_event17h3c904f4840bc1911E
      local.get 0
      i32.const 16
      i32.add
      call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$13callback_data17h87cffea3a62c35e0E
      local.get 0
      i32.load offset=20
      local.set 2
      local.get 0
      i32.load offset=16
      local.set 3
      call $_ZN149_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u3b$$u20$N$u5d$$GT$$GT$4from17hfc004255e4e80407E
      local.set 5
      local.get 0
      i32.load offset=40
      local.set 6
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha928fc0bccb1eaadE
      local.set 7
      local.get 0
      i32.const 2147483646
      i32.store offset=100
      local.get 0
      local.get 5
      i32.store offset=96
      local.get 0
      local.get 7
      i32.store offset=108
      local.get 0
      local.get 6
      i32.store offset=104
      local.get 0
      i64.const 0
      i64.store offset=88
      local.get 3
      local.get 2
      local.get 0
      i32.const 88
      i32.add
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$4push17hc36832c0ac945c42E
    end
    local.get 0
    local.get 1
    call $mBufferGetLength
    i32.store offset=52
    local.get 0
    i32.const 0
    i32.store offset=48
    local.get 0
    local.get 4
    i32.store offset=44
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 56
        i32.add
        local.get 0
        i32.const 44
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8e2d85ec7b11e644E
        local.get 0
        i64.load offset=56
        i64.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=72
        local.set 2
        local.get 0
        i64.load offset=64
        local.set 8
        local.get 0
        local.get 0
        i32.load offset=76
        i32.store offset=84
        local.get 2
        local.get 8
        local.get 0
        i32.const 84
        i32.add
        call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$29retrieve_funds_callback_event17h3c904f4840bc1911E
        local.get 0
        i32.const 8
        i32.add
        call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$13callback_data17h87cffea3a62c35e0E
        local.get 0
        i32.load offset=12
        local.set 1
        local.get 0
        i32.load offset=8
        local.set 3
        call $_ZN149_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u3b$$u20$N$u5d$$GT$$GT$4from17hfc004255e4e80407E
        local.set 4
        local.get 0
        i32.load offset=84
        local.set 5
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha928fc0bccb1eaadE
        local.set 6
        local.get 0
        local.get 2
        i32.store offset=100
        local.get 0
        local.get 4
        i32.store offset=96
        local.get 0
        local.get 6
        i32.store offset=108
        local.get 0
        local.get 5
        i32.store offset=104
        local.get 0
        local.get 8
        i64.store offset=88
        local.get 3
        local.get 1
        local.get 0
        i32.const 88
        i32.add
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$4push17hc36832c0ac945c42E
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 112
    i32.add
    global.set $__stack_pointer
  )
  (func $callBack (;156;) (type 12))
  (func $_ZN4core9panicking9panic_fmt17hb859252f4b513814E (;157;) (type 12)
    call $rust_begin_unwind
    unreachable
  )
  (func $_ZN17compiler_builtins3mem6memcpy17h6a01844efc49c0e5E (;158;) (type 7) (param i32 i32 i32) (result i32)
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
  (func $memcpy (;159;) (type 7) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN17compiler_builtins3mem6memcpy17h6a01844efc49c0e5E
  )
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 141669)
  (global (;2;) i32 i32.const 141680)
  (export "memory" (memory 0))
  (export "init" (func $init))
  (export "callback_data" (func $callback_data))
  (export "callback_data_at_index" (func $callback_data_at_index))
  (export "clear_callback_data" (func $clear_callback_data))
  (export "forward_promise_accept_funds" (func $forward_promise_accept_funds))
  (export "forward_promise_retrieve_funds" (func $forward_promise_retrieve_funds))
  (export "promise_raw_single_token" (func $promise_raw_single_token))
  (export "promise_raw_multi_transfer" (func $promise_raw_multi_transfer))
  (export "forward_sync_retrieve_funds_bt" (func $forward_sync_retrieve_funds_bt))
  (export "forward_sync_retrieve_funds_bt_twice" (func $forward_sync_retrieve_funds_bt_twice))
  (export "forward_promise_retrieve_funds_back_transfers" (func $forward_promise_retrieve_funds_back_transfers))
  (export "retrieve_funds_callback" (func $retrieve_funds_callback))
  (export "the_one_callback" (func $the_one_callback))
  (export "retrieve_funds_back_transfers_callback" (func $retrieve_funds_back_transfers_callback))
  (export "callBack" (func $callBack))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data $.rodata (;0;) (i32.const 131072) "input too longincorrect number of DCDT transfersargument decode error (): too few argumentstoo many argumentswrong number of argumentsserializer decode error: MultiDCDTNFTTransferDCDTNFTTransferDCDTTransferinput too shortManagedVec index out of rangeREWA.itemstorage decode error (key: .lenbad array lengthvar argsaccept_fundsretrieve_fundstoOnly one DCDT payment expectedretrieve_funds_callbackretrieve_funds_back_transfers_callbackthe_one_callbackarg2arg1resultargstoken_payment_argsindexcallback_databack_tranfersasync_call_event_callbackindex out of rangepanic occurred")
  (data $.data (;1;) (i32.const 131648) "8\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.80.1 (3f5fd8dd4 2024-08-06)")
  )
  (@custom "target_features" (after data) "\02+\0fmutable-globals+\08sign-ext")
)
