(module $forwarder_queue_wasm.wasm
  (type (;0;) (func (param i32 i64)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32)))
  (type (;7;) (func (param i32 i32)))
  (type (;8;) (func (param i32) (result i64)))
  (type (;9;) (func (param i64 i32 i32 i32 i32 i32) (result i32)))
  (type (;10;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32) (result i32)))
  (type (;11;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;12;) (func))
  (type (;13;) (func (result i64)))
  (type (;14;) (func (param i32 i32 i64 i32 i32) (result i32)))
  (type (;15;) (func (param i64)))
  (type (;16;) (func (param i32 i32 i32 i32)))
  (type (;17;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;18;) (func (param i32 i32 i32 i32 i32)))
  (type (;19;) (func (param i32 i32 i32 i32 i32 i32 i32)))
  (type (;20;) (func (param i32 i32 i32 i64)))
  (type (;21;) (func (param i64 i32 i32 i32 i32)))
  (type (;22;) (func (param i64 i32)))
  (type (;23;) (func (param i32 i32) (result i64)))
  (type (;24;) (func (param i32 i32 i64 i32 i32)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;0;) (type 0)))
  (import "env" "bigIntAdd" (func $bigIntAdd (;1;) (type 1)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;2;) (type 2)))
  (import "env" "mBufferNew" (func $mBufferNew (;3;) (type 3)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;4;) (type 4)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;5;) (type 4)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;6;) (type 5)))
  (import "env" "managedSignalError" (func $managedSignalError (;7;) (type 6)))
  (import "env" "bigIntGetUnsignedArgument" (func $bigIntGetUnsignedArgument (;8;) (type 7)))
  (import "env" "getArgumentLength" (func $getArgumentLength (;9;) (type 2)))
  (import "env" "smallIntGetUnsignedArgument" (func $smallIntGetUnsignedArgument (;10;) (type 8)))
  (import "env" "signalError" (func $signalError (;11;) (type 7)))
  (import "env" "getNumArguments" (func $getNumArguments (;12;) (type 3)))
  (import "env" "managedExecuteOnDestContext" (func $managedExecuteOnDestContext (;13;) (type 9)))
  (import "env" "managedCreateAsyncCall" (func $managedCreateAsyncCall (;14;) (type 10)))
  (import "env" "mBufferCopyByteSlice" (func $mBufferCopyByteSlice (;15;) (type 11)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;16;) (type 5)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;17;) (type 4)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;18;) (type 4)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;19;) (type 4)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;20;) (type 4)))
  (import "env" "managedGetMultiDCDTCallValue" (func $managedGetMultiDCDTCallValue (;21;) (type 6)))
  (import "env" "bigIntGetCallValue" (func $bigIntGetCallValue (;22;) (type 6)))
  (import "env" "managedWriteLog" (func $managedWriteLog (;23;) (type 7)))
  (import "env" "managedSCAddress" (func $managedSCAddress (;24;) (type 6)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;25;) (type 12)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;26;) (type 2)))
  (import "env" "getGasLeft" (func $getGasLeft (;27;) (type 13)))
  (import "env" "cleanReturnData" (func $cleanReturnData (;28;) (type 12)))
  (import "env" "bigIntSign" (func $bigIntSign (;29;) (type 2)))
  (import "env" "managedTransferValueExecute" (func $managedTransferValueExecute (;30;) (type 14)))
  (import "env" "managedMultiTransferDCDTNFTExecute" (func $managedMultiTransferDCDTNFTExecute (;31;) (type 14)))
  (import "env" "smallIntFinishUnsigned" (func $smallIntFinishUnsigned (;32;) (type 15)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;33;) (type 11)))
  (import "env" "mBufferEq" (func $mBufferEq (;34;) (type 4)))
  (import "env" "managedAsyncCall" (func $managedAsyncCall (;35;) (type 16)))
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 141605)
  (global (;2;) i32 i32.const 141616)
  (export "memory" (memory 0))
  (export "init" (func $init))
  (export "queued_calls" (func $queued_calls))
  (export "add_queued_call_sync" (func $add_queued_call_sync))
  (export "add_queued_call_legacy_async" (func $add_queued_call_legacy_async))
  (export "add_queued_call_transfer_execute" (func $add_queued_call_transfer_execute))
  (export "add_queued_call_transfer_dcdt" (func $add_queued_call_transfer_dcdt))
  (export "add_queued_call_promise" (func $add_queued_call_promise))
  (export "add_queued_call" (func $add_queued_call))
  (export "forward_queued_calls" (func $forward_queued_calls))
  (export "callback_count" (func $callback_count))
  (export "callback_payments" (func $callback_payments))
  (export "callBack" (func $callBack))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (func $_ZN102_$LT$forwarder_queue..QueuedCallType$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h0aa4b22f87773a79E (;36;) (type 7) (param i32 i32)
    local.get 0
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    i32.const 131556
    i32.add
    i32.load
    i32.load8_u
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h66a680ee3baa52f2E
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h66a680ee3baa52f2E (;37;) (type 7) (param i32 i32)
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
    call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h2c3d2a2eecb27b34E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4ba2e6fc180517ecE (;38;) (type 2) (param i32) (result i32)
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE (;39;) (type 3) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=131588
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=131588
    local.get 0
  )
  (func $_ZN113_$LT$dharitri_sc..storage..mappers..linked_list_mapper..LinkedListNode$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h60350b1aa3ff1221E (;40;) (type 7) (param i32 i32)
    (local i32 i32 i32 i64 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.load8_u offset=28
    local.set 3
    local.get 1
    i32.load offset=16
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h398bd516024a663cE
    local.set 4
    local.get 1
    i64.load offset=8
    local.set 5
    local.get 1
    i32.load offset=20
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h398bd516024a663cE
    local.set 6
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h39ba5886b4218abdE
    local.set 7
    local.get 2
    local.get 1
    i32.load offset=24
    local.tee 8
    call $mBufferGetLength
    i32.store offset=28
    local.get 2
    i32.const 0
    i32.store offset=24
    local.get 2
    local.get 8
    i32.store offset=20
    block ;; label = @1
      loop ;; label = @2
        local.get 2
        i32.const 8
        i32.add
        local.get 2
        i32.const 20
        i32.add
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc663ff0914b5bcd9E
        local.get 2
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 7
        local.get 2
        i32.load offset=12
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h398bd516024a663cE
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h03c6714ad4ea9ec7E
        br 0 (;@2;)
      end
    end
    local.get 1
    i32.load offset=4
    local.set 8
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load
        br_if 0 (;@2;)
        i32.const 0
        local.set 9
        local.get 8
        call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4ba2e6fc180517ecE
        local.set 8
        br 1 (;@1;)
      end
      i32.const 1
      local.set 9
      local.get 8
      call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2f54dfeb00f49bceE
      local.set 8
    end
    local.get 0
    local.get 3
    i32.store8 offset=28
    local.get 0
    local.get 7
    i32.store offset=24
    local.get 0
    local.get 6
    i32.store offset=20
    local.get 0
    local.get 4
    i32.store offset=16
    local.get 0
    local.get 5
    i64.store offset=8
    local.get 0
    local.get 8
    i32.store offset=4
    local.get 0
    local.get 9
    i32.store
    local.get 0
    local.get 1
    i32.load offset=40
    i32.store offset=40
    local.get 0
    local.get 1
    i64.load offset=32
    i64.store offset=32
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h398bd516024a663cE (;41;) (type 2) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h39ba5886b4218abdE (;42;) (type 3) (result i32)
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6487590d4a486becE
  )
  (func $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc663ff0914b5bcd9E (;43;) (type 7) (param i32 i32)
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h03c6714ad4ea9ec7E (;44;) (type 7) (param i32 i32)
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
  (func $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2f54dfeb00f49bceE (;45;) (type 2) (param i32) (result i32)
    (local i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h39ba5886b4218abdE
    local.set 2
    local.get 1
    local.get 0
    call $mBufferGetLength
    i32.store offset=20
    local.get 1
    i32.const 0
    i32.store offset=16
    local.get 1
    local.get 0
    i32.store offset=12
    loop (result i32) ;; label = @1
      local.get 1
      i32.const 24
      i32.add
      local.get 1
      i32.const 12
      i32.add
      call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb3e51ee8b64e97d7E
      block ;; label = @2
        local.get 1
        i32.load offset=24
        br_if 0 (;@2;)
        local.get 1
        i32.const 64
        i32.add
        global.set $__stack_pointer
        local.get 2
        return
      end
      local.get 1
      i64.load offset=32
      local.set 3
      local.get 1
      i32.load offset=44
      local.set 0
      local.get 1
      i32.load offset=40
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h398bd516024a663cE
      local.set 4
      local.get 1
      local.get 0
      call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4ba2e6fc180517ecE
      i32.store offset=60
      local.get 1
      local.get 3
      i64.store offset=48
      local.get 1
      local.get 4
      i32.store offset=56
      local.get 2
      local.get 1
      i32.const 48
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h353d74e7d5bda730E
      br 0 (;@1;)
    end
  )
  (func $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb3e51ee8b64e97d7E (;46;) (type 7) (param i32 i32)
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
    call $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h407bb6784f41de2eE
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
        call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$M$GT$$u20$as$u20$dharitri_sc..types..managed..wrapped..managed_vec_item..ManagedVecItem$GT$17read_from_payload17hfe7fc38b11ba3436E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h353d74e7d5bda730E (;47;) (type 7) (param i32 i32)
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
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17hfa5345fbf756ebe3E (;48;) (type 16) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17h4fab3410cd6f932aE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17h4fab3410cd6f932aE (;49;) (type 16) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $managedAsyncCall
    unreachable
  )
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h35dc08aff72c31cbE (;50;) (type 2) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h8cbea5cb49c55c99E (;51;) (type 16) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131124
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6487590d4a486becE
    local.tee 4
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 4
    i32.const 131147
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6487590d4a486becE (;52;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hbd38787beac0aaccE (;53;) (type 2) (param i32) (result i32)
    (local i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h39ba5886b4218abdE
    local.set 1
    local.get 0
    i32.load
    local.set 2
    block ;; label = @1
      loop ;; label = @2
        local.get 2
        i32.const 0
        i32.load offset=141600
        i32.ge_s
        br_if 1 (;@1;)
        local.get 0
        local.get 2
        i32.const 1
        i32.add
        local.tee 3
        i32.store
        local.get 1
        local.get 2
        call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h35dc08aff72c31cbE
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h03c6714ad4ea9ec7E
        local.get 3
        local.set 2
        br 0 (;@2;)
      end
    end
    local.get 1
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h26ee64fa46ac3ebcE (;54;) (type 3) (result i32)
    (local i32)
    i32.const 4
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 0
    call $bigIntGetUnsignedArgument
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h31d74b18d1dddf7eE (;55;) (type 3) (result i32)
    (local i32 i64)
    i32.const 0
    local.set 0
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          i32.const 0
          call $getArgumentLength
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          call $smallIntGetUnsignedArgument
          local.tee 1
          i64.const 256
          i64.ge_u
          br_if 1 (;@2;)
          local.get 1
          i64.const 4
          i64.ge_u
          br_if 2 (;@1;)
          local.get 1
          i32.wrap_i64
          local.set 0
        end
        local.get 0
        return
      end
      i32.const 131411
      i32.const 9
      i32.const 131257
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h8cbea5cb49c55c99E
      unreachable
    end
    i32.const 131411
    i32.const 9
    i32.const 131072
    i32.const 13
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h8cbea5cb49c55c99E
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h6dbf972e300f1bc0E (;56;) (type 2) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h35dc08aff72c31cbE
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbb540ea9709eb5daE (;57;) (type 8) (param i32) (result i64)
    local.get 0
    call $smallIntGetUnsignedArgument
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc746c5761c54fb07E (;58;) (type 3) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 8
    i32.add
    i32.const 3
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h35dc08aff72c31cbE
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h1cf3b94cc274ee50E
    call $_ZN11dharitri_sc5types7managed7wrapped16token_identifier24TokenIdentifier$LT$M$GT$7try_new17hc8d37254ac278db5E
    block ;; label = @1
      local.get 0
      i32.load offset=8
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      i32.const 131420
      i32.const 5
      i32.const 131356
      i32.const 13
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h8cbea5cb49c55c99E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h1cf3b94cc274ee50E (;59;) (type 2) (param i32) (result i32)
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
      i32.const 131113
      i32.const 11
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6487590d4a486becE
      local.set 0
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped16token_identifier24TokenIdentifier$LT$M$GT$7try_new17hc8d37254ac278db5E (;60;) (type 7) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17hd34b5895e2d67444E
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd3a5cac086f19364E (;61;) (type 2) (param i32) (result i32)
    block ;; label = @1
      local.get 0
      call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h35dc08aff72c31cbE
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      i32.const 131409
      i32.const 2
      i32.const 131369
      i32.const 16
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h8cbea5cb49c55c99E
      unreachable
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17ha708499a4b00617cE (;62;) (type 6) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=141600
      local.get 0
      i32.gt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131167
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc08d6e3bc9977693E (;63;) (type 12)
    block ;; label = @1
      call $getNumArguments
      br_if 0 (;@1;)
      return
    end
    i32.const 131185
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h6b7f0310ac75cbfaE (;64;) (type 6) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=141600
      local.get 0
      i32.lt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131150
    i32.const 17
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h9004e33c2615415bE (;65;) (type 12)
    i32.const 0
    call $getNumArguments
    i32.store offset=141600
  )
  (func $_ZN11dharitri_sc3api13managed_types14static_var_api16StaticVarApiImpl21flag_is_set_or_update17hd9c1b5fb25108815E (;66;) (type 2) (param i32) (result i32)
    (local i32 i32)
    block ;; label = @1
      i32.const 0
      i32.load8_u offset=141604
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
      i32.store8 offset=141604
    end
    local.get 2
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17hd9d7f0f715971a2aE (;67;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h3fca47a968d6ad58E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h3fca47a968d6ad58E (;68;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h1d659edc695a3091E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h8c7f9fe18f7cdf0cE (;69;) (type 1) (param i32 i32 i32)
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h3ccdae618378853eE
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17haee5c281746c10b1E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h3ccdae618378853eE (;70;) (type 3) (result i32)
    i32.const -10
    i64.const 0
    call $bigIntSetInt64
    i32.const -10
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17haee5c281746c10b1E (;71;) (type 16) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17hfa5345fbf756ebe3E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized17hc53fda10a55142c8E (;72;) (type 17) (param i32 i32 i32 i32 i32 i32)
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
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h3ca66c6163eed728E
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
        call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h13f336d7380f879bE
        unreachable
      end
      local.get 3
      local.get 4
      local.get 5
      call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17hd9d7f0f715971a2aE
      unreachable
    end
    local.get 6
    i32.const 24
    i32.add
    local.get 7
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h4902a8fd67809271E
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h4ebf5d1907658692E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h3ca66c6163eed728E (;73;) (type 2) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h78bf72a64a1a15e1E
    i32.const 4
    i32.shr_u
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h13f336d7380f879bE (;74;) (type 7) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h1a60f0e3ec12b08dE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h4902a8fd67809271E (;75;) (type 7) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17he0c050bbb3b8dd1dE
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131286
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
    call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$M$GT$$u20$as$u20$dharitri_sc..types..managed..wrapped..managed_vec_item..ManagedVecItem$GT$17read_from_payload17hfe7fc38b11ba3436E
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
  (func $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h4ebf5d1907658692E (;76;) (type 17) (param i32 i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h9f91ec34a173e13bE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17hfbb6eb36d0ba8185E (;77;) (type 7) (param i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17h802baa396be4e67bE
    local.get 2
    i32.load offset=12
    local.set 0
    local.get 2
    i32.load offset=8
    local.set 2
    call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17hcd8a55fabc48609bE
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h3ccdae618378853eE
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17haee5c281746c10b1E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17h802baa396be4e67bE (;78;) (type 18) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 24
    i32.add
    i32.const 131210
    i32.const 20
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hb4bd13a46af4003dE
    local.get 5
    i32.load offset=24
    local.set 6
    local.get 5
    i32.load offset=28
    local.tee 7
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h51781a0dfa0f9519E
    local.get 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h78bf72a64a1a15e1E
    local.set 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h39ba5886b4218abdE
    local.tee 8
    local.get 3
    i32.const 4
    i32.shr_u
    i64.extend_i32_u
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417hc68847bb56f6699dE
    local.get 7
    local.get 8
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h03c6714ad4ea9ec7E
    local.get 5
    local.get 4
    call $mBufferGetLength
    i32.store offset=40
    local.get 5
    i32.const 0
    i32.store offset=36
    local.get 5
    local.get 4
    i32.store offset=32
    loop ;; label = @1
      local.get 5
      i32.const 47
      i32.add
      local.get 5
      i32.const 32
      i32.add
      call $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h407bb6784f41de2eE
      block ;; label = @2
        local.get 5
        i32.load8_u offset=47
        br_if 0 (;@2;)
        local.get 5
        i32.const 16
        i32.add
        local.get 6
        local.get 7
        local.get 1
        local.get 2
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h25ca8722e754e481E
        local.get 5
        i32.load offset=20
        local.set 4
        local.get 0
        local.get 5
        i32.load offset=16
        i32.store
        local.get 0
        local.get 4
        i32.store offset=4
        local.get 5
        i32.const 64
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 5
      i32.load offset=60 align=1
      local.set 4
      local.get 5
      i64.load offset=52 align=1
      local.set 9
      local.get 7
      local.get 5
      i32.load offset=48 align=1
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
      call $_ZN166_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hfbb8bdce0a0c2e70E
      local.get 5
      i32.const 8
      i32.add
      local.get 6
      local.get 7
      local.get 9
      i64.const 56
      i64.shl
      local.get 9
      i64.const 65280
      i64.and
      i64.const 40
      i64.shl
      i64.or
      local.get 9
      i64.const 16711680
      i64.and
      i64.const 24
      i64.shl
      local.get 9
      i64.const 4278190080
      i64.and
      i64.const 8
      i64.shl
      i64.or
      i64.or
      local.get 9
      i64.const 8
      i64.shr_u
      i64.const 4278190080
      i64.and
      local.get 9
      i64.const 24
      i64.shr_u
      i64.const 16711680
      i64.and
      i64.or
      local.get 9
      i64.const 40
      i64.shr_u
      i64.const 65280
      i64.and
      local.get 9
      i64.const 56
      i64.shr_u
      i64.or
      i64.or
      i64.or
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hef1f8294740705b1E
      local.get 5
      i32.load offset=8
      local.set 6
      local.get 5
      i32.load offset=12
      local.tee 7
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
      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h411312b7c32392a2E
      br 0 (;@1;)
    end
  )
  (func $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17hcd8a55fabc48609bE (;79;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 0
    call $managedSCAddress
    local.get 0
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h9f91ec34a173e13bE (;80;) (type 7) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h7b3b3adb22f76ddfE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h1ed464b3612de295E (;81;) (type 7) (param i32 i32)
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
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h9406d65f9af94b4fE
      local.get 2
      i32.load offset=4
      local.set 0
      local.get 2
      i32.load
      local.set 2
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h3ccdae618378853eE
      local.get 2
      local.get 0
      call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17haee5c281746c10b1E
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h079a5be9027f6748E
    local.get 2
    i32.load offset=12
    local.set 0
    local.get 2
    i32.load offset=8
    local.set 2
    call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17hcd8a55fabc48609bE
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h3ccdae618378853eE
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17haee5c281746c10b1E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h9406d65f9af94b4fE (;82;) (type 18) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 24
    i32.add
    i32.const 131245
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hb4bd13a46af4003dE
    local.get 5
    i32.const 16
    i32.add
    local.get 5
    i32.load offset=24
    local.get 5
    i32.load offset=28
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hc320d68fcff2204dE
    local.get 5
    i32.const 8
    i32.add
    local.get 5
    i32.load offset=16
    local.get 5
    i32.load offset=20
    local.get 4
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hd1048373df729da1E
    local.get 5
    local.get 5
    i32.load offset=8
    local.get 5
    i32.load offset=12
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h25ca8722e754e481E
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
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h079a5be9027f6748E (;83;) (type 18) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 40
    i32.add
    i32.const 131230
    i32.const 15
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hb4bd13a46af4003dE
    local.get 5
    i32.const 32
    i32.add
    local.get 5
    i32.load offset=40
    local.get 5
    i32.load offset=44
    local.get 4
    i32.load offset=8
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hc320d68fcff2204dE
    local.get 5
    i32.const 24
    i32.add
    local.get 5
    i32.load offset=32
    local.get 5
    i32.load offset=36
    local.get 4
    i64.load
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hef1f8294740705b1E
    local.get 5
    i32.const 16
    i32.add
    local.get 5
    i32.load offset=24
    local.get 5
    i32.load offset=28
    local.get 4
    i32.load offset=12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hd1048373df729da1E
    local.get 5
    i32.load offset=16
    local.set 6
    local.get 5
    i32.load offset=20
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h39ba5886b4218abdE
    drop
    local.get 4
    local.get 3
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h398bd516024a663cE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h03c6714ad4ea9ec7E
    local.get 5
    i32.const 8
    i32.add
    local.get 6
    local.get 4
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h25ca8722e754e481E
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
  (func $_ZN11dharitri_sc5types11interaction10tx_payment29tx_payment_rewa_or_multi_dcdt270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..rewa_or_multi_dcdt_payment..RewaOrMultiDcdtPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17ha84757aa4d2175c5E (;84;) (type 17) (param i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load
    local.get 0
    i32.const 4
    i32.add
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    call $_ZN11dharitri_sc5types11interaction10tx_payment33tx_payment_rewa_or_multi_dcdt_ref270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_multi_dcdt_payment..RewaOrMultiDcdtPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h20f5b5e2233383c7E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment33tx_payment_rewa_or_multi_dcdt_ref270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_multi_dcdt_payment..RewaOrMultiDcdtPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h20f5b5e2233383c7E (;85;) (type 19) (param i32 i32 i32 i32 i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      local.get 4
      local.get 5
      local.get 6
      call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17hc0b6d38ba98d049bE
      unreachable
    end
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    local.get 6
    call $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized17hc53fda10a55142c8E
    unreachable
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17hc0b6d38ba98d049bE (;86;) (type 18) (param i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h9ee82cf5ea79d0c2E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h1a60f0e3ec12b08dE (;87;) (type 7) (param i32 i32)
    local.get 1
    local.get 0
    call $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17hfbb6eb36d0ba8185E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h1d659edc695a3091E (;88;) (type 1) (param i32 i32 i32)
    local.get 1
    local.get 2
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h8c7f9fe18f7cdf0cE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h9ee82cf5ea79d0c2E (;89;) (type 7) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17hcdaf593b65404f80E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17hcdaf593b65404f80E (;90;) (type 7) (param i32 i32)
    local.get 1
    local.get 0
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h5f1f2a8f5a4e7946E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h7b3b3adb22f76ddfE (;91;) (type 7) (param i32 i32)
    local.get 1
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h1ed464b3612de295E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hb4bd13a46af4003dE (;92;) (type 1) (param i32 i32 i32)
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6487590d4a486becE
    local.set 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h39ba5886b4218abdE
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h51781a0dfa0f9519E (;93;) (type 7) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h39ba5886b4218abdE
    drop
    local.get 0
    local.get 1
    i32.load
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h398bd516024a663cE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h03c6714ad4ea9ec7E
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h78bf72a64a1a15e1E (;94;) (type 2) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417hc68847bb56f6699dE (;95;) (type 0) (param i32 i64)
    (local i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
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
    i64.store offset=8
    local.get 0
    local.get 2
    i32.const 8
    i32.add
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
    i32.add
    i32.const 8
    local.get 4
    i32.sub
    call $mBufferSetBytes
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h407bb6784f41de2eE (;96;) (type 7) (param i32 i32)
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
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h25ca8722e754e481E (;97;) (type 18) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block ;; label = @1
      local.get 3
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h9790f5e4c50164efE
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      call $_ZN166_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hfbb8bdce0a0c2e70E
      local.get 5
      local.get 4
      call $mBufferGetLength
      i32.store offset=28
      local.get 5
      i32.const 0
      i32.store offset=24
      local.get 5
      local.get 4
      i32.store offset=20
      loop ;; label = @2
        local.get 5
        i32.const 8
        i32.add
        local.get 5
        i32.const 20
        i32.add
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc663ff0914b5bcd9E
        local.get 5
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        local.get 5
        i32.load offset=12
        call $_ZN166_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hfbb8bdce0a0c2e70E
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
  (func $_ZN166_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hfbb8bdce0a0c2e70E (;98;) (type 7) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h39ba5886b4218abdE
    drop
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h398bd516024a663cE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h03c6714ad4ea9ec7E
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hef1f8294740705b1E (;99;) (type 20) (param i32 i32 i32 i64)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hb34188885cb0916fE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h411312b7c32392a2E (;100;) (type 7) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h39ba5886b4218abdE
    drop
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h745d0f339a10a136E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h03c6714ad4ea9ec7E
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hc320d68fcff2204dE (;101;) (type 16) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h51781a0dfa0f9519E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hd1048373df729da1E (;102;) (type 16) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h4299d00847256609E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h9790f5e4c50164efE (;103;) (type 2) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h78bf72a64a1a15e1E
    i32.eqz
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h4299d00847256609E (;104;) (type 7) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h39ba5886b4218abdE
    drop
    local.get 0
    local.get 1
    i32.load
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h745d0f339a10a136E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h03c6714ad4ea9ec7E
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hb34188885cb0916fE (;105;) (type 0) (param i32 i64)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h39ba5886b4218abdE
    local.tee 2
    local.get 1
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417hc68847bb56f6699dE
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h03c6714ad4ea9ec7E
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h998d5ff7950352d0E (;106;) (type 21) (param i64 i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    call $managedExecuteOnDestContext
    drop
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h179d8ab92a3e0ddbE (;107;) (type 6) (param i32)
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment29tx_payment_rewa_or_multi_dcdt270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..rewa_or_multi_dcdt_payment..RewaOrMultiDcdtPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17ha84757aa4d2175c5E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h7af71c0445546136E (;108;) (type 18) (param i32 i32 i32 i32 i32)
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
    call $managedCreateAsyncCall
    drop
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated23annotated_impl_big_uint381_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h319966b8c478a779E (;109;) (type 7) (param i32 i32)
    local.get 1
    local.get 0
    i32.load
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h5e6c4c71866f7e95E
    unreachable
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h5e6c4c71866f7e95E (;110;) (type 7) (param i32 i32)
    local.get 0
    i32.load
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17haee5c281746c10b1E
    unreachable
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h5f1f2a8f5a4e7946E (;111;) (type 7) (param i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction9annotated23annotated_impl_big_uint381_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h319966b8c478a779E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h891d8c6ba9844a6dE (;112;) (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 0
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h24ce48ce381aa909E
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$27read_managed_buffer_of_size17h4c5f20933c5e0211E
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h24ce48ce381aa909E (;113;) (type 4) (param i32 i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h826de2584248f592E
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
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$27read_managed_buffer_of_size17h4c5f20933c5e0211E (;114;) (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.load
    local.set 3
    call $mBufferNew
    local.set 4
    block ;; label = @1
      local.get 0
      i32.load offset=8
      local.get 3
      local.get 1
      local.get 4
      call $mBufferCopyByteSlice
      br_if 0 (;@1;)
      local.get 0
      local.get 3
      local.get 1
      i32.add
      i32.store
      local.get 4
      return
    end
    local.get 2
    i32.const 131271
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hd4b7acbc76ff9d63E
    unreachable
  )
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hd4b7acbc76ff9d63E (;115;) (type 1) (param i32 i32 i32)
    (local i32)
    i32.const 131329
    i32.const 27
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6487590d4a486becE
    local.tee 3
    local.get 0
    call $mBufferAppend
    drop
    local.get 3
    i32.const 131147
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17he0c050bbb3b8dd1dE (;116;) (type 11) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17he59cf7a5329a8f5dE
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17he59cf7a5329a8f5dE (;117;) (type 11) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h06c7cc2a7bb227bcE (;118;) (type 7) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferAppend
    drop
  )
  (func $_ZN174_$LT$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$M$GT$$u20$as$u20$dharitri_sc..types..managed..wrapped..managed_vec_item..ManagedVecItem$GT$17read_from_payload17hfe7fc38b11ba3436E (;119;) (type 7) (param i32 i32)
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
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17hd34b5895e2d67444E (;120;) (type 2) (param i32) (result i32)
    i32.const -40
    i32.const 131113
    i32.const 11
    call $mBufferSetBytes
    drop
    i32.const -40
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h00ec339cb3020c69E
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h00ec339cb3020c69E (;121;) (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $mBufferEq
    i32.const 0
    i32.gt_s
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h745d0f339a10a136E (;122;) (type 2) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h40bee81d1fd745eeE (;123;) (type 2) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$23load_len_managed_buffer17hf5ac0db0f21c9ea7E (;124;) (type 2) (param i32) (result i32)
    local.get 0
    i32.const -25
    call $mBufferStorageLoad
    drop
    i32.const -25
    call $mBufferGetLength
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_info17h6788d5cac3010983E (;125;) (type 7) (param i32 i32)
    (local i32 i32)
    local.get 0
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14build_name_key17hec3f60d319bc321dE
    local.set 2
    block ;; label = @1
      local.get 1
      i32.load
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h5bf95586f6623b68E
      local.tee 0
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h20373d8a4471d58aE
      local.get 1
      i32.load offset=4
      local.get 0
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h20373d8a4471d58aE
      local.get 1
      i32.load offset=8
      local.get 0
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h20373d8a4471d58aE
      local.get 1
      i32.load offset=12
      local.get 0
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h20373d8a4471d58aE
      local.get 2
      local.get 0
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hca1536063bbfd010E
      return
    end
    local.get 2
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h21f4a4ffad306010E
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14build_name_key17hec3f60d319bc321dE (;126;) (type 2) (param i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h398bd516024a663cE
    local.tee 0
    i32.const 131324
    i32.const 5
    call $mBufferAppendBytes
    drop
    local.get 0
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h5bf95586f6623b68E (;127;) (type 3) (result i32)
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6487590d4a486becE
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h20373d8a4471d58aE (;128;) (type 7) (param i32 i32)
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
    call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h2c3d2a2eecb27b34E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hca1536063bbfd010E (;129;) (type 7) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferStorageStore
    drop
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h21f4a4ffad306010E (;130;) (type 6) (param i32)
    local.get 0
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6487590d4a486becE
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17hfd8fc5142efba924E (;131;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h8878c1e0987dbf7aE
    local.set 0
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h5bf95586f6623b68E
    local.set 1
    local.get 2
    i32.load8_u offset=28
    local.get 1
    call $_ZN102_$LT$forwarder_queue..QueuedCallType$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h0aa4b22f87773a79E
    local.get 1
    local.get 2
    i32.load offset=16
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h06c7cc2a7bb227bcE
    local.get 2
    i64.load offset=8
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17hebd31c15b1fc2350E
    local.get 2
    i32.load offset=20
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hd499299f62fea655E
    local.get 2
    i32.load offset=24
    local.get 1
    call $_ZN149_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h5826501c7ceb899cE
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    local.get 1
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_multi_dcdt_payment..RewaOrMultiDcdtPayment$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h7590db15bd96873cE
    local.get 2
    i32.load offset=32
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h20373d8a4471d58aE
    local.get 2
    i32.load offset=36
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h20373d8a4471d58aE
    local.get 2
    i32.load offset=40
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h20373d8a4471d58aE
    local.get 0
    local.get 1
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hca1536063bbfd010E
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h8878c1e0987dbf7aE (;132;) (type 4) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h398bd516024a663cE
    local.tee 0
    i32.const 131319
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17hebd31c15b1fc2350E (;133;) (type 22) (param i64 i32)
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
    call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h2c3d2a2eecb27b34E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hd499299f62fea655E (;134;) (type 7) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h78bf72a64a1a15e1E
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
    call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h2c3d2a2eecb27b34E
    local.get 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h06c7cc2a7bb227bcE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN149_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h5826501c7ceb899cE (;135;) (type 7) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h78bf72a64a1a15e1E
    i32.const 2
    i32.shr_u
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17hbb3268a962b44ab3E
    local.get 2
    local.get 0
    call $mBufferGetLength
    i32.store offset=28
    local.get 2
    i32.const 0
    i32.store offset=24
    local.get 2
    local.get 0
    i32.store offset=20
    block ;; label = @1
      loop ;; label = @2
        local.get 2
        i32.const 8
        i32.add
        local.get 2
        i32.const 20
        i32.add
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc663ff0914b5bcd9E
        local.get 2
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=12
        local.get 1
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hd499299f62fea655E
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_multi_dcdt_payment..RewaOrMultiDcdtPayment$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h7590db15bd96873cE (;136;) (type 1) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        i32.const 0
        local.get 2
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h66a680ee3baa52f2E
        local.get 1
        local.get 2
        call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h5bcda30584f2656eE
        br 1 (;@1;)
      end
      i32.const 1
      local.get 2
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h66a680ee3baa52f2E
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h3ca66c6163eed728E
      local.get 2
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17hbb3268a962b44ab3E
      local.get 3
      local.get 1
      call $mBufferGetLength
      i32.store offset=20
      local.get 3
      i32.const 0
      i32.store offset=16
      local.get 3
      local.get 1
      i32.store offset=12
      loop ;; label = @2
        local.get 3
        i32.const 24
        i32.add
        local.get 3
        i32.const 12
        i32.add
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb3e51ee8b64e97d7E
        local.get 3
        i32.load offset=24
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=44
        local.set 1
        block ;; label = @3
          block ;; label = @4
            local.get 3
            i32.load offset=40
            local.tee 0
            call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17hd34b5895e2d67444E
            br_if 0 (;@4;)
            local.get 0
            local.get 2
            call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hd499299f62fea655E
            br 1 (;@3;)
          end
          i32.const 4
          local.get 2
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17hbb3268a962b44ab3E
          local.get 2
          i32.const 131315
          i32.const 4
          call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h2c3d2a2eecb27b34E
        end
        local.get 3
        i64.load offset=32
        local.get 2
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17hebd31c15b1fc2350E
        local.get 1
        local.get 2
        call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h5bcda30584f2656eE
        br 0 (;@2;)
      end
    end
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$9push_back17h3aa578d290ec67a2E (;137;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_info17h3c4174e17571c0feE
    local.get 3
    local.get 3
    i32.load offset=12
    i32.const 1
    i32.add
    local.tee 4
    i32.store offset=12
    block ;; label = @1
      block ;; label = @2
        local.get 3
        i32.load
        local.tee 5
        br_if 0 (;@2;)
        local.get 3
        local.get 4
        i32.store offset=4
        i32.const 0
        local.set 6
        br 1 (;@1;)
      end
      local.get 3
      i32.const 16
      i32.add
      local.get 1
      local.get 3
      i32.load offset=8
      local.tee 6
      call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_node17hc4b2103298b6de65E
      local.get 3
      local.get 4
      i32.store offset=52
      local.get 1
      local.get 6
      local.get 3
      i32.const 16
      i32.add
      call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17hfd8fc5142efba924E
    end
    local.get 3
    i32.const 16
    i32.add
    i32.const 24
    i32.add
    local.get 2
    i32.const 24
    i32.add
    i64.load
    i64.store
    local.get 3
    i32.const 16
    i32.add
    i32.const 16
    i32.add
    local.get 2
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 3
    i32.const 16
    i32.add
    i32.const 8
    i32.add
    local.get 2
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 3
    local.get 6
    i32.store offset=56
    local.get 3
    i32.const 0
    i32.store offset=52
    local.get 3
    local.get 4
    i32.store offset=48
    local.get 3
    local.get 2
    i64.load
    i64.store offset=16
    local.get 1
    local.get 4
    local.get 3
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17hfd8fc5142efba924E
    local.get 3
    local.get 5
    i32.const 1
    i32.add
    i32.store
    local.get 3
    local.get 4
    i32.store offset=8
    local.get 1
    local.get 3
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_info17h6788d5cac3010983E
    local.get 0
    local.get 3
    i32.const 16
    i32.add
    i32.const 48
    call $memcpy
    drop
    local.get 3
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_info17h3c4174e17571c0feE (;138;) (type 7) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14build_name_key17hec3f60d319bc321dE
          local.tee 1
          call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$23load_len_managed_buffer17hf5ac0db0f21c9ea7E
          br_if 0 (;@3;)
          i32.const 0
          local.set 3
          i32.const 0
          local.set 4
          i32.const 0
          local.set 5
          i32.const 0
          local.set 6
          br 1 (;@2;)
        end
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h1ab2cb9b30fecc0aE
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h24ce48ce381aa909E
        local.set 6
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h24ce48ce381aa909E
        local.set 3
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h24ce48ce381aa909E
        local.set 4
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h24ce48ce381aa909E
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
        i32.store offset=141592
        i32.const 0
        i32.const 0
        i32.store8 offset=141596
      end
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
      local.get 6
      i32.store
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 1
    i32.const 131257
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hd4b7acbc76ff9d63E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_node17hc4b2103298b6de65E (;139;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i64 i32 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 12
    i32.add
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h8878c1e0987dbf7aE
    local.tee 1
    call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h1ab2cb9b30fecc0aE
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 3
          i32.const 12
          i32.add
          local.get 1
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17hb218a0ce864ff7ffE
          local.tee 4
          i32.const 255
          i32.and
          i32.const 4
          i32.ge_u
          br_if 0 (;@3;)
          local.get 3
          i32.const 12
          i32.add
          i32.const 32
          local.get 1
          call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$27read_managed_buffer_of_size17h4c5f20933c5e0211E
          local.set 5
          local.get 3
          i32.const 12
          i32.add
          local.get 1
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h283de57adb16dfc0E
          local.set 6
          local.get 3
          i32.const 12
          i32.add
          local.get 1
          call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h891d8c6ba9844a6dE
          local.set 7
          local.get 3
          i32.const 12
          i32.add
          local.get 1
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h24ce48ce381aa909E
          local.set 2
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h39ba5886b4218abdE
          local.set 8
          block ;; label = @4
            loop ;; label = @5
              local.get 2
              i32.eqz
              br_if 1 (;@4;)
              local.get 8
              local.get 3
              i32.const 12
              i32.add
              local.get 1
              call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h891d8c6ba9844a6dE
              call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h03c6714ad4ea9ec7E
              local.get 2
              i32.const -1
              i32.add
              local.set 2
              br 0 (;@5;)
            end
          end
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  local.get 3
                  i32.const 12
                  i32.add
                  local.get 1
                  call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17hb218a0ce864ff7ffE
                  i32.const 255
                  i32.and
                  br_table 1 (;@6;) 2 (;@5;) 0 (;@7;)
                end
                local.get 1
                i32.const 131072
                i32.const 13
                call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hd4b7acbc76ff9d63E
                unreachable
              end
              i32.const 0
              local.set 2
              local.get 3
              i32.const 12
              i32.add
              local.get 1
              call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17hd1b48c2c0770286aE
              local.set 9
              br 1 (;@4;)
            end
            local.get 3
            i32.const 12
            i32.add
            local.get 1
            call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h24ce48ce381aa909E
            local.set 2
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h39ba5886b4218abdE
            local.set 9
            block ;; label = @5
              loop ;; label = @6
                local.get 2
                i32.eqz
                br_if 1 (;@5;)
                local.get 3
                local.get 3
                i32.const 12
                i32.add
                local.get 1
                call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h891d8c6ba9844a6dE
                call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h1cf3b94cc274ee50E
                call $_ZN11dharitri_sc5types7managed7wrapped16token_identifier24TokenIdentifier$LT$M$GT$7try_new17hc8d37254ac278db5E
                local.get 3
                i32.load
                i32.const 1
                i32.ne
                br_if 4 (;@2;)
                local.get 3
                i32.load offset=4
                local.set 10
                local.get 3
                i32.const 12
                i32.add
                local.get 1
                call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h283de57adb16dfc0E
                local.set 11
                local.get 3
                local.get 3
                i32.const 12
                i32.add
                local.get 1
                call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17hd1b48c2c0770286aE
                i32.store offset=44
                local.get 3
                local.get 10
                i32.store offset=40
                local.get 3
                local.get 11
                i64.store offset=32
                local.get 9
                local.get 3
                i32.const 32
                i32.add
                call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h353d74e7d5bda730E
                local.get 2
                i32.const -1
                i32.add
                local.set 2
                br 0 (;@6;)
              end
            end
            i32.const 1
            local.set 2
          end
          local.get 3
          i32.const 12
          i32.add
          local.get 1
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h24ce48ce381aa909E
          local.set 10
          local.get 3
          i32.const 12
          i32.add
          local.get 1
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h24ce48ce381aa909E
          local.set 12
          local.get 3
          i32.const 12
          i32.add
          local.get 1
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h24ce48ce381aa909E
          local.set 13
          local.get 3
          i32.load offset=16
          local.get 3
          i32.load offset=12
          i32.ne
          br_if 2 (;@1;)
          block ;; label = @4
            local.get 3
            i32.load8_u offset=28
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            i32.const 0
            i32.store offset=141592
            i32.const 0
            i32.const 0
            i32.store8 offset=141596
          end
          local.get 0
          local.get 13
          i32.store offset=40
          local.get 0
          local.get 12
          i32.store offset=36
          local.get 0
          local.get 10
          i32.store offset=32
          local.get 0
          local.get 4
          i32.store8 offset=28
          local.get 0
          local.get 8
          i32.store offset=24
          local.get 0
          local.get 7
          i32.store offset=20
          local.get 0
          local.get 5
          i32.store offset=16
          local.get 0
          local.get 6
          i64.store offset=8
          local.get 0
          local.get 9
          i32.store offset=4
          local.get 0
          local.get 2
          i32.store
          local.get 3
          i32.const 48
          i32.add
          global.set $__stack_pointer
          return
        end
        local.get 1
        i32.const 131072
        i32.const 13
        call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hd4b7acbc76ff9d63E
        unreachable
      end
      local.get 1
      i32.const 131356
      i32.const 13
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hd4b7acbc76ff9d63E
      unreachable
    end
    local.get 1
    i32.const 131257
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hd4b7acbc76ff9d63E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$13is_empty_node17h92f77bb940c27b63E (;140;) (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h8878c1e0987dbf7aE
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$23load_len_managed_buffer17hf5ac0db0f21c9ea7E
    i32.eqz
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14get_node_by_id17hb334de30eae61f8dE (;141;) (type 1) (param i32 i32 i32)
    block ;; label = @1
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$13is_empty_node17h92f77bb940c27b63E
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_node17hc4b2103298b6de65E
      return
    end
    local.get 0
    i32.const 2
    i32.store
  )
  (func $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h1ab2cb9b30fecc0aE (;142;) (type 7) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h40bee81d1fd745eeE
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17hb218a0ce864ff7ffE (;143;) (type 4) (param i32 i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h826de2584248f592E
    local.get 2
    i32.load8_u offset=15
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h283de57adb16dfc0E (;144;) (type 23) (param i32 i32) (result i64)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h826de2584248f592E
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
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17hd1b48c2c0770286aE (;145;) (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h891d8c6ba9844a6dE
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    call $mBufferToBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17h4f2396f5645d2d41E (;146;) (type 7) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
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
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc663ff0914b5bcd9E
        local.get 2
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=12
        local.set 1
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h39ba5886b4218abdE
        drop
        local.get 0
        local.get 1
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h398bd516024a663cE
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h03c6714ad4ea9ec7E
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17h9341bf038ebe1e66E (;147;) (type 7) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h39ba5886b4218abdE
    local.tee 2
    local.get 1
    i64.extend_i32_u
    i64.const 255
    i64.and
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417hc68847bb56f6699dE
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h03c6714ad4ea9ec7E
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17h98b302fb21e9ff23E (;148;) (type 7) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h4299d00847256609E
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17hf33b6f0dbefc523aE (;149;) (type 7) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h51781a0dfa0f9519E
  )
  (func $_ZN11dharitri_sc8log_util23event_topic_accumulator17hd6a165ad9704136bE (;150;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h39ba5886b4218abdE
    local.tee 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6487590d4a486becE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h03c6714ad4ea9ec7E
    local.get 2
  )
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h5bcda30584f2656eE (;151;) (type 7) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h745d0f339a10a136E
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hd499299f62fea655E
  )
  (func $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h2c3d2a2eecb27b34E (;152;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferAppendBytes
    drop
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17hbb3268a962b44ab3E (;153;) (type 7) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h20373d8a4471d58aE
  )
  (func $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..into_multi_value..IntoMultiValue$GT$16into_multi_value17h541938029f5a78eeE (;154;) (type 2) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h39ba5886b4218abdE
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
    local.get 1
    i32.const 16
    i32.add
    i32.const 8
    i32.add
    local.set 3
    local.get 1
    i32.const 64
    i32.add
    local.set 4
    block ;; label = @1
      loop ;; label = @2
        local.get 1
        i32.const 63
        i32.add
        local.get 1
        i32.const 4
        i32.add
        call $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h407bb6784f41de2eE
        local.get 1
        i32.load8_u offset=63
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.const 40
        i32.add
        i32.const 8
        i32.add
        local.get 4
        i32.const 8
        i32.add
        i64.load align=1
        i64.store
        local.get 1
        local.get 4
        i64.load align=1
        i64.store offset=40
        local.get 3
        local.get 1
        i32.const 40
        i32.add
        call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$M$GT$$u20$as$u20$dharitri_sc..types..managed..wrapped..managed_vec_item..ManagedVecItem$GT$17read_from_payload17hfe7fc38b11ba3436E
        local.get 1
        i32.load offset=36
        local.set 5
        local.get 1
        i32.load offset=32
        local.set 6
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h39ba5886b4218abdE
        local.set 0
        block ;; label = @3
          block ;; label = @4
            local.get 6
            call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17hd34b5895e2d67444E
            br_if 0 (;@4;)
            local.get 6
            call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h398bd516024a663cE
            local.set 0
            br 1 (;@3;)
          end
          local.get 0
          i32.const 131315
          i32.const 4
          call $mBufferSetBytes
          drop
        end
        local.get 2
        local.get 0
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h03c6714ad4ea9ec7E
        local.get 2
        local.get 1
        i64.load offset=24
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hb34188885cb0916fE
        local.get 2
        local.get 5
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h411312b7c32392a2E
        br 0 (;@2;)
      end
    end
    local.get 1
    i32.const 80
    i32.add
    global.set $__stack_pointer
    local.get 2
  )
  (func $_ZN15forwarder_queue14ForwarderQueue15add_queued_call17h56a21be35bfefc31E (;155;) (type 24) (param i32 i32 i64 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 3
    i32.store offset=4
    local.get 5
    local.get 1
    i32.store
    block ;; label = @1
      i32.const 2
      call $_ZN11dharitri_sc3api13managed_types14static_var_api16StaticVarApiImpl21flag_is_set_or_update17hd9c1b5fb25108815E
      br_if 0 (;@1;)
      i32.const -38
      call $managedGetMultiDCDTCallValue
    end
    block ;; label = @1
      i32.const 4
      call $_ZN11dharitri_sc3api13managed_types14static_var_api16StaticVarApiImpl21flag_is_set_or_update17hd9c1b5fb25108815E
      br_if 0 (;@1;)
      i32.const -40
      i32.const 131113
      i32.const 11
      call $mBufferSetBytes
      drop
      local.get 5
      i32.const -38
      call $mBufferGetLength
      i32.store offset=72
      local.get 5
      i64.const 4294967258
      i64.store offset=64 align=4
      loop ;; label = @2
        local.get 5
        i32.const 16
        i32.add
        local.get 5
        i32.const 64
        i32.add
        call $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h407bb6784f41de2eE
        local.get 5
        i32.load8_u offset=16
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        i32.const -40
        local.get 5
        i32.load offset=17 align=1
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
      i32.const 131089
      i32.const 24
      call $signalError
      unreachable
    end
    block ;; label = @1
      block ;; label = @2
        i32.const -38
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h9790f5e4c50164efE
        i32.eqz
        br_if 0 (;@2;)
        block ;; label = @3
          i32.const 1
          call $_ZN11dharitri_sc3api13managed_types14static_var_api16StaticVarApiImpl21flag_is_set_or_update17hd9c1b5fb25108815E
          br_if 0 (;@3;)
          i32.const -35
          call $bigIntGetCallValue
        end
        local.get 5
        i32.const -35
        call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4ba2e6fc180517ecE
        i32.store offset=12
        local.get 5
        i32.const 0
        i32.store offset=8
        i32.const 131488
        i32.const 20
        call $_ZN11dharitri_sc8log_util23event_topic_accumulator17hd6a165ad9704136bE
        local.tee 3
        local.get 0
        call $_ZN11dharitri_sc8log_util21serialize_event_topic17h9341bf038ebe1e66E
        local.get 3
        local.get 5
        call $_ZN11dharitri_sc8log_util21serialize_event_topic17hf33b6f0dbefc523aE
        local.get 3
        local.get 5
        i32.const 4
        i32.add
        call $_ZN11dharitri_sc8log_util21serialize_event_topic17hf33b6f0dbefc523aE
        local.get 3
        local.get 5
        i32.const 12
        i32.add
        call $_ZN11dharitri_sc8log_util21serialize_event_topic17h98b302fb21e9ff23E
        br 1 (;@1;)
      end
      local.get 5
      i32.const -38
      call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2f54dfeb00f49bceE
      local.tee 3
      i32.store offset=12
      local.get 5
      i32.const 1
      i32.store offset=8
      local.get 3
      call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2f54dfeb00f49bceE
      call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..into_multi_value..IntoMultiValue$GT$16into_multi_value17h541938029f5a78eeE
      local.set 1
      i32.const 131468
      i32.const 20
      call $_ZN11dharitri_sc8log_util23event_topic_accumulator17hd6a165ad9704136bE
      local.tee 3
      local.get 0
      call $_ZN11dharitri_sc8log_util21serialize_event_topic17h9341bf038ebe1e66E
      local.get 3
      local.get 5
      call $_ZN11dharitri_sc8log_util21serialize_event_topic17hf33b6f0dbefc523aE
      local.get 3
      local.get 5
      i32.const 4
      i32.add
      call $_ZN11dharitri_sc8log_util21serialize_event_topic17hf33b6f0dbefc523aE
      local.get 3
      local.get 1
      call $_ZN11dharitri_sc8log_util21serialize_event_topic17h4f2396f5645d2d41E
    end
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h39ba5886b4218abdE
    call $managedWriteLog
    call $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$12queued_calls17h1c847bed378f340fE
    local.set 3
    local.get 5
    local.get 0
    i32.store8 offset=92
    local.get 5
    local.get 5
    i32.load
    i32.store offset=80
    local.get 5
    local.get 4
    i32.store offset=88
    local.get 5
    local.get 5
    i32.load offset=4
    i32.store offset=84
    local.get 5
    local.get 2
    i64.store offset=72
    local.get 5
    local.get 5
    i64.load offset=8 align=4
    i64.store offset=64
    local.get 5
    i32.const 16
    i32.add
    local.get 3
    local.get 5
    i32.const 64
    i32.add
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$9push_back17h3aa578d290ec67a2E
    local.get 5
    i32.const 96
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$12queued_calls17h1c847bed378f340fE (;156;) (type 3) (result i32)
    i32.const 131425
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6487590d4a486becE
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h826de2584248f592E (;157;) (type 16) (param i32 i32 i32 i32)
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
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h78bf72a64a1a15e1E
                local.tee 7
                i32.const 10000
                i32.gt_u
                i32.const 0
                i32.load8_u offset=141596
                i32.or
                local.tee 8
                i32.const 1
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 7
                i32.store offset=141592
                i32.const 0
                i32.const 1
                i32.store8 offset=141596
                local.get 6
                i32.const 0
                i32.const 131592
                local.get 7
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17he0c050bbb3b8dd1dE
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
                i32.store offset=141592
                i32.const 0
                i32.const 0
                i32.store8 offset=141596
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
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17he0c050bbb3b8dd1dE
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
            i32.load offset=141592
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
            i32.const 131592
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17he019c71af98d5ec0E
    unreachable
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17he019c71af98d5ec0E (;158;) (type 6) (param i32)
    local.get 0
    i32.const 131271
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hd4b7acbc76ff9d63E
    unreachable
  )
  (func $_ZN4core5slice5index22slice_index_order_fail17hce8d8012711d5a00E (;159;) (type 7) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN4core5slice5index22slice_index_order_fail8do_panic7runtime17h3eb440503b756a77E
    unreachable
  )
  (func $_ZN4core5slice5index24slice_end_index_len_fail17h07937a589bfe269aE (;160;) (type 6) (param i32)
    local.get 0
    call $_ZN4core5slice5index24slice_end_index_len_fail8do_panic7runtime17h40abf6316be1d38dE
    unreachable
  )
  (func $rust_begin_unwind (;161;) (type 12)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17hbce93cd107d2a5cdE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17hbce93cd107d2a5cdE (;162;) (type 12)
    i32.const 131572
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;163;) (type 12)
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc08d6e3bc9977693E
  )
  (func $queued_calls (;164;) (type 12)
    (local i32 i32 i32 i32 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc08d6e3bc9977693E
    local.get 0
    call $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$12queued_calls17h1c847bed378f340fE
    local.tee 1
    i32.store offset=4
    local.get 0
    i32.const 64
    i32.add
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_info17h3c4174e17571c0feE
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    local.get 0
    i32.load offset=68
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14get_node_by_id17hb334de30eae61f8dE
    local.get 0
    local.get 0
    i32.const 4
    i32.add
    i32.store offset=56
    local.get 0
    i32.const 4
    i32.add
    local.set 2
    block ;; label = @1
      block ;; label = @2
        loop ;; label = @3
          local.get 0
          i32.load offset=8
          i32.const 2
          i32.eq
          br_if 1 (;@2;)
          local.get 0
          i32.const 64
          i32.add
          local.get 0
          i32.const 8
          i32.add
          call $_ZN113_$LT$dharitri_sc..storage..mappers..linked_list_mapper..LinkedListNode$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h60350b1aa3ff1221E
          local.get 0
          i32.load offset=64
          local.tee 3
          i32.const 2
          i32.eq
          br_if 2 (;@1;)
          local.get 0
          i32.load offset=68
          local.set 4
          local.get 0
          i32.load offset=88
          local.set 5
          local.get 0
          i32.load offset=84
          local.set 6
          local.get 0
          i64.load offset=72
          local.set 7
          local.get 0
          i32.load offset=80
          local.set 8
          local.get 0
          i32.load8_u offset=92
          local.set 9
          local.get 0
          i32.const 8
          i32.add
          local.get 2
          i32.load
          local.get 0
          i32.load offset=100
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14get_node_by_id17hb334de30eae61f8dE
          local.get 9
          i32.const 1
          i32.const 0
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6487590d4a486becE
          local.tee 1
          call $_ZN102_$LT$forwarder_queue..QueuedCallType$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h0aa4b22f87773a79E
          local.get 1
          local.get 8
          call $mBufferAppend
          drop
          local.get 7
          local.get 1
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17hebd31c15b1fc2350E
          local.get 6
          local.get 1
          call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hd499299f62fea655E
          local.get 5
          local.get 1
          call $_ZN149_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h5826501c7ceb899cE
          local.get 3
          local.get 4
          local.get 1
          call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_multi_dcdt_payment..RewaOrMultiDcdtPayment$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h7590db15bd96873cE
          local.get 1
          call $mBufferFinish
          drop
          br 0 (;@3;)
        end
      end
      local.get 0
      i32.const 112
      i32.add
      global.set $__stack_pointer
      return
    end
    call $_ZN4core6option13unwrap_failed17h7534a988a872bb9fE
    unreachable
  )
  (func $_ZN4core6option13unwrap_failed17h7534a988a872bb9fE (;165;) (type 12)
    call $_ZN4core9panicking5panic17hb20c9056d85d5b5eE
    unreachable
  )
  (func $add_queued_call_sync (;166;) (type 12)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h9004e33c2615415bE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h6b7f0310ac75cbfaE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd3a5cac086f19364E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h6dbf972e300f1bc0E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hbd38787beac0aaccE
    local.set 3
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17ha708499a4b00617cE
    i32.const 0
    local.get 1
    i64.const 0
    local.get 2
    local.get 3
    call $_ZN15forwarder_queue14ForwarderQueue15add_queued_call17h56a21be35bfefc31E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $add_queued_call_legacy_async (;167;) (type 12)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h9004e33c2615415bE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h6b7f0310ac75cbfaE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd3a5cac086f19364E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h6dbf972e300f1bc0E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hbd38787beac0aaccE
    local.set 3
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17ha708499a4b00617cE
    i32.const 1
    local.get 1
    i64.const 0
    local.get 2
    local.get 3
    call $_ZN15forwarder_queue14ForwarderQueue15add_queued_call17h56a21be35bfefc31E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $add_queued_call_transfer_execute (;168;) (type 12)
    (local i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h9004e33c2615415bE
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h6b7f0310ac75cbfaE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd3a5cac086f19364E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbb540ea9709eb5daE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h6dbf972e300f1bc0E
    local.set 3
    local.get 0
    i32.const 3
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hbd38787beac0aaccE
    local.set 4
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17ha708499a4b00617cE
    i32.const 2
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_ZN15forwarder_queue14ForwarderQueue15add_queued_call17h56a21be35bfefc31E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $add_queued_call_transfer_dcdt (;169;) (type 12)
    (local i32 i32 i64 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h9004e33c2615415bE
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h6b7f0310ac75cbfaE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd3a5cac086f19364E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbb540ea9709eb5daE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h6dbf972e300f1bc0E
    local.set 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc746c5761c54fb07E
    local.set 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h26ee64fa46ac3ebcE
    local.set 5
    local.get 0
    i32.const 5
    i32.store
    local.get 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hbd38787beac0aaccE
    local.set 6
    local.get 0
    i32.load
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17ha708499a4b00617cE
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h39ba5886b4218abdE
    local.set 7
    local.get 0
    local.get 5
    i32.store offset=12
    local.get 0
    i64.const 0
    i64.store
    local.get 0
    local.get 4
    i32.store offset=8
    local.get 7
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h353d74e7d5bda730E
    call $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$12queued_calls17h1c847bed378f340fE
    local.set 4
    local.get 0
    local.get 1
    i32.store offset=64
    local.get 0
    i32.const 3
    i32.store8 offset=76
    local.get 0
    local.get 6
    i32.store offset=72
    local.get 0
    local.get 3
    i32.store offset=68
    local.get 0
    local.get 2
    i64.store offset=56
    local.get 0
    local.get 7
    i32.store offset=52
    local.get 0
    i32.const 1
    i32.store offset=48
    local.get 0
    local.get 4
    local.get 0
    i32.const 48
    i32.add
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$9push_back17h3aa578d290ec67a2E
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $add_queued_call_promise (;170;) (type 12)
    (local i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h9004e33c2615415bE
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h6b7f0310ac75cbfaE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd3a5cac086f19364E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbb540ea9709eb5daE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h6dbf972e300f1bc0E
    local.set 3
    local.get 0
    i32.const 3
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hbd38787beac0aaccE
    local.set 4
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17ha708499a4b00617cE
    i32.const 3
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_ZN15forwarder_queue14ForwarderQueue15add_queued_call17h56a21be35bfefc31E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $add_queued_call (;171;) (type 12)
    (local i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h9004e33c2615415bE
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h6b7f0310ac75cbfaE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h31d74b18d1dddf7eE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd3a5cac086f19364E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbb540ea9709eb5daE
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h6dbf972e300f1bc0E
    local.set 4
    local.get 0
    i32.const 4
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hbd38787beac0aaccE
    local.set 5
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17ha708499a4b00617cE
    local.get 1
    i32.const 255
    i32.and
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    call $_ZN15forwarder_queue14ForwarderQueue15add_queued_call17h56a21be35bfefc31E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_queued_calls (;172;) (type 12)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 288
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc08d6e3bc9977693E
    local.get 0
    i32.const 232
    i32.add
    i32.const 8
    i32.add
    local.set 1
    local.get 0
    i32.const 152
    i32.add
    i32.const 12
    i32.add
    local.set 2
    local.get 0
    i32.const 152
    i32.add
    i32.const 8
    i32.add
    local.set 3
    local.get 0
    i32.const 136
    i32.add
    i32.const 16
    i32.add
    local.set 4
    local.get 0
    i32.const 232
    i32.add
    i32.const 4
    i32.add
    local.set 5
    local.get 0
    i32.const 232
    i32.add
    i32.const 24
    i32.add
    local.set 6
    local.get 0
    i32.const 216
    i32.add
    i32.const 12
    i32.add
    local.set 7
    local.get 0
    i32.const 216
    i32.add
    i32.const 8
    i32.add
    local.set 8
    local.get 0
    i32.const 188
    i32.add
    local.set 9
    local.get 0
    i32.const 124
    i32.add
    local.set 10
    local.get 0
    i32.const 104
    i32.add
    i32.const 16
    i32.add
    local.set 11
    local.get 0
    i32.const 104
    i32.add
    i32.const 4
    i32.or
    local.set 12
    local.get 0
    i32.const 56
    i32.add
    i32.const 4
    i32.or
    local.set 13
    local.get 0
    i32.const 232
    i32.add
    i32.const 4
    i32.or
    local.set 14
    block ;; label = @1
      block ;; label = @2
        loop ;; label = @3
          local.get 0
          i32.const 104
          i32.add
          call $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$12queued_calls17h1c847bed378f340fE
          local.tee 15
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_info17h3c4174e17571c0feE
          local.get 15
          local.get 0
          i32.load offset=108
          local.tee 16
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$13is_empty_node17h92f77bb940c27b63E
          br_if 1 (;@2;)
          local.get 0
          i32.const 232
          i32.add
          local.get 15
          local.get 16
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14get_node_by_id17hb334de30eae61f8dE
          local.get 0
          i32.load offset=232
          local.tee 17
          i32.const 2
          i32.eq
          br_if 2 (;@1;)
          local.get 0
          i32.const 152
          i32.add
          i32.const 24
          i32.add
          local.tee 18
          local.get 14
          i32.const 24
          i32.add
          i32.load
          i32.store
          local.get 0
          i32.const 152
          i32.add
          i32.const 16
          i32.add
          local.tee 19
          local.get 14
          i32.const 16
          i32.add
          i64.load align=4
          i64.store
          local.get 3
          local.get 14
          i32.const 8
          i32.add
          i64.load align=4
          i64.store
          local.get 0
          local.get 14
          i64.load align=4
          i64.store offset=152
          local.get 0
          i32.load offset=268
          local.set 16
          local.get 0
          i32.load offset=272
          local.set 20
          local.get 0
          i32.load offset=276
          local.set 21
          block ;; label = @4
            local.get 15
            local.get 0
            i32.load offset=264
            local.tee 22
            call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$13is_empty_node17h92f77bb940c27b63E
            br_if 0 (;@4;)
            local.get 0
            i32.const 56
            i32.add
            local.get 15
            call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_info17h3c4174e17571c0feE
            block ;; label = @5
              block ;; label = @6
                local.get 20
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                i32.const 232
                i32.add
                local.get 15
                local.get 20
                call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_node17hc4b2103298b6de65E
                local.get 0
                local.get 16
                i32.store offset=268
                local.get 15
                local.get 20
                local.get 0
                i32.const 232
                i32.add
                call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17hfd8fc5142efba924E
                br 1 (;@5;)
              end
              local.get 0
              local.get 16
              i32.store offset=60
            end
            block ;; label = @5
              block ;; label = @6
                local.get 16
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                i32.const 232
                i32.add
                local.get 15
                local.get 16
                call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_node17hc4b2103298b6de65E
                local.get 0
                local.get 20
                i32.store offset=272
                local.get 15
                local.get 16
                local.get 0
                i32.const 232
                i32.add
                call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17hfd8fc5142efba924E
                br 1 (;@5;)
              end
              local.get 0
              local.get 20
              i32.store offset=64
            end
            local.get 15
            local.get 22
            call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h8878c1e0987dbf7aE
            call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h21f4a4ffad306010E
            local.get 0
            local.get 0
            i32.load offset=56
            i32.const -1
            i32.add
            i32.store offset=56
            local.get 15
            local.get 0
            i32.const 56
            i32.add
            call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_info17h6788d5cac3010983E
          end
          local.get 13
          local.get 0
          i64.load offset=152
          i64.store align=4
          local.get 13
          i32.const 24
          i32.add
          local.get 18
          i32.load
          i32.store
          local.get 13
          i32.const 16
          i32.add
          local.get 19
          i64.load
          i64.store align=4
          local.get 13
          i32.const 8
          i32.add
          local.get 3
          i64.load
          i64.store align=4
          local.get 0
          local.get 21
          i32.store offset=100
          local.get 0
          local.get 20
          i32.store offset=96
          local.get 0
          local.get 16
          i32.store offset=92
          local.get 0
          local.get 22
          i32.store offset=88
          local.get 0
          local.get 17
          i32.store offset=56
          local.get 0
          i32.const 232
          i32.add
          local.get 0
          i32.const 56
          i32.add
          call $_ZN113_$LT$dharitri_sc..storage..mappers..linked_list_mapper..LinkedListNode$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h60350b1aa3ff1221E
          local.get 0
          i32.const 104
          i32.add
          i32.const 24
          i32.add
          local.get 6
          i64.load
          i64.store
          local.get 11
          local.get 0
          i32.const 232
          i32.add
          i32.const 16
          i32.add
          i64.load
          i64.store
          local.get 0
          i32.const 104
          i32.add
          i32.const 8
          i32.add
          local.get 1
          i64.load
          i64.store
          local.get 0
          local.get 0
          i64.load offset=232
          local.tee 23
          i64.store offset=104
          block ;; label = @4
            block ;; label = @5
              local.get 23
              i32.wrap_i64
              i32.const 1
              i32.and
              br_if 0 (;@5;)
              i32.const 131532
              i32.const 24
              call $_ZN11dharitri_sc8log_util23event_topic_accumulator17hd6a165ad9704136bE
              local.tee 15
              local.get 0
              i32.load8_u offset=132
              call $_ZN11dharitri_sc8log_util21serialize_event_topic17h9341bf038ebe1e66E
              local.get 15
              local.get 11
              call $_ZN11dharitri_sc8log_util21serialize_event_topic17hf33b6f0dbefc523aE
              local.get 15
              local.get 10
              call $_ZN11dharitri_sc8log_util21serialize_event_topic17hf33b6f0dbefc523aE
              local.get 15
              local.get 12
              call $_ZN11dharitri_sc8log_util21serialize_event_topic17h98b302fb21e9ff23E
              br 1 (;@4;)
            end
            local.get 0
            i32.load offset=108
            call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2f54dfeb00f49bceE
            call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..into_multi_value..IntoMultiValue$GT$16into_multi_value17h541938029f5a78eeE
            local.set 16
            i32.const 131508
            i32.const 24
            call $_ZN11dharitri_sc8log_util23event_topic_accumulator17hd6a165ad9704136bE
            local.tee 15
            local.get 0
            i32.load8_u offset=132
            call $_ZN11dharitri_sc8log_util21serialize_event_topic17h9341bf038ebe1e66E
            local.get 15
            local.get 11
            call $_ZN11dharitri_sc8log_util21serialize_event_topic17hf33b6f0dbefc523aE
            local.get 15
            local.get 10
            call $_ZN11dharitri_sc8log_util21serialize_event_topic17hf33b6f0dbefc523aE
            local.get 15
            local.get 16
            call $_ZN11dharitri_sc8log_util21serialize_event_topic17h4f2396f5645d2d41E
          end
          local.get 15
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h39ba5886b4218abdE
          call $managedWriteLog
          local.get 0
          i32.load offset=124
          local.set 15
          local.get 0
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h39ba5886b4218abdE
          local.tee 16
          i32.store offset=148
          local.get 0
          local.get 15
          i32.store offset=144
          local.get 0
          local.get 11
          i32.store offset=136
          local.get 0
          local.get 0
          i32.const 104
          i32.add
          i32.store offset=140
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  local.get 0
                  i32.load8_u offset=132
                  br_table 0 (;@7;) 1 (;@6;) 2 (;@5;) 3 (;@4;) 0 (;@7;)
                end
                local.get 0
                call $getGasLeft
                local.tee 23
                i64.const -100000
                i64.add
                local.get 23
                local.get 23
                i64.const 100000
                i64.gt_u
                select
                local.tee 23
                i64.store offset=216
                block ;; label = @7
                  block ;; label = @8
                    local.get 0
                    i32.load offset=104
                    br_if 0 (;@8;)
                    local.get 23
                    local.get 0
                    i32.load offset=120
                    local.get 0
                    i32.load offset=108
                    local.get 15
                    local.get 16
                    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h998d5ff7950352d0E
                    br 1 (;@7;)
                  end
                  block ;; label = @8
                    block ;; label = @9
                      block ;; label = @10
                        local.get 0
                        i32.load offset=108
                        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h3ca66c6163eed728E
                        br_table 1 (;@9;) 2 (;@8;) 0 (;@10;)
                      end
                      local.get 0
                      local.get 15
                      local.get 16
                      local.get 11
                      local.get 0
                      i32.load offset=108
                      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17h802baa396be4e67bE
                      local.get 0
                      i32.load offset=4
                      local.set 15
                      local.get 0
                      i32.load
                      local.set 16
                      call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17hcd8a55fabc48609bE
                      local.set 20
                      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h3ccdae618378853eE
                      local.set 22
                      local.get 0
                      i64.load offset=216
                      local.get 20
                      local.get 22
                      local.get 16
                      local.get 15
                      call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h998d5ff7950352d0E
                      br 2 (;@7;)
                    end
                    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h3ccdae618378853eE
                    local.set 20
                    local.get 0
                    i64.load offset=216
                    local.get 0
                    i32.load offset=120
                    local.get 20
                    local.get 15
                    local.get 16
                    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h998d5ff7950352d0E
                    br 1 (;@7;)
                  end
                  local.get 0
                  i32.const 152
                  i32.add
                  local.get 0
                  i32.load offset=108
                  call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h4902a8fd67809271E
                  local.get 0
                  i64.load offset=152
                  local.set 23
                  local.get 0
                  local.get 2
                  i32.store offset=252
                  local.get 0
                  local.get 3
                  i32.store offset=248
                  local.get 0
                  local.get 23
                  i64.store offset=240
                  local.get 0
                  local.get 4
                  i32.store offset=264
                  local.get 0
                  local.get 4
                  i32.store offset=260
                  local.get 0
                  local.get 16
                  i32.store offset=236
                  local.get 0
                  local.get 15
                  i32.store offset=232
                  local.get 0
                  local.get 0
                  i32.const 216
                  i32.add
                  i32.store offset=256
                  block ;; label = @8
                    local.get 23
                    i64.const 0
                    i64.ne
                    br_if 0 (;@8;)
                    local.get 0
                    i32.const 8
                    i32.add
                    local.get 15
                    local.get 16
                    local.get 3
                    local.get 2
                    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h9406d65f9af94b4fE
                    local.get 0
                    i32.load offset=12
                    local.set 15
                    local.get 0
                    i32.load offset=8
                    local.set 16
                    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h3ccdae618378853eE
                    local.set 20
                    local.get 0
                    i64.load offset=216
                    local.get 0
                    i32.load offset=120
                    local.get 20
                    local.get 16
                    local.get 15
                    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h998d5ff7950352d0E
                    br 1 (;@7;)
                  end
                  local.get 0
                  i32.const 16
                  i32.add
                  local.get 15
                  local.get 16
                  local.get 0
                  i32.load offset=120
                  local.get 1
                  call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h079a5be9027f6748E
                  local.get 0
                  i32.load offset=20
                  local.set 15
                  local.get 0
                  i32.load offset=16
                  local.set 16
                  call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17hcd8a55fabc48609bE
                  local.set 20
                  call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h3ccdae618378853eE
                  local.set 22
                  local.get 0
                  i64.load offset=216
                  local.get 20
                  local.get 22
                  local.get 16
                  local.get 15
                  call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h998d5ff7950352d0E
                end
                call $cleanReturnData
                br 3 (;@3;)
              end
              local.get 0
              i32.const 136
              i32.add
              call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h179d8ab92a3e0ddbE
              unreachable
            end
            local.get 0
            i64.load offset=112
            local.set 23
            block ;; label = @5
              local.get 15
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h9790f5e4c50164efE
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              i32.load offset=108
              local.set 20
              block ;; label = @6
                block ;; label = @7
                  local.get 0
                  i32.load offset=104
                  i32.const 1
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 20
                  call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h9790f5e4c50164efE
                  br_if 4 (;@3;)
                  br 1 (;@6;)
                end
                local.get 20
                call $bigIntSign
                i32.eqz
                br_if 3 (;@3;)
              end
              i64.const 0
              local.set 23
            end
            block ;; label = @5
              local.get 0
              i32.load offset=104
              br_if 0 (;@5;)
              local.get 0
              i32.load offset=120
              local.get 0
              i32.load offset=108
              local.get 23
              local.get 15
              local.get 16
              call $managedTransferValueExecute
              drop
              br 2 (;@3;)
            end
            local.get 0
            i32.load offset=120
            local.get 0
            i32.load offset=108
            local.get 23
            local.get 15
            local.get 16
            call $managedMultiTransferDCDTNFTExecute
            drop
            br 1 (;@3;)
          end
          local.get 0
          i64.load offset=112
          local.set 23
          local.get 0
          i32.load offset=128
          local.set 16
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h39ba5886b4218abdE
          local.set 20
          local.get 0
          local.get 11
          i32.store offset=180
          local.get 0
          local.get 20
          i32.store offset=176
          local.get 0
          i32.const 24
          i32.store offset=172
          local.get 0
          i32.const 131385
          i32.store offset=168
          local.get 0
          local.get 16
          i32.store offset=164
          local.get 0
          local.get 15
          i32.store offset=160
          local.get 0
          local.get 23
          i64.store offset=152
          local.get 0
          local.get 0
          i32.const 104
          i32.add
          i32.store offset=184
          local.get 0
          i32.const -25
          i32.store offset=196
          i32.const -25
          i32.const 1
          i32.const 0
          call $mBufferSetBytes
          drop
          local.get 0
          i32.load offset=196
          call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h398bd516024a663cE
          local.set 16
          local.get 0
          local.get 0
          i32.load offset=176
          local.tee 15
          call $mBufferGetLength
          i32.store offset=240
          local.get 0
          i32.const 0
          i32.store offset=236
          local.get 0
          local.get 15
          i32.store offset=232
          block ;; label = @4
            loop ;; label = @5
              local.get 0
              i32.const 48
              i32.add
              local.get 0
              i32.const 232
              i32.add
              call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc663ff0914b5bcd9E
              local.get 0
              i32.load offset=48
              i32.eqz
              br_if 1 (;@4;)
              local.get 0
              local.get 0
              i32.load offset=52
              local.tee 20
              call $mBufferGetLength
              local.tee 15
              i32.const 24
              i32.shl
              local.get 15
              i32.const 65280
              i32.and
              i32.const 8
              i32.shl
              i32.or
              local.get 15
              i32.const 8
              i32.shr_u
              i32.const 65280
              i32.and
              local.get 15
              i32.const 24
              i32.shr_u
              i32.or
              i32.or
              i32.store offset=216
              local.get 16
              local.get 0
              i32.const 216
              i32.add
              i32.const 4
              call $mBufferAppendBytes
              drop
              local.get 16
              local.get 20
              call $mBufferAppend
              drop
              br 0 (;@5;)
            end
          end
          local.get 0
          local.get 16
          i32.store offset=196
          local.get 0
          i64.const 0
          i64.store offset=200
          local.get 0
          local.get 0
          i64.load offset=152
          i64.store offset=208
          local.get 0
          i32.load offset=184
          local.tee 17
          i32.const 4
          i32.add
          local.set 22
          local.get 0
          i32.load offset=164
          local.set 15
          local.get 0
          i32.load offset=160
          local.set 16
          local.get 0
          i32.load offset=180
          local.set 20
          block ;; label = @4
            local.get 17
            i32.load
            br_if 0 (;@4;)
            local.get 0
            local.get 15
            i32.store offset=260
            local.get 0
            local.get 16
            i32.store offset=256
            local.get 0
            i32.const 24
            i32.store offset=236
            local.get 0
            i32.const 131385
            i32.store offset=232
            local.get 0
            local.get 0
            i32.const 196
            i32.add
            i32.store offset=248
            local.get 0
            local.get 0
            i32.const 200
            i32.add
            i32.store offset=244
            local.get 0
            local.get 0
            i32.const 208
            i32.add
            i32.store offset=240
            local.get 22
            i32.load
            local.set 22
            local.get 0
            local.get 20
            i32.store offset=252
            local.get 0
            i32.const 232
            i32.add
            local.get 20
            i32.load
            local.get 22
            local.get 16
            local.get 15
            call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h7af71c0445546136E
            br 1 (;@3;)
          end
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                local.get 22
                i32.load
                call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h3ca66c6163eed728E
                br_table 1 (;@5;) 2 (;@4;) 0 (;@6;)
              end
              local.get 0
              local.get 15
              i32.store offset=268
              local.get 0
              local.get 16
              i32.store offset=264
              local.get 0
              local.get 9
              i32.store offset=260
              local.get 0
              local.get 9
              i32.store offset=256
              local.get 0
              i32.const 24
              i32.store offset=240
              local.get 0
              i32.const 131385
              i32.store offset=236
              local.get 0
              local.get 0
              i32.const 196
              i32.add
              i32.store offset=252
              local.get 0
              local.get 0
              i32.const 200
              i32.add
              i32.store offset=248
              local.get 0
              local.get 0
              i32.const 208
              i32.add
              i32.store offset=244
              local.get 0
              local.get 22
              i32.store offset=232
              local.get 0
              i32.const 24
              i32.add
              local.get 16
              local.get 15
              local.get 20
              local.get 22
              i32.load
              call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17h802baa396be4e67bE
              local.get 0
              i32.load offset=28
              local.set 15
              local.get 0
              i32.load offset=24
              local.set 16
              local.get 5
              call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17hcd8a55fabc48609bE
              call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h3ccdae618378853eE
              local.get 16
              local.get 15
              call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h7af71c0445546136E
              br 2 (;@3;)
            end
            local.get 0
            local.get 15
            i32.store offset=256
            local.get 0
            local.get 16
            i32.store offset=252
            local.get 0
            i32.const 24
            i32.store offset=236
            local.get 0
            i32.const 131385
            i32.store offset=232
            local.get 0
            local.get 0
            i32.const 196
            i32.add
            i32.store offset=248
            local.get 0
            local.get 0
            i32.const 200
            i32.add
            i32.store offset=244
            local.get 0
            local.get 0
            i32.const 208
            i32.add
            i32.store offset=240
            call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h3ccdae618378853eE
            local.set 22
            local.get 0
            i32.const 232
            i32.add
            local.get 20
            i32.load
            local.get 22
            local.get 16
            local.get 15
            call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h7af71c0445546136E
            br 1 (;@3;)
          end
          local.get 0
          i32.const 216
          i32.add
          local.get 22
          i32.load
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h4902a8fd67809271E
          local.get 0
          i64.load offset=216
          local.set 23
          local.get 0
          local.get 7
          i32.store offset=252
          local.get 0
          local.get 8
          i32.store offset=248
          local.get 0
          local.get 23
          i64.store offset=240
          local.get 0
          local.get 9
          i32.store offset=280
          local.get 0
          local.get 9
          i32.store offset=276
          local.get 0
          i32.const 24
          i32.store offset=260
          local.get 0
          i32.const 131385
          i32.store offset=256
          local.get 0
          local.get 15
          i32.store offset=236
          local.get 0
          local.get 16
          i32.store offset=232
          local.get 0
          local.get 0
          i32.const 196
          i32.add
          i32.store offset=272
          local.get 0
          local.get 0
          i32.const 200
          i32.add
          i32.store offset=268
          local.get 0
          local.get 0
          i32.const 208
          i32.add
          i32.store offset=264
          block ;; label = @4
            local.get 23
            i64.const 0
            i64.ne
            br_if 0 (;@4;)
            local.get 0
            i32.const 32
            i32.add
            local.get 16
            local.get 15
            local.get 8
            local.get 7
            call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h9406d65f9af94b4fE
            local.get 0
            i32.load offset=36
            local.set 15
            local.get 0
            i32.load offset=32
            local.set 16
            call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h3ccdae618378853eE
            local.set 22
            local.get 6
            local.get 20
            i32.load
            local.get 22
            local.get 16
            local.get 15
            call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h7af71c0445546136E
            br 1 (;@3;)
          end
          local.get 0
          i32.const 40
          i32.add
          local.get 16
          local.get 15
          local.get 20
          i32.load
          local.get 1
          call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h079a5be9027f6748E
          local.get 0
          i32.load offset=44
          local.set 15
          local.get 0
          i32.load offset=40
          local.set 16
          local.get 6
          call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17hcd8a55fabc48609bE
          call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h3ccdae618378853eE
          local.get 16
          local.get 15
          call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h7af71c0445546136E
          br 0 (;@3;)
        end
      end
      local.get 0
      i32.const 288
      i32.add
      global.set $__stack_pointer
      return
    end
    call $_ZN4core6option13unwrap_failed17h7534a988a872bb9fE
    unreachable
  )
  (func $callback_count (;173;) (type 12)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc08d6e3bc9977693E
    i32.const 131437
    i32.const 14
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6487590d4a486becE
    local.set 1
    local.get 0
    i64.const 0
    i64.store offset=8
    block ;; label = @1
      block ;; label = @2
        local.get 1
        call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h40bee81d1fd745eeE
        local.tee 2
        call $mBufferGetLength
        local.tee 3
        i32.const 9
        i32.ge_u
        br_if 0 (;@2;)
        local.get 2
        i32.const 0
        local.get 0
        i32.const 8
        i32.add
        local.get 3
        i32.sub
        i32.const 8
        i32.add
        local.get 3
        call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17he59cf7a5329a8f5dE
        drop
        local.get 0
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
        local.get 4
        call $smallIntFinishUnsigned
        local.get 0
        i32.const 16
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 1
      i32.const 131257
      i32.const 14
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hd4b7acbc76ff9d63E
      unreachable
    end
    local.get 1
    i32.const 131257
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hd4b7acbc76ff9d63E
    unreachable
  )
  (func $callback_payments (;174;) (type 12)
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc08d6e3bc9977693E
    i32.const 131451
    i32.const 17
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6487590d4a486becE
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h40bee81d1fd745eeE
    call $mBufferFinish
    drop
  )
  (func $callBack (;175;) (type 12))
  (func $_ZN4core9panicking9panic_fmt17h931ec2537c26fa22E (;176;) (type 12)
    call $rust_begin_unwind
    unreachable
  )
  (func $_ZN4core5slice5index24slice_end_index_len_fail8do_panic7runtime17h40abf6316be1d38dE (;177;) (type 6) (param i32)
    call $_ZN4core9panicking9panic_fmt17h931ec2537c26fa22E
    unreachable
  )
  (func $_ZN4core9panicking5panic17hb20c9056d85d5b5eE (;178;) (type 12)
    call $_ZN4core9panicking9panic_fmt17h931ec2537c26fa22E
    unreachable
  )
  (func $_ZN4core5slice5index22slice_index_order_fail8do_panic7runtime17h3eb440503b756a77E (;179;) (type 7) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17h931ec2537c26fa22E
    unreachable
  )
  (func $memcpy (;180;) (type 5) (param i32 i32 i32) (result i32)
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
  (data $.rodata (;0;) (i32.const 131072) "invalid value\00\01\02\03unexpected REWA transferREWA-000000argument decode error (): too few argumentstoo many argumentswrong number of argumentsMultiDCDTNFTTransferDCDTNFTTransferDCDTTransferinput too longinput too shortManagedVec index out of rangeREWA.node.infostorage decode error (key: DCDT expectedbad array lengthpromises_callback_methodtocall_typetokenqueued_callscallback_countcallback_paymentsadd_queued_call_dcdtadd_queued_call_rewaforward_queued_call_dcdtforward_queued_call_rewa\0d\00\02\00\0e\00\02\00\0f\00\02\00\10\00\02\00panic occurred")
  (data $.data (;1;) (i32.const 131588) "8\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.84.1 (e71f9a9a9 2025-01-27)")
  )
  (@custom "target_features" (after data) "\04+\0amultivalue+\0fmutable-globals+\0freference-types+\08sign-ext")
)
