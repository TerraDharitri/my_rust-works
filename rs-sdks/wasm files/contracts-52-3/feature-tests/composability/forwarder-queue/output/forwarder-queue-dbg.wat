(module $forwarder_queue_wasm.wasm
  (type (;0;) (func (param i32 i64)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (result i32)))
  (type (;3;) (func (param i32 i32) (result i32)))
  (type (;4;) (func (param i32 i32 i32) (result i32)))
  (type (;5;) (func (param i32)))
  (type (;6;) (func (param i32 i32)))
  (type (;7;) (func (param i32) (result i64)))
  (type (;8;) (func (param i32) (result i32)))
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
  (type (;22;) (func (param i32 i32) (result i64)))
  (type (;23;) (func (param i64 i32)))
  (type (;24;) (func (param i32 i32 i64 i32 i32)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;0;) (type 0)))
  (import "env" "bigIntAdd" (func $bigIntAdd (;1;) (type 1)))
  (import "env" "mBufferNew" (func $mBufferNew (;2;) (type 2)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;3;) (type 3)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;4;) (type 3)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;5;) (type 4)))
  (import "env" "managedSignalError" (func $managedSignalError (;6;) (type 5)))
  (import "env" "bigIntGetUnsignedArgument" (func $bigIntGetUnsignedArgument (;7;) (type 6)))
  (import "env" "smallIntGetUnsignedArgument" (func $smallIntGetUnsignedArgument (;8;) (type 7)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;9;) (type 8)))
  (import "env" "getArgumentLength" (func $getArgumentLength (;10;) (type 8)))
  (import "env" "signalError" (func $signalError (;11;) (type 6)))
  (import "env" "getNumArguments" (func $getNumArguments (;12;) (type 2)))
  (import "env" "managedExecuteOnDestContext" (func $managedExecuteOnDestContext (;13;) (type 9)))
  (import "env" "managedCreateAsyncCall" (func $managedCreateAsyncCall (;14;) (type 10)))
  (import "env" "mBufferCopyByteSlice" (func $mBufferCopyByteSlice (;15;) (type 11)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;16;) (type 11)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;17;) (type 4)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;18;) (type 3)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;19;) (type 3)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;20;) (type 3)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;21;) (type 3)))
  (import "env" "managedGetMultiDCDTCallValue" (func $managedGetMultiDCDTCallValue (;22;) (type 5)))
  (import "env" "bigIntGetCallValue" (func $bigIntGetCallValue (;23;) (type 5)))
  (import "env" "managedWriteLog" (func $managedWriteLog (;24;) (type 6)))
  (import "env" "managedSCAddress" (func $managedSCAddress (;25;) (type 5)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;26;) (type 12)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;27;) (type 8)))
  (import "env" "getGasLeft" (func $getGasLeft (;28;) (type 13)))
  (import "env" "cleanReturnData" (func $cleanReturnData (;29;) (type 12)))
  (import "env" "bigIntSign" (func $bigIntSign (;30;) (type 8)))
  (import "env" "managedTransferValueExecute" (func $managedTransferValueExecute (;31;) (type 14)))
  (import "env" "managedMultiTransferDCDTNFTExecute" (func $managedMultiTransferDCDTNFTExecute (;32;) (type 14)))
  (import "env" "smallIntFinishUnsigned" (func $smallIntFinishUnsigned (;33;) (type 15)))
  (import "env" "managedAsyncCall" (func $managedAsyncCall (;34;) (type 16)))
  (func $_ZN102_$LT$forwarder_queue..QueuedCallType$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h4bb57ecbd86f8371E (;35;) (type 6) (param i32 i32)
    local.get 0
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    i32.const 131500
    i32.add
    i32.load
    i32.load8_u
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17hfc21b3295d3e84bdE
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17hfc21b3295d3e84bdE (;36;) (type 6) (param i32 i32)
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
    call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17hef09aaeeac46ee58E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcea618a76940090bE (;37;) (type 8) (param i32) (result i32)
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E (;38;) (type 2) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=131532
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=131532
    local.get 0
  )
  (func $_ZN113_$LT$dharitri_sc..storage..mappers..linked_list_mapper..LinkedListNode$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h39b59d10373e568aE (;39;) (type 6) (param i32 i32)
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
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h075a9d37696be294E
    local.set 4
    local.get 1
    i64.load offset=8
    local.set 5
    local.get 1
    i32.load offset=20
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h075a9d37696be294E
    local.set 6
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6913251826c11576E
    local.set 7
    local.get 2
    local.get 1
    i32.load offset=24
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1e96b29f7cd92e43E
    i32.store offset=28
    local.get 2
    i32.const 0
    i32.store offset=24
    local.get 2
    local.get 1
    i32.const 24
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdae1c5611de7b54cE
        local.get 2
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 7
        local.get 2
        i32.load offset=12
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h075a9d37696be294E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hb51f78988e3bfd52E
        br 0 (;@2;)
      end
    end
    local.get 1
    i32.const 4
    i32.add
    local.set 8
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load
        br_if 0 (;@2;)
        i32.const 0
        local.set 9
        local.get 8
        i32.load
        call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcea618a76940090bE
        local.set 8
        br 1 (;@1;)
      end
      i32.const 1
      local.set 9
      local.get 8
      call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9432c12ea89d2011E
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
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h075a9d37696be294E (;40;) (type 8) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6913251826c11576E (;41;) (type 2) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    i32.const 1
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1e96b29f7cd92e43E (;42;) (type 8) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdae1c5611de7b54cE (;43;) (type 6) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h5335611e091aae37E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hb51f78988e3bfd52E (;44;) (type 6) (param i32 i32)
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
  (func $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9432c12ea89d2011E (;45;) (type 8) (param i32) (result i32)
    (local i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6913251826c11576E
    local.set 2
    local.get 1
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1e96b29f7cd92e43E
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
      call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce2ae0e3623c6240E
      block ;; label = @2
        local.get 1
        i64.load offset=24
        i64.const 0
        i64.ne
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
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h075a9d37696be294E
      local.set 4
      local.get 1
      local.get 0
      call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcea618a76940090bE
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
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h44017629b819dfa5E
      br 0 (;@1;)
    end
  )
  (func $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce2ae0e3623c6240E (;46;) (type 6) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h5335611e091aae37E
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
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h7d365116a21c7b73E
      local.set 4
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h0f5fda27782aaaa5E
      local.set 3
      local.get 0
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h7d365116a21c7b73E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h44017629b819dfa5E (;47;) (type 6) (param i32 i32)
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
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17h19a2795d5df3a0e0E (;48;) (type 16) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17h49538655f86aab68E
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17h49538655f86aab68E (;49;) (type 16) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $managedAsyncCall
    unreachable
  )
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17ha9ec1c011b359d76E (;50;) (type 8) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17ha76a42327630d32cE (;51;) (type 16) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131089
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h18bd88f1ddfb4087E
    local.tee 4
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 4
    i32.const 131112
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h18bd88f1ddfb4087E (;52;) (type 3) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h504a10a62f8a1d36E (;53;) (type 8) (param i32) (result i32)
    (local i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6913251826c11576E
    local.set 1
    local.get 0
    i32.load
    local.set 2
    block ;; label = @1
      loop ;; label = @2
        local.get 2
        i32.const 0
        i32.load offset=141544
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
        call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17ha9ec1c011b359d76E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hb51f78988e3bfd52E
        local.get 3
        local.set 2
        br 0 (;@2;)
      end
    end
    local.get 1
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h264e5903b3648efbE (;54;) (type 2) (result i32)
    i32.const 3
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17ha9ec1c011b359d76E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h383bedd8e5093f15E (;55;) (type 2) (result i32)
    (local i32)
    i32.const 4
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    call $bigIntGetUnsignedArgument
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h484860318638e29cE (;56;) (type 7) (param i32) (result i64)
    local.get 0
    call $smallIntGetUnsignedArgument
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7868d1b730af3294E (;57;) (type 8) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17ha9ec1c011b359d76E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb24b44d84cd3fefbE (;58;) (type 8) (param i32) (result i32)
    block ;; label = @1
      local.get 0
      call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17ha9ec1c011b359d76E
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      i32.const 131357
      i32.const 2
      i32.const 131317
      i32.const 16
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17ha76a42327630d32cE
      unreachable
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hfcde185d6aec3fecE (;59;) (type 2) (result i32)
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
          i32.wrap_i64
          local.tee 0
          i32.const 255
          i32.and
          i32.const 4
          i32.ge_u
          br_if 2 (;@1;)
        end
        local.get 0
        return
      end
      i32.const 131359
      i32.const 9
      i32.const 131222
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17ha76a42327630d32cE
      unreachable
    end
    i32.const 131359
    i32.const 9
    i32.const 131072
    i32.const 13
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17ha76a42327630d32cE
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h3c6cbbec1b53c795E (;60;) (type 5) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=141544
      local.get 0
      i32.gt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131132
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h187cd48585998b93E (;61;) (type 12)
    block ;; label = @1
      call $getNumArguments
      br_if 0 (;@1;)
      return
    end
    i32.const 131150
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc0de25ed409fc930E (;62;) (type 5) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=141544
      local.get 0
      i32.lt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131115
    i32.const 17
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h65ef7886dd49f8adE (;63;) (type 12)
    i32.const 0
    call $getNumArguments
    i32.store offset=141544
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h8aa40a39f0bb43ceE (;64;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17haa88b904cbe4e5d5E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17haa88b904cbe4e5d5E (;65;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h7a031d6914518f04E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h44cb2610e3f853f7E (;66;) (type 1) (param i32 i32 i32)
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h23e98a78631b5a9dE
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17hb16c97bd8b0bd0a3E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h23e98a78631b5a9dE (;67;) (type 2) (result i32)
    i32.const -10
    i64.const 0
    call $bigIntSetInt64
    i32.const -10
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17hb16c97bd8b0bd0a3E (;68;) (type 16) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17h19a2795d5df3a0e0E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized17h6fe967a48fd5ce00E (;69;) (type 17) (param i32 i32 i32 i32 i32 i32)
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
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h57b2f0ee6033cd6dE
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
        call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h913b7ab75728bdb1E
        unreachable
      end
      local.get 3
      local.get 4
      local.get 5
      call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h8aa40a39f0bb43ceE
      unreachable
    end
    local.get 6
    i32.const 24
    i32.add
    local.get 7
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h53198f6c174f1c75E
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h9c1232e312d830b6E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h57b2f0ee6033cd6dE (;70;) (type 8) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1e96b29f7cd92e43E
    i32.const 4
    i32.shr_u
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h913b7ab75728bdb1E (;71;) (type 6) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h5092299e23374c08E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h53198f6c174f1c75E (;72;) (type 6) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h5335611e091aae37E
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
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h7d365116a21c7b73E
    local.set 3
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h0f5fda27782aaaa5E
    local.set 4
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h7d365116a21c7b73E
    local.set 5
    block ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131251
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
  (func $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h9c1232e312d830b6E (;73;) (type 17) (param i32 i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h88f1f52800688f91E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h734e09d2e9531b66E (;74;) (type 6) (param i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17hd879b1a74030a901E
    local.get 2
    i32.load offset=12
    local.set 0
    local.get 2
    i32.load offset=8
    local.set 2
    call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h1ccb9fb68250fd29E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h23e98a78631b5a9dE
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17hb16c97bd8b0bd0a3E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17hd879b1a74030a901E (;75;) (type 18) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 16
    i32.add
    i32.const 131175
    i32.const 20
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h3d1296c5e74fe95dE
    local.get 5
    i32.load offset=16
    local.set 6
    local.get 5
    i32.load offset=20
    local.tee 7
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h0a0033bdbbb7fde4E
    local.get 4
    i32.load
    local.tee 3
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h57b2f0ee6033cd6dE
    local.set 8
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6913251826c11576E
    local.tee 9
    local.get 8
    i64.extend_i32_u
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h2383b8468b184c60E
    local.get 7
    local.get 9
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hb51f78988e3bfd52E
    local.get 5
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1e96b29f7cd92e43E
    i32.store offset=36
    local.get 5
    i32.const 0
    i32.store offset=32
    local.get 5
    local.get 4
    i32.store offset=28
    loop ;; label = @1
      local.get 5
      i32.const 40
      i32.add
      local.get 5
      i32.const 28
      i32.add
      call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce2ae0e3623c6240E
      block ;; label = @2
        local.get 5
        i64.load offset=40
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 5
        local.get 6
        local.get 7
        local.get 1
        local.get 2
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h9cf2d687c04d18a6E
        local.get 5
        i32.load offset=4
        local.set 7
        local.get 0
        local.get 5
        i32.load
        i32.store
        local.get 0
        local.get 7
        i32.store offset=4
        local.get 5
        i32.const 64
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 5
      i32.load offset=60
      local.set 4
      local.get 7
      local.get 5
      i32.load offset=56
      call $_ZN11dharitri_sc8log_util21serialize_event_topic17hc3151054b64ea2c4E
      local.get 5
      i32.const 8
      i32.add
      local.get 6
      local.get 7
      local.get 5
      i64.load offset=48
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h86675624b9531500E
      local.get 5
      i32.load offset=8
      local.set 6
      local.get 5
      i32.load offset=12
      local.tee 7
      local.get 4
      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hd50b361b5678fabdE
      br 0 (;@1;)
    end
  )
  (func $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h1ccb9fb68250fd29E (;76;) (type 2) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    call $managedSCAddress
    local.get 0
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h88f1f52800688f91E (;77;) (type 6) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17hda59cfdd09efcda5E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h1e3fc94b9c6cbbe1E (;78;) (type 6) (param i32 i32)
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
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17hde2ab210acca7ec9E
      local.get 2
      i32.load offset=4
      local.set 0
      local.get 2
      i32.load
      local.set 2
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h23e98a78631b5a9dE
      local.get 2
      local.get 0
      call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17hb16c97bd8b0bd0a3E
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17ha0f0926e6c774327E
    local.get 2
    i32.load offset=12
    local.set 0
    local.get 2
    i32.load offset=8
    local.set 2
    call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h1ccb9fb68250fd29E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h23e98a78631b5a9dE
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17hb16c97bd8b0bd0a3E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17hde2ab210acca7ec9E (;79;) (type 18) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 24
    i32.add
    i32.const 131210
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h3d1296c5e74fe95dE
    local.get 5
    i32.const 16
    i32.add
    local.get 5
    i32.load offset=24
    local.get 5
    i32.load offset=28
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h0e6424000cba9ae0E
    local.get 5
    i32.const 8
    i32.add
    local.get 5
    i32.load offset=16
    local.get 5
    i32.load offset=20
    local.get 4
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hb07b587023167670E
    local.get 5
    local.get 5
    i32.load offset=8
    local.get 5
    i32.load offset=12
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h9cf2d687c04d18a6E
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
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17ha0f0926e6c774327E (;80;) (type 18) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 40
    i32.add
    i32.const 131195
    i32.const 15
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h3d1296c5e74fe95dE
    local.get 5
    i32.const 32
    i32.add
    local.get 5
    i32.load offset=40
    local.get 5
    i32.load offset=44
    local.get 4
    i32.load offset=8
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h0e6424000cba9ae0E
    local.get 5
    i32.const 24
    i32.add
    local.get 5
    i32.load offset=32
    local.get 5
    i32.load offset=36
    local.get 4
    i64.load
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h86675624b9531500E
    local.get 5
    i32.const 16
    i32.add
    local.get 5
    i32.load offset=24
    local.get 5
    i32.load offset=28
    local.get 4
    i32.load offset=12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hb07b587023167670E
    local.get 5
    i32.load offset=16
    local.set 6
    local.get 5
    i32.load offset=20
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6913251826c11576E
    drop
    local.get 4
    local.get 3
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h075a9d37696be294E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hb51f78988e3bfd52E
    local.get 5
    i32.const 8
    i32.add
    local.get 6
    local.get 4
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h9cf2d687c04d18a6E
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
  (func $_ZN11dharitri_sc5types11interaction10tx_payment29tx_payment_rewa_or_multi_dcdt270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..rewa_or_multi_dcdt_payment..RewaOrMultiDcdtPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h47b9d341f8266f2eE (;81;) (type 17) (param i32 i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment33tx_payment_rewa_or_multi_dcdt_ref270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_multi_dcdt_payment..RewaOrMultiDcdtPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h8783c6c22ffeb144E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment33tx_payment_rewa_or_multi_dcdt_ref270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_multi_dcdt_payment..RewaOrMultiDcdtPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h8783c6c22ffeb144E (;82;) (type 19) (param i32 i32 i32 i32 i32 i32 i32)
    block ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      local.get 4
      local.get 5
      local.get 6
      call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h174494eb83877686E
      unreachable
    end
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    local.get 6
    call $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized17h6fe967a48fd5ce00E
    unreachable
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h174494eb83877686E (;83;) (type 18) (param i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17hf1c73205c5de7646E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17hda59cfdd09efcda5E (;84;) (type 6) (param i32 i32)
    local.get 1
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h1e3fc94b9c6cbbe1E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h5092299e23374c08E (;85;) (type 6) (param i32 i32)
    local.get 1
    local.get 0
    call $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h734e09d2e9531b66E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h7a031d6914518f04E (;86;) (type 1) (param i32 i32 i32)
    local.get 1
    local.get 2
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h44cb2610e3f853f7E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17hf1c73205c5de7646E (;87;) (type 6) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17hb1284816c1b8d7c7E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17hb1284816c1b8d7c7E (;88;) (type 6) (param i32 i32)
    local.get 1
    local.get 0
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17hfa96122a1c2c77a3E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h3d1296c5e74fe95dE (;89;) (type 1) (param i32 i32 i32)
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h18bd88f1ddfb4087E
    local.set 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6913251826c11576E
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h0a0033bdbbb7fde4E (;90;) (type 6) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6913251826c11576E
    drop
    local.get 0
    local.get 1
    i32.load
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h075a9d37696be294E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hb51f78988e3bfd52E
  )
  (func $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h2383b8468b184c60E (;91;) (type 0) (param i32 i64)
    (local i32 i64 i64 i32 i32)
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
    local.tee 4
    i64.or
    i64.or
    i64.or
    i64.store offset=8
    local.get 0
    local.get 2
    i32.const 8
    i32.add
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
    i32.add
    i32.const 8
    local.get 5
    i32.sub
    call $mBufferSetBytes
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h9cf2d687c04d18a6E (;92;) (type 18) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block ;; label = @1
      local.get 3
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h8c3f9cb402bdd382E
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      call $_ZN11dharitri_sc8log_util21serialize_event_topic17hc3151054b64ea2c4E
      local.get 4
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1e96b29f7cd92e43E
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
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h5335611e091aae37E
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
        call $_ZN11dharitri_sc8log_util21serialize_event_topic17hc3151054b64ea2c4E
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
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17hc3151054b64ea2c4E (;93;) (type 6) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6913251826c11576E
    drop
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h075a9d37696be294E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hb51f78988e3bfd52E
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h86675624b9531500E (;94;) (type 20) (param i32 i32 i32 i64)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hfdd5d2871ff1c4cdE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hd50b361b5678fabdE (;95;) (type 6) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6913251826c11576E
    drop
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h470ce2409e47e493E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hb51f78988e3bfd52E
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h0e6424000cba9ae0E (;96;) (type 16) (param i32 i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6913251826c11576E
    drop
    local.get 2
    local.get 3
    i32.load
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h075a9d37696be294E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hb51f78988e3bfd52E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17hb07b587023167670E (;97;) (type 16) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hbbf867b46e69ff5bE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hfdd5d2871ff1c4cdE (;98;) (type 0) (param i32 i64)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6913251826c11576E
    local.tee 2
    local.get 1
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h2383b8468b184c60E
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hb51f78988e3bfd52E
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h8c3f9cb402bdd382E (;99;) (type 8) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1e96b29f7cd92e43E
    i32.eqz
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h5335611e091aae37E (;100;) (type 11) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hbbf867b46e69ff5bE (;101;) (type 6) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6913251826c11576E
    drop
    local.get 0
    local.get 1
    i32.load
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h470ce2409e47e493E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hb51f78988e3bfd52E
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h3b820e0c4eb7cf22E (;102;) (type 21) (param i64 i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    call $managedExecuteOnDestContext
    drop
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17he3c229a259be0d45E (;103;) (type 5) (param i32)
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment29tx_payment_rewa_or_multi_dcdt270_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..rewa_or_multi_dcdt_payment..RewaOrMultiDcdtPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h47b9d341f8266f2eE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h910539f8a6ea35ecE (;104;) (type 18) (param i32 i32 i32 i32 i32)
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
  (func $_ZN11dharitri_sc5types11interaction9annotated23annotated_impl_big_uint381_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17hc635cefea798ea74E (;105;) (type 6) (param i32 i32)
    local.get 1
    local.get 0
    i32.load
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h2706435e5f444edcE
    unreachable
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h2706435e5f444edcE (;106;) (type 6) (param i32 i32)
    local.get 0
    i32.load
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17hb16c97bd8b0bd0a3E
    unreachable
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17hfa96122a1c2c77a3E (;107;) (type 6) (param i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction9annotated23annotated_impl_big_uint381_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17hc635cefea798ea74E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h29eeb82981d11207E (;108;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 0
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hf3f82ea56b75c176E
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$27read_managed_buffer_of_size17h04974e4d0e2adc6dE
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hf3f82ea56b75c176E (;109;) (type 3) (param i32 i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17ha04ce76cb8e5f9f5E
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
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$27read_managed_buffer_of_size17h04974e4d0e2adc6dE (;110;) (type 4) (param i32 i32 i32) (result i32)
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
    i32.const 131236
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h9a0c241eb9e3e1e7E
    unreachable
  )
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h9a0c241eb9e3e1e7E (;111;) (type 1) (param i32 i32 i32)
    (local i32)
    i32.const 131290
    i32.const 27
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h18bd88f1ddfb4087E
    local.tee 3
    local.get 0
    call $mBufferAppend
    drop
    local.get 3
    i32.const 131112
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17hb8a46a3a25b1886fE (;112;) (type 6) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferAppend
    drop
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h7d365116a21c7b73E (;113;) (type 3) (param i32 i32) (result i32)
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
  (func $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h0f5fda27782aaaa5E (;114;) (type 22) (param i32 i32) (result i64)
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
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17h471e892540b809f6E (;115;) (type 6) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17hb859252f4b513814E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h470ce2409e47e493E (;116;) (type 8) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17haf57776782576525E (;117;) (type 8) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$23load_len_managed_buffer17h442b87b162d73b8cE (;118;) (type 8) (param i32) (result i32)
    local.get 0
    i32.const -25
    call $mBufferStorageLoad
    drop
    i32.const -25
    call $mBufferGetLength
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_info17h758c489fb370f782E (;119;) (type 6) (param i32 i32)
    (local i32 i32)
    local.get 0
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14build_name_key17h59f533dfc8f39e36E
    local.set 2
    block ;; label = @1
      local.get 1
      i32.load
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hacacd31d7856a75aE
      local.tee 0
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h7a48a1198c5b230fE
      local.get 1
      i32.load offset=4
      local.get 0
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h7a48a1198c5b230fE
      local.get 1
      i32.load offset=8
      local.get 0
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h7a48a1198c5b230fE
      local.get 1
      i32.load offset=12
      local.get 0
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h7a48a1198c5b230fE
      local.get 2
      local.get 0
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hf61d1e255ab29766E
      return
    end
    local.get 2
    i32.const 1
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817ha5d9495f0f023c06E
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14build_name_key17h59f533dfc8f39e36E (;120;) (type 8) (param i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h075a9d37696be294E
    local.tee 0
    i32.const 131285
    i32.const 5
    call $mBufferAppendBytes
    drop
    local.get 0
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hacacd31d7856a75aE (;121;) (type 2) (result i32)
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h18bd88f1ddfb4087E
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h7a48a1198c5b230fE (;122;) (type 6) (param i32 i32)
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
    call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17hef09aaeeac46ee58E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hf61d1e255ab29766E (;123;) (type 6) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferStorageStore
    drop
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817ha5d9495f0f023c06E (;124;) (type 6) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h18bd88f1ddfb4087E
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17h7499731100a4d082E (;125;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h0b80b1017c40e6eaE
    local.set 0
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hacacd31d7856a75aE
    local.set 1
    local.get 2
    i32.load8_u offset=28
    local.get 1
    call $_ZN102_$LT$forwarder_queue..QueuedCallType$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h4bb57ecbd86f8371E
    local.get 1
    local.get 2
    i32.load offset=16
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17hb8a46a3a25b1886fE
    local.get 2
    i64.load offset=8
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17hf53d4cd830729b1bE
    local.get 2
    i32.load offset=20
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he81392ca71ad08bbE
    local.get 2
    i32.const 24
    i32.add
    local.get 1
    call $_ZN149_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h1b15a5b1be7c2cceE
    local.get 2
    local.get 1
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_multi_dcdt_payment..RewaOrMultiDcdtPayment$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h46466816a6c2aecfE
    local.get 2
    i32.load offset=32
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h7a48a1198c5b230fE
    local.get 2
    i32.load offset=36
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h7a48a1198c5b230fE
    local.get 2
    i32.load offset=40
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h7a48a1198c5b230fE
    local.get 0
    local.get 1
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hf61d1e255ab29766E
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h0b80b1017c40e6eaE (;126;) (type 3) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h075a9d37696be294E
    local.tee 0
    i32.const 131280
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17hf53d4cd830729b1bE (;127;) (type 23) (param i64 i32)
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
    call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17hef09aaeeac46ee58E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he81392ca71ad08bbE (;128;) (type 6) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1e96b29f7cd92e43E
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
    call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17hef09aaeeac46ee58E
    local.get 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17hb8a46a3a25b1886fE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN149_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h1b15a5b1be7c2cceE (;129;) (type 6) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.tee 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1e96b29f7cd92e43E
    i32.const 2
    i32.shr_u
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h39676a9a2c2c3fdaE
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1e96b29f7cd92e43E
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdae1c5611de7b54cE
        local.get 2
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=12
        local.get 1
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he81392ca71ad08bbE
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_multi_dcdt_payment..RewaOrMultiDcdtPayment$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h46466816a6c2aecfE (;130;) (type 6) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.const 4
    i32.add
    local.set 3
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load
        br_if 0 (;@2;)
        i32.const 0
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17hfc21b3295d3e84bdE
        local.get 3
        i32.load
        local.get 1
        call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h4dd3f27ede7f2002E
        br 1 (;@1;)
      end
      i32.const 1
      local.get 1
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17hfc21b3295d3e84bdE
      local.get 3
      i32.load
      local.tee 0
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h57b2f0ee6033cd6dE
      local.get 1
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h39676a9a2c2c3fdaE
      local.get 2
      local.get 0
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1e96b29f7cd92e43E
      i32.store offset=20
      local.get 2
      i32.const 0
      i32.store offset=16
      local.get 2
      local.get 3
      i32.store offset=12
      loop ;; label = @2
        local.get 2
        i32.const 24
        i32.add
        local.get 2
        i32.const 12
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce2ae0e3623c6240E
        local.get 2
        i64.load offset=24
        i64.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=44
        local.set 0
        local.get 2
        i32.load offset=40
        local.get 1
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he81392ca71ad08bbE
        local.get 2
        i64.load offset=32
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17hf53d4cd830729b1bE
        local.get 0
        local.get 1
        call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h4dd3f27ede7f2002E
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$9push_back17ha7cb2578b5ea64faE (;131;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_info17h2e1489190f4fe3d0E
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
      call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_node17h9c5d4e3c27b5fbd2E
      local.get 3
      local.get 4
      i32.store offset=52
      local.get 1
      local.get 6
      local.get 3
      i32.const 16
      i32.add
      call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17h7499731100a4d082E
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
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17h7499731100a4d082E
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
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_info17h758c489fb370f782E
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
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_info17h2e1489190f4fe3d0E (;132;) (type 6) (param i32 i32)
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
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14build_name_key17h59f533dfc8f39e36E
          local.tee 1
          call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$23load_len_managed_buffer17h442b87b162d73b8cE
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
        call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h70a01ace310136b3E
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hf3f82ea56b75c176E
        local.set 6
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hf3f82ea56b75c176E
        local.set 3
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hf3f82ea56b75c176E
        local.set 4
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hf3f82ea56b75c176E
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
        i32.store offset=141536
        i32.const 0
        i32.const 0
        i32.store8 offset=141540
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
    i32.const 131222
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h9a0c241eb9e3e1e7E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_node17h9c5d4e3c27b5fbd2E (;133;) (type 1) (param i32 i32 i32)
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
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h0b80b1017c40e6eaE
    local.tee 1
    call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h70a01ace310136b3E
    block ;; label = @1
      block ;; label = @2
        local.get 3
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h459317c07112732cE
        local.tee 4
        i32.const 255
        i32.and
        i32.const 4
        i32.ge_u
        br_if 0 (;@2;)
        local.get 3
        i32.const 12
        i32.add
        i32.const 32
        local.get 1
        call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$27read_managed_buffer_of_size17h04974e4d0e2adc6dE
        local.set 5
        local.get 3
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17hdfec973ee206bce7E
        local.set 6
        local.get 3
        i32.const 12
        i32.add
        local.get 1
        call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h29eeb82981d11207E
        local.set 7
        local.get 3
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hf3f82ea56b75c176E
        local.set 2
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6913251826c11576E
        local.set 8
        block ;; label = @3
          loop ;; label = @4
            local.get 2
            i32.eqz
            br_if 1 (;@3;)
            local.get 8
            local.get 3
            i32.const 12
            i32.add
            local.get 1
            call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h29eeb82981d11207E
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hb51f78988e3bfd52E
            local.get 2
            i32.const -1
            i32.add
            local.set 2
            br 0 (;@4;)
          end
        end
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                local.get 3
                i32.const 12
                i32.add
                local.get 1
                call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h459317c07112732cE
                i32.const 255
                i32.and
                br_table 1 (;@5;) 2 (;@4;) 0 (;@6;)
              end
              local.get 1
              i32.const 131072
              i32.const 13
              call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h9a0c241eb9e3e1e7E
              unreachable
            end
            i32.const 0
            local.set 2
            local.get 3
            i32.const 12
            i32.add
            local.get 1
            call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h20106186dfd72836E
            local.set 9
            br 1 (;@3;)
          end
          local.get 3
          i32.const 12
          i32.add
          local.get 1
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hf3f82ea56b75c176E
          local.set 2
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6913251826c11576E
          local.set 9
          block ;; label = @4
            loop ;; label = @5
              local.get 2
              i32.eqz
              br_if 1 (;@4;)
              local.get 3
              i32.const 12
              i32.add
              local.get 1
              call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h29eeb82981d11207E
              local.set 10
              local.get 3
              i32.const 12
              i32.add
              local.get 1
              call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17hdfec973ee206bce7E
              local.set 11
              local.get 3
              local.get 3
              i32.const 12
              i32.add
              local.get 1
              call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h20106186dfd72836E
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
              call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h44017629b819dfa5E
              local.get 2
              i32.const -1
              i32.add
              local.set 2
              br 0 (;@5;)
            end
          end
          i32.const 1
          local.set 2
        end
        local.get 3
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hf3f82ea56b75c176E
        local.set 10
        local.get 3
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hf3f82ea56b75c176E
        local.set 12
        local.get 3
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hf3f82ea56b75c176E
        local.set 13
        local.get 3
        i32.load offset=16
        local.get 3
        i32.load offset=12
        i32.ne
        br_if 1 (;@1;)
        block ;; label = @3
          local.get 3
          i32.load8_u offset=28
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.const 0
          i32.store offset=141536
          i32.const 0
          i32.const 0
          i32.store8 offset=141540
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
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h9a0c241eb9e3e1e7E
      unreachable
    end
    local.get 1
    i32.const 131222
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h9a0c241eb9e3e1e7E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$13is_empty_node17hb2e162aa5f475c4fE (;134;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h0b80b1017c40e6eaE
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$23load_len_managed_buffer17h442b87b162d73b8cE
    i32.eqz
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14get_node_by_id17hddcb48caeb67d550E (;135;) (type 1) (param i32 i32 i32)
    block ;; label = @1
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$13is_empty_node17hb2e162aa5f475c4fE
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_node17h9c5d4e3c27b5fbd2E
      return
    end
    local.get 0
    i32.const 2
    i32.store
  )
  (func $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h70a01ace310136b3E (;136;) (type 6) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17haf57776782576525E
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h459317c07112732cE (;137;) (type 3) (param i32 i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17ha04ce76cb8e5f9f5E
    local.get 2
    i32.load8_u offset=15
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17hdfec973ee206bce7E (;138;) (type 22) (param i32 i32) (result i64)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17ha04ce76cb8e5f9f5E
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
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h20106186dfd72836E (;139;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h29eeb82981d11207E
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferToBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17h208bf552314a20b0E (;140;) (type 6) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h0a0033bdbbb7fde4E
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17h37db25696a66a843E (;141;) (type 6) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6913251826c11576E
    local.tee 2
    local.get 1
    i64.extend_i32_u
    i64.const 255
    i64.and
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h2383b8468b184c60E
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hb51f78988e3bfd52E
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17h78a9190335ff3f3cE (;142;) (type 6) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hbbf867b46e69ff5bE
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17hbce8830884b2852dE (;143;) (type 6) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1e96b29f7cd92e43E
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdae1c5611de7b54cE
        local.get 2
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 2
        i32.load offset=12
        call $_ZN11dharitri_sc8log_util21serialize_event_topic17hc3151054b64ea2c4E
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc8log_util23event_topic_accumulator17ha1bf8adab6125681E (;144;) (type 3) (param i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6913251826c11576E
    local.tee 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h18bd88f1ddfb4087E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hb51f78988e3bfd52E
    local.get 2
  )
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h4dd3f27ede7f2002E (;145;) (type 6) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h470ce2409e47e493E
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he81392ca71ad08bbE
  )
  (func $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17hef09aaeeac46ee58E (;146;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferAppendBytes
    drop
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h39676a9a2c2c3fdaE (;147;) (type 6) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h7a48a1198c5b230fE
  )
  (func $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..into_multi_value..IntoMultiValue$GT$16into_multi_value17hf2a1c1bd3dde4b31E (;148;) (type 8) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6913251826c11576E
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
      call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce2ae0e3623c6240E
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
      call $_ZN11dharitri_sc8log_util21serialize_event_topic17hc3151054b64ea2c4E
      local.get 2
      local.get 1
      i64.load offset=32
      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hfdd5d2871ff1c4cdE
      local.get 2
      local.get 0
      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hd50b361b5678fabdE
      br 0 (;@1;)
    end
  )
  (func $_ZN15forwarder_queue14ForwarderQueue15add_queued_call17h0991e2798cd7534cE (;149;) (type 24) (param i32 i32 i64 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 1
    i32.store offset=4
    i32.const -21
    local.set 1
    block ;; label = @1
      block ;; label = @2
        i32.const 0
        i32.load8_u offset=141552
        local.tee 6
        i32.eqz
        br_if 0 (;@2;)
        i32.const -21
        i32.const 2147483647
        local.get 6
        select
        local.set 1
        br 1 (;@1;)
      end
      i32.const 0
      i32.const 1
      i32.store8 offset=141552
      i32.const -21
      call $managedGetMultiDCDTCallValue
    end
    local.get 5
    local.get 1
    i32.store offset=16
    block ;; label = @1
      block ;; label = @2
        local.get 1
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h8c3f9cb402bdd382E
        i32.eqz
        br_if 0 (;@2;)
        i32.const -11
        local.set 1
        block ;; label = @3
          block ;; label = @4
            i32.const 0
            i32.load8_u offset=141548
            local.tee 6
            i32.eqz
            br_if 0 (;@4;)
            i32.const -11
            i32.const 2147483647
            local.get 6
            select
            local.set 1
            br 1 (;@3;)
          end
          i32.const 0
          i32.const 1
          i32.store8 offset=141548
          i32.const -11
          call $bigIntGetCallValue
        end
        local.get 5
        local.get 1
        call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcea618a76940090bE
        i32.store offset=12
        local.get 5
        i32.const 0
        i32.store offset=8
        i32.const 131431
        i32.const 20
        call $_ZN11dharitri_sc8log_util23event_topic_accumulator17ha1bf8adab6125681E
        local.tee 1
        local.get 0
        call $_ZN11dharitri_sc8log_util21serialize_event_topic17h37db25696a66a843E
        local.get 1
        local.get 5
        i32.const 4
        i32.add
        call $_ZN11dharitri_sc8log_util21serialize_event_topic17h208bf552314a20b0E
        local.get 1
        local.get 3
        call $_ZN11dharitri_sc8log_util21serialize_event_topic17hc3151054b64ea2c4E
        local.get 1
        local.get 5
        i32.const 12
        i32.add
        call $_ZN11dharitri_sc8log_util21serialize_event_topic17h78a9190335ff3f3cE
        local.get 1
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6913251826c11576E
        call $managedWriteLog
        br 1 (;@1;)
      end
      local.get 5
      local.get 5
      i32.const 16
      i32.add
      call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9432c12ea89d2011E
      i32.store offset=12
      local.get 5
      i32.const 1
      i32.store offset=8
      local.get 5
      local.get 5
      i32.const 12
      i32.add
      call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9432c12ea89d2011E
      call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..into_multi_value..IntoMultiValue$GT$16into_multi_value17hf2a1c1bd3dde4b31E
      i32.store offset=16
      i32.const 131411
      i32.const 20
      call $_ZN11dharitri_sc8log_util23event_topic_accumulator17ha1bf8adab6125681E
      local.tee 1
      local.get 0
      call $_ZN11dharitri_sc8log_util21serialize_event_topic17h37db25696a66a843E
      local.get 1
      local.get 5
      i32.const 4
      i32.add
      call $_ZN11dharitri_sc8log_util21serialize_event_topic17h208bf552314a20b0E
      local.get 1
      local.get 3
      call $_ZN11dharitri_sc8log_util21serialize_event_topic17hc3151054b64ea2c4E
      local.get 1
      local.get 5
      i32.const 16
      i32.add
      call $_ZN11dharitri_sc8log_util21serialize_event_topic17hbce8830884b2852dE
      local.get 1
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6913251826c11576E
      call $managedWriteLog
    end
    call $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$12queued_calls17h804d24cf21c493d0E
    local.set 1
    local.get 5
    local.get 0
    i32.store8 offset=92
    local.get 5
    local.get 5
    i32.load offset=4
    i32.store offset=80
    local.get 5
    local.get 4
    i32.store offset=88
    local.get 5
    local.get 3
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
    local.get 1
    local.get 5
    i32.const 64
    i32.add
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$9push_back17ha7cb2578b5ea64faE
    local.get 5
    i32.const 96
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$12queued_calls17h804d24cf21c493d0E (;150;) (type 2) (result i32)
    i32.const 131368
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h18bd88f1ddfb4087E
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17ha04ce76cb8e5f9f5E (;151;) (type 16) (param i32 i32 i32 i32)
    (local i32 i32 i32)
    local.get 0
    i32.load
    local.set 4
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  local.get 0
                  i32.load8_u offset=16
                  br_if 0 (;@7;)
                  local.get 0
                  i32.load offset=8
                  local.tee 5
                  call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1e96b29f7cd92e43E
                  local.tee 6
                  i32.const 10000
                  i32.gt_u
                  br_if 1 (;@6;)
                  i32.const 0
                  i32.load8_u offset=141540
                  i32.const 255
                  i32.and
                  br_if 1 (;@6;)
                  i32.const 0
                  local.get 6
                  i32.store offset=141536
                  i32.const 0
                  i32.const 1
                  i32.store8 offset=141540
                  local.get 5
                  i32.const 0
                  i32.const 131536
                  local.get 6
                  call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h5335611e091aae37E
                  drop
                  local.get 0
                  i32.const 1
                  i32.store8 offset=16
                end
                local.get 4
                local.get 2
                i32.add
                local.tee 5
                i32.const 0
                i32.load offset=141536
                i32.le_u
                br_if 1 (;@5;)
                br 5 (;@1;)
              end
              local.get 0
              i32.const 0
              i32.store8 offset=16
              local.get 5
              local.get 4
              local.get 1
              local.get 2
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h5335611e091aae37E
              br_if 4 (;@1;)
              local.get 4
              local.get 2
              i32.add
              local.set 5
              br 1 (;@4;)
            end
            local.get 5
            local.get 4
            i32.lt_u
            br_if 1 (;@3;)
            local.get 5
            i32.const 10000
            i32.gt_u
            br_if 2 (;@2;)
            local.get 1
            local.get 2
            local.get 4
            i32.const 131536
            i32.add
            local.get 2
            call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17he3585b619b30c76fE
          end
          local.get 0
          local.get 5
          i32.store
          return
        end
        local.get 4
        local.get 5
        call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17h471e892540b809f6E
        unreachable
      end
      local.get 5
      i32.const 10000
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17h471e892540b809f6E
      unreachable
    end
    local.get 3
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h969de87879809769E
    unreachable
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h969de87879809769E (;152;) (type 5) (param i32)
    local.get 0
    i32.const 131236
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h9a0c241eb9e3e1e7E
    unreachable
  )
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17he3585b619b30c76fE (;153;) (type 16) (param i32 i32 i32 i32)
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
  (func $rust_begin_unwind (;154;) (type 12)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h8945d78c95e86419E
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h8945d78c95e86419E (;155;) (type 12)
    i32.const 131516
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;156;) (type 12)
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h187cd48585998b93E
  )
  (func $queued_calls (;157;) (type 12)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 208
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h187cd48585998b93E
    local.get 0
    call $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$12queued_calls17h804d24cf21c493d0E
    local.tee 1
    i32.store offset=12
    local.get 0
    i32.const 72
    i32.add
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_info17h2e1489190f4fe3d0E
    local.get 0
    i32.const 16
    i32.add
    local.get 1
    local.get 0
    i32.load offset=76
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14get_node_by_id17hddcb48caeb67d550E
    local.get 0
    local.get 0
    i32.const 12
    i32.add
    i32.store offset=64
    local.get 0
    i32.const 72
    i32.add
    local.get 0
    i32.const 16
    i32.add
    i32.const 56
    call $memcpy
    drop
    local.get 0
    i32.const 160
    i32.add
    i32.const 24
    i32.add
    local.set 2
    local.get 0
    i32.const 160
    i32.add
    i32.const 4
    i32.or
    local.set 3
    block ;; label = @1
      block ;; label = @2
        loop ;; label = @3
          local.get 0
          i32.load offset=72
          i32.const 2
          i32.eq
          br_if 1 (;@2;)
          local.get 0
          i32.const 160
          i32.add
          local.get 0
          i32.const 72
          i32.add
          call $_ZN113_$LT$dharitri_sc..storage..mappers..linked_list_mapper..LinkedListNode$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h39b59d10373e568aE
          local.get 0
          i32.load offset=160
          local.tee 1
          i32.const 2
          i32.eq
          br_if 2 (;@1;)
          local.get 0
          i32.const 128
          i32.add
          i32.const 24
          i32.add
          local.tee 4
          local.get 3
          i32.const 24
          i32.add
          local.tee 5
          i64.load align=4
          i64.store
          local.get 0
          i32.const 128
          i32.add
          i32.const 16
          i32.add
          local.tee 6
          local.get 3
          i32.const 16
          i32.add
          local.tee 7
          i64.load align=4
          i64.store
          local.get 0
          i32.const 128
          i32.add
          i32.const 8
          i32.add
          local.tee 8
          local.get 3
          i32.const 8
          i32.add
          local.tee 9
          i64.load align=4
          i64.store
          local.get 0
          local.get 3
          i64.load align=4
          i64.store offset=128
          local.get 0
          i32.const 160
          i32.add
          local.get 0
          i32.load offset=120
          i32.load
          local.get 0
          i32.load offset=196
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14get_node_by_id17hddcb48caeb67d550E
          local.get 0
          i32.const 72
          i32.add
          local.get 0
          i32.const 160
          i32.add
          i32.const 48
          call $memcpy
          drop
          local.get 3
          local.get 0
          i64.load offset=128
          i64.store align=4
          local.get 9
          local.get 8
          i64.load
          i64.store align=4
          local.get 7
          local.get 6
          i64.load
          i64.store align=4
          local.get 5
          local.get 4
          i32.load
          i32.store
          local.get 0
          local.get 1
          i32.store offset=160
          i32.const 1
          i32.const 0
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h18bd88f1ddfb4087E
          local.set 1
          local.get 0
          i32.load8_u offset=188
          local.get 1
          call $_ZN102_$LT$forwarder_queue..QueuedCallType$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h4bb57ecbd86f8371E
          local.get 1
          local.get 0
          i32.load offset=176
          call $mBufferAppend
          drop
          local.get 0
          i64.load offset=168
          local.get 1
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17hf53d4cd830729b1bE
          local.get 0
          i32.load offset=180
          local.get 1
          call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he81392ca71ad08bbE
          local.get 2
          local.get 1
          call $_ZN149_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h1b15a5b1be7c2cceE
          local.get 0
          i32.const 160
          i32.add
          local.get 1
          call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_multi_dcdt_payment..RewaOrMultiDcdtPayment$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h46466816a6c2aecfE
          local.get 1
          call $mBufferFinish
          drop
          br 0 (;@3;)
        end
      end
      local.get 0
      i32.const 208
      i32.add
      global.set $__stack_pointer
      return
    end
    call $_ZN4core6option13unwrap_failed17h3135ea563cdcf5b2E
    unreachable
  )
  (func $_ZN4core6option13unwrap_failed17h3135ea563cdcf5b2E (;158;) (type 12)
    call $_ZN4core9panicking5panic17hff86462b5c0334dbE
    unreachable
  )
  (func $add_queued_call_sync (;159;) (type 12)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h65ef7886dd49f8adE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc0de25ed409fc930E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb24b44d84cd3fefbE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7868d1b730af3294E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h504a10a62f8a1d36E
    local.set 3
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h3c6cbbec1b53c795E
    i32.const 0
    local.get 1
    i64.const 0
    local.get 2
    local.get 3
    call $_ZN15forwarder_queue14ForwarderQueue15add_queued_call17h0991e2798cd7534cE
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $add_queued_call_legacy_async (;160;) (type 12)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h65ef7886dd49f8adE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc0de25ed409fc930E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb24b44d84cd3fefbE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7868d1b730af3294E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h504a10a62f8a1d36E
    local.set 3
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h3c6cbbec1b53c795E
    i32.const 1
    local.get 1
    i64.const 0
    local.get 2
    local.get 3
    call $_ZN15forwarder_queue14ForwarderQueue15add_queued_call17h0991e2798cd7534cE
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $add_queued_call_transfer_execute (;161;) (type 12)
    (local i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h65ef7886dd49f8adE
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc0de25ed409fc930E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb24b44d84cd3fefbE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h484860318638e29cE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7868d1b730af3294E
    local.set 3
    local.get 0
    i32.const 3
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h504a10a62f8a1d36E
    local.set 4
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h3c6cbbec1b53c795E
    i32.const 2
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_ZN15forwarder_queue14ForwarderQueue15add_queued_call17h0991e2798cd7534cE
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $add_queued_call_transfer_dcdt (;162;) (type 12)
    (local i32 i32 i64 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h65ef7886dd49f8adE
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc0de25ed409fc930E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb24b44d84cd3fefbE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h484860318638e29cE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7868d1b730af3294E
    local.set 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h264e5903b3648efbE
    local.set 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h383bedd8e5093f15E
    local.set 5
    local.get 0
    i32.const 5
    i32.store
    local.get 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h504a10a62f8a1d36E
    local.set 6
    local.get 0
    i32.load
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h3c6cbbec1b53c795E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6913251826c11576E
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
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h44017629b819dfa5E
    call $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$12queued_calls17h804d24cf21c493d0E
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
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$9push_back17ha7cb2578b5ea64faE
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $add_queued_call_promise (;163;) (type 12)
    (local i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h65ef7886dd49f8adE
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc0de25ed409fc930E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb24b44d84cd3fefbE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h484860318638e29cE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7868d1b730af3294E
    local.set 3
    local.get 0
    i32.const 3
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h504a10a62f8a1d36E
    local.set 4
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h3c6cbbec1b53c795E
    i32.const 3
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_ZN15forwarder_queue14ForwarderQueue15add_queued_call17h0991e2798cd7534cE
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $add_queued_call (;164;) (type 12)
    (local i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h65ef7886dd49f8adE
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc0de25ed409fc930E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hfcde185d6aec3fecE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb24b44d84cd3fefbE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h484860318638e29cE
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7868d1b730af3294E
    local.set 4
    local.get 0
    i32.const 4
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h504a10a62f8a1d36E
    local.set 5
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h3c6cbbec1b53c795E
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    call $_ZN15forwarder_queue14ForwarderQueue15add_queued_call17h0991e2798cd7534cE
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_queued_calls (;165;) (type 12)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 288
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h187cd48585998b93E
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
    i32.const 152
    i32.add
    i32.const 24
    i32.add
    local.set 10
    local.get 0
    i32.const 104
    i32.add
    i32.const 4
    i32.or
    local.set 11
    local.get 0
    i32.const 104
    i32.add
    i32.const 16
    i32.add
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
          call $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$12queued_calls17h804d24cf21c493d0E
          local.tee 15
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_info17h2e1489190f4fe3d0E
          local.get 15
          local.get 0
          i32.load offset=108
          local.tee 16
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$13is_empty_node17hb2e162aa5f475c4fE
          br_if 1 (;@2;)
          local.get 0
          i32.const 232
          i32.add
          local.get 15
          local.get 16
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14get_node_by_id17hddcb48caeb67d550E
          local.get 0
          i32.load offset=232
          local.tee 17
          i32.const 2
          i32.eq
          br_if 2 (;@1;)
          local.get 10
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
          local.tee 18
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
          local.set 19
          local.get 0
          i32.load offset=276
          local.set 20
          block ;; label = @4
            local.get 15
            local.get 0
            i32.load offset=264
            local.tee 21
            call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$13is_empty_node17hb2e162aa5f475c4fE
            br_if 0 (;@4;)
            local.get 0
            i32.const 56
            i32.add
            local.get 15
            call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_info17h2e1489190f4fe3d0E
            block ;; label = @5
              block ;; label = @6
                local.get 19
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                i32.const 232
                i32.add
                local.get 15
                local.get 19
                call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_node17h9c5d4e3c27b5fbd2E
                local.get 0
                local.get 16
                i32.store offset=268
                local.get 15
                local.get 19
                local.get 0
                i32.const 232
                i32.add
                call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17h7499731100a4d082E
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
                call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_node17h9c5d4e3c27b5fbd2E
                local.get 0
                local.get 19
                i32.store offset=272
                local.get 15
                local.get 16
                local.get 0
                i32.const 232
                i32.add
                call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17h7499731100a4d082E
                br 1 (;@5;)
              end
              local.get 0
              local.get 19
              i32.store offset=64
            end
            local.get 15
            local.get 21
            call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h0b80b1017c40e6eaE
            i32.const 1
            call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817ha5d9495f0f023c06E
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
            call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_info17h758c489fb370f782E
          end
          local.get 13
          local.get 0
          i64.load offset=152
          i64.store align=4
          local.get 13
          i32.const 24
          i32.add
          local.get 10
          i32.load
          i32.store
          local.get 13
          i32.const 16
          i32.add
          local.get 18
          i64.load
          i64.store align=4
          local.get 13
          i32.const 8
          i32.add
          local.get 3
          i64.load
          i64.store align=4
          local.get 0
          local.get 20
          i32.store offset=100
          local.get 0
          local.get 19
          i32.store offset=96
          local.get 0
          local.get 16
          i32.store offset=92
          local.get 0
          local.get 21
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
          call $_ZN113_$LT$dharitri_sc..storage..mappers..linked_list_mapper..LinkedListNode$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h39b59d10373e568aE
          local.get 0
          i32.const 104
          i32.add
          i32.const 24
          i32.add
          local.get 6
          i64.load
          i64.store
          local.get 12
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
          local.tee 22
          i64.store offset=104
          block ;; label = @4
            block ;; label = @5
              local.get 22
              i32.wrap_i64
              br_if 0 (;@5;)
              i32.const 131475
              i32.const 24
              call $_ZN11dharitri_sc8log_util23event_topic_accumulator17ha1bf8adab6125681E
              local.tee 15
              local.get 0
              i32.load8_u offset=132
              call $_ZN11dharitri_sc8log_util21serialize_event_topic17h37db25696a66a843E
              local.get 15
              local.get 12
              call $_ZN11dharitri_sc8log_util21serialize_event_topic17h208bf552314a20b0E
              local.get 15
              local.get 0
              i32.load offset=124
              call $_ZN11dharitri_sc8log_util21serialize_event_topic17hc3151054b64ea2c4E
              local.get 15
              local.get 11
              call $_ZN11dharitri_sc8log_util21serialize_event_topic17h78a9190335ff3f3cE
              local.get 15
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6913251826c11576E
              call $managedWriteLog
              br 1 (;@4;)
            end
            local.get 0
            local.get 11
            call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9432c12ea89d2011E
            call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..into_multi_value..IntoMultiValue$GT$16into_multi_value17hf2a1c1bd3dde4b31E
            i32.store offset=232
            i32.const 131451
            i32.const 24
            call $_ZN11dharitri_sc8log_util23event_topic_accumulator17ha1bf8adab6125681E
            local.tee 15
            local.get 0
            i32.load8_u offset=132
            call $_ZN11dharitri_sc8log_util21serialize_event_topic17h37db25696a66a843E
            local.get 15
            local.get 12
            call $_ZN11dharitri_sc8log_util21serialize_event_topic17h208bf552314a20b0E
            local.get 15
            local.get 0
            i32.load offset=124
            call $_ZN11dharitri_sc8log_util21serialize_event_topic17hc3151054b64ea2c4E
            local.get 15
            local.get 0
            i32.const 232
            i32.add
            call $_ZN11dharitri_sc8log_util21serialize_event_topic17hbce8830884b2852dE
            local.get 15
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6913251826c11576E
            call $managedWriteLog
          end
          local.get 0
          i32.load offset=124
          local.set 15
          local.get 0
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6913251826c11576E
          local.tee 16
          i32.store offset=148
          local.get 0
          local.get 15
          i32.store offset=144
          local.get 0
          local.get 12
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
                local.tee 22
                i64.const -100000
                i64.add
                local.get 22
                local.get 22
                i64.const 100000
                i64.gt_u
                select
                local.tee 22
                i64.store offset=216
                block ;; label = @7
                  block ;; label = @8
                    local.get 0
                    i32.load offset=104
                    br_if 0 (;@8;)
                    local.get 22
                    local.get 0
                    i32.load offset=120
                    local.get 0
                    i32.load offset=108
                    local.get 15
                    local.get 16
                    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h3b820e0c4eb7cf22E
                    br 1 (;@7;)
                  end
                  block ;; label = @8
                    block ;; label = @9
                      block ;; label = @10
                        local.get 0
                        i32.load offset=108
                        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h57b2f0ee6033cd6dE
                        br_table 1 (;@9;) 2 (;@8;) 0 (;@10;)
                      end
                      local.get 0
                      local.get 15
                      local.get 16
                      local.get 12
                      local.get 11
                      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17hd879b1a74030a901E
                      local.get 0
                      i32.load offset=4
                      local.set 15
                      local.get 0
                      i32.load
                      local.set 16
                      call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h1ccb9fb68250fd29E
                      local.set 19
                      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h23e98a78631b5a9dE
                      local.set 21
                      local.get 0
                      i64.load offset=216
                      local.get 19
                      local.get 21
                      local.get 16
                      local.get 15
                      call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h3b820e0c4eb7cf22E
                      br 2 (;@7;)
                    end
                    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h23e98a78631b5a9dE
                    local.set 19
                    local.get 0
                    i64.load offset=216
                    local.get 0
                    i32.load offset=120
                    local.get 19
                    local.get 15
                    local.get 16
                    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h3b820e0c4eb7cf22E
                    br 1 (;@7;)
                  end
                  local.get 0
                  i32.const 152
                  i32.add
                  local.get 0
                  i32.load offset=108
                  call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h53198f6c174f1c75E
                  local.get 0
                  i64.load offset=152
                  local.set 22
                  local.get 0
                  local.get 2
                  i32.store offset=252
                  local.get 0
                  local.get 3
                  i32.store offset=248
                  local.get 0
                  local.get 22
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
                    local.get 22
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
                    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17hde2ab210acca7ec9E
                    local.get 0
                    i32.load offset=12
                    local.set 15
                    local.get 0
                    i32.load offset=8
                    local.set 16
                    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h23e98a78631b5a9dE
                    local.set 19
                    local.get 0
                    i64.load offset=216
                    local.get 0
                    i32.load offset=120
                    local.get 19
                    local.get 16
                    local.get 15
                    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h3b820e0c4eb7cf22E
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
                  call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17ha0f0926e6c774327E
                  local.get 0
                  i32.load offset=20
                  local.set 15
                  local.get 0
                  i32.load offset=16
                  local.set 16
                  call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h1ccb9fb68250fd29E
                  local.set 19
                  call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h23e98a78631b5a9dE
                  local.set 21
                  local.get 0
                  i64.load offset=216
                  local.get 19
                  local.get 21
                  local.get 16
                  local.get 15
                  call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$21execute_sync_call_raw28_$u7b$$u7b$closure$u7d$$u7d$17h3b820e0c4eb7cf22E
                end
                call $cleanReturnData
                br 3 (;@3;)
              end
              local.get 0
              i32.const 136
              i32.add
              call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17he3c229a259be0d45E
              unreachable
            end
            local.get 0
            i64.load offset=112
            local.set 22
            block ;; label = @5
              local.get 15
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h8c3f9cb402bdd382E
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              i32.load offset=108
              local.set 19
              block ;; label = @6
                local.get 0
                i32.load offset=104
                i32.eqz
                br_if 0 (;@6;)
                i64.const 0
                local.set 22
                local.get 19
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h8c3f9cb402bdd382E
                br_if 3 (;@3;)
                br 1 (;@5;)
              end
              i64.const 0
              local.set 22
              local.get 19
              call $bigIntSign
              i32.eqz
              br_if 2 (;@3;)
            end
            block ;; label = @5
              local.get 0
              i32.load offset=104
              br_if 0 (;@5;)
              local.get 0
              i32.load offset=120
              local.get 0
              i32.load offset=108
              local.get 22
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
            local.get 22
            local.get 15
            local.get 16
            call $managedMultiTransferDCDTNFTExecute
            drop
            br 1 (;@3;)
          end
          local.get 0
          i64.load offset=112
          local.set 22
          local.get 0
          i32.load offset=128
          local.set 16
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6913251826c11576E
          local.set 19
          local.get 0
          local.get 12
          i32.store offset=180
          local.get 0
          local.get 19
          i32.store offset=176
          local.get 0
          i32.const 24
          i32.store offset=172
          local.get 0
          i32.const 131333
          i32.store offset=168
          local.get 0
          local.get 16
          i32.store offset=164
          local.get 0
          local.get 15
          i32.store offset=160
          local.get 0
          local.get 22
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
          call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h075a9d37696be294E
          local.set 16
          local.get 0
          local.get 0
          i32.load offset=176
          call $mBufferGetLength
          i32.store offset=240
          local.get 0
          i32.const 0
          i32.store offset=236
          local.get 0
          local.get 10
          i32.store offset=232
          block ;; label = @4
            loop ;; label = @5
              local.get 0
              i32.const 48
              i32.add
              local.get 0
              i32.const 232
              i32.add
              call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdae1c5611de7b54cE
              local.get 0
              i32.load offset=48
              i32.eqz
              br_if 1 (;@4;)
              local.get 0
              local.get 0
              i32.load offset=52
              local.tee 19
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
              local.get 19
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
          local.set 19
          local.get 0
          i32.load offset=164
          local.set 15
          local.get 0
          i32.load offset=160
          local.set 16
          local.get 0
          i32.load offset=180
          local.set 21
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
            i32.const 131333
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
            local.get 19
            i32.load
            local.set 19
            local.get 0
            local.get 21
            i32.store offset=252
            local.get 0
            i32.const 232
            i32.add
            local.get 21
            i32.load
            local.get 19
            local.get 16
            local.get 15
            call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h910539f8a6ea35ecE
            br 1 (;@3;)
          end
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                local.get 19
                i32.load
                call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h57b2f0ee6033cd6dE
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
              i32.const 131333
              i32.store offset=236
              local.get 0
              local.get 19
              i32.store offset=232
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
              i32.const 24
              i32.add
              local.get 16
              local.get 15
              local.get 21
              local.get 19
              call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17hd879b1a74030a901E
              local.get 0
              i32.load offset=28
              local.set 15
              local.get 0
              i32.load offset=24
              local.set 16
              local.get 5
              call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h1ccb9fb68250fd29E
              call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h23e98a78631b5a9dE
              local.get 16
              local.get 15
              call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h910539f8a6ea35ecE
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
            i32.const 131333
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
            call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h23e98a78631b5a9dE
            local.set 19
            local.get 0
            i32.const 232
            i32.add
            local.get 21
            i32.load
            local.get 19
            local.get 16
            local.get 15
            call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h910539f8a6ea35ecE
            br 1 (;@3;)
          end
          local.get 0
          i32.const 216
          i32.add
          local.get 19
          i32.load
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h53198f6c174f1c75E
          local.get 0
          i64.load offset=216
          local.set 22
          local.get 0
          local.get 7
          i32.store offset=252
          local.get 0
          local.get 8
          i32.store offset=248
          local.get 0
          local.get 22
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
          i32.const 131333
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
            local.get 22
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
            call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17hde2ab210acca7ec9E
            local.get 0
            i32.load offset=36
            local.set 15
            local.get 0
            i32.load offset=32
            local.set 16
            call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h23e98a78631b5a9dE
            local.set 19
            local.get 6
            local.get 21
            i32.load
            local.get 19
            local.get 16
            local.get 15
            call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h910539f8a6ea35ecE
            br 1 (;@3;)
          end
          local.get 0
          i32.const 40
          i32.add
          local.get 16
          local.get 15
          local.get 21
          i32.load
          local.get 1
          call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17ha0f0926e6c774327E
          local.get 0
          i32.load offset=44
          local.set 15
          local.get 0
          i32.load offset=40
          local.set 16
          local.get 6
          call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h1ccb9fb68250fd29E
          call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h23e98a78631b5a9dE
          local.get 16
          local.get 15
          call $_ZN11dharitri_sc5types11interaction7tx_exec22tx_exec_async_promises327_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$dharitri_sc..types..interaction..tx_gas..ExplicitGas$LT$GasValue$GT$$C$dharitri_sc..types..interaction..tx_data..function_call..FunctionCall$LT$Api$GT$$C$Callback$GT$$GT$16register_promise28_$u7b$$u7b$closure$u7d$$u7d$17h910539f8a6ea35ecE
          br 0 (;@3;)
        end
      end
      local.get 0
      i32.const 288
      i32.add
      global.set $__stack_pointer
      return
    end
    call $_ZN4core6option13unwrap_failed17h3135ea563cdcf5b2E
    unreachable
  )
  (func $callback_count (;166;) (type 12)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h187cd48585998b93E
    i32.const 131380
    i32.const 14
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h18bd88f1ddfb4087E
    local.set 1
    local.get 0
    i64.const 0
    i64.store offset=8
    block ;; label = @1
      block ;; label = @2
        local.get 1
        call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17haf57776782576525E
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
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h5335611e091aae37E
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
      i32.const 131222
      i32.const 14
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h9a0c241eb9e3e1e7E
      unreachable
    end
    local.get 1
    i32.const 131222
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h9a0c241eb9e3e1e7E
    unreachable
  )
  (func $callback_payments (;167;) (type 12)
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h187cd48585998b93E
    i32.const 131394
    i32.const 17
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h18bd88f1ddfb4087E
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17haf57776782576525E
    call $mBufferFinish
    drop
  )
  (func $callBack (;168;) (type 12))
  (func $_ZN4core9panicking9panic_fmt17hb859252f4b513814E (;169;) (type 12)
    call $rust_begin_unwind
    unreachable
  )
  (func $_ZN4core9panicking5panic17hff86462b5c0334dbE (;170;) (type 12)
    call $_ZN4core9panicking9panic_fmt17hb859252f4b513814E
    unreachable
  )
  (func $_ZN17compiler_builtins3mem6memcpy17h6a01844efc49c0e5E (;171;) (type 4) (param i32 i32 i32) (result i32)
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
  (func $memcpy (;172;) (type 4) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN17compiler_builtins3mem6memcpy17h6a01844efc49c0e5E
  )
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 141553)
  (global (;2;) i32 i32.const 141568)
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
  (data $.rodata (;0;) (i32.const 131072) "invalid value\00\01\02\03argument decode error (): too few argumentstoo many argumentswrong number of argumentsMultiDCDTNFTTransferDCDTNFTTransferDCDTTransferinput too longinput too shortManagedVec index out of range.node.infostorage decode error (key: bad array lengthpromises_callback_methodtocall_typequeued_callscallback_countcallback_paymentsadd_queued_call_dcdtadd_queued_call_rewaforward_queued_call_dcdtforward_queued_call_rewa\00\0d\00\02\00\0e\00\02\00\0f\00\02\00\10\00\02\00panic occurred")
  (data $.data (;1;) (i32.const 131532) "8\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.80.1 (3f5fd8dd4 2024-08-06)")
  )
  (@custom "target_features" (after data) "\02+\0fmutable-globals+\08sign-ext")
)
