(module $promises_features_wasm.wasm
  (type (;0;) (func (param i32 i64)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32) (result i32)))
  (type (;8;) (func (param i32)))
  (type (;9;) (func (param i32) (result i64)))
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
  (type (;20;) (func (param i32 i64 i32)))
  (type (;21;) (func (param i64 i32)))
  (type (;22;) (func (param i32 i32 i32 i64 i32)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;0;) (type 0)))
  (import "env" "bigIntAdd" (func $bigIntAdd (;1;) (type 1)))
  (import "env" "signalError" (func $signalError (;2;) (type 2)))
  (import "env" "mBufferNew" (func $mBufferNew (;3;) (type 3)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;4;) (type 4)))
  (import "env" "managedCreateAsyncCall" (func $managedCreateAsyncCall (;5;) (type 5)))
  (import "env" "managedGetBackTransfers" (func $managedGetBackTransfers (;6;) (type 2)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;7;) (type 6)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;8;) (type 7)))
  (import "env" "bigIntGetCallValue" (func $bigIntGetCallValue (;9;) (type 8)))
  (import "env" "managedGetMultiDCDTCallValue" (func $managedGetMultiDCDTCallValue (;10;) (type 8)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;11;) (type 4)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;12;) (type 6)))
  (import "env" "managedSignalError" (func $managedSignalError (;13;) (type 8)))
  (import "env" "smallIntGetUnsignedArgument" (func $smallIntGetUnsignedArgument (;14;) (type 9)))
  (import "env" "bigIntGetUnsignedArgument" (func $bigIntGetUnsignedArgument (;15;) (type 2)))
  (import "env" "getNumArguments" (func $getNumArguments (;16;) (type 3)))
  (import "env" "managedGetCallbackClosure" (func $managedGetCallbackClosure (;17;) (type 8)))
  (import "env" "getGasLeft" (func $getGasLeft (;18;) (type 10)))
  (import "env" "managedExecuteOnDestContext" (func $managedExecuteOnDestContext (;19;) (type 11)))
  (import "env" "cleanReturnData" (func $cleanReturnData (;20;) (type 12)))
  (import "env" "mBufferCopyByteSlice" (func $mBufferCopyByteSlice (;21;) (type 13)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;22;) (type 4)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;23;) (type 4)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;24;) (type 4)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;25;) (type 4)))
  (import "env" "bigIntSign" (func $bigIntSign (;26;) (type 7)))
  (import "env" "managedWriteLog" (func $managedWriteLog (;27;) (type 2)))
  (import "env" "managedSCAddress" (func $managedSCAddress (;28;) (type 8)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;29;) (type 12)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;30;) (type 7)))
  (import "env" "finish" (func $finish (;31;) (type 2)))
  (import "env" "smallIntFinishUnsigned" (func $smallIntFinishUnsigned (;32;) (type 14)))
  (import "env" "bigIntFinishUnsigned" (func $bigIntFinishUnsigned (;33;) (type 8)))
  (import "env" "bigIntCmp" (func $bigIntCmp (;34;) (type 4)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;35;) (type 13)))
  (import "env" "mBufferEq" (func $mBufferEq (;36;) (type 4)))
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 141745)
  (global (;2;) i32 i32.const 141760)
  (export "memory" (memory 0))
  (export "init" (func $init))
  (export "callback_data" (func $callback_data))
  (export "callback_data_at_index" (func $callback_data_at_index))
  (export "clear_callback_data" (func $clear_callback_data))
  (export "forward_promise_accept_funds" (func $forward_promise_accept_funds))
  (export "forward_promise_retrieve_funds" (func $forward_promise_retrieve_funds))
  (export "forward_payment_callback" (func $forward_payment_callback))
  (export "promise_raw_single_token" (func $promise_raw_single_token))
  (export "promise_raw_multi_transfer" (func $promise_raw_multi_transfer))
  (export "forward_sync_retrieve_funds_bt" (func $forward_sync_retrieve_funds_bt))
  (export "forward_sync_retrieve_funds_bt_twice" (func $forward_sync_retrieve_funds_bt_twice))
  (export "forward_promise_retrieve_funds_back_transfers" (func $forward_promise_retrieve_funds_back_transfers))
  (export "retrieve_funds_callback" (func $retrieve_funds_callback))
  (export "transfer_callback" (func $transfer_callback))
  (export "the_one_callback" (func $the_one_callback))
  (export "retrieve_funds_back_transfers_callback" (func $retrieve_funds_back_transfers_callback))
  (export "callBack" (func $callBack))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (func $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h298d9aff4280640aE (;37;) (type 7) (param i32) (result i32)
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE (;38;) (type 3) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=131728
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=131728
    local.get 0
  )
  (func $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17h832439ae4b2c6fafE (;39;) (type 12)
    i32.const 131462
    i32.const 30
    call $signalError
    unreachable
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h15e2a8b80e4fc877E (;40;) (type 7) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h56347aa5bec2d1dfE (;41;) (type 12)
    call $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17h832439ae4b2c6fafE
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21create_async_call_raw17h37308edf3f96f226E (;42;) (type 15) (param i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32)
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
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$18get_back_transfers17h6b3a810fe33c602aE (;43;) (type 8) (param i32)
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
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$11any_payment17h885eaef9a45234d2E (;44;) (type 8) (param i32)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28all_dcdt_transfers_unchecked17hfe05060b36cec6bbE
    local.set 2
    block ;; label = @1
      i32.const 4
      call $_ZN11dharitri_sc3api13managed_types14static_var_api16StaticVarApiImpl21flag_is_set_or_update17hd6240346452fe48dE
      br_if 0 (;@1;)
      i32.const -40
      i32.const 131144
      i32.const 11
      call $mBufferSetBytes
      drop
      local.get 1
      local.get 2
      call $mBufferGetLength
      i32.store offset=56
      local.get 1
      i32.const 0
      i32.store offset=52
      local.get 1
      local.get 2
      i32.store offset=48
      loop ;; label = @2
        local.get 1
        i32.const 24
        i32.add
        local.get 1
        i32.const 48
        i32.add
        call $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec04aa0e7da81e6aE
        local.get 1
        i32.load8_u offset=24
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        i32.const -40
        local.get 1
        i32.load offset=25 align=1
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
        call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h00ec339cb3020c69E
        i32.eqz
        br_if 0 (;@2;)
      end
      i32.const 131086
      i32.const 24
      call $signalError
      unreachable
    end
    block ;; label = @1
      block ;; label = @2
        local.get 2
        call $mBufferGetLength
        i32.eqz
        br_if 0 (;@2;)
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
        local.set 4
        local.get 1
        local.get 2
        call $mBufferGetLength
        i32.store offset=20
        local.get 1
        i32.const 0
        i32.store offset=16
        local.get 1
        local.get 2
        i32.store offset=12
        block ;; label = @3
          loop ;; label = @4
            local.get 1
            i32.const 24
            i32.add
            local.get 1
            i32.const 12
            i32.add
            call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3bb7e541cc802e4bE
            local.get 1
            i32.load offset=24
            i32.const 1
            i32.ne
            br_if 1 (;@3;)
            local.get 1
            i64.load offset=32
            local.set 5
            local.get 1
            i32.load offset=44
            local.set 3
            local.get 1
            i32.load offset=40
            call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h15e2a8b80e4fc877E
            local.set 2
            local.get 1
            local.get 3
            call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h298d9aff4280640aE
            i32.store offset=60
            local.get 1
            local.get 5
            i64.store offset=48
            local.get 1
            local.get 2
            i32.store offset=56
            local.get 4
            local.get 1
            i32.const 48
            i32.add
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h216abba226e34886E
            br 0 (;@4;)
          end
        end
        i32.const 1
        local.set 3
        br 1 (;@1;)
      end
      i32.const 0
      local.set 3
      call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$22rewa_direct_non_strict17ha79ded887eb71c52E
      call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h298d9aff4280640aE
      local.set 4
    end
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
    local.get 1
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28all_dcdt_transfers_unchecked17hfe05060b36cec6bbE (;45;) (type 3) (result i32)
    block ;; label = @1
      i32.const 2
      call $_ZN11dharitri_sc3api13managed_types14static_var_api16StaticVarApiImpl21flag_is_set_or_update17hd6240346452fe48dE
      br_if 0 (;@1;)
      i32.const -38
      call $managedGetMultiDCDTCallValue
    end
    i32.const -38
  )
  (func $_ZN11dharitri_sc3api13managed_types14static_var_api16StaticVarApiImpl21flag_is_set_or_update17hd6240346452fe48dE (;46;) (type 7) (param i32) (result i32)
    (local i32 i32)
    block ;; label = @1
      i32.const 0
      i32.load8_u offset=141744
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
      i32.store8 offset=141744
    end
    local.get 2
  )
  (func $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec04aa0e7da81e6aE (;47;) (type 2) (param i32 i32)
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h00ec339cb3020c69E (;48;) (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $mBufferEq
    i32.const 0
    i32.gt_s
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE (;49;) (type 3) (result i32)
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34d62b6b2fcffce6E
  )
  (func $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3bb7e541cc802e4bE (;50;) (type 2) (param i32 i32)
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
    call $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec04aa0e7da81e6aE
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
        call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$M$GT$$u20$as$u20$dharitri_sc..types..managed..wrapped..managed_vec_item..ManagedVecItem$GT$17read_from_payload17h625d16c890f00d40E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h216abba226e34886E (;51;) (type 2) (param i32 i32)
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
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$22rewa_direct_non_strict17ha79ded887eb71c52E (;52;) (type 3) (result i32)
    block ;; label = @1
      i32.const 1
      call $_ZN11dharitri_sc3api13managed_types14static_var_api16StaticVarApiImpl21flag_is_set_or_update17hd6240346452fe48dE
      br_if 0 (;@1;)
      i32.const -35
      call $bigIntGetCallValue
    end
    i32.const -35
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h1385f346077d39e3E (;53;) (type 8) (param i32)
    (local i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28all_dcdt_transfers_unchecked17hfe05060b36cec6bbE
              local.tee 2
              call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h6ea23bc574c55c48E
              br_table 1 (;@4;) 2 (;@3;) 0 (;@5;)
            end
            i32.const 131110
            i32.const 34
            call $signalError
            unreachable
          end
          i64.const 0
          local.set 3
          call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$4rewa17h1b5ceedf5ed38a01E
          local.set 2
          call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$22rewa_direct_non_strict17ha79ded887eb71c52E
          call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h298d9aff4280640aE
          local.set 4
          br 1 (;@2;)
        end
        local.get 1
        i32.const 32
        i32.add
        i32.const 8
        i32.add
        i64.const 0
        i64.store
        local.get 1
        i64.const 0
        i64.store offset=32
        local.get 2
        i32.const 0
        local.get 1
        i32.const 32
        i32.add
        i32.const 16
        call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17he59cf7a5329a8f5dE
        br_if 1 (;@1;)
        local.get 1
        i32.const 8
        i32.add
        i32.const 8
        i32.add
        local.get 1
        i32.const 32
        i32.add
        call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$M$GT$$u20$as$u20$dharitri_sc..types..managed..wrapped..managed_vec_item..ManagedVecItem$GT$19borrow_from_payload17h93e827766e4fd068E
        local.get 1
        i64.load offset=16
        local.set 3
        local.get 1
        i32.load offset=28
        local.set 4
        local.get 1
        i32.load offset=24
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h15e2a8b80e4fc877E
        local.set 2
        local.get 4
        call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h298d9aff4280640aE
        local.set 4
      end
      local.get 0
      local.get 4
      i32.store offset=12
      local.get 0
      local.get 3
      i64.store
      local.get 0
      local.get 2
      i32.store offset=8
      local.get 1
      i32.const 48
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131328
    i32.const 29
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h6ea23bc574c55c48E (;54;) (type 7) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17hd219be41f364044aE
    i32.const 4
    i32.shr_u
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$4rewa17h1b5ceedf5ed38a01E (;55;) (type 3) (result i32)
    i32.const 131144
    i32.const 11
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34d62b6b2fcffce6E
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17he59cf7a5329a8f5dE (;56;) (type 13) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN188_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$M$GT$$u20$as$u20$dharitri_sc..types..managed..wrapped..managed_vec_item..ManagedVecItem$GT$19borrow_from_payload17h93e827766e4fd068E (;57;) (type 2) (param i32 i32)
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
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h3ccf0f2b60ec4f48E (;58;) (type 7) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb0f070e40adce438E (;59;) (type 16) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131155
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34d62b6b2fcffce6E
    local.tee 4
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 4
    i32.const 131178
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34d62b6b2fcffce6E (;60;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h02244544a4087bc2E (;61;) (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
    local.set 3
    local.get 0
    i32.load
    local.set 4
    block ;; label = @1
      loop ;; label = @2
        local.get 4
        i32.const 0
        i32.load offset=141740
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
        call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h3ccf0f2b60ec4f48E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf868fb32c1a08284E
        local.get 5
        local.set 4
        br 0 (;@2;)
      end
    end
    local.get 3
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf868fb32c1a08284E (;62;) (type 2) (param i32 i32)
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17haf7232542ad43230E (;63;) (type 7) (param i32) (result i32)
    (local i64)
    block ;; label = @1
      local.get 0
      i32.const 131596
      call $_ZN253_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h50b7cfd6aded6bedE
      i32.const 131596
      i32.const 4
      call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417h6e4304399df07299E
      local.tee 1
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 131596
      i32.const 4
      i32.const 131072
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb0f070e40adce438E
      unreachable
    end
    local.get 1
    i32.wrap_i64
  )
  (func $_ZN253_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h50b7cfd6aded6bedE (;64;) (type 4) (param i32 i32) (result i32)
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
    call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb4406400f24d15f6E
    block ;; label = @1
      local.get 2
      i32.load offset=8
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 2
      i32.load offset=12
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h15e2a8b80e4fc877E
      local.set 0
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 0
      return
    end
    local.get 1
    i32.const 4
    i32.const 131181
    i32.const 17
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb0f070e40adce438E
    unreachable
  )
  (func $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417h6e4304399df07299E (;65;) (type 17) (param i32 i32 i32) (result i64)
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
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb0f070e40adce438E
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hcaa3d158e0c43d0aE (;66;) (type 7) (param i32) (result i32)
    local.get 0
    i32.const 131592
    call $_ZN253_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h50b7cfd6aded6bedE
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h389de72ac078b6ceE
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h389de72ac078b6ceE (;67;) (type 7) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    call $mBufferToBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h43f04f6a713d9997E (;68;) (type 9) (param i32) (result i64)
    local.get 0
    call $smallIntGetUnsignedArgument
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4861f2994cc96f07E (;69;) (type 3) (result i32)
    i32.const 1
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h3ccf0f2b60ec4f48E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h903aedade33e40b8E (;70;) (type 3) (result i32)
    (local i64)
    block ;; label = @1
      i32.const 0
      call $smallIntGetUnsignedArgument
      local.tee 0
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 131622
      i32.const 5
      i32.const 131072
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb0f070e40adce438E
      unreachable
    end
    local.get 0
    i32.wrap_i64
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9e5a5f279ead2271E (;71;) (type 3) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 0
      call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h3ccf0f2b60ec4f48E
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      i32.const 131460
      i32.const 2
      i32.const 131410
      i32.const 16
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb0f070e40adce438E
      unreachable
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc74ad22f47e29a33E (;72;) (type 3) (result i32)
    (local i32)
    i32.const 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 0
    call $bigIntGetUnsignedArgument
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc800b64e1e4fd381E (;73;) (type 3) (result i32)
    i32.const 1
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h3ccf0f2b60ec4f48E
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17hfcfc4e8d25084845E
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17hfcfc4e8d25084845E (;74;) (type 7) (param i32) (result i32)
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
      call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$4rewa17h1b5ceedf5ed38a01E
      local.set 0
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5cf9d2fe595a087fE (;75;) (type 8) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=141740
      local.get 0
      i32.gt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131198
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hef98af86e459762cE (;76;) (type 2) (param i32 i32)
    block ;; label = @1
      local.get 0
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
      return
    end
    i32.const 131198
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc0e1d9dfc3cdec27E (;77;) (type 8) (param i32)
    block ;; label = @1
      call $getNumArguments
      local.get 0
      i32.ne
      br_if 0 (;@1;)
      return
    end
    i32.const 131216
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h84b134c9fe8ed8a4E (;78;) (type 8) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=141740
      local.get 0
      i32.lt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131181
    i32.const 17
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hae8b8c1616ff9c9bE (;79;) (type 12)
    i32.const 0
    call $getNumArguments
    i32.store offset=141740
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple28callback_closure_args_loader17h3482916f54231468E (;80;) (type 8) (param i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
    local.tee 2
    call $managedGetCallbackClosure
    i32.const -50
    i32.const 1
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 2
    call $mBufferGetLength
    local.set 3
    local.get 1
    i32.const 0
    i32.store8 offset=24
    local.get 1
    local.get 3
    i32.store offset=20
    local.get 1
    local.get 2
    i32.store offset=16
    local.get 1
    local.get 3
    i32.store offset=12
    local.get 1
    i32.const 0
    i32.store offset=8
    local.get 1
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.set 4
    i32.const 0
    local.set 2
    block ;; label = @1
      loop ;; label = @2
        block ;; label = @3
          local.get 3
          local.get 2
          i32.ne
          br_if 0 (;@3;)
          block ;; label = @4
            local.get 1
            i32.load8_u offset=24
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            i32.const 0
            i32.store offset=141732
            i32.const 0
            i32.const 0
            i32.store8 offset=141736
          end
          local.get 0
          i32.const -50
          call $_ZN11dharitri_sc5types7managed7wrapped20managed_vec_iter_ref34ManagedVecRefIterator$LT$M$C$T$GT$15new_from_handle17h812d5ba4c89b33c5E
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
          local.get 4
          local.get 2
          local.get 1
          i32.const 28
          i32.add
          i32.const 4
          call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h96b16f4d68f952e7E
          br_if 0 (;@3;)
          local.get 1
          local.get 1
          i32.load offset=16
          local.get 1
          i32.load offset=8
          i32.const 4
          i32.add
          local.tee 3
          local.get 1
          i32.load offset=28
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
          local.tee 2
          call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h000360cb77d4b87aE
          local.get 1
          i32.load
          i32.const 1
          i32.ne
          br_if 2 (;@1;)
          local.get 1
          i32.load offset=4
          local.set 5
          local.get 1
          local.get 2
          local.get 3
          i32.add
          local.tee 2
          i32.store offset=8
          i32.const -50
          local.get 5
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf868fb32c1a08284E
          local.get 1
          i32.load offset=12
          local.set 3
          br 1 (;@2;)
        end
      end
      i32.const 131241
      i32.const 25
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h7a2bc1277c37e9d6E
      unreachable
    end
    i32.const 131241
    i32.const 25
    call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h79101105bd9d66ffE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped20managed_vec_iter_ref34ManagedVecRefIterator$LT$M$C$T$GT$15new_from_handle17h812d5ba4c89b33c5E (;81;) (type 2) (param i32 i32)
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
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h96b16f4d68f952e7E (;82;) (type 13) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              local.get 0
              i32.load8_u offset=8
              local.tee 4
              br_if 0 (;@5;)
              block ;; label = @6
                local.get 0
                i32.load
                local.tee 5
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17hd219be41f364044aE
                local.tee 6
                i32.const 10000
                i32.gt_u
                i32.const 0
                i32.load8_u offset=141736
                i32.or
                local.tee 7
                i32.const 1
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 6
                i32.store offset=141732
                i32.const 0
                i32.const 1
                i32.store8 offset=141736
                local.get 5
                i32.const 0
                i32.const 131732
                local.get 6
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17he55d7e7b32f21f8eE
                drop
              end
              local.get 7
              i32.const 1
              i32.xor
              local.set 6
              block ;; label = @6
                local.get 4
                i32.eqz
                br_if 0 (;@6;)
                i32.const 0
                i32.const 0
                i32.store offset=141732
                i32.const 0
                i32.const 0
                i32.store8 offset=141736
              end
              local.get 0
              local.get 6
              i32.const 1
              i32.and
              i32.store8 offset=8
              local.get 7
              i32.const 1
              i32.and
              br_if 1 (;@4;)
            end
            i32.const 1
            local.set 0
            local.get 3
            local.get 1
            i32.add
            local.tee 4
            i32.const 0
            i32.load offset=141732
            i32.gt_u
            br_if 1 (;@3;)
            local.get 4
            local.get 1
            i32.lt_u
            br_if 2 (;@2;)
            local.get 4
            i32.const 10000
            i32.gt_u
            br_if 3 (;@1;)
            local.get 2
            local.get 1
            i32.const 131732
            i32.add
            local.get 3
            call $memcpy
            drop
            i32.const 0
            return
          end
          local.get 5
          local.get 1
          local.get 2
          local.get 3
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17he55d7e7b32f21f8eE
          local.set 0
        end
        local.get 0
        return
      end
      local.get 1
      local.get 4
      call $_ZN4core5slice5index22slice_index_order_fail17hce8d8012711d5a00E
      unreachable
    end
    local.get 4
    call $_ZN4core5slice5index24slice_end_index_len_fail17h07937a589bfe269aE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h000360cb77d4b87aE (;83;) (type 16) (param i32 i32 i32 i32)
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
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h7a2bc1277c37e9d6E (;84;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h79101105bd9d66ffE
    unreachable
  )
  (func $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h79101105bd9d66ffE (;85;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34d62b6b2fcffce6E
    local.tee 1
    i32.const 131313
    i32.const 15
    call $mBufferAppendBytes
    drop
    local.get 1
    call $managedSignalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$19serialize_overwrite17h8861cdae4ffac8b7E (;86;) (type 2) (param i32 i32)
    local.get 1
    i32.load
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$9overwrite17h0ffc3b79de9a0351E
    local.get 0
    local.get 1
    call $_ZN139_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h60df583e3c1319e7E
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$9overwrite17h0ffc3b79de9a0351E (;87;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferSetBytes
    drop
  )
  (func $_ZN139_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h60df583e3c1319e7E (;88;) (type 2) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.load
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h15e2a8b80e4fc877E
    local.set 3
    local.get 2
    i32.const 16
    i32.add
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped20managed_vec_iter_ref34ManagedVecRefIterator$LT$M$C$T$GT$3new17h6759709968ad933cE
    loop ;; label = @1
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 16
      i32.add
      call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb4406400f24d15f6E
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
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17hc26012a9821d0b55E (;89;) (type 18) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 24
    i32.add
    i32.const 131266
    i32.const 20
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h6bcb2f3f3bb4433bE
    local.get 5
    i32.load offset=24
    local.set 6
    local.get 5
    i32.load offset=28
    local.set 7
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
    drop
    local.get 7
    local.get 3
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h15e2a8b80e4fc877E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf868fb32c1a08284E
    local.get 7
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h6ea23bc574c55c48E
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h11c2d678e0df90adE
    local.get 5
    local.get 4
    call $mBufferGetLength
    i32.store offset=44
    local.get 5
    i32.const 0
    i32.store offset=40
    local.get 5
    local.get 4
    i32.store offset=36
    local.get 5
    i32.const 48
    i32.add
    i32.const 8
    i32.add
    local.set 8
    local.get 5
    i32.const 96
    i32.add
    local.set 4
    loop ;; label = @1
      local.get 5
      i32.const 95
      i32.add
      local.get 5
      i32.const 36
      i32.add
      call $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hec04aa0e7da81e6aE
      block ;; label = @2
        local.get 5
        i32.load8_u offset=95
        br_if 0 (;@2;)
        local.get 5
        i32.const 16
        i32.add
        local.get 6
        local.get 7
        local.get 1
        local.get 2
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h8dd84f3575cd6edcE
        local.get 5
        i32.load offset=20
        local.set 7
        local.get 0
        local.get 5
        i32.load offset=16
        i32.store
        local.get 0
        local.get 7
        i32.store offset=4
        local.get 5
        i32.const 112
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 5
      i32.const 72
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
      i64.store offset=72
      local.get 8
      local.get 5
      i32.const 72
      i32.add
      call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$M$GT$$u20$as$u20$dharitri_sc..types..managed..wrapped..managed_vec_item..ManagedVecItem$GT$19borrow_from_payload17h93e827766e4fd068E
      local.get 5
      i32.load offset=68
      local.set 3
      local.get 7
      local.get 5
      i32.load offset=64
      call $_ZN166_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h1327f5252b9e3025E
      local.get 5
      i32.const 8
      i32.add
      local.get 6
      local.get 7
      local.get 5
      i64.load offset=56
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h37f87a6ce11199ccE
      local.get 5
      local.get 5
      i32.load offset=8
      local.get 5
      i32.load offset=12
      local.get 3
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17heea5a7ce4a7fb886E
      local.get 5
      i32.load offset=4
      local.set 7
      local.get 5
      i32.load
      local.set 6
      br 0 (;@1;)
    end
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h6bcb2f3f3bb4433bE (;90;) (type 1) (param i32 i32 i32)
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34d62b6b2fcffce6E
    local.set 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h11c2d678e0df90adE (;91;) (type 2) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
    local.tee 2
    local.get 1
    i64.extend_i32_u
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417hc04401191483875aE
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf868fb32c1a08284E
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h8dd84f3575cd6edcE (;92;) (type 18) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block ;; label = @1
      local.get 3
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17hd219be41f364044aE
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      call $_ZN166_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h1327f5252b9e3025E
      local.get 5
      i32.const 20
      i32.add
      local.get 4
      call $_ZN11dharitri_sc5types7managed7wrapped20managed_vec_iter_ref34ManagedVecRefIterator$LT$M$C$T$GT$3new17h6759709968ad933cE
      loop ;; label = @2
        local.get 5
        i32.const 8
        i32.add
        local.get 5
        i32.const 20
        i32.add
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb4406400f24d15f6E
        local.get 5
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        local.get 5
        i32.load offset=12
        call $_ZN166_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h1327f5252b9e3025E
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
  (func $_ZN166_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h1327f5252b9e3025E (;93;) (type 2) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
    drop
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h15e2a8b80e4fc877E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf868fb32c1a08284E
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h37f87a6ce11199ccE (;94;) (type 19) (param i32 i32 i32 i64)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h90f07c0c3e9eda9aE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17heea5a7ce4a7fb886E (;95;) (type 16) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h4611ce55d650b3e5E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17hb8c51a3268b6db58E (;96;) (type 18) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 40
    i32.add
    i32.const 131286
    i32.const 15
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h6bcb2f3f3bb4433bE
    local.get 5
    i32.const 32
    i32.add
    local.get 5
    i32.load offset=40
    local.get 5
    i32.load offset=44
    local.get 4
    i32.load offset=8
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h4b7651186bc40fccE
    local.get 5
    i32.const 24
    i32.add
    local.get 5
    i32.load offset=32
    local.get 5
    i32.load offset=36
    local.get 4
    i64.load
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h37f87a6ce11199ccE
    local.get 5
    i32.const 16
    i32.add
    local.get 5
    i32.load offset=24
    local.get 5
    i32.load offset=28
    local.get 4
    i32.load offset=12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h436940536f557612E
    local.get 5
    i32.load offset=16
    local.set 6
    local.get 5
    i32.load offset=20
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
    drop
    local.get 4
    local.get 3
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h15e2a8b80e4fc877E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf868fb32c1a08284E
    local.get 5
    i32.const 8
    i32.add
    local.get 6
    local.get 4
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h8dd84f3575cd6edcE
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
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h4b7651186bc40fccE (;97;) (type 16) (param i32 i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
    drop
    local.get 2
    local.get 3
    i32.load
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h15e2a8b80e4fc877E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf868fb32c1a08284E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h436940536f557612E (;98;) (type 16) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h52d55890ebc0ba98E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h39535540d777c714E (;99;) (type 18) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 24
    i32.add
    i32.const 131301
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h6bcb2f3f3bb4433bE
    local.get 5
    i32.const 16
    i32.add
    local.get 5
    i32.load offset=24
    local.get 5
    i32.load offset=28
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h4b7651186bc40fccE
    local.get 5
    i32.const 8
    i32.add
    local.get 5
    i32.load offset=16
    local.get 5
    i32.load offset=20
    local.get 4
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h436940536f557612E
    local.get 5
    local.get 5
    i32.load offset=8
    local.get 5
    i32.load offset=12
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h8dd84f3575cd6edcE
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
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h90f07c0c3e9eda9aE (;100;) (type 0) (param i32 i64)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
    local.tee 2
    local.get 1
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417hc04401191483875aE
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf868fb32c1a08284E
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h52d55890ebc0ba98E (;101;) (type 2) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
    drop
    local.get 0
    local.get 1
    i32.load
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17ha4c0fcd6a3083791E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf868fb32c1a08284E
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17hd219be41f364044aE (;102;) (type 7) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped20managed_vec_iter_ref34ManagedVecRefIterator$LT$M$C$T$GT$3new17h6759709968ad933cE (;103;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped20managed_vec_iter_ref34ManagedVecRefIterator$LT$M$C$T$GT$15new_from_handle17h812d5ba4c89b33c5E
  )
  (func $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb4406400f24d15f6E (;104;) (type 2) (param i32 i32)
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
    call $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h59954803c650fa31E
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
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h4611ce55d650b3e5E (;105;) (type 2) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
    drop
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17ha4c0fcd6a3083791E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf868fb32c1a08284E
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17h9c0ccb52be9c96f6E (;106;) (type 2) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h48693bdf66cf0eebE
    local.set 6
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
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
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$18get_back_transfers17h6b3a810fe33c602aE
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
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h48693bdf66cf0eebE (;107;) (type 3) (result i32)
    i32.const -10
    i64.const 0
    call $bigIntSetInt64
    i32.const -10
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise17h058b24349d555d8cE (;108;) (type 8) (param i32)
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
    i32.load offset=32
    local.get 1
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$19serialize_overwrite17h8861cdae4ffac8b7E
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
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h48693bdf66cf0eebE
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
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21create_async_call_raw17h37308edf3f96f226E
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h3829578b42f4ae2cE (;109;) (type 18) (param i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21create_async_call_raw17h37308edf3f96f226E
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hff1f3ced65d1f33eE (;110;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17hf007d2bf28da4389E
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
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h000360cb77d4b87aE
    block ;; label = @1
      local.get 2
      i32.load offset=8
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      i32.const 131313
      i32.const 15
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17he3b9ae6c56f42fcbE
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17hf007d2bf28da4389E (;111;) (type 4) (param i32 i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hc66b00d89d064a2cE
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
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17he3b9ae6c56f42fcbE (;112;) (type 1) (param i32 i32 i32)
    (local i32)
    i32.const 131366
    i32.const 27
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34d62b6b2fcffce6E
    local.tee 3
    local.get 0
    call $mBufferAppend
    drop
    local.get 3
    i32.const 131178
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17he55d7e7b32f21f8eE (;113;) (type 13) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17he59cf7a5329a8f5dE
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h974358278daf935aE (;114;) (type 2) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17he55d7e7b32f21f8eE
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131328
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
    call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$M$GT$$u20$as$u20$dharitri_sc..types..managed..wrapped..managed_vec_item..ManagedVecItem$GT$17read_from_payload17h625d16c890f00d40E
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
  (func $_ZN174_$LT$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$M$GT$$u20$as$u20$dharitri_sc..types..managed..wrapped..managed_vec_item..ManagedVecItem$GT$17read_from_payload17h625d16c890f00d40E (;115;) (type 2) (param i32 i32)
    (local i32 i64)
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
  (func $_ZN4core5slice5index22slice_index_order_fail17hce8d8012711d5a00E (;116;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN4core5slice5index22slice_index_order_fail8do_panic7runtime17h3eb440503b756a77E
    unreachable
  )
  (func $_ZN4core5slice5index24slice_end_index_len_fail17h07937a589bfe269aE (;117;) (type 8) (param i32)
    local.get 0
    call $_ZN4core5slice5index24slice_end_index_len_fail8do_panic7runtime17h40abf6316be1d38dE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h08d94815648c38bcE (;118;) (type 7) (param i32) (result i32)
    i32.const -40
    i32.const 131144
    i32.const 11
    call $mBufferSetBytes
    drop
    i32.const -40
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h00ec339cb3020c69E
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17ha4c0fcd6a3083791E (;119;) (type 7) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h14e872b8956392b5E (;120;) (type 7) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17hde57280d79930eeeE (;121;) (type 2) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34d62b6b2fcffce6E
    call $mBufferStorageStore
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec8num_conv17top_encode_number17he16fb69829eeed2eE (;122;) (type 20) (param i32 i64 i32)
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
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$4push17hcf196c0fec8cc3c6E (;123;) (type 1) (param i32 i32 i32)
    (local i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h3d67f31236e834a8E
    i32.const 1
    i32.add
    local.tee 3
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h309d7d955c60f47fE
    local.set 4
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34d62b6b2fcffce6E
    local.set 0
    local.get 2
    i32.load offset=8
    local.get 0
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h83ac92e79677baf6E
    local.get 2
    i32.load offset=12
    local.get 0
    call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hfea212cf5e31837cE
    local.get 2
    i64.load
    local.get 0
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17heb690643fe60c3e7E
    local.get 2
    i32.load offset=16
    local.get 0
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hd48c5626d52df1b4E
    local.get 2
    i32.load offset=20
    local.get 0
    call $_ZN145_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h1c6af073b8085c12E
    local.get 4
    local.get 0
    call $mBufferStorageStore
    drop
    local.get 1
    local.get 3
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17hde57280d79930eeeE
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h3d67f31236e834a8E (;124;) (type 7) (param i32) (result i32)
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
        call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h14e872b8956392b5E
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
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17he3b9ae6c56f42fcbE
      unreachable
    end
    local.get 0
    i32.const 131072
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17he3b9ae6c56f42fcbE
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h309d7d955c60f47fE (;125;) (type 4) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h15e2a8b80e4fc877E
    local.tee 0
    i32.const 131361
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
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h83ac92e79677baf6E (;126;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17hd219be41f364044aE
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
    call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17he34be42197baf0c7E
    local.get 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hfea212cf5e31837cE (;127;) (type 2) (param i32 i32)
    block ;; label = @1
      local.get 0
      call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h08d94815648c38bcE
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h83ac92e79677baf6E
      return
    end
    i32.const 4
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h39047515d9b827a0E
    local.get 1
    i32.const 131357
    i32.const 4
    call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17he34be42197baf0c7E
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17heb690643fe60c3e7E (;128;) (type 21) (param i64 i32)
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
    call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17he34be42197baf0c7E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hd48c5626d52df1b4E (;129;) (type 2) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17ha4c0fcd6a3083791E
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h83ac92e79677baf6E
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h1c6af073b8085c12E (;130;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17hd219be41f364044aE
    i32.const 2
    i32.shr_u
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h39047515d9b827a0E
    local.get 2
    i32.const 20
    i32.add
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped20managed_vec_iter_ref34ManagedVecRefIterator$LT$M$C$T$GT$3new17h6759709968ad933cE
    loop ;; label = @1
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 20
      i32.add
      call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb4406400f24d15f6E
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
      call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h83ac92e79677baf6E
      br 0 (;@1;)
    end
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$13get_unchecked17he55e9ea891a7a7b7E (;131;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h309d7d955c60f47fE
    local.tee 1
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h14e872b8956392b5E
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
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hff1f3ced65d1f33eE
    local.set 5
    local.get 3
    i32.const 4
    i32.add
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hff1f3ced65d1f33eE
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17hfcfc4e8d25084845E
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hc66b00d89d064a2cE
    local.get 3
    i64.load offset=24
    local.set 7
    local.get 3
    i32.const 4
    i32.add
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hff1f3ced65d1f33eE
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h389de72ac078b6ceE
    local.set 8
    local.get 3
    i32.const 4
    i32.add
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17hf007d2bf28da4389E
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
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
        call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hff1f3ced65d1f33eE
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf868fb32c1a08284E
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
        i32.store offset=141732
        i32.const 0
        i32.const 0
        i32.store8 offset=141736
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
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17he3b9ae6c56f42fcbE
    unreachable
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hc66b00d89d064a2cE (;132;) (type 16) (param i32 i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h96b16f4d68f952e7E
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17heed8c28a61f5f53fE
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17hcb27e2142c94efd3E (;133;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h52d55890ebc0ba98E
  )
  (func $_ZN11dharitri_sc8log_util23event_topic_accumulator17he9e2d2d09ee8c04aE (;134;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
    local.tee 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34d62b6b2fcffce6E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf868fb32c1a08284E
    local.get 2
  )
  (func $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17he34be42197baf0c7E (;135;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferAppendBytes
    drop
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h39047515d9b827a0E (;136;) (type 2) (param i32 i32)
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
    call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17he34be42197baf0c7E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN149_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u3b$$u20$N$u5d$$GT$$GT$4from17h1d24dad36e4df590E (;137;) (type 3) (result i32)
    i32.const 131509
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34d62b6b2fcffce6E
  )
  (func $_ZN149_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u3b$$u20$N$u5d$$GT$$GT$4from17hdbec6e1ae4466b50E (;138;) (type 3) (result i32)
    i32.const 131492
    i32.const 17
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34d62b6b2fcffce6E
  )
  (func $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..into_multi_value..IntoMultiValue$GT$16into_multi_value17h85fcaa9fa3abc682E (;139;) (type 7) (param i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
    local.set 2
    local.get 1
    local.get 0
    call $mBufferGetLength
    i32.store offset=12
    local.get 1
    i32.const 0
    i32.store offset=8
    local.get 1
    local.get 0
    i32.store offset=4
    loop (result i32) ;; label = @1
      local.get 1
      i32.const 16
      i32.add
      local.get 1
      i32.const 4
      i32.add
      call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3bb7e541cc802e4bE
      block ;; label = @2
        local.get 1
        i32.load offset=16
        br_if 0 (;@2;)
        local.get 1
        i32.const 48
        i32.add
        global.set $__stack_pointer
        local.get 2
        return
      end
      local.get 1
      i32.load offset=36
      local.set 0
      local.get 1
      i32.load offset=32
      local.set 3
      local.get 1
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
      i32.store offset=44
      local.get 3
      local.get 1
      i32.const 44
      i32.add
      call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17hc0a63d92b534f3eeE
      local.get 2
      local.get 1
      i32.load offset=44
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf868fb32c1a08284E
      local.get 2
      local.get 1
      i64.load offset=24
      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h90f07c0c3e9eda9aE
      local.get 2
      local.get 0
      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h4611ce55d650b3e5E
      br 0 (;@1;)
    end
  )
  (func $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17hc0a63d92b534f3eeE (;140;) (type 2) (param i32 i32)
    block ;; label = @1
      local.get 0
      call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h08d94815648c38bcE
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h15e2a8b80e4fc877E
      i32.store
      return
    end
    local.get 1
    i32.load
    i32.const 131357
    i32.const 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$9overwrite17h0ffc3b79de9a0351E
  )
  (func $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h59954803c650fa31E (;141;) (type 2) (param i32 i32)
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
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17he59cf7a5329a8f5dE
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
  (func $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417hc04401191483875aE (;142;) (type 0) (param i32 i64)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$9overwrite17h0ffc3b79de9a0351E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17promises_features11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14retrieve_funds17h94a46b0b05d78262E (;143;) (type 22) (param i32 i32 i32 i64 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 16
    i32.add
    i32.const 131446
    i32.const 14
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h6bcb2f3f3bb4433bE
    local.get 5
    i32.load offset=16
    local.set 6
    local.get 5
    i32.load offset=20
    local.set 7
    local.get 5
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
    i32.store offset=28
    local.get 2
    local.get 5
    i32.const 28
    i32.add
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17hc0a63d92b534f3eeE
    local.get 7
    local.get 5
    i32.load offset=28
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf868fb32c1a08284E
    local.get 5
    i32.const 8
    i32.add
    local.get 6
    local.get 7
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h37f87a6ce11199ccE
    local.get 5
    local.get 5
    i32.load offset=8
    local.get 5
    i32.load offset=12
    local.get 4
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17heea5a7ce4a7fb886E
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
  (func $_ZN17promises_features23fwd_call_promise_direct13CallbackProxy16the_one_callback17hc7a61221e43ec327E (;144;) (type 1) (param i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
    local.tee 3
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h11c2d678e0df90adE
    local.get 3
    local.get 2
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h4611ce55d650b3e5E
    local.get 0
    local.get 3
    i32.store offset=8
    local.get 0
    i32.const 16
    i32.store offset=4
    local.get 0
    i32.const 131576
    i32.store
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17heed8c28a61f5f53fE (;145;) (type 8) (param i32)
    local.get 0
    i32.const 131313
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17he3b9ae6c56f42fcbE
    unreachable
  )
  (func $_ZN257_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_owned..ManagedVecOwnedIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hdcf40ae518f0827fE (;146;) (type 7) (param i32) (result i32)
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
    call $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h59954803c650fa31E
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
    i32.const 131426
    i32.const 8
    i32.const 131181
    i32.const 17
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb0f070e40adce438E
    unreachable
  )
  (func $_ZN4core3cmp9PartialEq2ne17h526777f92fc767beE (;147;) (type 7) (param i32) (result i32)
    local.get 0
    call $bigIntSign
    i32.const 0
    i32.ne
  )
  (func $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hfe001c71600d09c1E (;148;) (type 7) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    local.get 0
    i64.extend_i32_u
    call $bigIntSetInt64
    local.get 1
  )
  (func $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$13callback_data17h5ac13cb4acccb6e6E (;149;) (type 8) (param i32)
    (local i32 i32)
    i32.const 131627
    i32.const 13
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34d62b6b2fcffce6E
    local.tee 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h15e2a8b80e4fc877E
    local.tee 2
    i32.const 131406
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
  (func $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$29retrieve_funds_callback_event17h5590b262beb78676E (;150;) (type 20) (param i32 i64 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const 131509
    i32.const 23
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17he9e2d2d09ee8c04aE
    local.set 4
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
    i32.store offset=12
    local.get 0
    local.get 3
    i32.const 12
    i32.add
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17hc0a63d92b534f3eeE
    local.get 4
    local.get 3
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf868fb32c1a08284E
    local.get 4
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h90f07c0c3e9eda9aE
    local.get 4
    local.get 2
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17hcb27e2142c94efd3E
    local.get 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
    call $managedWriteLog
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17h9a2a2555f2a38aa7E (;151;) (type 2) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
    drop
    local.get 1
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h15e2a8b80e4fc877E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf868fb32c1a08284E
  )
  (func $_ZN85_$LT$C$u20$as$u20$promises_features..fwd_call_sync_bt..BackTransfersFeatureModule$GT$20back_transfers_event17h21fe414ab5286958E (;152;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 131655
    i32.const 13
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17he9e2d2d09ee8c04aE
    local.tee 3
    local.get 0
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17hcb27e2142c94efd3E
    local.get 2
    i32.const 20
    i32.add
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped20managed_vec_iter_ref34ManagedVecRefIterator$LT$M$C$T$GT$3new17h6759709968ad933cE
    block ;; label = @1
      loop ;; label = @2
        local.get 2
        i32.const 8
        i32.add
        local.get 2
        i32.const 20
        i32.add
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb4406400f24d15f6E
        local.get 2
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=12
        local.get 3
        call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17h9a2a2555f2a38aa7E
        br 0 (;@2;)
      end
    end
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
    call $managedWriteLog
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h7935456524220947E (;153;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 0
    call $managedSCAddress
    local.get 0
  )
  (func $rust_begin_unwind (;154;) (type 12)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17hbce93cd107d2a5cdE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17hbce93cd107d2a5cdE (;155;) (type 12)
    i32.const 131711
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;156;) (type 12)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc0e1d9dfc3cdec27E
  )
  (func $callback_data (;157;) (type 12)
    (local i32 i32 i32 i32 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc0e1d9dfc3cdec27E
    local.get 0
    i32.const 8
    i32.add
    call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$13callback_data17h5ac13cb4acccb6e6E
    local.get 0
    i32.const 24
    i32.add
    local.set 1
    local.get 0
    i32.load offset=8
    local.set 2
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h3d67f31236e834a8E
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
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$13get_unchecked17he55e9ea891a7a7b7E
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
        i32.const 1
        i32.const 0
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h34d62b6b2fcffce6E
        local.tee 9
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h83ac92e79677baf6E
        local.get 8
        local.get 9
        call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hfea212cf5e31837cE
        local.get 7
        local.get 9
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17heb690643fe60c3e7E
        local.get 6
        local.get 9
        call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hd48c5626d52df1b4E
        local.get 5
        local.get 9
        call $_ZN145_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h1c6af073b8085c12E
        local.get 9
        call $mBufferFinish
        drop
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
  (func $callback_data_at_index (;158;) (type 12)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc0e1d9dfc3cdec27E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h903aedade33e40b8E
    local.set 1
    local.get 0
    i32.const 16
    i32.add
    call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$13callback_data17h5ac13cb4acccb6e6E
    block ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=16
      local.set 2
      local.get 0
      i32.load offset=20
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h3d67f31236e834a8E
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 24
      i32.add
      local.get 2
      local.get 1
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$13get_unchecked17he55e9ea891a7a7b7E
      local.get 0
      i32.load offset=44
      local.set 1
      local.get 0
      i32.load offset=40
      local.set 3
      local.get 0
      i64.load offset=24
      local.set 4
      local.get 0
      i32.load offset=36
      local.set 2
      local.get 0
      i32.load offset=32
      call $mBufferFinish
      drop
      block ;; label = @2
        block ;; label = @3
          local.get 2
          call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h08d94815648c38bcE
          br_if 0 (;@3;)
          local.get 2
          call $mBufferFinish
          drop
          br 1 (;@2;)
        end
        i32.const 131357
        i32.const 4
        call $finish
      end
      local.get 4
      call $smallIntFinishUnsigned
      local.get 3
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
          call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb4406400f24d15f6E
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
    i32.const 131693
    i32.const 18
    call $signalError
    unreachable
  )
  (func $clear_callback_data (;159;) (type 12)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc0e1d9dfc3cdec27E
    local.get 0
    i32.const 8
    i32.add
    call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$13callback_data17h5ac13cb4acccb6e6E
    local.get 0
    i32.load offset=8
    local.set 1
    local.get 0
    i32.load offset=12
    local.tee 2
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h3d67f31236e834a8E
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
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h309d7d955c60f47fE
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
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17hde57280d79930eeeE
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_promise_accept_funds (;160;) (type 12)
    (local i32 i64 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 208
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc0e1d9dfc3cdec27E
    local.get 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9e5a5f279ead2271E
    i32.store offset=36
    local.get 0
    i32.const 40
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h1385f346077d39e3E
    call $getGasLeft
    local.set 1
    local.get 0
    i32.const 24
    i32.add
    i32.const 131434
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h6bcb2f3f3bb4433bE
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
    local.get 0
    i64.load offset=40
    local.set 1
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load offset=48
        local.tee 5
        call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h08d94815648c38bcE
        br_if 0 (;@2;)
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
        block ;; label = @3
          local.get 1
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
          local.get 0
          i32.const 8
          i32.add
          local.get 3
          local.get 2
          local.get 6
          local.get 5
          call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h39535540d777c714E
          local.get 0
          i32.load offset=12
          local.set 2
          local.get 0
          i32.load offset=8
          local.set 3
          call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h48693bdf66cf0eebE
          local.set 5
          local.get 4
          local.get 0
          i32.load offset=36
          local.get 5
          local.get 3
          local.get 2
          call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h3829578b42f4ae2cE
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
        i32.const 160
        i32.add
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17hb8c51a3268b6db58E
        local.get 0
        i32.load offset=20
        local.set 2
        local.get 0
        i32.load offset=16
        local.set 3
        local.get 4
        call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h7935456524220947E
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h48693bdf66cf0eebE
        local.get 3
        local.get 2
        call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h3829578b42f4ae2cE
        br 1 (;@1;)
      end
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
      call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h3829578b42f4ae2cE
    end
    local.get 0
    i32.const 208
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_promise_retrieve_funds (;161;) (type 12)
    (local i32 i32 i32 i64 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc0e1d9dfc3cdec27E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9e5a5f279ead2271E
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc800b64e1e4fd381E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h43f04f6a713d9997E
    local.set 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc74ad22f47e29a33E
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
    call $_ZN17promises_features11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14retrieve_funds17h94a46b0b05d78262E
    local.get 0
    i64.load offset=20 align=4
    local.set 3
    local.get 0
    i32.load offset=16
    local.set 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
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
    i32.const 131509
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise17h058b24349d555d8cE
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_payment_callback (;162;) (type 12)
    (local i32 i32 i32 i64 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 192
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc0e1d9dfc3cdec27E
    local.get 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9e5a5f279ead2271E
    i32.store offset=44
    local.get 0
    i32.const 32
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$11any_payment17h885eaef9a45234d2E
    local.get 0
    i32.load offset=32
    local.set 1
    local.get 0
    i32.load offset=36
    local.set 2
    call $getGasLeft
    local.set 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
    local.set 4
    local.get 0
    i32.const 24
    i32.add
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h6bcb2f3f3bb4433bE
    local.get 0
    local.get 4
    i32.store offset=84
    local.get 0
    i32.const 17
    i32.store offset=80
    local.get 0
    i32.const 131492
    i32.store offset=76
    local.get 0
    local.get 3
    i64.const 1
    i64.shr_u
    local.tee 3
    i64.store offset=56
    local.get 0
    local.get 2
    i32.store offset=52
    local.get 0
    local.get 1
    i32.store offset=48
    local.get 0
    local.get 0
    i32.load offset=28
    local.tee 5
    i32.store offset=68
    local.get 0
    local.get 0
    i32.load offset=24
    local.tee 6
    i32.store offset=64
    local.get 0
    local.get 0
    i32.const 44
    i32.add
    i32.store offset=72
    local.get 0
    i32.const -25
    i32.store offset=92
    local.get 4
    local.get 0
    i32.const 92
    i32.add
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$19serialize_overwrite17h8861cdae4ffac8b7E
    local.get 0
    i64.const 0
    i64.store offset=96
    local.get 0
    local.get 3
    i64.store offset=104
    local.get 0
    local.get 2
    i32.store offset=116
    local.get 0
    local.get 1
    i32.store offset=112
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 0
        local.get 5
        i32.store offset=164
        local.get 0
        local.get 6
        i32.store offset=160
        local.get 0
        i32.const 17
        i32.store offset=140
        local.get 0
        i32.const 131492
        i32.store offset=136
        local.get 0
        local.get 0
        i32.const 44
        i32.add
        i32.store offset=156
        local.get 0
        local.get 0
        i32.const 92
        i32.add
        i32.store offset=152
        local.get 0
        local.get 0
        i32.const 96
        i32.add
        i32.store offset=148
        local.get 0
        local.get 0
        i32.const 104
        i32.add
        i32.store offset=144
        local.get 0
        i32.const 136
        i32.add
        local.get 0
        i32.load offset=44
        local.get 2
        local.get 6
        local.get 5
        call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h3829578b42f4ae2cE
        br 1 (;@1;)
      end
      local.get 0
      i32.const 88
      i32.add
      local.set 1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 2
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h6ea23bc574c55c48E
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          local.get 0
          local.get 5
          i32.store offset=172
          local.get 0
          local.get 6
          i32.store offset=168
          local.get 0
          local.get 1
          i32.store offset=164
          local.get 0
          local.get 1
          i32.store offset=160
          local.get 0
          i32.const 17
          i32.store offset=144
          local.get 0
          i32.const 131492
          i32.store offset=140
          local.get 0
          local.get 0
          i32.const 116
          i32.add
          i32.store offset=136
          local.get 0
          local.get 0
          i32.const 92
          i32.add
          i32.store offset=156
          local.get 0
          local.get 0
          i32.const 96
          i32.add
          i32.store offset=152
          local.get 0
          local.get 0
          i32.const 104
          i32.add
          i32.store offset=148
          local.get 0
          local.get 6
          local.get 5
          local.get 0
          i32.load offset=44
          local.get 2
          call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17hc26012a9821d0b55E
          local.get 0
          i32.load offset=4
          local.set 2
          local.get 0
          i32.load
          local.set 1
          local.get 0
          i32.const 140
          i32.add
          call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h7935456524220947E
          call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h48693bdf66cf0eebE
          local.get 1
          local.get 2
          call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h3829578b42f4ae2cE
          br 2 (;@1;)
        end
        local.get 0
        local.get 5
        i32.store offset=160
        local.get 0
        local.get 6
        i32.store offset=156
        local.get 0
        i32.const 17
        i32.store offset=140
        local.get 0
        i32.const 131492
        i32.store offset=136
        local.get 0
        local.get 0
        i32.const 92
        i32.add
        i32.store offset=152
        local.get 0
        local.get 0
        i32.const 96
        i32.add
        i32.store offset=148
        local.get 0
        local.get 0
        i32.const 104
        i32.add
        i32.store offset=144
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h48693bdf66cf0eebE
        local.set 2
        local.get 0
        i32.const 136
        i32.add
        local.get 0
        i32.load offset=44
        local.get 2
        local.get 6
        local.get 5
        call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h3829578b42f4ae2cE
        br 1 (;@1;)
      end
      local.get 0
      i32.const 120
      i32.add
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h974358278daf935aE
      local.get 0
      i64.load offset=120
      local.set 3
      local.get 0
      local.get 0
      i32.const 132
      i32.add
      local.tee 4
      i32.store offset=156
      local.get 0
      local.get 0
      i32.const 120
      i32.add
      i32.const 8
      i32.add
      local.tee 7
      i32.store offset=152
      local.get 0
      local.get 3
      i64.store offset=144
      local.get 0
      local.get 1
      i32.store offset=184
      local.get 0
      local.get 1
      i32.store offset=180
      local.get 0
      i32.const 17
      i32.store offset=164
      local.get 0
      i32.const 131492
      i32.store offset=160
      local.get 0
      local.get 5
      i32.store offset=140
      local.get 0
      local.get 6
      i32.store offset=136
      local.get 0
      local.get 0
      i32.const 92
      i32.add
      i32.store offset=176
      local.get 0
      local.get 0
      i32.const 96
      i32.add
      i32.store offset=172
      local.get 0
      local.get 0
      i32.const 104
      i32.add
      i32.store offset=168
      local.get 0
      i32.const 160
      i32.add
      local.set 2
      block ;; label = @2
        local.get 3
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 8
        i32.add
        local.get 6
        local.get 5
        local.get 7
        local.get 4
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h39535540d777c714E
        local.get 0
        i32.load offset=12
        local.set 1
        local.get 0
        i32.load offset=8
        local.set 4
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h48693bdf66cf0eebE
        local.set 5
        local.get 2
        local.get 0
        i32.load offset=44
        local.get 5
        local.get 4
        local.get 1
        call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h3829578b42f4ae2cE
        br 1 (;@1;)
      end
      local.get 0
      i32.const 16
      i32.add
      local.get 6
      local.get 5
      local.get 0
      i32.load offset=44
      local.get 0
      i32.const 136
      i32.add
      i32.const 8
      i32.add
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17hb8c51a3268b6db58E
      local.get 0
      i32.load offset=20
      local.set 1
      local.get 0
      i32.load offset=16
      local.set 4
      local.get 2
      call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h7935456524220947E
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h48693bdf66cf0eebE
      local.get 4
      local.get 1
      call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h3829578b42f4ae2cE
    end
    local.get 0
    i32.const 192
    i32.add
    global.set $__stack_pointer
  )
  (func $promise_raw_single_token (;163;) (type 12)
    (local i32 i32 i32 i64 i64 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 224
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hae8b8c1616ff9c9bE
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h84b134c9fe8ed8a4E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9e5a5f279ead2271E
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4861f2994cc96f07E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h43f04f6a713d9997E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h43f04f6a713d9997E
    local.set 4
    local.get 0
    i32.const 4
    i32.store offset=32
    local.get 0
    i32.const 32
    i32.add
    i32.const 131600
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h02244544a4087bc2E
    local.set 5
    local.get 0
    i32.load offset=32
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5cf9d2fe595a087fE
    local.get 0
    local.get 1
    i32.store offset=28
    local.get 0
    i32.const 168
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h1385f346077d39e3E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
    drop
    local.get 0
    i32.const 32
    i32.add
    i32.const 40
    i32.add
    i32.const 1001
    i32.const 1002
    call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hfe001c71600d09c1E
    call $_ZN17promises_features23fwd_call_promise_direct13CallbackProxy16the_one_callback17hc7a61221e43ec327E
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
    i32.load offset=80
    local.get 0
    i32.const 100
    i32.add
    call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$19serialize_overwrite17h8861cdae4ffac8b7E
    local.get 0
    local.get 4
    i64.store offset=104
    local.get 0
    local.get 3
    i64.store offset=112
    local.get 0
    i32.load offset=44
    local.set 9
    local.get 0
    i64.load offset=32
    local.set 3
    block ;; label = @1
      block ;; label = @2
        local.get 6
        i32.load
        local.tee 6
        call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h08d94815648c38bcE
        br_if 0 (;@2;)
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
        block ;; label = @3
          local.get 3
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
          local.get 0
          i32.const 8
          i32.add
          local.get 2
          local.get 5
          local.get 6
          local.get 8
          call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h39535540d777c714E
          local.get 0
          i32.load offset=12
          local.set 2
          local.get 0
          i32.load offset=8
          local.set 5
          call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h48693bdf66cf0eebE
          local.set 8
          local.get 1
          local.get 0
          i32.load offset=28
          local.get 8
          local.get 5
          local.get 2
          call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h3829578b42f4ae2cE
          br 2 (;@1;)
        end
        local.get 0
        i32.const 16
        i32.add
        local.get 2
        local.get 5
        local.get 0
        i32.load offset=28
        local.get 7
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17hb8c51a3268b6db58E
        local.get 0
        i32.load offset=20
        local.set 2
        local.get 0
        i32.load offset=16
        local.set 5
        local.get 1
        call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h7935456524220947E
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h48693bdf66cf0eebE
        local.get 5
        local.get 2
        call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h3829578b42f4ae2cE
        br 1 (;@1;)
      end
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
      call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h3829578b42f4ae2cE
    end
    local.get 0
    i32.const 224
    i32.add
    global.set $__stack_pointer
  )
  (func $promise_raw_multi_transfer (;164;) (type 12)
    (local i32 i32 i32 i64 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 192
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hae8b8c1616ff9c9bE
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h84b134c9fe8ed8a4E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9e5a5f279ead2271E
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4861f2994cc96f07E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h43f04f6a713d9997E
    local.set 3
    local.get 0
    i32.const 3
    i32.store offset=136
    local.get 0
    i32.const 136
    i32.add
    i32.const 131604
    i32.const 18
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h02244544a4087bc2E
    local.set 4
    local.get 0
    i32.load offset=136
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5cf9d2fe595a087fE
    local.get 0
    local.get 1
    i32.store offset=28
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
    local.set 5
    local.get 0
    local.get 4
    call $mBufferGetLength
    local.tee 1
    i32.store offset=40
    i32.const 0
    local.set 6
    local.get 0
    i32.const 0
    i32.store offset=36
    local.get 0
    local.get 4
    i32.store offset=32
    block ;; label = @1
      block ;; label = @2
        loop ;; label = @3
          block ;; label = @4
            block ;; label = @5
              local.get 6
              local.get 1
              i32.ge_u
              br_if 0 (;@5;)
              local.get 0
              i32.const 32
              i32.add
              call $_ZN257_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_owned..ManagedVecOwnedIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hdcf40ae518f0827fE
              call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h15e2a8b80e4fc877E
              call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17hfcfc4e8d25084845E
              local.tee 1
              call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h08d94815648c38bcE
              i32.eqz
              br_if 1 (;@4;)
              i32.const 131426
              i32.const 8
              i32.const 131393
              i32.const 13
              call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb0f070e40adce438E
              unreachable
            end
            call $getGasLeft
            local.set 7
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
            local.set 1
            local.get 0
            i32.const 48
            i32.add
            i32.const 2001
            i32.const 2002
            call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hfe001c71600d09c1E
            call $_ZN17promises_features23fwd_call_promise_direct13CallbackProxy16the_one_callback17hc7a61221e43ec327E
            local.get 0
            local.get 1
            i32.store offset=76
            local.get 0
            local.get 2
            i32.store offset=72
            local.get 0
            local.get 7
            local.get 3
            i64.sub
            i64.const 9
            i64.mul
            i64.const 10
            i64.div_u
            local.tee 7
            i64.store offset=64
            local.get 0
            local.get 5
            i32.store offset=36
            local.get 0
            i32.const 1
            i32.store offset=32
            local.get 0
            local.get 3
            i64.store offset=40
            local.get 0
            local.get 0
            i32.const 28
            i32.add
            i32.store offset=80
            local.get 0
            i32.load offset=48
            local.set 4
            local.get 0
            i32.load offset=52
            local.set 8
            local.get 0
            i32.const -25
            i32.store offset=92
            local.get 0
            i32.load offset=56
            local.get 0
            i32.const 92
            i32.add
            call $_ZN11dharitri_sc5types11interaction18managed_arg_buffer25ManagedArgBuffer$LT$M$GT$19serialize_overwrite17h8861cdae4ffac8b7E
            local.get 0
            local.get 3
            i64.store offset=96
            local.get 0
            local.get 7
            i64.store offset=104
            local.get 0
            local.get 5
            i32.store offset=116
            local.get 0
            i32.const 1
            i32.store offset=112
            local.get 0
            i32.const 84
            i32.add
            local.set 6
            block ;; label = @5
              block ;; label = @6
                local.get 5
                call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h6ea23bc574c55c48E
                br_table 0 (;@6;) 1 (;@5;) 4 (;@2;)
              end
              local.get 0
              local.get 1
              i32.store offset=160
              local.get 0
              local.get 2
              i32.store offset=156
              local.get 0
              local.get 8
              i32.store offset=140
              local.get 0
              local.get 4
              i32.store offset=136
              local.get 0
              local.get 0
              i32.const 92
              i32.add
              i32.store offset=152
              local.get 0
              local.get 0
              i32.const 96
              i32.add
              i32.store offset=148
              local.get 0
              local.get 0
              i32.const 104
              i32.add
              i32.store offset=144
              call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h48693bdf66cf0eebE
              local.set 6
              local.get 0
              i32.const 136
              i32.add
              local.get 0
              i32.load offset=28
              local.get 6
              local.get 2
              local.get 1
              call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h3829578b42f4ae2cE
              br 4 (;@1;)
            end
            local.get 0
            i32.const 120
            i32.add
            local.get 5
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h974358278daf935aE
            local.get 0
            i64.load offset=120
            local.set 7
            local.get 0
            local.get 0
            i32.const 132
            i32.add
            local.tee 5
            i32.store offset=156
            local.get 0
            local.get 0
            i32.const 120
            i32.add
            i32.const 8
            i32.add
            local.tee 9
            i32.store offset=152
            local.get 0
            local.get 7
            i64.store offset=144
            local.get 0
            local.get 6
            i32.store offset=184
            local.get 0
            local.get 6
            i32.store offset=180
            local.get 0
            local.get 8
            i32.store offset=164
            local.get 0
            local.get 4
            i32.store offset=160
            local.get 0
            local.get 1
            i32.store offset=140
            local.get 0
            local.get 2
            i32.store offset=136
            local.get 0
            local.get 0
            i32.const 92
            i32.add
            i32.store offset=176
            local.get 0
            local.get 0
            i32.const 96
            i32.add
            i32.store offset=172
            local.get 0
            local.get 0
            i32.const 104
            i32.add
            i32.store offset=168
            local.get 0
            i32.const 160
            i32.add
            local.set 6
            block ;; label = @5
              local.get 7
              i64.const 0
              i64.ne
              br_if 0 (;@5;)
              local.get 0
              i32.const 8
              i32.add
              local.get 2
              local.get 1
              local.get 9
              local.get 5
              call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h39535540d777c714E
              local.get 0
              i32.load offset=12
              local.set 1
              local.get 0
              i32.load offset=8
              local.set 5
              call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h48693bdf66cf0eebE
              local.set 2
              local.get 6
              local.get 0
              i32.load offset=28
              local.get 2
              local.get 5
              local.get 1
              call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h3829578b42f4ae2cE
              br 4 (;@1;)
            end
            local.get 0
            i32.const 16
            i32.add
            local.get 2
            local.get 1
            local.get 0
            i32.load offset=28
            local.get 0
            i32.const 136
            i32.add
            i32.const 8
            i32.add
            call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17hb8c51a3268b6db58E
            local.get 0
            i32.load offset=20
            local.set 1
            local.get 0
            i32.load offset=16
            local.set 5
            local.get 6
            call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h7935456524220947E
            call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h48693bdf66cf0eebE
            local.get 5
            local.get 1
            call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h3829578b42f4ae2cE
            br 3 (;@1;)
          end
          local.get 0
          i32.const 32
          i32.add
          call $_ZN257_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_owned..ManagedVecOwnedIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hdcf40ae518f0827fE
          i32.const 131426
          i32.const 8
          call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417h6e4304399df07299E
          local.set 7
          local.get 0
          local.get 0
          i32.const 32
          i32.add
          call $_ZN257_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_owned..ManagedVecOwnedIterator$LT$A$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$A$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hdcf40ae518f0827fE
          call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h389de72ac078b6ceE
          i32.store offset=148
          local.get 0
          local.get 1
          i32.store offset=144
          local.get 0
          local.get 7
          i64.store offset=136
          local.get 5
          local.get 0
          i32.const 136
          i32.add
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h216abba226e34886E
          local.get 0
          i32.load offset=40
          local.set 1
          local.get 0
          i32.load offset=36
          local.set 6
          br 0 (;@3;)
        end
      end
      local.get 0
      local.get 1
      i32.store offset=172
      local.get 0
      local.get 2
      i32.store offset=168
      local.get 0
      local.get 6
      i32.store offset=164
      local.get 0
      local.get 6
      i32.store offset=160
      local.get 0
      local.get 8
      i32.store offset=144
      local.get 0
      local.get 4
      i32.store offset=140
      local.get 0
      local.get 0
      i32.const 112
      i32.add
      i32.const 4
      i32.add
      i32.store offset=136
      local.get 0
      local.get 0
      i32.const 92
      i32.add
      i32.store offset=156
      local.get 0
      local.get 0
      i32.const 96
      i32.add
      i32.store offset=152
      local.get 0
      local.get 0
      i32.const 104
      i32.add
      i32.store offset=148
      local.get 0
      local.get 2
      local.get 1
      local.get 0
      i32.load offset=28
      local.get 5
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17hc26012a9821d0b55E
      local.get 0
      i32.load offset=4
      local.set 1
      local.get 0
      i32.load
      local.set 6
      local.get 0
      i32.const 136
      i32.add
      i32.const 4
      i32.add
      call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h7935456524220947E
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h48693bdf66cf0eebE
      local.get 6
      local.get 1
      call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h3829578b42f4ae2cE
    end
    local.get 0
    i32.const 192
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_retrieve_funds_bt (;165;) (type 12)
    (local i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc0e1d9dfc3cdec27E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9e5a5f279ead2271E
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc800b64e1e4fd381E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h43f04f6a713d9997E
    local.set 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc74ad22f47e29a33E
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
    call $_ZN17promises_features11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14retrieve_funds17h94a46b0b05d78262E
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17h9c0ccb52be9c96f6E
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
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h6ea23bc574c55c48E
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      local.get 2
      call $_ZN4core3cmp9PartialEq2ne17h526777f92fc767beE
      br_if 0 (;@1;)
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h56347aa5bec2d1dfE
      unreachable
    end
    local.get 0
    i32.const 36
    i32.add
    local.get 1
    call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..into_multi_value..IntoMultiValue$GT$16into_multi_value17h85fcaa9fa3abc682E
    call $_ZN85_$LT$C$u20$as$u20$promises_features..fwd_call_sync_bt..BackTransfersFeatureModule$GT$20back_transfers_event17h21fe414ab5286958E
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_retrieve_funds_bt_twice (;166;) (type 12)
    (local i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc0e1d9dfc3cdec27E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9e5a5f279ead2271E
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc800b64e1e4fd381E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h43f04f6a713d9997E
    local.set 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc74ad22f47e29a33E
    local.set 4
    local.get 0
    local.get 1
    i32.store offset=28
    local.get 0
    i32.const 52
    i32.add
    local.get 0
    i32.const 28
    i32.add
    local.get 2
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h15e2a8b80e4fc877E
    local.get 3
    local.get 4
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h298d9aff4280640aE
    call $_ZN17promises_features11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14retrieve_funds17h94a46b0b05d78262E
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17h9c0ccb52be9c96f6E
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
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h6ea23bc574c55c48E
          i32.const 1
          i32.eq
          br_if 0 (;@3;)
          local.get 5
          call $_ZN4core3cmp9PartialEq2ne17h526777f92fc767beE
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 0
        i32.const 32
        i32.add
        local.get 1
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..into_multi_value..IntoMultiValue$GT$16into_multi_value17h85fcaa9fa3abc682E
        call $_ZN85_$LT$C$u20$as$u20$promises_features..fwd_call_sync_bt..BackTransfersFeatureModule$GT$20back_transfers_event17h21fe414ab5286958E
        local.get 0
        i32.const 52
        i32.add
        local.get 0
        i32.const 28
        i32.add
        local.get 2
        local.get 3
        local.get 4
        call $_ZN17promises_features11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14retrieve_funds17h94a46b0b05d78262E
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
        call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17h9c0ccb52be9c96f6E
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
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h6ea23bc574c55c48E
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        local.get 4
        call $_ZN4core3cmp9PartialEq2ne17h526777f92fc767beE
        br_if 1 (;@1;)
      end
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h56347aa5bec2d1dfE
      unreachable
    end
    local.get 0
    i32.const 52
    i32.add
    local.get 2
    call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..into_multi_value..IntoMultiValue$GT$16into_multi_value17h85fcaa9fa3abc682E
    call $_ZN85_$LT$C$u20$as$u20$promises_features..fwd_call_sync_bt..BackTransfersFeatureModule$GT$20back_transfers_event17h21fe414ab5286958E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_promise_retrieve_funds_back_transfers (;167;) (type 12)
    (local i32 i32 i32 i64 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc0e1d9dfc3cdec27E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9e5a5f279ead2271E
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc800b64e1e4fd381E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h43f04f6a713d9997E
    local.set 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc74ad22f47e29a33E
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
    call $_ZN17promises_features11vault_proxy46VaultProxyMethods$LT$Env$C$From$C$To$C$Gas$GT$14retrieve_funds17h94a46b0b05d78262E
    local.get 0
    i64.load offset=20 align=4
    local.set 3
    local.get 0
    i32.load offset=16
    local.set 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
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
    i32.const 131538
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
    call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise17h058b24349d555d8cE
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $retrieve_funds_callback (;168;) (type 12)
    (local i32 i64 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 24
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple28callback_closure_args_loader17h3482916f54231468E
    local.get 0
    i32.load offset=28
    local.get 0
    i32.load offset=32
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hef98af86e459762cE
    local.get 0
    i32.const 24
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17h1385f346077d39e3E
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
    call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$29retrieve_funds_callback_event17h5590b262beb78676E
    local.get 0
    i32.const 8
    i32.add
    call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$13callback_data17h5ac13cb4acccb6e6E
    local.get 0
    i32.load offset=12
    local.set 3
    local.get 0
    i32.load offset=8
    local.set 4
    call $_ZN149_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u3b$$u20$N$u5d$$GT$$GT$4from17h1d24dad36e4df590E
    local.set 5
    local.get 0
    i32.load offset=20
    local.set 6
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
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
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$4push17hcf196c0fec8cc3c6E
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $transfer_callback (;169;) (type 12)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 88
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple28callback_closure_args_loader17h3482916f54231468E
    local.get 0
    i32.load offset=92
    local.get 0
    i32.load offset=96
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hef98af86e459762cE
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hae8b8c1616ff9c9bE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h84b134c9fe8ed8a4E
    local.get 0
    i32.const 0
    i32.store offset=88
    local.get 0
    i32.const 88
    i32.add
    i32.const 131532
    i32.const 6
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h02244544a4087bc2E
    local.set 1
    local.get 0
    i32.load offset=88
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5cf9d2fe595a087fE
    i32.const 131640
    i32.const 15
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17he9e2d2d09ee8c04aE
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
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 24
        i32.add
        local.get 0
        i32.const 88
        i32.add
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb4406400f24d15f6E
        local.get 0
        i32.load offset=24
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=28
        local.get 2
        call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17h9a2a2555f2a38aa7E
        br 0 (;@2;)
      end
    end
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
    call $managedWriteLog
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$11any_payment17h885eaef9a45234d2E
    local.get 0
    i32.load offset=20
    local.set 2
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load offset=16
        br_if 0 (;@2;)
        local.get 0
        local.get 2
        i32.store offset=48
        call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$4rewa17h1b5ceedf5ed38a01E
        i64.const 0
        local.get 0
        i32.const 48
        i32.add
        call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$29retrieve_funds_callback_event17h5590b262beb78676E
        local.get 0
        call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$13callback_data17h5ac13cb4acccb6e6E
        local.get 0
        i32.load offset=4
        local.set 2
        local.get 0
        i32.load
        local.set 1
        call $_ZN149_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u3b$$u20$N$u5d$$GT$$GT$4from17hdbec6e1ae4466b50E
        local.set 3
        call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$4rewa17h1b5ceedf5ed38a01E
        local.set 4
        local.get 0
        i32.load offset=48
        local.set 5
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
        local.set 6
        local.get 0
        local.get 4
        i32.store offset=100
        local.get 0
        local.get 3
        i32.store offset=96
        local.get 0
        local.get 6
        i32.store offset=108
        local.get 0
        local.get 5
        i32.store offset=104
        local.get 0
        i64.const 0
        i64.store offset=88
        local.get 1
        local.get 2
        local.get 0
        i32.const 88
        i32.add
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$4push17hcf196c0fec8cc3c6E
        br 1 (;@1;)
      end
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
      local.get 0
      i32.const 84
      i32.add
      local.set 7
      local.get 0
      i32.const 48
      i32.add
      i32.const 8
      i32.add
      local.set 2
      loop ;; label = @2
        local.get 0
        i32.const 48
        i32.add
        local.get 0
        i32.const 36
        i32.add
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3bb7e541cc802e4bE
        local.get 0
        i32.load offset=48
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 72
        i32.add
        i32.const 8
        i32.add
        local.get 2
        i32.const 8
        i32.add
        i64.load
        local.tee 8
        i64.store
        local.get 0
        local.get 2
        i64.load
        i64.store offset=72
        local.get 8
        i32.wrap_i64
        local.tee 1
        i64.const 0
        local.get 7
        call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$29retrieve_funds_callback_event17h5590b262beb78676E
        local.get 0
        i32.const 8
        i32.add
        call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$13callback_data17h5ac13cb4acccb6e6E
        local.get 0
        i32.load offset=12
        local.set 3
        local.get 0
        i32.load offset=8
        local.set 4
        call $_ZN149_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u3b$$u20$N$u5d$$GT$$GT$4from17hdbec6e1ae4466b50E
        local.set 5
        local.get 0
        i32.load offset=84
        local.set 6
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
        local.set 9
        local.get 0
        local.get 1
        i32.store offset=100
        local.get 0
        local.get 5
        i32.store offset=96
        local.get 0
        local.get 9
        i32.store offset=108
        local.get 0
        local.get 6
        i32.store offset=104
        local.get 0
        i64.const 0
        i64.store offset=88
        local.get 4
        local.get 3
        local.get 0
        i32.const 88
        i32.add
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$4push17hcf196c0fec8cc3c6E
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 112
    i32.add
    global.set $__stack_pointer
  )
  (func $the_one_callback (;170;) (type 12)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple28callback_closure_args_loader17h3482916f54231468E
    local.get 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17haf7232542ad43230E
    local.set 1
    local.get 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hcaa3d158e0c43d0aE
    local.set 2
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hef98af86e459762cE
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hae8b8c1616ff9c9bE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h84b134c9fe8ed8a4E
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 131532
    i32.const 6
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h02244544a4087bc2E
    local.set 3
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5cf9d2fe595a087fE
    i32.const 131668
    i32.const 25
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17he9e2d2d09ee8c04aE
    local.tee 4
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h11c2d678e0df90adE
    local.get 4
    local.get 2
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h4611ce55d650b3e5E
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
    i32.store offset=12
    local.get 3
    local.get 0
    i32.const 12
    i32.add
    call $_ZN139_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h60df583e3c1319e7E
    local.get 4
    local.get 0
    i32.load offset=12
    call $managedWriteLog
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $retrieve_funds_back_transfers_callback (;171;) (type 12)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 88
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple28callback_closure_args_loader17h3482916f54231468E
    local.get 0
    i32.load offset=92
    local.get 0
    i32.load offset=96
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hef98af86e459762cE
    local.get 0
    i32.const 24
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$18get_back_transfers17h6b3a810fe33c602aE
    local.get 0
    i32.load offset=28
    local.set 1
    local.get 0
    local.get 0
    i32.load offset=24
    local.tee 2
    i32.store offset=32
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 3
    i64.const 0
    call $bigIntSetInt64
    block ;; label = @1
      local.get 2
      local.get 3
      call $bigIntCmp
      i32.eqz
      br_if 0 (;@1;)
      call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$4rewa17h1b5ceedf5ed38a01E
      local.tee 2
      i64.const 0
      local.get 0
      i32.const 32
      i32.add
      call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$29retrieve_funds_callback_event17h5590b262beb78676E
      local.get 0
      i32.const 16
      i32.add
      call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$13callback_data17h5ac13cb4acccb6e6E
      local.get 0
      i32.load offset=20
      local.set 3
      local.get 0
      i32.load offset=16
      local.set 4
      call $_ZN149_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u3b$$u20$N$u5d$$GT$$GT$4from17h1d24dad36e4df590E
      local.set 5
      local.get 0
      i32.load offset=32
      local.set 6
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
      local.set 7
      local.get 0
      local.get 2
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
      local.get 4
      local.get 3
      local.get 0
      i32.const 88
      i32.add
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$4push17hcf196c0fec8cc3c6E
    end
    local.get 0
    local.get 1
    call $mBufferGetLength
    i32.store offset=44
    local.get 0
    i32.const 0
    i32.store offset=40
    local.get 0
    local.get 1
    i32.store offset=36
    local.get 0
    i32.const 84
    i32.add
    local.set 8
    local.get 0
    i32.const 48
    i32.add
    i32.const 8
    i32.add
    local.set 1
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 48
        i32.add
        local.get 0
        i32.const 36
        i32.add
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3bb7e541cc802e4bE
        local.get 0
        i32.load offset=48
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 0
        i32.const 72
        i32.add
        i32.const 8
        i32.add
        local.get 1
        i32.const 8
        i32.add
        i64.load
        local.tee 9
        i64.store
        local.get 0
        local.get 1
        i64.load
        i64.store offset=72
        local.get 9
        i32.wrap_i64
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h15e2a8b80e4fc877E
        local.tee 2
        local.get 0
        i64.load offset=72
        local.get 8
        call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$29retrieve_funds_callback_event17h5590b262beb78676E
        local.get 0
        i32.const 8
        i32.add
        call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$13callback_data17h5ac13cb4acccb6e6E
        local.get 0
        i32.load offset=12
        local.set 3
        local.get 0
        i32.load offset=8
        local.set 4
        call $_ZN149_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u3b$$u20$N$u5d$$GT$$GT$4from17h1d24dad36e4df590E
        local.set 5
        local.get 0
        i64.load offset=72
        local.set 9
        local.get 0
        i32.load offset=84
        call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h298d9aff4280640aE
        local.set 6
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h9a055beb24a3737eE
        local.set 7
        local.get 0
        local.get 2
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
        local.get 9
        i64.store offset=88
        local.get 4
        local.get 3
        local.get 0
        i32.const 88
        i32.add
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$4push17hcf196c0fec8cc3c6E
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 112
    i32.add
    global.set $__stack_pointer
  )
  (func $callBack (;172;) (type 12))
  (func $_ZN4core9panicking9panic_fmt17h931ec2537c26fa22E (;173;) (type 12)
    call $rust_begin_unwind
    unreachable
  )
  (func $_ZN4core5slice5index24slice_end_index_len_fail8do_panic7runtime17h40abf6316be1d38dE (;174;) (type 8) (param i32)
    call $_ZN4core9panicking9panic_fmt17h931ec2537c26fa22E
    unreachable
  )
  (func $_ZN4core5slice5index22slice_index_order_fail8do_panic7runtime17h3eb440503b756a77E (;175;) (type 2) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17h931ec2537c26fa22E
    unreachable
  )
  (func $memcpy (;176;) (type 6) (param i32 i32 i32) (result i32)
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
  (data $.rodata (;0;) (i32.const 131072) "input too longunexpected REWA transferincorrect number of DCDT transfersREWA-000000argument decode error (): too few argumentstoo many argumentswrong number of argumentsserializer decode error: MultiDCDTNFTTransferDCDTNFTTransferDCDTTransferinput too shortManagedVec index out of rangeREWA.itemstorage decode error (key: DCDT expected.lenbad array lengthvar argsaccept_fundsretrieve_fundstoOnly one DCDT payment expectedtransfer_callbackretrieve_funds_callbackresultretrieve_funds_back_transfers_callbackthe_one_callbackarg2arg1argstoken_payment_argsindexcallback_datacallback_resultback_tranfersasync_call_event_callbackindex out of rangepanic occurred")
  (data $.data (;1;) (i32.const 131728) "8\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.84.1 (e71f9a9a9 2025-01-27)")
  )
  (@custom "target_features" (after data) "\04+\0amultivalue+\0fmutable-globals+\0freference-types+\08sign-ext")
)
