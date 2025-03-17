(module $forwarder_queue_promises_wasm.wasm
  (type (;0;) (func (param i32 i64)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i32)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
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
  (type (;25;) (func (param i32 i64 i32)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;0;) (type 0)))
  (import "env" "bigIntAdd" (func $bigIntAdd (;1;) (type 1)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;2;) (type 2)))
  (import "env" "mBufferNew" (func $mBufferNew (;3;) (type 3)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;4;) (type 4)))
  (import "env" "managedGetMultiDCDTCallValue" (func $managedGetMultiDCDTCallValue (;5;) (type 5)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;6;) (type 6)))
  (import "env" "signalError" (func $signalError (;7;) (type 7)))
  (import "env" "bigIntGetCallValue" (func $bigIntGetCallValue (;8;) (type 5)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;9;) (type 4)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;10;) (type 6)))
  (import "env" "managedSignalError" (func $managedSignalError (;11;) (type 5)))
  (import "env" "smallIntGetUnsignedArgument" (func $smallIntGetUnsignedArgument (;12;) (type 8)))
  (import "env" "bigIntGetUnsignedArgument" (func $bigIntGetUnsignedArgument (;13;) (type 7)))
  (import "env" "getArgumentLength" (func $getArgumentLength (;14;) (type 2)))
  (import "env" "getNumArguments" (func $getNumArguments (;15;) (type 3)))
  (import "env" "managedExecuteOnDestContext" (func $managedExecuteOnDestContext (;16;) (type 9)))
  (import "env" "managedCreateAsyncCall" (func $managedCreateAsyncCall (;17;) (type 10)))
  (import "env" "mBufferCopyByteSlice" (func $mBufferCopyByteSlice (;18;) (type 11)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;19;) (type 4)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;20;) (type 4)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;21;) (type 4)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;22;) (type 4)))
  (import "env" "managedWriteLog" (func $managedWriteLog (;23;) (type 7)))
  (import "env" "managedSCAddress" (func $managedSCAddress (;24;) (type 5)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;25;) (type 12)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;26;) (type 2)))
  (import "env" "getGasLeft" (func $getGasLeft (;27;) (type 13)))
  (import "env" "cleanReturnData" (func $cleanReturnData (;28;) (type 12)))
  (import "env" "bigIntSign" (func $bigIntSign (;29;) (type 2)))
  (import "env" "managedTransferValueExecute" (func $managedTransferValueExecute (;30;) (type 14)))
  (import "env" "managedMultiTransferDCDTNFTExecute" (func $managedMultiTransferDCDTNFTExecute (;31;) (type 14)))
  (import "env" "smallIntFinishUnsigned" (func $smallIntFinishUnsigned (;32;) (type 15)))
  (import "env" "managedGetCallbackClosure" (func $managedGetCallbackClosure (;33;) (type 5)))
  (import "env" "managedBufferToHex" (func $managedBufferToHex (;34;) (type 7)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;35;) (type 11)))
  (import "env" "mBufferEq" (func $mBufferEq (;36;) (type 4)))
  (import "env" "managedAsyncCall" (func $managedAsyncCall (;37;) (type 16)))
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 141665)
  (global (;2;) i32 i32.const 141680)
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
  (export "promises_callback_method" (func $promises_callback_method))
  (export "callBack" (func $callBack))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (func $_ZN102_$LT$forwarder_queue..QueuedCallType$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hf070b7b9e2caff50E (;38;) (type 7) (param i32 i32)
    local.get 0
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    i32.const 131616
    i32.add
    i32.load
    i32.load8_u
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h394a28cdc380fde5E
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h394a28cdc380fde5E (;39;) (type 7) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed7wrapped7builder22managed_buffer_builder36ManagedBufferBuilder$LT$M$C$Impl$GT$12append_bytes17h6741da076ccffbf0E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h59643319a578e557E (;40;) (type 2) (param i32) (result i32)
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE (;41;) (type 3) (result i32)
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
  (func $_ZN113_$LT$dharitri_sc..storage..mappers..linked_list_mapper..LinkedListNode$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf0bbdb87330e9542E (;42;) (type 7) (param i32 i32)
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
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4fa9e6209693ece8E
    local.set 4
    local.get 1
    i64.load offset=8
    local.set 5
    local.get 1
    i32.load offset=20
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4fa9e6209693ece8E
    local.set 6
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h315f8746e17d9721E
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
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h45dd6bd10d86763fE
        local.get 2
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 7
        local.get 2
        i32.load offset=12
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4fa9e6209693ece8E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h55ee6ff58a62ee4aE
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
        call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h59643319a578e557E
        local.set 8
        br 1 (;@1;)
      end
      i32.const 1
      local.set 9
      local.get 8
      call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hde825402151e99f2E
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
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4fa9e6209693ece8E (;43;) (type 2) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h315f8746e17d9721E (;44;) (type 3) (result i32)
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h7a91bd6c9c1f77b8E
  )
  (func $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h45dd6bd10d86763fE (;45;) (type 7) (param i32 i32)
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h55ee6ff58a62ee4aE (;46;) (type 7) (param i32 i32)
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
  (func $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hde825402151e99f2E (;47;) (type 2) (param i32) (result i32)
    (local i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h315f8746e17d9721E
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
      call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha98f633553e3b988E
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
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4fa9e6209693ece8E
      local.set 4
      local.get 1
      local.get 0
      call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h59643319a578e557E
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
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hbadff0c2c46f30b9E
      br 0 (;@1;)
    end
  )
  (func $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha98f633553e3b988E (;48;) (type 7) (param i32 i32)
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
    call $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h135e6d39cf5047a1E
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
        call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$M$GT$$u20$as$u20$dharitri_sc..types..managed..wrapped..managed_vec_item..ManagedVecItem$GT$17read_from_payload17h7f8dc70fbb63f301E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hbadff0c2c46f30b9E (;49;) (type 7) (param i32 i32)
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
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17h26449f34540437ebE (;50;) (type 16) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17h4fab3410cd6f932aE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17h4fab3410cd6f932aE (;51;) (type 16) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $managedAsyncCall
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$11any_payment17h4645520b198e520dE (;52;) (type 5) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block ;; label = @1
      i32.const 2
      call $_ZN11dharitri_sc3api13managed_types14static_var_api16StaticVarApiImpl21flag_is_set_or_update17h56bff4c56ef2c89bE
      br_if 0 (;@1;)
      i32.const -38
      call $managedGetMultiDCDTCallValue
    end
    block ;; label = @1
      i32.const 4
      call $_ZN11dharitri_sc3api13managed_types14static_var_api16StaticVarApiImpl21flag_is_set_or_update17h56bff4c56ef2c89bE
      br_if 0 (;@1;)
      i32.const -40
      i32.const 131113
      i32.const 11
      call $mBufferSetBytes
      drop
      local.get 1
      i32.const -38
      call $mBufferGetLength
      i32.store offset=8
      local.get 1
      i64.const 4294967258
      i64.store align=4
      loop ;; label = @2
        local.get 1
        i32.const 15
        i32.add
        local.get 1
        call $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h135e6d39cf5047a1E
        local.get 1
        i32.load8_u offset=15
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        i32.const -40
        local.get 1
        i32.load offset=16 align=1
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
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h8ca1fe5fd58dcf3dE
        br_if 0 (;@2;)
        i32.const 1
        local.set 2
        i32.const -38
        call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hde825402151e99f2E
        local.set 3
        br 1 (;@1;)
      end
      block ;; label = @2
        i32.const 1
        call $_ZN11dharitri_sc3api13managed_types14static_var_api16StaticVarApiImpl21flag_is_set_or_update17h56bff4c56ef2c89bE
        br_if 0 (;@2;)
        i32.const -35
        call $bigIntGetCallValue
      end
      i32.const 0
      local.set 2
      i32.const -35
      call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h59643319a578e557E
      local.set 3
    end
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc3api13managed_types14static_var_api16StaticVarApiImpl21flag_is_set_or_update17h56bff4c56ef2c89bE (;53;) (type 2) (param i32) (result i32)
    (local i32 i32)
    block ;; label = @1
      i32.const 0
      i32.load8_u offset=141664
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
      i32.store8 offset=141664
    end
    local.get 2
  )
  (func $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h135e6d39cf5047a1E (;54;) (type 7) (param i32 i32)
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h00ec339cb3020c69E (;55;) (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $mBufferEq
    i32.const 0
    i32.gt_s
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h8ca1fe5fd58dcf3dE (;56;) (type 2) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17he21bb6f50b7ae70cE
    i32.eqz
  )
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hed2a42b9c4b08ca4E (;57;) (type 2) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h62e298424ca44136E (;58;) (type 16) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131124
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h7a91bd6c9c1f77b8E
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h7a91bd6c9c1f77b8E (;59;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h7f3b75ad757d3e49E (;60;) (type 2) (param i32) (result i32)
    (local i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h315f8746e17d9721E
    local.set 1
    local.get 0
    i32.load
    local.set 2
    block ;; label = @1
      loop ;; label = @2
        local.get 2
        i32.const 0
        i32.load offset=141660
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
        call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hed2a42b9c4b08ca4E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h55ee6ff58a62ee4aE
        local.get 3
        local.set 2
        br 0 (;@2;)
      end
    end
    local.get 1
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4d9fb0ed456d0639E (;61;) (type 8) (param i32) (result i64)
    local.get 0
    call $smallIntGetUnsignedArgument
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h80aa2bd7b81e01b6E (;62;) (type 2) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hed2a42b9c4b08ca4E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb7e9218bb2805150E (;63;) (type 3) (result i32)
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
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hed2a42b9c4b08ca4E
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h46d8924a2affd29bE
    call $_ZN11dharitri_sc5types7managed7wrapped16token_identifier24TokenIdentifier$LT$M$GT$7try_new17h7055f8058e71a815E
    block ;; label = @1
      local.get 0
      i32.load offset=8
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      i32.const 131477
      i32.const 5
      i32.const 131413
      i32.const 13
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h62e298424ca44136E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h46d8924a2affd29bE (;64;) (type 2) (param i32) (result i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h7a91bd6c9c1f77b8E
      local.set 0
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped16token_identifier24TokenIdentifier$LT$M$GT$7try_new17h7055f8058e71a815E (;65;) (type 7) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17hdd252941d79177e0E
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbeae517779468dffE (;66;) (type 2) (param i32) (result i32)
    block ;; label = @1
      local.get 0
      call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hed2a42b9c4b08ca4E
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      i32.const 131466
      i32.const 2
      i32.const 131426
      i32.const 16
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h62e298424ca44136E
      unreachable
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17he2d6c80e1de2cf4fE (;67;) (type 3) (result i32)
    (local i32)
    i32.const 4
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 0
    call $bigIntGetUnsignedArgument
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hfe2682daad495aabE (;68;) (type 3) (result i32)
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
      i32.const 131468
      i32.const 9
      i32.const 131282
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h62e298424ca44136E
      unreachable
    end
    i32.const 131468
    i32.const 9
    i32.const 131072
    i32.const 13
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h62e298424ca44136E
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17ha42fa833dc300179E (;69;) (type 5) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=141660
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hefaf9ecf7f23154aE (;70;) (type 7) (param i32 i32)
    block ;; label = @1
      local.get 0
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
      return
    end
    i32.const 131167
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hff4abcf19dbbc308E (;71;) (type 12)
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h4e6c60f10a24b672E (;72;) (type 5) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=141660
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h5f8aca84b34b6b63E (;73;) (type 12)
    i32.const 0
    call $getNumArguments
    i32.store offset=141660
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h856ab673e5c3808dE (;74;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17hccd1f2f319b7df31E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17hccd1f2f319b7df31E (;75;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h5be4302e570aee70E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17hcb5ef44e15764f0fE (;76;) (type 1) (param i32 i32 i32)
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h592ad8e86760471eE
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17ha2bf036cdb7f1d5aE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h592ad8e86760471eE (;77;) (type 3) (result i32)
    i32.const -10
    i64.const 0
    call $bigIntSetInt64
    i32.const -10
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17ha2bf036cdb7f1d5aE (;78;) (type 16) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17h26449f34540437ebE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized17hd197545df6c0614cE (;79;) (type 17) (param i32 i32 i32 i32 i32 i32)
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
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hceb0b6fea98c46a7E
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
        call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17hae12bf724ba45519E
        unreachable
      end
      local.get 3
      local.get 4
      local.get 5
      call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h856ab673e5c3808dE
      unreachable
    end
    local.get 6
    i32.const 24
    i32.add
    local.get 7
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h19947ea186fa9705E
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17ha80e3d324390e9b4E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hceb0b6fea98c46a7E (;80;) (type 2) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17he21bb6f50b7ae70cE
    i32.const 4
    i32.shr_u
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17hae12bf724ba45519E (;81;) (type 7) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h5ec1a0103d155a8aE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h19947ea186fa9705E (;82;) (type 7) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h45a9f5de06129766E
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131311
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
    call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$M$GT$$u20$as$u20$dharitri_sc..types..managed..wrapped..managed_vec_item..ManagedVecItem$GT$17read_from_payload17h7f8dc70fbb63f301E
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
  (func $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17ha80e3d324390e9b4E (;83;) (type 17) (param i32 i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h6abef5c3e789d292E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17hea3db7cc54cb8f97E (;84;) (type 7) (param i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17h65988b06d4700343E
    local.get 2
    i32.load offset=12
    local.set 0
    local.get 2
    i32.load offset=8
    local.set 2
    call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h5882c5ebae94efe6E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h592ad8e86760471eE
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17ha2bf036cdb7f1d5aE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17h65988b06d4700343E (;85;) (type 18) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 24
    i32.add
    i32.const 131235
    i32.const 20
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hbba90d209b73b7ceE
    local.get 5
    i32.load offset=24
    local.set 6
    local.get 5
    i32.load offset=28
    local.tee 7
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h6311ea738daeed69E
    local.get 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17he21bb6f50b7ae70cE
    local.set 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h315f8746e17d9721E
    local.tee 8
    local.get 3
    i32.const 4
    i32.shr_u
    i64.extend_i32_u
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h576fa15222f88facE
    local.get 7
    local.get 8
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h55ee6ff58a62ee4aE
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
      call $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h135e6d39cf5047a1E
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
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h4cd1dd8550d26a43E
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
      call $_ZN166_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h404320ccedc08bceE
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
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17he2a1dba047c99a55E
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
      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h02f4458f2cddc8e2E
      br 0 (;@1;)
    end
  )
  (func $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h5882c5ebae94efe6E (;86;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 0
    call $managedSCAddress
    local.get 0
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h6abef5c3e789d292E (;87;) (type 7) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h030b045816d2d93aE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h26193db25db9e939E (;88;) (type 7) (param i32 i32)
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
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h00200ddb821e2385E
      local.get 2
      i32.load offset=4
      local.set 0
      local.get 2
      i32.load
      local.set 2
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h592ad8e86760471eE
      local.get 2
      local.get 0
      call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17ha2bf036cdb7f1d5aE
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h162f462def14f8adE
    local.get 2
    i32.load offset=12
    local.set 0
    local.get 2
    i32.load offset=8
    local.set 2
    call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h5882c5ebae94efe6E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h592ad8e86760471eE
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17ha2bf036cdb7f1d5aE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h00200ddb821e2385E (;89;) (type 18) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 24
    i32.add
    i32.const 131270
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hbba90d209b73b7ceE
    local.get 5
    i32.const 16
    i32.add
    local.get 5
    i32.load offset=24
    local.get 5
    i32.load offset=28
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hd68a1b585a77a7afE
    local.get 5
    i32.const 8
    i32.add
    local.get 5
    i32.load offset=16
    local.get 5
    i32.load offset=20
    local.get 4
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h66aab28c51c6c7daE
    local.get 5
    local.get 5
    i32.load offset=8
    local.get 5
    i32.load offset=12
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h4cd1dd8550d26a43E
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
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h162f462def14f8adE (;90;) (type 18) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 40
    i32.add
    i32.const 131255
    i32.const 15
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hbba90d209b73b7ceE
    local.get 5
    i32.const 32
    i32.add
    local.get 5
    i32.load offset=40
    local.get 5
    i32.load offset=44
    local.get 4
    i32.load offset=8
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hd68a1b585a77a7afE
    local.get 5
    i32.const 24
    i32.add
    local.get 5
    i32.load offset=32
    local.get 5
    i32.load offset=36
    local.get 4
    i64.load
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17he2a1dba047c99a55E
    local.get 5
    i32.const 16
    i32.add
    local.get 5
    i32.load offset=24
    local.get 5
    i32.load offset=28
    local.get 4
    i32.load offset=12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h66aab28c51c6c7daE
    local.get 5
    i32.load offset=16
    local.set 6
    local.get 5
    i32.load offset=20
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h315f8746e17d9721E
    drop
    local.get 4
    local.get 3
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4fa9e6209693ece8E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h55ee6ff58a62ee4aE
    local.get 5
    i32.const 8
    i32.add
    local.get 6
    local.get 4
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h4cd1dd8550d26a43E
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
  (func $_ZN11dharitri_sc5types11interaction10tx_payment29tx_payment_rewa_or_multi_dcdt270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..rewa_or_multi_dcdt_payment..RewaOrMultiDcdtPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h4bf950dbd6c97d1aE (;91;) (type 17) (param i32 i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment33tx_payment_rewa_or_multi_dcdt_ref270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_multi_dcdt_payment..RewaOrMultiDcdtPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h34618bc08a59fdb0E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment33tx_payment_rewa_or_multi_dcdt_ref270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_multi_dcdt_payment..RewaOrMultiDcdtPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h34618bc08a59fdb0E (;92;) (type 19) (param i32 i32 i32 i32 i32 i32 i32)
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
      call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17hce0bc40c115d098bE
      unreachable
    end
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    local.get 6
    call $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized17hd197545df6c0614cE
    unreachable
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17hce0bc40c115d098bE (;93;) (type 18) (param i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h0988259b084d9913E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h0988259b084d9913E (;94;) (type 7) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h2cc624b717645a2dE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h2cc624b717645a2dE (;95;) (type 7) (param i32 i32)
    local.get 1
    local.get 0
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h4ff18f4ea9190d0cE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h030b045816d2d93aE (;96;) (type 7) (param i32 i32)
    local.get 1
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h26193db25db9e939E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h5ec1a0103d155a8aE (;97;) (type 7) (param i32 i32)
    local.get 1
    local.get 0
    call $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17hea3db7cc54cb8f97E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h5be4302e570aee70E (;98;) (type 1) (param i32 i32 i32)
    local.get 1
    local.get 2
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17hcb5ef44e15764f0fE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hbba90d209b73b7ceE (;99;) (type 1) (param i32 i32 i32)
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h7a91bd6c9c1f77b8E
    local.set 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h315f8746e17d9721E
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h6311ea738daeed69E (;100;) (type 7) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h315f8746e17d9721E
    drop
    local.get 0
    local.get 1
    i32.load
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4fa9e6209693ece8E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h55ee6ff58a62ee4aE
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17he21bb6f50b7ae70cE (;101;) (type 2) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h576fa15222f88facE (;102;) (type 0) (param i32 i64)
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
    call $mBufferSetBytes
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h4cd1dd8550d26a43E (;103;) (type 18) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block ;; label = @1
      local.get 3
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h8ca1fe5fd58dcf3dE
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      call $_ZN166_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h404320ccedc08bceE
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
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h45dd6bd10d86763fE
        local.get 5
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        local.get 5
        i32.load offset=12
        call $_ZN166_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h404320ccedc08bceE
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
  (func $_ZN166_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h404320ccedc08bceE (;104;) (type 7) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h315f8746e17d9721E
    drop
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4fa9e6209693ece8E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h55ee6ff58a62ee4aE
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17he2a1dba047c99a55E (;105;) (type 20) (param i32 i32 i32 i64)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h55165062334e069dE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h02f4458f2cddc8e2E (;106;) (type 7) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h315f8746e17d9721E
    drop
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17hbb59747a5ffc52e8E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h55ee6ff58a62ee4aE
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hd68a1b585a77a7afE (;107;) (type 16) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h6311ea738daeed69E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h66aab28c51c6c7daE (;108;) (type 16) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h5dfb49c18aa6bcfbE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h5dfb49c18aa6bcfbE (;109;) (type 7) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h315f8746e17d9721E
    drop
    local.get 0
    local.get 1
    i32.load
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17hbb59747a5ffc52e8E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h55ee6ff58a62ee4aE
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h55165062334e069dE (;110;) (type 0) (param i32 i64)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h315f8746e17d9721E
    local.tee 2
    local.get 1
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h576fa15222f88facE
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h55ee6ff58a62ee4aE
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h34865c7b3ee41dc3E (;111;) (type 21) (param i64 i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    call $managedExecuteOnDestContext
    drop
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h25d509f9918923a8E (;112;) (type 5) (param i32)
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment29tx_payment_rewa_or_multi_dcdt270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..rewa_or_multi_dcdt_payment..RewaOrMultiDcdtPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h4bf950dbd6c97d1aE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17hf15a6d22fe08c22fE (;113;) (type 18) (param i32 i32 i32 i32 i32)
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
  (func $_ZN11dharitri_sc5types11interaction9annotated23annotated_impl_big_uint381_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h33a1bcefe40ee512E (;114;) (type 7) (param i32 i32)
    local.get 1
    local.get 0
    i32.load
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17habcbff1b2a2cb654E
    unreachable
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17habcbff1b2a2cb654E (;115;) (type 7) (param i32 i32)
    local.get 0
    i32.load
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17ha2bf036cdb7f1d5aE
    unreachable
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h4ff18f4ea9190d0cE (;116;) (type 7) (param i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction9annotated23annotated_impl_big_uint381_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h33a1bcefe40ee512E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h6047ac3f9acc3f72E (;117;) (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 0
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17ha769a8792147ffb1E
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$27read_managed_buffer_of_size17hd8d33b8f7b76961cE
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17ha769a8792147ffb1E (;118;) (type 4) (param i32 i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h1a91e4d75a81b7b0E
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
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$27read_managed_buffer_of_size17hd8d33b8f7b76961cE (;119;) (type 6) (param i32 i32 i32) (result i32)
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
    i32.load offset=8
    local.get 0
    i32.load
    local.tee 4
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h2ae3e1ce2169eb21E
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
      local.get 1
      i32.add
      i32.store
      local.get 3
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 2
      return
    end
    local.get 2
    i32.const 131296
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hcf1d3bad2b3dc56fE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h2ae3e1ce2169eb21E (;120;) (type 16) (param i32 i32 i32 i32)
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
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hcf1d3bad2b3dc56fE (;121;) (type 1) (param i32 i32 i32)
    (local i32)
    i32.const 131386
    i32.const 27
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h7a91bd6c9c1f77b8E
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h45a9f5de06129766E (;122;) (type 11) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17he59cf7a5329a8f5dE
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17he59cf7a5329a8f5dE (;123;) (type 11) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h0e074d748ce19b6fE (;124;) (type 7) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferAppend
    drop
  )
  (func $_ZN174_$LT$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$M$GT$$u20$as$u20$dharitri_sc..types..managed..wrapped..managed_vec_item..ManagedVecItem$GT$17read_from_payload17h7f8dc70fbb63f301E (;125;) (type 7) (param i32 i32)
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
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17hdd252941d79177e0E (;126;) (type 2) (param i32) (result i32)
    i32.const -40
    i32.const 131113
    i32.const 11
    call $mBufferSetBytes
    drop
    i32.const -40
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h00ec339cb3020c69E
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17hf8897ed755e6883fE (;127;) (type 11) (param i32 i32 i32 i32) (result i32)
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
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17he21bb6f50b7ae70cE
                local.tee 6
                i32.const 10000
                i32.gt_u
                i32.const 0
                i32.load8_u offset=141656
                i32.or
                local.tee 7
                i32.const 1
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 6
                i32.store offset=141652
                i32.const 0
                i32.const 1
                i32.store8 offset=141656
                local.get 5
                i32.const 0
                i32.const 131652
                local.get 6
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h45a9f5de06129766E
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
                i32.store offset=141652
                i32.const 0
                i32.const 0
                i32.store8 offset=141656
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
            i32.load offset=141652
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
            i32.const 131652
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
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h45a9f5de06129766E
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
  (func $_ZN4core5slice5index22slice_index_order_fail17hce8d8012711d5a00E (;128;) (type 7) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN4core5slice5index22slice_index_order_fail8do_panic7runtime17h3eb440503b756a77E
    unreachable
  )
  (func $_ZN4core5slice5index24slice_end_index_len_fail17h07937a589bfe269aE (;129;) (type 5) (param i32)
    local.get 0
    call $_ZN4core5slice5index24slice_end_index_len_fail8do_panic7runtime17h40abf6316be1d38dE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped7builder22managed_buffer_builder36ManagedBufferBuilder$LT$M$C$Impl$GT$12append_bytes17h6741da076ccffbf0E (;130;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferAppendBytes
    drop
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17hbb59747a5ffc52e8E (;131;) (type 2) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h4fa6cca0fc492ba5E (;132;) (type 2) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$23load_len_managed_buffer17h68c202ea875e88efE (;133;) (type 2) (param i32) (result i32)
    local.get 0
    i32.const -25
    call $mBufferStorageLoad
    drop
    i32.const -25
    call $mBufferGetLength
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_info17h3945620ba64a913cE (;134;) (type 7) (param i32 i32)
    (local i32 i32)
    local.get 0
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14build_name_key17ha5c481bf5c7d8bf9E
    local.set 2
    block ;; label = @1
      local.get 1
      i32.load
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h618908da393b466fE
      local.tee 0
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h59307a787568b2faE
      local.get 1
      i32.load offset=4
      local.get 0
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h59307a787568b2faE
      local.get 1
      i32.load offset=8
      local.get 0
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h59307a787568b2faE
      local.get 1
      i32.load offset=12
      local.get 0
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h59307a787568b2faE
      local.get 2
      local.get 0
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h7be9c90c5b6487f5E
      return
    end
    local.get 2
    i32.const 1
    i32.const 0
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h4fad02b9f9b1e253E
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14build_name_key17ha5c481bf5c7d8bf9E (;135;) (type 2) (param i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4fa9e6209693ece8E
    local.tee 0
    i32.const 131381
    i32.const 5
    call $mBufferAppendBytes
    drop
    local.get 0
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h618908da393b466fE (;136;) (type 3) (result i32)
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h7a91bd6c9c1f77b8E
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h59307a787568b2faE (;137;) (type 7) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed7wrapped7builder22managed_buffer_builder36ManagedBufferBuilder$LT$M$C$Impl$GT$12append_bytes17h6741da076ccffbf0E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h7be9c90c5b6487f5E (;138;) (type 7) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferStorageStore
    drop
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h4fad02b9f9b1e253E (;139;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h7a91bd6c9c1f77b8E
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17h30daa25fee3a01c8E (;140;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h47e49f4932ead25dE
    local.set 0
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h618908da393b466fE
    local.set 1
    local.get 2
    i32.load8_u offset=28
    local.get 1
    call $_ZN102_$LT$forwarder_queue..QueuedCallType$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hf070b7b9e2caff50E
    local.get 1
    local.get 2
    i32.load offset=16
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h0e074d748ce19b6fE
    local.get 2
    i64.load offset=8
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h29f903b6d1c5bc9cE
    local.get 2
    i32.load offset=20
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h3215bb32c19a1540E
    local.get 2
    i32.load offset=24
    local.get 1
    call $_ZN149_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h77552817f62d73faE
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    local.get 1
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_multi_dcdt_payment..RewaOrMultiDcdtPayment$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hc56c269bb0017621E
    local.get 2
    i32.load offset=32
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h59307a787568b2faE
    local.get 2
    i32.load offset=36
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h59307a787568b2faE
    local.get 2
    i32.load offset=40
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h59307a787568b2faE
    local.get 0
    local.get 1
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h7be9c90c5b6487f5E
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h47e49f4932ead25dE (;141;) (type 4) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4fa9e6209693ece8E
    local.tee 0
    i32.const 131376
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h29f903b6d1c5bc9cE (;142;) (type 22) (param i64 i32)
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
    call $_ZN11dharitri_sc5types7managed7wrapped7builder22managed_buffer_builder36ManagedBufferBuilder$LT$M$C$Impl$GT$12append_bytes17h6741da076ccffbf0E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h3215bb32c19a1540E (;143;) (type 7) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17he21bb6f50b7ae70cE
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
    call $_ZN11dharitri_sc5types7managed7wrapped7builder22managed_buffer_builder36ManagedBufferBuilder$LT$M$C$Impl$GT$12append_bytes17h6741da076ccffbf0E
    local.get 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h0e074d748ce19b6fE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN149_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h77552817f62d73faE (;144;) (type 7) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17he21bb6f50b7ae70cE
    i32.const 2
    i32.shr_u
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17hf923ae31818ebd08E
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
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h45dd6bd10d86763fE
        local.get 2
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=12
        local.get 1
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h3215bb32c19a1540E
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_multi_dcdt_payment..RewaOrMultiDcdtPayment$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hc56c269bb0017621E (;145;) (type 1) (param i32 i32 i32)
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
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h394a28cdc380fde5E
        local.get 1
        local.get 2
        call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hd8abc2940e9a72fbE
        br 1 (;@1;)
      end
      i32.const 1
      local.get 2
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h394a28cdc380fde5E
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hceb0b6fea98c46a7E
      local.get 2
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17hf923ae31818ebd08E
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
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha98f633553e3b988E
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
            call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17hdd252941d79177e0E
            br_if 0 (;@4;)
            local.get 0
            local.get 2
            call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h3215bb32c19a1540E
            br 1 (;@3;)
          end
          i32.const 4
          local.get 2
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17hf923ae31818ebd08E
          local.get 2
          i32.const 131372
          i32.const 4
          call $_ZN11dharitri_sc5types7managed7wrapped7builder22managed_buffer_builder36ManagedBufferBuilder$LT$M$C$Impl$GT$12append_bytes17h6741da076ccffbf0E
        end
        local.get 3
        i64.load offset=32
        local.get 2
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h29f903b6d1c5bc9cE
        local.get 1
        local.get 2
        call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hd8abc2940e9a72fbE
        br 0 (;@2;)
      end
    end
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$9push_back17hfc92271bb081ecddE (;146;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_info17h62173308c2644426E
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
      call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_node17ha76341a58987de45E
      local.get 3
      local.get 4
      i32.store offset=52
      local.get 1
      local.get 6
      local.get 3
      i32.const 16
      i32.add
      call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17h30daa25fee3a01c8E
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
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17h30daa25fee3a01c8E
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
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_info17h3945620ba64a913cE
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
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_info17h62173308c2644426E (;147;) (type 7) (param i32 i32)
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
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14build_name_key17ha5c481bf5c7d8bf9E
          local.tee 1
          call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$23load_len_managed_buffer17h68c202ea875e88efE
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
        call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h75287f34b3e3e76bE
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17ha769a8792147ffb1E
        local.set 6
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17ha769a8792147ffb1E
        local.set 3
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17ha769a8792147ffb1E
        local.set 4
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17ha769a8792147ffb1E
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
        i32.store offset=141652
        i32.const 0
        i32.const 0
        i32.store8 offset=141656
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
    i32.const 131282
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hcf1d3bad2b3dc56fE
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_node17ha76341a58987de45E (;148;) (type 1) (param i32 i32 i32)
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
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h47e49f4932ead25dE
    local.tee 1
    call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h75287f34b3e3e76bE
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 3
          i32.const 12
          i32.add
          local.get 1
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h875a5e2129ee90b5E
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
          call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$27read_managed_buffer_of_size17hd8d33b8f7b76961cE
          local.set 5
          local.get 3
          i32.const 12
          i32.add
          local.get 1
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h9036090d3b342fbcE
          local.set 6
          local.get 3
          i32.const 12
          i32.add
          local.get 1
          call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h6047ac3f9acc3f72E
          local.set 7
          local.get 3
          i32.const 12
          i32.add
          local.get 1
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17ha769a8792147ffb1E
          local.set 2
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h315f8746e17d9721E
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
              call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h6047ac3f9acc3f72E
              call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h55ee6ff58a62ee4aE
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
                  call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h875a5e2129ee90b5E
                  i32.const 255
                  i32.and
                  br_table 1 (;@6;) 2 (;@5;) 0 (;@7;)
                end
                local.get 1
                i32.const 131072
                i32.const 13
                call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hcf1d3bad2b3dc56fE
                unreachable
              end
              i32.const 0
              local.set 2
              local.get 3
              i32.const 12
              i32.add
              local.get 1
              call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h8aebb04b4ef414abE
              local.set 9
              br 1 (;@4;)
            end
            local.get 3
            i32.const 12
            i32.add
            local.get 1
            call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17ha769a8792147ffb1E
            local.set 2
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h315f8746e17d9721E
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
                call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h6047ac3f9acc3f72E
                call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h46d8924a2affd29bE
                call $_ZN11dharitri_sc5types7managed7wrapped16token_identifier24TokenIdentifier$LT$M$GT$7try_new17h7055f8058e71a815E
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
                call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h9036090d3b342fbcE
                local.set 11
                local.get 3
                local.get 3
                i32.const 12
                i32.add
                local.get 1
                call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h8aebb04b4ef414abE
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
                call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hbadff0c2c46f30b9E
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
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17ha769a8792147ffb1E
          local.set 10
          local.get 3
          i32.const 12
          i32.add
          local.get 1
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17ha769a8792147ffb1E
          local.set 12
          local.get 3
          i32.const 12
          i32.add
          local.get 1
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17ha769a8792147ffb1E
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
            i32.store offset=141652
            i32.const 0
            i32.const 0
            i32.store8 offset=141656
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
        call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hcf1d3bad2b3dc56fE
        unreachable
      end
      local.get 1
      i32.const 131413
      i32.const 13
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hcf1d3bad2b3dc56fE
      unreachable
    end
    local.get 1
    i32.const 131282
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hcf1d3bad2b3dc56fE
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$13is_empty_node17h2940dab60fc6d436E (;149;) (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h47e49f4932ead25dE
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$23load_len_managed_buffer17h68c202ea875e88efE
    i32.eqz
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14get_node_by_id17hdfa38d1c518e732dE (;150;) (type 1) (param i32 i32 i32)
    block ;; label = @1
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$13is_empty_node17h2940dab60fc6d436E
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_node17ha76341a58987de45E
      return
    end
    local.get 0
    i32.const 2
    i32.store
  )
  (func $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h75287f34b3e3e76bE (;151;) (type 7) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h4fa6cca0fc492ba5E
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h875a5e2129ee90b5E (;152;) (type 4) (param i32 i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h1a91e4d75a81b7b0E
    local.get 2
    i32.load8_u offset=15
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h9036090d3b342fbcE (;153;) (type 23) (param i32 i32) (result i64)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h1a91e4d75a81b7b0E
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
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h8aebb04b4ef414abE (;154;) (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h6047ac3f9acc3f72E
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    call $mBufferToBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h60ef6da6a0b7eb3aE (;155;) (type 2) (param i32) (result i32)
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
        call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h4fa6cca0fc492ba5E
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
      i32.const 131282
      i32.const 14
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hcf1d3bad2b3dc56fE
      unreachable
    end
    local.get 0
    i32.const 131282
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hcf1d3bad2b3dc56fE
    unreachable
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17h00bcd1f152a3d214E (;156;) (type 7) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h6311ea738daeed69E
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17h646d943116c79abeE (;157;) (type 7) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h5dfb49c18aa6bcfbE
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17h8560ff223e3272d5E (;158;) (type 7) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h315f8746e17d9721E
    local.tee 2
    local.get 1
    i64.extend_i32_u
    i64.const 255
    i64.and
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h576fa15222f88facE
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h55ee6ff58a62ee4aE
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17hc2bf47eb0e762039E (;159;) (type 7) (param i32 i32)
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
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h45dd6bd10d86763fE
        local.get 2
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=12
        local.set 1
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h315f8746e17d9721E
        drop
        local.get 0
        local.get 1
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4fa9e6209693ece8E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h55ee6ff58a62ee4aE
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc8log_util23event_topic_accumulator17h0c27e3773d4fa3eeE (;160;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h315f8746e17d9721E
    local.tee 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h7a91bd6c9c1f77b8E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h55ee6ff58a62ee4aE
    local.get 2
  )
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hd8abc2940e9a72fbE (;161;) (type 7) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17hbb59747a5ffc52e8E
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h3215bb32c19a1540E
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17hf923ae31818ebd08E (;162;) (type 7) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h59307a787568b2faE
  )
  (func $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..into_multi_value..IntoMultiValue$GT$16into_multi_value17h95eed0dd01d745d4E (;163;) (type 2) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h315f8746e17d9721E
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
        call $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h135e6d39cf5047a1E
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
        call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$M$GT$$u20$as$u20$dharitri_sc..types..managed..wrapped..managed_vec_item..ManagedVecItem$GT$17read_from_payload17h7f8dc70fbb63f301E
        local.get 1
        i32.load offset=36
        local.set 5
        local.get 1
        i32.load offset=32
        local.set 6
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h315f8746e17d9721E
        local.set 0
        block ;; label = @3
          block ;; label = @4
            local.get 6
            call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17hdd252941d79177e0E
            br_if 0 (;@4;)
            local.get 6
            call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4fa9e6209693ece8E
            local.set 0
            br 1 (;@3;)
          end
          local.get 0
          i32.const 131372
          i32.const 4
          call $mBufferSetBytes
          drop
        end
        local.get 2
        local.get 0
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h55ee6ff58a62ee4aE
        local.get 2
        local.get 1
        i64.load offset=24
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h55165062334e069dE
        local.get 2
        local.get 5
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h02f4458f2cddc8e2E
        br 0 (;@2;)
      end
    end
    local.get 1
    i32.const 80
    i32.add
    global.set $__stack_pointer
    local.get 2
  )
  (func $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hda6a4cf678adbd0fE (;164;) (type 7) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h7a91bd6c9c1f77b8E
    local.tee 1
    i32.const 131296
    i32.const 15
    call $mBufferAppendBytes
    drop
    local.get 1
    call $managedSignalError
    unreachable
  )
  (func $_ZN15forwarder_queue14ForwarderQueue15add_queued_call17h9a75d3b4527cc196E (;165;) (type 24) (param i32 i32 i64 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 3
    i32.store offset=20
    local.get 5
    local.get 1
    i32.store offset=16
    local.get 5
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$11any_payment17h4645520b198e520dE
    local.get 5
    local.get 5
    i32.load offset=12
    local.tee 1
    i32.store offset=28
    local.get 5
    local.get 5
    i32.load offset=8
    local.tee 3
    i32.store offset=24
    block ;; label = @1
      block ;; label = @2
        local.get 3
        br_if 0 (;@2;)
        i32.const 131546
        i32.const 20
        call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h0c27e3773d4fa3eeE
        local.tee 3
        local.get 0
        call $_ZN11dharitri_sc8log_util21serialize_event_topic17h8560ff223e3272d5E
        local.get 3
        local.get 5
        i32.const 16
        i32.add
        call $_ZN11dharitri_sc8log_util21serialize_event_topic17h00bcd1f152a3d214E
        local.get 3
        local.get 5
        i32.const 20
        i32.add
        call $_ZN11dharitri_sc8log_util21serialize_event_topic17h00bcd1f152a3d214E
        local.get 3
        local.get 5
        i32.const 28
        i32.add
        call $_ZN11dharitri_sc8log_util21serialize_event_topic17h646d943116c79abeE
        br 1 (;@1;)
      end
      local.get 1
      call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hde825402151e99f2E
      call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..into_multi_value..IntoMultiValue$GT$16into_multi_value17h95eed0dd01d745d4E
      local.set 1
      i32.const 131526
      i32.const 20
      call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h0c27e3773d4fa3eeE
      local.tee 3
      local.get 0
      call $_ZN11dharitri_sc8log_util21serialize_event_topic17h8560ff223e3272d5E
      local.get 3
      local.get 5
      i32.const 16
      i32.add
      call $_ZN11dharitri_sc8log_util21serialize_event_topic17h00bcd1f152a3d214E
      local.get 3
      local.get 5
      i32.const 20
      i32.add
      call $_ZN11dharitri_sc8log_util21serialize_event_topic17h00bcd1f152a3d214E
      local.get 3
      local.get 1
      call $_ZN11dharitri_sc8log_util21serialize_event_topic17hc2bf47eb0e762039E
    end
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h315f8746e17d9721E
    call $managedWriteLog
    call $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$12queued_calls17h8562509380bddddbE
    local.set 3
    local.get 5
    local.get 0
    i32.store8 offset=108
    local.get 5
    local.get 5
    i32.load offset=16
    i32.store offset=96
    local.get 5
    local.get 4
    i32.store offset=104
    local.get 5
    local.get 5
    i32.load offset=20
    i32.store offset=100
    local.get 5
    local.get 2
    i64.store offset=88
    local.get 5
    local.get 5
    i64.load offset=24 align=4
    i64.store offset=80
    local.get 5
    i32.const 32
    i32.add
    local.get 3
    local.get 5
    i32.const 80
    i32.add
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$9push_back17hfc92271bb081ecddE
    local.get 5
    i32.const 112
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$12queued_calls17h8562509380bddddbE (;166;) (type 3) (result i32)
    i32.const 131483
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h7a91bd6c9c1f77b8E
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h1a91e4d75a81b7b0E (;167;) (type 16) (param i32 i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17hf8897ed755e6883fE
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h7b5f362da03327bfE
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN17dharitri_sc_codec8num_conv17top_encode_number17he16fb69829eeed2eE (;168;) (type 25) (param i32 i64 i32)
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
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h6e4e3963915c24d6E (;169;) (type 7) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hda6a4cf678adbd0fE
    unreachable
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h7b5f362da03327bfE (;170;) (type 5) (param i32)
    local.get 0
    i32.const 131296
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hcf1d3bad2b3dc56fE
    unreachable
  )
  (func $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$14callback_count17h807136920b119a7fE (;171;) (type 3) (result i32)
    i32.const 131495
    i32.const 14
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h7a91bd6c9c1f77b8E
  )
  (func $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$17callback_payments17h9ce3ee1f44ccb23fE (;172;) (type 3) (result i32)
    i32.const 131509
    i32.const 17
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h7a91bd6c9c1f77b8E
  )
  (func $rust_begin_unwind (;173;) (type 12)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17hbce93cd107d2a5cdE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17hbce93cd107d2a5cdE (;174;) (type 12)
    i32.const 131632
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;175;) (type 12)
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hff4abcf19dbbc308E
  )
  (func $queued_calls (;176;) (type 12)
    (local i32 i32 i32 i32 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hff4abcf19dbbc308E
    local.get 0
    call $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$12queued_calls17h8562509380bddddbE
    local.tee 1
    i32.store offset=4
    local.get 0
    i32.const 64
    i32.add
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_info17h62173308c2644426E
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    local.get 0
    i32.load offset=68
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14get_node_by_id17hdfa38d1c518e732dE
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
          call $_ZN113_$LT$dharitri_sc..storage..mappers..linked_list_mapper..LinkedListNode$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf0bbdb87330e9542E
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
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14get_node_by_id17hdfa38d1c518e732dE
          local.get 9
          i32.const 1
          i32.const 0
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h7a91bd6c9c1f77b8E
          local.tee 1
          call $_ZN102_$LT$forwarder_queue..QueuedCallType$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hf070b7b9e2caff50E
          local.get 1
          local.get 8
          call $mBufferAppend
          drop
          local.get 7
          local.get 1
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h29f903b6d1c5bc9cE
          local.get 6
          local.get 1
          call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h3215bb32c19a1540E
          local.get 5
          local.get 1
          call $_ZN149_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h77552817f62d73faE
          local.get 3
          local.get 4
          local.get 1
          call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_multi_dcdt_payment..RewaOrMultiDcdtPayment$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hc56c269bb0017621E
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
  (func $_ZN4core6option13unwrap_failed17h7534a988a872bb9fE (;177;) (type 12)
    call $_ZN4core9panicking5panic17hb20c9056d85d5b5eE
    unreachable
  )
  (func $add_queued_call_sync (;178;) (type 12)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h5f8aca84b34b6b63E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h4e6c60f10a24b672E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbeae517779468dffE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h80aa2bd7b81e01b6E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h7f3b75ad757d3e49E
    local.set 3
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17ha42fa833dc300179E
    i32.const 0
    local.get 1
    i64.const 0
    local.get 2
    local.get 3
    call $_ZN15forwarder_queue14ForwarderQueue15add_queued_call17h9a75d3b4527cc196E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $add_queued_call_legacy_async (;179;) (type 12)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h5f8aca84b34b6b63E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h4e6c60f10a24b672E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbeae517779468dffE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h80aa2bd7b81e01b6E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h7f3b75ad757d3e49E
    local.set 3
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17ha42fa833dc300179E
    i32.const 1
    local.get 1
    i64.const 0
    local.get 2
    local.get 3
    call $_ZN15forwarder_queue14ForwarderQueue15add_queued_call17h9a75d3b4527cc196E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $add_queued_call_transfer_execute (;180;) (type 12)
    (local i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h5f8aca84b34b6b63E
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h4e6c60f10a24b672E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbeae517779468dffE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4d9fb0ed456d0639E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h80aa2bd7b81e01b6E
    local.set 3
    local.get 0
    i32.const 3
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h7f3b75ad757d3e49E
    local.set 4
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17ha42fa833dc300179E
    i32.const 2
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_ZN15forwarder_queue14ForwarderQueue15add_queued_call17h9a75d3b4527cc196E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $add_queued_call_transfer_dcdt (;181;) (type 12)
    (local i32 i32 i64 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h5f8aca84b34b6b63E
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h4e6c60f10a24b672E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbeae517779468dffE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4d9fb0ed456d0639E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h80aa2bd7b81e01b6E
    local.set 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb7e9218bb2805150E
    local.set 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17he2d6c80e1de2cf4fE
    local.set 5
    local.get 0
    i32.const 5
    i32.store
    local.get 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h7f3b75ad757d3e49E
    local.set 6
    local.get 0
    i32.load
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17ha42fa833dc300179E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h315f8746e17d9721E
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
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hbadff0c2c46f30b9E
    call $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$12queued_calls17h8562509380bddddbE
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
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$9push_back17hfc92271bb081ecddE
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $add_queued_call_promise (;182;) (type 12)
    (local i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h5f8aca84b34b6b63E
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h4e6c60f10a24b672E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbeae517779468dffE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4d9fb0ed456d0639E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h80aa2bd7b81e01b6E
    local.set 3
    local.get 0
    i32.const 3
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h7f3b75ad757d3e49E
    local.set 4
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17ha42fa833dc300179E
    i32.const 3
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_ZN15forwarder_queue14ForwarderQueue15add_queued_call17h9a75d3b4527cc196E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $add_queued_call (;183;) (type 12)
    (local i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h5f8aca84b34b6b63E
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h4e6c60f10a24b672E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hfe2682daad495aabE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbeae517779468dffE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4d9fb0ed456d0639E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h80aa2bd7b81e01b6E
    local.set 4
    local.get 0
    i32.const 4
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h7f3b75ad757d3e49E
    local.set 5
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17ha42fa833dc300179E
    local.get 1
    i32.const 255
    i32.and
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    call $_ZN15forwarder_queue14ForwarderQueue15add_queued_call17h9a75d3b4527cc196E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_queued_calls (;184;) (type 12)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 288
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hff4abcf19dbbc308E
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
          call $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$12queued_calls17h8562509380bddddbE
          local.tee 15
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_info17h62173308c2644426E
          local.get 15
          local.get 0
          i32.load offset=108
          local.tee 16
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$13is_empty_node17h2940dab60fc6d436E
          br_if 1 (;@2;)
          local.get 0
          i32.const 232
          i32.add
          local.get 15
          local.get 16
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14get_node_by_id17hdfa38d1c518e732dE
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
            call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$13is_empty_node17h2940dab60fc6d436E
            br_if 0 (;@4;)
            local.get 0
            i32.const 56
            i32.add
            local.get 15
            call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_info17h62173308c2644426E
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
                call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_node17ha76341a58987de45E
                local.get 0
                local.get 16
                i32.store offset=268
                local.get 15
                local.get 20
                local.get 0
                i32.const 232
                i32.add
                call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17h30daa25fee3a01c8E
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
                call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_node17ha76341a58987de45E
                local.get 0
                local.get 20
                i32.store offset=272
                local.get 15
                local.get 16
                local.get 0
                i32.const 232
                i32.add
                call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17h30daa25fee3a01c8E
                br 1 (;@5;)
              end
              local.get 0
              local.get 20
              i32.store offset=64
            end
            local.get 15
            local.get 22
            call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h47e49f4932ead25dE
            i32.const 1
            i32.const 0
            call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h4fad02b9f9b1e253E
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
            call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_info17h3945620ba64a913cE
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
          call $_ZN113_$LT$dharitri_sc..storage..mappers..linked_list_mapper..LinkedListNode$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf0bbdb87330e9542E
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
              i32.const 131590
              i32.const 24
              call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h0c27e3773d4fa3eeE
              local.tee 15
              local.get 0
              i32.load8_u offset=132
              call $_ZN11dharitri_sc8log_util21serialize_event_topic17h8560ff223e3272d5E
              local.get 15
              local.get 11
              call $_ZN11dharitri_sc8log_util21serialize_event_topic17h00bcd1f152a3d214E
              local.get 15
              local.get 10
              call $_ZN11dharitri_sc8log_util21serialize_event_topic17h00bcd1f152a3d214E
              local.get 15
              local.get 12
              call $_ZN11dharitri_sc8log_util21serialize_event_topic17h646d943116c79abeE
              br 1 (;@4;)
            end
            local.get 0
            i32.load offset=108
            call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hde825402151e99f2E
            call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..into_multi_value..IntoMultiValue$GT$16into_multi_value17h95eed0dd01d745d4E
            local.set 16
            i32.const 131566
            i32.const 24
            call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h0c27e3773d4fa3eeE
            local.tee 15
            local.get 0
            i32.load8_u offset=132
            call $_ZN11dharitri_sc8log_util21serialize_event_topic17h8560ff223e3272d5E
            local.get 15
            local.get 11
            call $_ZN11dharitri_sc8log_util21serialize_event_topic17h00bcd1f152a3d214E
            local.get 15
            local.get 10
            call $_ZN11dharitri_sc8log_util21serialize_event_topic17h00bcd1f152a3d214E
            local.get 15
            local.get 16
            call $_ZN11dharitri_sc8log_util21serialize_event_topic17hc2bf47eb0e762039E
          end
          local.get 15
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h315f8746e17d9721E
          call $managedWriteLog
          local.get 0
          i32.load offset=124
          local.set 15
          local.get 0
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h315f8746e17d9721E
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
                    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h34865c7b3ee41dc3E
                    br 1 (;@7;)
                  end
                  block ;; label = @8
                    block ;; label = @9
                      block ;; label = @10
                        local.get 0
                        i32.load offset=108
                        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hceb0b6fea98c46a7E
                        br_table 1 (;@9;) 2 (;@8;) 0 (;@10;)
                      end
                      local.get 0
                      local.get 15
                      local.get 16
                      local.get 11
                      local.get 0
                      i32.load offset=108
                      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17h65988b06d4700343E
                      local.get 0
                      i32.load offset=4
                      local.set 15
                      local.get 0
                      i32.load
                      local.set 16
                      call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h5882c5ebae94efe6E
                      local.set 20
                      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h592ad8e86760471eE
                      local.set 22
                      local.get 0
                      i64.load offset=216
                      local.get 20
                      local.get 22
                      local.get 16
                      local.get 15
                      call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h34865c7b3ee41dc3E
                      br 2 (;@7;)
                    end
                    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h592ad8e86760471eE
                    local.set 20
                    local.get 0
                    i64.load offset=216
                    local.get 0
                    i32.load offset=120
                    local.get 20
                    local.get 15
                    local.get 16
                    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h34865c7b3ee41dc3E
                    br 1 (;@7;)
                  end
                  local.get 0
                  i32.const 152
                  i32.add
                  local.get 0
                  i32.load offset=108
                  call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h19947ea186fa9705E
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
                    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h00200ddb821e2385E
                    local.get 0
                    i32.load offset=12
                    local.set 15
                    local.get 0
                    i32.load offset=8
                    local.set 16
                    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h592ad8e86760471eE
                    local.set 20
                    local.get 0
                    i64.load offset=216
                    local.get 0
                    i32.load offset=120
                    local.get 20
                    local.get 16
                    local.get 15
                    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h34865c7b3ee41dc3E
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
                  call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h162f462def14f8adE
                  local.get 0
                  i32.load offset=20
                  local.set 15
                  local.get 0
                  i32.load offset=16
                  local.set 16
                  call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h5882c5ebae94efe6E
                  local.set 20
                  call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h592ad8e86760471eE
                  local.set 22
                  local.get 0
                  i64.load offset=216
                  local.get 20
                  local.get 22
                  local.get 16
                  local.get 15
                  call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h34865c7b3ee41dc3E
                end
                call $cleanReturnData
                br 3 (;@3;)
              end
              local.get 0
              i32.const 136
              i32.add
              call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h25d509f9918923a8E
              unreachable
            end
            local.get 0
            i64.load offset=112
            local.set 23
            block ;; label = @5
              local.get 15
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h8ca1fe5fd58dcf3dE
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
                  call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h8ca1fe5fd58dcf3dE
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
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h315f8746e17d9721E
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
          i32.const 131442
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
          call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4fa9e6209693ece8E
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
              call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h45dd6bd10d86763fE
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
            i32.const 131442
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
            call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17hf15a6d22fe08c22fE
            br 1 (;@3;)
          end
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                local.get 22
                i32.load
                call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hceb0b6fea98c46a7E
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
              i32.const 131442
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
              call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17h65988b06d4700343E
              local.get 0
              i32.load offset=28
              local.set 15
              local.get 0
              i32.load offset=24
              local.set 16
              local.get 5
              call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h5882c5ebae94efe6E
              call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h592ad8e86760471eE
              local.get 16
              local.get 15
              call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17hf15a6d22fe08c22fE
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
            i32.const 131442
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
            call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h592ad8e86760471eE
            local.set 22
            local.get 0
            i32.const 232
            i32.add
            local.get 20
            i32.load
            local.get 22
            local.get 16
            local.get 15
            call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17hf15a6d22fe08c22fE
            br 1 (;@3;)
          end
          local.get 0
          i32.const 216
          i32.add
          local.get 22
          i32.load
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h19947ea186fa9705E
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
          i32.const 131442
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
            call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h00200ddb821e2385E
            local.get 0
            i32.load offset=36
            local.set 15
            local.get 0
            i32.load offset=32
            local.set 16
            call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h592ad8e86760471eE
            local.set 22
            local.get 6
            local.get 20
            i32.load
            local.get 22
            local.get 16
            local.get 15
            call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17hf15a6d22fe08c22fE
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
          call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h162f462def14f8adE
          local.get 0
          i32.load offset=44
          local.set 15
          local.get 0
          i32.load offset=40
          local.set 16
          local.get 6
          call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h5882c5ebae94efe6E
          call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h592ad8e86760471eE
          local.get 16
          local.get 15
          call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17hf15a6d22fe08c22fE
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
  (func $callback_count (;185;) (type 12)
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hff4abcf19dbbc308E
    call $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$14callback_count17h807136920b119a7fE
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h60ef6da6a0b7eb3aE
    i64.extend_i32_u
    call $smallIntFinishUnsigned
  )
  (func $callback_payments (;186;) (type 12)
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hff4abcf19dbbc308E
    call $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$17callback_payments17h9ce3ee1f44ccb23fE
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h4fa6cca0fc492ba5E
    call $mBufferFinish
    drop
  )
  (func $promises_callback_method (;187;) (type 12)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h315f8746e17d9721E
    local.tee 1
    call $managedGetCallbackClosure
    i32.const -50
    i32.const 1
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 1
    call $mBufferGetLength
    local.set 2
    local.get 0
    i32.const 0
    i32.store8 offset=56
    local.get 0
    local.get 2
    i32.store offset=52
    local.get 0
    local.get 1
    i32.store offset=48
    local.get 0
    local.get 2
    i32.store offset=44
    local.get 0
    i32.const 0
    i32.store offset=40
    local.get 0
    i32.const 40
    i32.add
    i32.const 8
    i32.add
    local.set 3
    i32.const 0
    local.set 1
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          loop ;; label = @4
            block ;; label = @5
              local.get 2
              local.get 1
              i32.ne
              br_if 0 (;@5;)
              block ;; label = @6
                local.get 0
                i32.load8_u offset=56
                i32.eqz
                br_if 0 (;@6;)
                i32.const 0
                i32.const 0
                i32.store offset=141652
                i32.const 0
                i32.const 0
                i32.store8 offset=141656
              end
              i32.const 0
              i32.const -50
              call $mBufferGetLength
              call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hefaf9ecf7f23154aE
              call $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$14callback_count17h807136920b119a7fE
              local.tee 1
              call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h60ef6da6a0b7eb3aE
              local.set 2
              local.get 0
              i64.const 0
              i64.store offset=40
              local.get 0
              i32.const 24
              i32.add
              local.get 2
              i32.const 1
              i32.add
              i64.extend_i32_u
              local.get 0
              i32.const 40
              i32.add
              call $_ZN17dharitri_sc_codec8num_conv17top_encode_number17he16fb69829eeed2eE
              local.get 1
              local.get 0
              i32.load offset=24
              local.get 0
              i32.load offset=28
              call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h4fad02b9f9b1e253E
              local.get 0
              i32.const 16
              i32.add
              call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$11any_payment17h4645520b198e520dE
              i32.const 131340
              i32.const 32
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h7a91bd6c9c1f77b8E
              drop
              local.get 0
              i32.const 8
              i32.add
              i32.const 1
              i32.const 0
              call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hbba90d209b73b7ceE
              local.get 0
              i32.load offset=12
              local.set 2
              local.get 0
              i32.load offset=8
              local.set 4
              i32.const 1
              i32.const 0
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h7a91bd6c9c1f77b8E
              local.tee 1
              local.get 4
              call $mBufferAppend
              drop
              local.get 0
              local.get 2
              call $mBufferGetLength
              i32.store offset=48
              local.get 0
              i32.const 0
              i32.store offset=44
              local.get 0
              local.get 2
              i32.store offset=40
              loop ;; label = @6
                local.get 0
                local.get 0
                i32.const 40
                i32.add
                call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h45dd6bd10d86763fE
                local.get 0
                i32.load
                i32.eqz
                br_if 3 (;@3;)
                local.get 0
                i32.load offset=4
                local.set 2
                local.get 1
                i32.const 131482
                i32.const 1
                call $mBufferAppendBytes
                drop
                local.get 2
                i32.const -25
                call $managedBufferToHex
                local.get 1
                i32.const -25
                call $mBufferAppend
                drop
                br 0 (;@6;)
              end
            end
            local.get 0
            i32.const 0
            i32.store offset=60
            local.get 3
            local.get 1
            local.get 0
            i32.const 60
            i32.add
            i32.const 4
            call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17hf8897ed755e6883fE
            br_if 2 (;@2;)
            local.get 0
            i32.const 32
            i32.add
            local.get 0
            i32.load offset=48
            local.get 0
            i32.load offset=40
            i32.const 4
            i32.add
            local.tee 2
            local.get 0
            i32.load offset=60
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
            local.tee 1
            call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h2ae3e1ce2169eb21E
            local.get 0
            i32.load offset=32
            i32.const 1
            i32.ne
            br_if 3 (;@1;)
            local.get 0
            i32.load offset=36
            local.set 4
            local.get 0
            local.get 1
            local.get 2
            i32.add
            local.tee 1
            i32.store offset=40
            i32.const -50
            local.get 4
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h55ee6ff58a62ee4aE
            local.get 0
            i32.load offset=44
            local.set 2
            br 0 (;@4;)
          end
        end
        call $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$17callback_payments17h9ce3ee1f44ccb23fE
        local.get 1
        call $mBufferStorageStore
        drop
        local.get 0
        i32.const 64
        i32.add
        global.set $__stack_pointer
        return
      end
      i32.const 131210
      i32.const 25
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h6e4e3963915c24d6E
      unreachable
    end
    i32.const 131210
    i32.const 25
    call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hda6a4cf678adbd0fE
    unreachable
  )
  (func $callBack (;188;) (type 12))
  (func $_ZN4core9panicking9panic_fmt17h931ec2537c26fa22E (;189;) (type 12)
    call $rust_begin_unwind
    unreachable
  )
  (func $_ZN4core5slice5index24slice_end_index_len_fail8do_panic7runtime17h40abf6316be1d38dE (;190;) (type 5) (param i32)
    call $_ZN4core9panicking9panic_fmt17h931ec2537c26fa22E
    unreachable
  )
  (func $_ZN4core9panicking5panic17hb20c9056d85d5b5eE (;191;) (type 12)
    call $_ZN4core9panicking9panic_fmt17h931ec2537c26fa22E
    unreachable
  )
  (func $_ZN4core5slice5index22slice_index_order_fail8do_panic7runtime17h3eb440503b756a77E (;192;) (type 7) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17h931ec2537c26fa22E
    unreachable
  )
  (func $memcpy (;193;) (type 6) (param i32 i32 i32) (result i32)
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
  (data $.rodata (;0;) (i32.const 131072) "invalid value\00\01\02\03unexpected REWA transferREWA-000000argument decode error (): too few argumentstoo many argumentswrong number of argumentsserializer decode error: MultiDCDTNFTTransferDCDTNFTTransferDCDTTransferinput too longinput too shortManagedVec index out of range\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00REWA.node.infostorage decode error (key: DCDT expectedbad array lengthpromises_callback_methodtocall_typetoken@queued_callscallback_countcallback_paymentsadd_queued_call_dcdtadd_queued_call_rewaforward_queued_call_dcdtforward_queued_call_rewa\00\00\0d\00\02\00\0e\00\02\00\0f\00\02\00\10\00\02\00panic occurred")
  (data $.data (;1;) (i32.const 131648) "8\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.84.1 (e71f9a9a9 2025-01-27)")
  )
  (@custom "target_features" (after data) "\04+\0amultivalue+\0fmutable-globals+\0freference-types+\08sign-ext")
)
