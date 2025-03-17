(module
  (type (;0;) (func (param i32 i64)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (result i32)))
  (type (;3;) (func (param i32 i32) (result i32)))
  (type (;4;) (func (param i32)))
  (type (;5;) (func (param i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32)))
  (type (;7;) (func (param i32) (result i32)))
  (type (;8;) (func (param i32) (result i64)))
  (type (;9;) (func (param i32 i32 i64 i32 i32) (result i32)))
  (type (;10;) (func (result i64)))
  (type (;11;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;12;) (func))
  (type (;13;) (func (param i64 i32 i32 i32 i32 i32) (result i32)))
  (type (;14;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32) (result i32)))
  (type (;15;) (func (param i64)))
  (type (;16;) (func (param i32 i32 i32 i32)))
  (type (;17;) (func (param i32 i32 i32 i32 i32)))
  (type (;18;) (func (param i32 i32 i32 i64)))
  (type (;19;) (func (param i64) (result i64)))
  (type (;20;) (func (param i32 i32) (result i64)))
  (type (;21;) (func (param i64 i32)))
  (type (;22;) (func (param i32 i32 i64 i32 i32)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;0;) (type 0)))
  (import "env" "bigIntAdd" (func $bigIntAdd (;1;) (type 1)))
  (import "env" "mBufferNew" (func $mBufferNew (;2;) (type 2)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;3;) (type 3)))
  (import "env" "managedSCAddress" (func $managedSCAddress (;4;) (type 4)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;5;) (type 3)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;6;) (type 5)))
  (import "env" "managedSignalError" (func $managedSignalError (;7;) (type 4)))
  (import "env" "bigIntGetUnsignedArgument" (func $bigIntGetUnsignedArgument (;8;) (type 6)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;9;) (type 7)))
  (import "env" "getArgumentLength" (func $getArgumentLength (;10;) (type 7)))
  (import "env" "smallIntGetUnsignedArgument" (func $smallIntGetUnsignedArgument (;11;) (type 8)))
  (import "env" "signalError" (func $signalError (;12;) (type 6)))
  (import "env" "getNumArguments" (func $getNumArguments (;13;) (type 2)))
  (import "env" "managedGetOriginalTxHash" (func $managedGetOriginalTxHash (;14;) (type 4)))
  (import "env" "managedTransferValueExecute" (func $managedTransferValueExecute (;15;) (type 9)))
  (import "env" "getGasLeft" (func $getGasLeft (;16;) (type 10)))
  (import "env" "mBufferCopyByteSlice" (func $mBufferCopyByteSlice (;17;) (type 11)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;18;) (type 11)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;19;) (type 5)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;20;) (type 3)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;21;) (type 3)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;22;) (type 3)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;23;) (type 3)))
  (import "env" "managedGetMultiDCDTCallValue" (func $managedGetMultiDCDTCallValue (;24;) (type 4)))
  (import "env" "bigIntGetCallValue" (func $bigIntGetCallValue (;25;) (type 4)))
  (import "env" "managedWriteLog" (func $managedWriteLog (;26;) (type 6)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;27;) (type 12)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;28;) (type 7)))
  (import "env" "managedExecuteOnDestContext" (func $managedExecuteOnDestContext (;29;) (type 13)))
  (import "env" "cleanReturnData" (func $cleanReturnData (;30;) (type 12)))
  (import "env" "managedMultiTransferDCDTNFTExecute" (func $managedMultiTransferDCDTNFTExecute (;31;) (type 9)))
  (import "env" "managedCreateAsyncCall" (func $managedCreateAsyncCall (;32;) (type 14)))
  (import "env" "smallIntFinishUnsigned" (func $smallIntFinishUnsigned (;33;) (type 15)))
  (import "env" "managedAsyncCall" (func $managedAsyncCall (;34;) (type 16)))
  (func $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hfe0346952556828aE (;35;) (type 7) (param i32) (result i32)
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E (;36;) (type 2) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=131536
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=131536
    local.get 0
  )
  (func $_ZN102_$LT$forwarder_queue..QueuedCallType$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h5e982018252b6cfeE (;37;) (type 6) (param i32 i32)
    local.get 0
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    i32.const 131504
    i32.add
    i32.load
    i32.load8_u
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h3521939cf67681f7E
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h3521939cf67681f7E (;38;) (type 6) (param i32 i32)
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
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17ha26a73c048655e2fE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h9d37bd2321fe57ddE (;39;) (type 17) (param i32 i32 i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        local.get 2
        local.get 1
        i32.lt_u
        br_if 0 (;@2;)
        local.get 2
        local.get 4
        i32.le_u
        br_if 1 (;@1;)
        local.get 2
        local.get 4
        call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE
        unreachable
      end
      local.get 1
      local.get 2
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 3
    local.get 1
    i32.add
    i32.store
  )
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE (;40;) (type 6) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (func $_ZN113_$LT$dharitri_sc..storage..mappers..linked_list_mapper..LinkedListNode$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h281a27038ca84190E (;41;) (type 6) (param i32 i32)
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
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha4ed5a73a393a9dfE
    local.set 4
    local.get 1
    i64.load offset=8
    local.set 5
    local.get 1
    i32.load offset=20
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha4ed5a73a393a9dfE
    local.set 6
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hd2966d379d5ee5abE
    local.set 7
    local.get 2
    local.get 1
    i32.load offset=24
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h3246b61acf9e65f6E
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h995acf87a98a4338E
        local.get 2
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 7
        local.get 2
        i32.load offset=12
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha4ed5a73a393a9dfE
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hce4067ade5beeb1eE
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
        call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hfe0346952556828aE
        local.set 8
        br 1 (;@1;)
      end
      i32.const 1
      local.set 9
      local.get 8
      call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h623c0e3995294b4aE
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
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha4ed5a73a393a9dfE (;42;) (type 7) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hd2966d379d5ee5abE (;43;) (type 2) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    i32.const 131520
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h3246b61acf9e65f6E (;44;) (type 7) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h995acf87a98a4338E (;45;) (type 6) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h35505a2067aac40cE
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hce4067ade5beeb1eE (;46;) (type 6) (param i32 i32)
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
  (func $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h623c0e3995294b4aE (;47;) (type 7) (param i32) (result i32)
    (local i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hd2966d379d5ee5abE
    local.set 2
    local.get 1
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h3246b61acf9e65f6E
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
      call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he742eedc0a8be2c3E
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
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha4ed5a73a393a9dfE
      local.set 4
      local.get 1
      local.get 0
      call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hfe0346952556828aE
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
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h7950a243bbf164daE
      br 0 (;@1;)
    end
  )
  (func $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he742eedc0a8be2c3E (;48;) (type 6) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h35505a2067aac40cE
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
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h0fe33de96734ca02E
      local.set 4
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h787d96035dda2785E
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
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h0fe33de96734ca02E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h7950a243bbf164daE (;49;) (type 6) (param i32 i32)
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
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17h11cd7c351819ef29E (;50;) (type 16) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17hcba505d2f5fa12cbE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17hcba505d2f5fa12cbE (;51;) (type 16) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $managedAsyncCall
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17h430b1bd03e436233E (;52;) (type 2) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    call $managedSCAddress
    local.get 0
  )
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hc4ff4034e0b90f31E (;53;) (type 7) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h1f10a23a1425184eE (;54;) (type 16) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131089
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h17eb045a1ad4e3c4E
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h17eb045a1ad4e3c4E (;55;) (type 3) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hb5a7457de7f5d565E (;56;) (type 7) (param i32) (result i32)
    (local i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hd2966d379d5ee5abE
    local.set 1
    local.get 0
    i32.load
    local.set 2
    block ;; label = @1
      loop ;; label = @2
        local.get 2
        i32.const 0
        i32.load offset=141548
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
        call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hc4ff4034e0b90f31E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hce4067ade5beeb1eE
        local.get 3
        local.set 2
        br 0 (;@2;)
      end
    end
    local.get 1
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h3b465eabfed004e0E (;57;) (type 2) (result i32)
    (local i32)
    i32.const 4
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    call $bigIntGetUnsignedArgument
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4b250bc274286bf4E (;58;) (type 7) (param i32) (result i32)
    block ;; label = @1
      local.get 0
      call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hc4ff4034e0b90f31E
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      i32.const 131362
      i32.const 2
      i32.const 131322
      i32.const 16
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h1f10a23a1425184eE
      unreachable
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h6f542adfbf65543bE (;59;) (type 2) (result i32)
    i32.const 3
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hc4ff4034e0b90f31E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h76718b01af2e379cE (;60;) (type 2) (result i32)
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
      i32.const 131364
      i32.const 9
      i32.const 131232
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h1f10a23a1425184eE
      unreachable
    end
    i32.const 131364
    i32.const 9
    i32.const 131072
    i32.const 13
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h1f10a23a1425184eE
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9f224bea12b7573dE (;61;) (type 7) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hc4ff4034e0b90f31E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hf9cbeb54d46e7827E (;62;) (type 8) (param i32) (result i64)
    local.get 0
    call $smallIntGetUnsignedArgument
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hdbadae8dc708b7c8E (;63;) (type 4) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=141548
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h3ff82d9d17ad1983E (;64;) (type 12)
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h9468772604fa8f30E (;65;) (type 4) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=141548
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
  (func $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17h7944d451723cc513E (;66;) (type 4) (param i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block ;; label = @1
      local.get 0
      i32.load offset=16
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
      local.tee 3
      call $managedGetOriginalTxHash
      i32.const 131222
      i32.const 10
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h17eb045a1ad4e3c4E
      local.tee 4
      local.get 3
      call $mBufferAppend
      drop
      local.get 1
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h439067a59505abc7E
      local.get 1
      local.get 1
      i32.load8_u offset=4
      i32.store8 offset=12
      local.get 1
      local.get 1
      i32.load
      i32.store offset=8
      local.get 0
      i32.const 20
      i32.add
      i32.load
      local.tee 3
      local.get 1
      i32.const 8
      i32.add
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h71caca3acda47996E
      local.get 1
      i32.const 8
      i32.add
      local.get 2
      local.get 3
      call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17ha26a73c048655e2fE
      local.get 0
      i32.const 24
      i32.add
      local.get 1
      i32.const 8
      i32.add
      call $_ZN149_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he897f2b2b3183947E
      local.get 4
      local.get 1
      i32.load offset=8
      local.get 1
      i32.load8_u offset=12
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h207b628c242b6396E
    end
    local.get 0
    call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$29call_and_exit_ignore_callback17hc105f35141969feaE
    unreachable
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h439067a59505abc7E (;67;) (type 4) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$14new_from_slice17h3f644d3e695b1a7dE
    local.get 1
    i32.load offset=8
    local.set 2
    local.get 0
    local.get 1
    i32.load8_u offset=12
    i32.const 1
    i32.and
    i32.store8 offset=4
    local.get 0
    local.get 2
    i32.store
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h71caca3acda47996E (;68;) (type 6) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h187bd25eb4cf17e3E
  )
  (func $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17ha26a73c048655e2fE (;69;) (type 1) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load8_u offset=4
          i32.eqz
          br_if 0 (;@3;)
          i32.const 10000
          i32.const 0
          i32.load offset=141540
          local.tee 4
          i32.sub
          local.get 2
          i32.lt_u
          br_if 1 (;@2;)
          local.get 3
          i32.const 8
          i32.add
          local.get 4
          local.get 4
          local.get 2
          i32.add
          local.tee 0
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hd6ee38b85368ac2eE
          local.get 3
          i32.load offset=8
          local.get 3
          i32.load offset=12
          local.get 1
          local.get 2
          call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
          i32.const 0
          local.get 0
          i32.store offset=141540
          br 2 (;@1;)
        end
        local.get 0
        i32.load
        local.get 1
        local.get 2
        call $mBufferAppendBytes
        drop
        br 1 (;@1;)
      end
      local.get 0
      call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17he068006a4844b875E
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $mBufferAppendBytes
      drop
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN149_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he897f2b2b3183947E (;70;) (type 6) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.tee 3
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h493bb8bc48232fb0E
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h71caca3acda47996E
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h3246b61acf9e65f6E
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h995acf87a98a4338E
        local.get 2
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=12
        local.get 1
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he0f585ad80e618d6E
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h207b628c242b6396E (;71;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$19into_managed_buffer17h4dd49c85cdf09a7cE
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$29call_and_exit_ignore_callback17hc105f35141969feaE (;72;) (type 4) (param i32)
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17h11cd7c351819ef29E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$3new17h5d891a5d624fbae9E (;73;) (type 1) (param i32 i32 i32)
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h17eb045a1ad4e3c4E
    local.set 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hd2966d379d5ee5abE
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h5d6c471f0adee7ccE (;74;) (type 16) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17h0020c58ddf8d98c7E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17h0020c58ddf8d98c7E (;75;) (type 6) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hd2966d379d5ee5abE
    drop
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17hf67a69a8a00fc4a2E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hce4067ade5beeb1eE
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h9adb30734413fa0cE (;76;) (type 16) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17h3209d79a15ec2486E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17h3209d79a15ec2486E (;77;) (type 6) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hd2966d379d5ee5abE
    drop
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha4ed5a73a393a9dfE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hce4067ade5beeb1eE
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17ha15dd6146c125695E (;78;) (type 18) (param i32 i32 i32 i64)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h17feaa779103b958E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h17feaa779103b958E (;79;) (type 0) (param i32 i64)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hd2966d379d5ee5abE
    local.tee 2
    local.get 1
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h55cfeb8e32fbdc73E
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hce4067ade5beeb1eE
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17hda004ab8dcc511b3E (;80;) (type 17) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block ;; label = @1
      local.get 3
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h3246b61acf9e65f6E
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      call $_ZN11dharitri_sc8log_util21serialize_event_topic17h3209d79a15ec2486E
      local.get 4
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h3246b61acf9e65f6E
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
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h35505a2067aac40cE
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
        call $_ZN11dharitri_sc8log_util21serialize_event_topic17h3209d79a15ec2486E
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h35505a2067aac40cE (;81;) (type 11) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc5types11interaction18contract_call_exec125_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_no_payment..ContractCallNoPayment$LT$SA$C$OriginalResult$GT$$GT$21transfer_execute_rewa17h1621ab8f8ddc5a21E (;82;) (type 6) (param i32 i32)
    (local i64)
    local.get 0
    i64.load offset=8
    call $_ZN11dharitri_sc5types11interaction18contract_call_exec125_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_no_payment..ContractCallNoPayment$LT$SA$C$OriginalResult$GT$$GT$31resolve_gas_limit_with_leftover17h55a75a89937f3d5dE
    local.set 2
    local.get 0
    i32.load offset=16
    local.get 1
    local.get 2
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $managedTransferValueExecute
    drop
  )
  (func $_ZN11dharitri_sc5types11interaction18contract_call_exec125_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_no_payment..ContractCallNoPayment$LT$SA$C$OriginalResult$GT$$GT$31resolve_gas_limit_with_leftover17h55a75a89937f3d5dE (;83;) (type 19) (param i64) (result i64)
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
  (func $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall10async_call17h761d6afb8e82f4baE (;84;) (type 6) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    call $_ZN215_$LT$dharitri_sc..types..interaction..contract_call_with_any_payment..ContractCallWithAnyPayment$LT$SA$C$OriginalResult$GT$$u20$as$u20$dharitri_sc..types..interaction..contract_call_trait..ContractCall$LT$SA$GT$$GT$15into_normalized17h62aee48d31f6e2f4E
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    local.get 2
    i32.load offset=24
    i32.store offset=12
    local.get 0
    local.get 2
    i32.load offset=16
    i32.store offset=8
    local.get 0
    local.get 2
    i64.load
    i64.store align=4
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN215_$LT$dharitri_sc..types..interaction..contract_call_with_any_payment..ContractCallWithAnyPayment$LT$SA$C$OriginalResult$GT$$u20$as$u20$dharitri_sc..types..interaction..contract_call_trait..ContractCall$LT$SA$GT$$GT$15into_normalized17h62aee48d31f6e2f4E (;85;) (type 6) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 192
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.load offset=4
    local.set 3
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load
        br_if 0 (;@2;)
        local.get 0
        local.get 3
        i32.store offset=24
        local.get 0
        local.get 1
        i64.load offset=8
        i64.store
        local.get 0
        i32.const 16
        i32.add
        local.get 1
        i32.const 24
        i32.add
        i64.load
        i64.store
        local.get 0
        i32.const 8
        i32.add
        local.get 1
        i32.const 16
        i32.add
        i64.load
        i64.store
        br 1 (;@1;)
      end
      local.get 2
      i32.const 120
      i32.add
      i32.const 16
      i32.add
      local.tee 4
      local.get 1
      i32.const 24
      i32.add
      i64.load
      i64.store
      local.get 2
      i32.const 120
      i32.add
      i32.const 8
      i32.add
      local.tee 5
      local.get 1
      i32.const 16
      i32.add
      i64.load
      i64.store
      local.get 2
      local.get 1
      i64.load offset=8
      i64.store offset=120
      local.get 2
      call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h4c76c98ccf0fadd3E
      i32.store offset=144
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 3
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h1e7db7a3b7594ea7E
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17h430b1bd03e436233E
          local.set 6
          local.get 2
          i32.load offset=124
          local.set 7
          local.get 2
          i32.load offset=120
          local.set 8
          local.get 2
          local.get 3
          i32.store offset=152
          local.get 2
          i32.const 40
          i32.add
          i32.const 131175
          i32.const 20
          call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$3new17h5d891a5d624fbae9E
          local.get 2
          i32.load offset=40
          local.set 5
          local.get 2
          i32.load offset=44
          local.tee 1
          local.get 4
          call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hbc9cea5f42a4d930E
          local.get 3
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h1e7db7a3b7594ea7E
          local.set 4
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hd2966d379d5ee5abE
          local.tee 9
          local.get 4
          i64.extend_i32_u
          call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h55cfeb8e32fbdc73E
          local.get 1
          local.get 9
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hce4067ade5beeb1eE
          local.get 2
          local.get 3
          call $mBufferGetLength
          i32.store offset=164
          local.get 2
          i32.const 0
          i32.store offset=160
          local.get 2
          local.get 2
          i32.const 152
          i32.add
          i32.store offset=156
          block ;; label = @4
            loop ;; label = @5
              local.get 2
              i32.const 168
              i32.add
              local.get 2
              i32.const 156
              i32.add
              call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he742eedc0a8be2c3E
              local.get 2
              i64.load offset=168
              i64.eqz
              br_if 1 (;@4;)
              local.get 2
              i32.load offset=188
              local.set 3
              local.get 2
              i32.const 32
              i32.add
              local.get 5
              local.get 1
              local.get 2
              i32.load offset=184
              call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h9adb30734413fa0cE
              local.get 2
              i32.const 24
              i32.add
              local.get 2
              i32.load offset=32
              local.get 2
              i32.load offset=36
              local.get 2
              i64.load offset=176
              call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17ha15dd6146c125695E
              local.get 2
              i32.const 16
              i32.add
              local.get 2
              i32.load offset=24
              local.get 2
              i32.load offset=28
              local.get 3
              call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h5d6c471f0adee7ccE
              local.get 2
              i32.load offset=20
              local.set 1
              local.get 2
              i32.load offset=16
              local.set 5
              br 0 (;@5;)
            end
          end
          local.get 2
          i32.const 8
          i32.add
          local.get 5
          local.get 1
          local.get 8
          local.get 7
          call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17hda004ab8dcc511b3E
          local.get 2
          i64.load offset=8
          local.set 10
          local.get 2
          i64.load offset=128
          local.set 11
          local.get 0
          call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h4c76c98ccf0fadd3E
          i32.store offset=24
          local.get 0
          local.get 6
          i32.store offset=16
          local.get 0
          local.get 11
          i64.store offset=8
          local.get 0
          local.get 10
          i64.store
          br 2 (;@1;)
        end
        local.get 0
        local.get 2
        i64.load offset=120
        i64.store
        local.get 0
        i32.const 24
        i32.add
        local.get 2
        i32.const 120
        i32.add
        i32.const 24
        i32.add
        i64.load
        i64.store
        local.get 0
        i32.const 16
        i32.add
        local.get 4
        i64.load
        i64.store
        local.get 0
        i32.const 8
        i32.add
        local.get 5
        i64.load
        i64.store
        br 1 (;@1;)
      end
      local.get 2
      i32.const 168
      i32.add
      local.get 3
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h5112cd0a646e2b9eE
      block ;; label = @2
        block ;; label = @3
          local.get 2
          i64.load offset=168
          local.tee 10
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=136
          local.set 1
          local.get 2
          i32.load offset=124
          local.set 5
          local.get 2
          i32.load offset=120
          local.set 3
          local.get 2
          i32.const 72
          i32.add
          i32.const 131210
          i32.const 12
          call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$3new17h5d891a5d624fbae9E
          local.get 2
          i32.const 64
          i32.add
          local.get 2
          i32.load offset=72
          local.get 2
          i32.load offset=76
          local.get 2
          i32.load offset=176
          call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h9adb30734413fa0cE
          local.get 2
          i32.const 56
          i32.add
          local.get 2
          i32.load offset=64
          local.get 2
          i32.load offset=68
          local.get 2
          i32.load offset=180
          call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h5d6c471f0adee7ccE
          local.get 2
          i32.const 48
          i32.add
          local.get 2
          i32.load offset=56
          local.get 2
          i32.load offset=60
          local.get 3
          local.get 5
          call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17hda004ab8dcc511b3E
          local.get 2
          i32.load offset=52
          local.set 5
          local.get 2
          i32.load offset=48
          local.set 3
          br 1 (;@2;)
        end
        call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17h430b1bd03e436233E
        local.set 1
        local.get 2
        i32.load offset=124
        local.set 3
        local.get 2
        i32.load offset=120
        local.set 4
        local.get 2
        i32.const 112
        i32.add
        i32.const 131195
        i32.const 15
        call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$3new17h5d891a5d624fbae9E
        local.get 2
        i32.const 104
        i32.add
        local.get 2
        i32.load offset=112
        local.get 2
        i32.load offset=116
        local.get 2
        i32.load offset=176
        call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h9adb30734413fa0cE
        local.get 2
        i32.const 96
        i32.add
        local.get 2
        i32.load offset=104
        local.get 2
        i32.load offset=108
        local.get 10
        call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17ha15dd6146c125695E
        local.get 2
        i32.const 88
        i32.add
        local.get 2
        i32.load offset=96
        local.get 2
        i32.load offset=100
        local.get 2
        i32.load offset=180
        call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h5d6c471f0adee7ccE
        local.get 2
        i32.load offset=88
        local.set 6
        local.get 2
        i32.load offset=92
        local.set 5
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hd2966d379d5ee5abE
        drop
        local.get 5
        local.get 2
        i32.load offset=136
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha4ed5a73a393a9dfE
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hce4067ade5beeb1eE
        local.get 2
        i32.const 80
        i32.add
        local.get 6
        local.get 5
        local.get 4
        local.get 3
        call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17hda004ab8dcc511b3E
        local.get 2
        i32.load offset=84
        local.set 5
        local.get 2
        i32.load offset=80
        local.set 3
      end
      local.get 2
      i64.load offset=128
      local.set 10
      local.get 0
      call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h4c76c98ccf0fadd3E
      i32.store offset=24
      local.get 0
      local.get 1
      i32.store offset=16
      local.get 0
      local.get 10
      i64.store offset=8
      local.get 0
      local.get 5
      i32.store offset=4
      local.get 0
      local.get 3
      i32.store
    end
    local.get 2
    i32.const 192
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h601c8beccce0bd1cE (;86;) (type 7) (param i32) (result i32)
    local.get 0
    local.get 0
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17he56374f214ca9d1fE
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$27read_managed_buffer_of_size17h6ace9a5328200152E
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17he56374f214ca9d1fE (;87;) (type 7) (param i32) (result i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 0
    i32.store offset=12
    local.get 0
    local.get 1
    i32.const 12
    i32.add
    i32.const 4
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h5fc68d0984af62cfE
    local.get 1
    i32.const 12
    i32.add
    i32.const 4
    call $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    i32.wrap_i64
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$27read_managed_buffer_of_size17h6ace9a5328200152E (;88;) (type 3) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.load
    local.set 2
    call $mBufferNew
    local.set 3
    block ;; label = @1
      local.get 0
      i32.load offset=8
      local.get 2
      local.get 1
      local.get 3
      call $mBufferCopyByteSlice
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 1
      i32.add
      i32.store
      local.get 3
      return
    end
    i32.const 131246
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h1d581669fc32dbdaE
    unreachable
  )
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h1d581669fc32dbdaE (;89;) (type 6) (param i32 i32)
    (local i32)
    i32.const 131300
    i32.const 22
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h17eb045a1ad4e3c4E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 2
    call $managedSignalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h413cf6baf72e08dcE (;90;) (type 6) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferAppend
    drop
  )
  (func $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17hf67a69a8a00fc4a2E (;91;) (type 7) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h4c76c98ccf0fadd3E (;92;) (type 2) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    i64.const 0
    call $bigIntSetInt64
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h5112cd0a646e2b9eE (;93;) (type 6) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h35505a2067aac40cE
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
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h0fe33de96734ca02E
    local.set 3
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h787d96035dda2785E
    local.set 4
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h0fe33de96734ca02E
    local.set 5
    block ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131261
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
  (func $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h0fe33de96734ca02E (;94;) (type 3) (param i32 i32) (result i32)
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
    call $_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hfdcc3505f0c9ee52E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h787d96035dda2785E (;95;) (type 20) (param i32 i32) (result i64)
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
    call $_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hfdcc3505f0c9ee52E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h1e7db7a3b7594ea7E (;96;) (type 7) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h3246b61acf9e65f6E
    i32.const 4
    i32.shr_u
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h493bb8bc48232fb0E (;97;) (type 7) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h3246b61acf9e65f6E
    i32.const 2
    i32.shr_u
  )
  (func $_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hfdcc3505f0c9ee52E (;98;) (type 16) (param i32 i32 i32 i32)
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
    i32.const 16
    call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE
    unreachable
  )
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E (;99;) (type 16) (param i32 i32 i32 i32)
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
  (func $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$14new_from_slice17h3f644d3e695b1a7dE (;100;) (type 4) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        i32.const 0
        i32.load8_u offset=141544
        local.tee 2
        br_if 0 (;@2;)
        i32.const 0
        i32.const 1
        i32.store8 offset=141544
        i32.const 0
        i32.const 0
        i32.store offset=141540
        local.get 1
        i32.const 8
        i32.add
        i32.const 0
        call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hd8ab64c93e334085E
        local.get 1
        i32.load offset=8
        local.get 1
        i32.load offset=12
        i32.const 131520
        i32.const 0
        call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hd2966d379d5ee5abE
        local.set 3
        br 1 (;@1;)
      end
      i32.const 131520
      i32.const 0
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h17eb045a1ad4e3c4E
      local.set 3
    end
    local.get 0
    local.get 3
    i32.store
    local.get 0
    local.get 2
    i32.const 1
    i32.xor
    i32.store8 offset=4
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hd8ab64c93e334085E (;101;) (type 6) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    i32.const 131540
    i32.const 10000
    local.get 1
    call $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h0edaeaa6dc6c58d2E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$19into_managed_buffer17h4dd49c85cdf09a7cE (;102;) (type 3) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store8 offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17he068006a4844b875E
    local.get 2
    i32.load offset=8
    local.set 1
    block ;; label = @1
      local.get 2
      i32.load8_u offset=12
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      i32.store offset=141540
      i32.const 0
      i32.const 0
      i32.store8 offset=141544
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17he068006a4844b875E (;103;) (type 4) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i32.load8_u offset=4
    local.set 2
    local.get 0
    i32.const 0
    i32.store8 offset=4
    block ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 8
      i32.add
      i32.const 0
      i32.const 0
      i32.load offset=141540
      call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h95dd1a03576b7dfcE
      local.get 0
      i32.load
      local.get 1
      i32.load offset=8
      local.get 1
      i32.load offset=12
      call $mBufferAppendBytes
      drop
      i32.const 0
      i32.const 0
      i32.store offset=141540
      i32.const 0
      i32.const 0
      i32.store8 offset=141544
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h95dd1a03576b7dfcE (;104;) (type 1) (param i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        local.get 2
        local.get 1
        i32.lt_u
        br_if 0 (;@2;)
        local.get 2
        i32.const 10000
        i32.le_u
        br_if 1 (;@1;)
        local.get 2
        i32.const 10000
        call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE
        unreachable
      end
      local.get 1
      local.get 2
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 1
    i32.const 131540
    i32.add
    i32.store
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h63a22c3649ca2e71E (;105;) (type 7) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$23load_len_managed_buffer17hbae1def951416c2eE (;106;) (type 7) (param i32) (result i32)
    local.get 0
    i32.const -25
    call $mBufferStorageLoad
    drop
    i32.const -25
    call $mBufferGetLength
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$13is_empty_node17h7d39284823dd918bE (;107;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$23build_node_id_named_key17h28f1797a3bfb51ecE
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$23load_len_managed_buffer17hbae1def951416c2eE
    i32.eqz
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$23build_node_id_named_key17h28f1797a3bfb51ecE (;108;) (type 3) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha4ed5a73a393a9dfE
    local.tee 0
    i32.const 131290
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
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$14build_name_key17h3936d687d456a9c3E (;109;) (type 7) (param i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha4ed5a73a393a9dfE
    local.tee 0
    i32.const 131295
    i32.const 5
    call $mBufferAppendBytes
    drop
    local.get 0
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$14get_node_by_id17hb6427e1c1285dad5E (;110;) (type 1) (param i32 i32 i32)
    block ;; label = @1
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$13is_empty_node17h7d39284823dd918bE
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8get_node17hd95e79ff10243420E
      return
    end
    local.get 0
    i32.const 2
    i32.store
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8get_node17hd95e79ff10243420E (;111;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i64 i32 i32 i32 i64 i32 i32)
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
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$23build_node_id_named_key17h28f1797a3bfb51ecE
    call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h55b34acaa57bdb0eE
    block ;; label = @1
      block ;; label = @2
        local.get 3
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h0c7d6a285ffff588E
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
        call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$27read_managed_buffer_of_size17h6ace9a5328200152E
        local.set 5
        local.get 3
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h8a3f5b56f79f09daE
        local.set 6
        local.get 3
        i32.const 12
        i32.add
        call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h601c8beccce0bd1cE
        local.set 7
        local.get 3
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17he56374f214ca9d1fE
        local.set 2
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hd2966d379d5ee5abE
        local.set 1
        block ;; label = @3
          loop ;; label = @4
            local.get 2
            i32.eqz
            br_if 1 (;@3;)
            local.get 1
            local.get 3
            i32.const 12
            i32.add
            call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h601c8beccce0bd1cE
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hce4067ade5beeb1eE
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
                call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h0c7d6a285ffff588E
                i32.const 255
                i32.and
                br_table 1 (;@5;) 2 (;@4;) 0 (;@6;)
              end
              i32.const 131072
              i32.const 13
              call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h1d581669fc32dbdaE
              unreachable
            end
            i32.const 0
            local.set 2
            local.get 3
            i32.const 12
            i32.add
            call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h5659d442a8246516E
            local.set 8
            br 1 (;@3;)
          end
          local.get 3
          i32.const 12
          i32.add
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17he56374f214ca9d1fE
          local.set 2
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hd2966d379d5ee5abE
          local.set 8
          block ;; label = @4
            loop ;; label = @5
              local.get 2
              i32.eqz
              br_if 1 (;@4;)
              local.get 3
              i32.const 12
              i32.add
              call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h601c8beccce0bd1cE
              local.set 9
              local.get 3
              i32.const 12
              i32.add
              call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h8a3f5b56f79f09daE
              local.set 10
              local.get 3
              local.get 3
              i32.const 12
              i32.add
              call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h5659d442a8246516E
              i32.store offset=44
              local.get 3
              local.get 9
              i32.store offset=40
              local.get 3
              local.get 10
              i64.store offset=32
              local.get 8
              local.get 3
              i32.const 32
              i32.add
              call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h7950a243bbf164daE
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
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17he56374f214ca9d1fE
        local.set 9
        local.get 3
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17he56374f214ca9d1fE
        local.set 11
        local.get 3
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17he56374f214ca9d1fE
        local.set 12
        local.get 3
        i32.load offset=16
        local.get 3
        i32.load offset=12
        i32.ne
        br_if 1 (;@1;)
        block ;; label = @3
          local.get 3
          i32.const 28
          i32.add
          i32.load8_u
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.const 0
          i32.store offset=141540
          i32.const 0
          i32.const 0
          i32.store8 offset=141544
        end
        local.get 0
        local.get 12
        i32.store offset=40
        local.get 0
        local.get 11
        i32.store offset=36
        local.get 0
        local.get 9
        i32.store offset=32
        local.get 0
        local.get 4
        i32.store8 offset=28
        local.get 0
        local.get 1
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
        local.get 8
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
      i32.const 131072
      i32.const 13
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h1d581669fc32dbdaE
      unreachable
    end
    i32.const 131232
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h1d581669fc32dbdaE
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8get_info17h24315d591360ad12E (;112;) (type 6) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$14build_name_key17h3936d687d456a9c3E
          local.tee 1
          call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$23load_len_managed_buffer17hbae1def951416c2eE
          br_if 0 (;@3;)
          i32.const 0
          local.set 1
          i32.const 0
          local.set 3
          i32.const 0
          local.set 4
          i32.const 0
          local.set 5
          br 1 (;@2;)
        end
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h55b34acaa57bdb0eE
        local.get 2
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17he56374f214ca9d1fE
        local.set 1
        local.get 2
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17he56374f214ca9d1fE
        local.set 3
        local.get 2
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17he56374f214ca9d1fE
        local.set 4
        local.get 2
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17he56374f214ca9d1fE
        local.set 5
        local.get 2
        i32.load offset=16
        local.get 2
        i32.load offset=12
        i32.ne
        br_if 1 (;@1;)
        local.get 2
        i32.const 28
        i32.add
        i32.load8_u
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        i32.store offset=141540
        i32.const 0
        i32.const 0
        i32.store8 offset=141544
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
      local.get 1
      i32.store
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131232
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h1d581669fc32dbdaE
    unreachable
  )
  (func $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h55b34acaa57bdb0eE (;113;) (type 6) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h63a22c3649ca2e71E
    local.tee 2
    call $mBufferGetLength
    local.set 1
    local.get 0
    i32.const 16
    i32.add
    i32.const 0
    i32.store8
    local.get 0
    i32.const 12
    i32.add
    local.get 1
    i32.store
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h0c7d6a285ffff588E (;114;) (type 7) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 0
    i32.store8 offset=15
    local.get 0
    local.get 1
    i32.const 15
    i32.add
    i32.const 1
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h5fc68d0984af62cfE
    local.get 1
    i32.load8_u offset=15
    local.set 0
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h8a3f5b56f79f09daE (;115;) (type 8) (param i32) (result i64)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i64.const 0
    i64.store offset=8
    local.get 0
    local.get 1
    i32.const 8
    i32.add
    i32.const 8
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h5fc68d0984af62cfE
    local.get 1
    i32.const 8
    i32.add
    i32.const 8
    call $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
  )
  (func $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h5659d442a8246516E (;116;) (type 7) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h601c8beccce0bd1cE
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    call $mBufferToBigIntUnsigned
    drop
    local.get 0
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_info17haafdf951281fff3eE (;117;) (type 6) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$14build_name_key17h3936d687d456a9c3E
    local.set 0
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h439067a59505abc7E
        local.get 2
        local.get 2
        i32.load8_u offset=4
        i32.store8 offset=12
        local.get 2
        local.get 2
        i32.load
        i32.store offset=8
        local.get 3
        local.get 2
        i32.const 8
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h187bd25eb4cf17e3E
        local.get 1
        i32.load offset=4
        local.get 2
        i32.const 8
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h187bd25eb4cf17e3E
        local.get 1
        i32.load offset=8
        local.get 2
        i32.const 8
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h187bd25eb4cf17e3E
        local.get 1
        i32.load offset=12
        local.get 2
        i32.const 8
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h187bd25eb4cf17e3E
        local.get 0
        local.get 2
        i32.load offset=8
        local.get 2
        i32.load8_u offset=12
        call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h207b628c242b6396E
        br 1 (;@1;)
      end
      local.get 0
      i32.const 131520
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h37d420e054622745E
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h187bd25eb4cf17e3E (;118;) (type 6) (param i32 i32)
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
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17ha26a73c048655e2fE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h37d420e054622745E (;119;) (type 6) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h17eb045a1ad4e3c4E
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17h4da02dfdd3bf140cE (;120;) (type 1) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$23build_node_id_named_key17h28f1797a3bfb51ecE
    local.set 1
    local.get 3
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h439067a59505abc7E
    local.get 3
    local.get 3
    i32.load8_u offset=4
    i32.store8 offset=12
    local.get 3
    local.get 3
    i32.load
    i32.store offset=8
    local.get 2
    i32.load8_u offset=28
    local.get 3
    i32.const 8
    i32.add
    call $_ZN102_$LT$forwarder_queue..QueuedCallType$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h5e982018252b6cfeE
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    i32.load offset=16
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$16push_specialized17h195e8e3e85c5bde7E
    local.get 2
    i64.load offset=8
    local.get 3
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17he7db08c647466324E
    local.get 2
    i32.load offset=20
    local.get 3
    i32.const 8
    i32.add
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he0f585ad80e618d6E
    local.get 2
    i32.const 24
    i32.add
    local.get 3
    i32.const 8
    i32.add
    call $_ZN149_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he897f2b2b3183947E
    local.get 2
    local.get 3
    i32.const 8
    i32.add
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_multi_dcdt_payment..RewaOrMultiDcdtPayment$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h2344ca818c52fcbeE
    local.get 2
    i32.load offset=32
    local.get 3
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h187bd25eb4cf17e3E
    local.get 2
    i32.load offset=36
    local.get 3
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h187bd25eb4cf17e3E
    local.get 2
    i32.load offset=40
    local.get 3
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h187bd25eb4cf17e3E
    local.get 1
    local.get 3
    i32.load offset=8
    local.get 3
    i32.load8_u offset=12
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h207b628c242b6396E
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$16push_specialized17h195e8e3e85c5bde7E (;121;) (type 6) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load8_u offset=4
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h3246b61acf9e65f6E
          local.set 3
          i32.const 10000
          i32.const 0
          i32.load offset=141540
          local.tee 4
          i32.sub
          local.get 3
          i32.lt_u
          br_if 1 (;@2;)
          local.get 2
          i32.const 8
          i32.add
          local.get 4
          local.get 4
          local.get 3
          i32.add
          local.tee 0
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hd6ee38b85368ac2eE
          local.get 1
          i32.const 0
          local.get 2
          i32.load offset=8
          local.get 2
          i32.load offset=12
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h35505a2067aac40cE
          drop
          i32.const 0
          local.get 0
          i32.store offset=141540
          br 2 (;@1;)
        end
        local.get 0
        i32.load
        local.get 1
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h413cf6baf72e08dcE
        br 1 (;@1;)
      end
      local.get 0
      call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17he068006a4844b875E
      local.get 0
      i32.load
      local.get 1
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h413cf6baf72e08dcE
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17he7db08c647466324E (;122;) (type 21) (param i64 i32)
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
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17ha26a73c048655e2fE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he0f585ad80e618d6E (;123;) (type 6) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h3246b61acf9e65f6E
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
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17ha26a73c048655e2fE
    local.get 1
    local.get 0
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$16push_specialized17h195e8e3e85c5bde7E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_multi_dcdt_payment..RewaOrMultiDcdtPayment$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h2344ca818c52fcbeE (;124;) (type 6) (param i32 i32)
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
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h3521939cf67681f7E
        local.get 3
        i32.load
        local.get 1
        call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h3c4c2c7134e02c67E
        br 1 (;@1;)
      end
      i32.const 1
      local.get 1
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h3521939cf67681f7E
      local.get 3
      i32.load
      local.tee 0
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h1e7db7a3b7594ea7E
      local.get 1
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h71caca3acda47996E
      local.get 2
      local.get 0
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h3246b61acf9e65f6E
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he742eedc0a8be2c3E
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
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he0f585ad80e618d6E
        local.get 2
        i64.load offset=32
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17he7db08c647466324E
        local.get 0
        local.get 1
        call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h3c4c2c7134e02c67E
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$9push_back17h759a25dfdb4fc207E (;125;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8get_info17h24315d591360ad12E
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
      call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8get_node17hd95e79ff10243420E
      local.get 3
      local.get 4
      i32.store offset=52
      local.get 1
      local.get 6
      local.get 3
      i32.const 16
      i32.add
      call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17h4da02dfdd3bf140cE
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
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17h4da02dfdd3bf140cE
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
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_info17haafdf951281fff3eE
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
  (func $memcpy (;126;) (type 5) (param i32 i32 i32) (result i32)
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
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17h06cf6c4f228bd7fdE (;127;) (type 6) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hd2966d379d5ee5abE
    local.tee 2
    local.get 1
    i64.extend_i32_u
    i64.const 255
    i64.and
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h55cfeb8e32fbdc73E
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hce4067ade5beeb1eE
  )
  (func $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h55cfeb8e32fbdc73E (;128;) (type 0) (param i32 i64)
    (local i32 i32 i32)
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
    i64.const 65280
    i64.and
    local.get 1
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=8
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i64.eqz
        i32.eqz
        br_if 0 (;@2;)
        i32.const 131520
        local.set 3
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      i32.const 0
      local.set 4
      loop ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 4
            i32.const 8
            i32.eq
            br_if 0 (;@4;)
            local.get 2
            i32.const 8
            i32.add
            local.get 4
            i32.add
            local.tee 3
            i32.load8_u
            i32.eqz
            br_if 1 (;@3;)
            i32.const 8
            local.get 4
            i32.sub
            local.set 4
            br 3 (;@1;)
          end
          call $_ZN4core9panicking18panic_bounds_check17hdbf723dd9cf95e6aE
          unreachable
        end
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 3
    local.get 4
    call $mBufferSetBytes
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17ha474115468702873E (;129;) (type 6) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h3246b61acf9e65f6E
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h995acf87a98a4338E
        local.get 2
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 2
        i32.load offset=12
        call $_ZN11dharitri_sc8log_util21serialize_event_topic17h3209d79a15ec2486E
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17hab882609b43404d2E (;130;) (type 6) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hbc9cea5f42a4d930E
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hbc9cea5f42a4d930E (;131;) (type 6) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hd2966d379d5ee5abE
    drop
    local.get 0
    local.get 1
    i32.load
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha4ed5a73a393a9dfE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hce4067ade5beeb1eE
  )
  (func $_ZN11dharitri_sc8log_util23event_topic_accumulator17h608489916caa342dE (;132;) (type 3) (param i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hd2966d379d5ee5abE
    local.tee 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h17eb045a1ad4e3c4E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hce4067ade5beeb1eE
    local.get 2
  )
  (func $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h3c4c2c7134e02c67E (;133;) (type 6) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17hf67a69a8a00fc4a2E
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he0f585ad80e618d6E
  )
  (func $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..into_multi_value..IntoMultiValue$GT$16into_multi_value17h3599d2376e4cd04dE (;134;) (type 7) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hd2966d379d5ee5abE
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
      call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he742eedc0a8be2c3E
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
      call $_ZN11dharitri_sc8log_util21serialize_event_topic17h3209d79a15ec2486E
      local.get 2
      local.get 1
      i64.load offset=32
      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h17feaa779103b958E
      local.get 2
      local.get 0
      call $_ZN11dharitri_sc8log_util21serialize_event_topic17h0020c58ddf8d98c7E
      br 0 (;@1;)
    end
  )
  (func $_ZN15forwarder_queue14ForwarderQueue15add_queued_call17hbc98f775cbcc6803E (;135;) (type 22) (param i32 i32 i64 i32 i32)
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
        i32.load8_u offset=141556
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
      i32.store8 offset=141556
      i32.const -21
      call $managedGetMultiDCDTCallValue
    end
    local.get 5
    local.get 1
    i32.store offset=16
    block ;; label = @1
      block ;; label = @2
        local.get 1
        call $mBufferGetLength
        br_if 0 (;@2;)
        i32.const -11
        local.set 1
        block ;; label = @3
          block ;; label = @4
            i32.const 0
            i32.load8_u offset=141552
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
          i32.store8 offset=141552
          i32.const -11
          call $bigIntGetCallValue
        end
        local.get 5
        local.get 1
        call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hfe0346952556828aE
        local.tee 6
        i32.store offset=12
        local.get 5
        i32.const 0
        i32.store offset=8
        i32.const 131436
        i32.const 20
        call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h608489916caa342dE
        local.tee 1
        local.get 0
        call $_ZN11dharitri_sc8log_util21serialize_event_topic17h06cf6c4f228bd7fdE
        local.get 1
        local.get 5
        i32.const 4
        i32.add
        call $_ZN11dharitri_sc8log_util21serialize_event_topic17hab882609b43404d2E
        local.get 1
        local.get 3
        call $_ZN11dharitri_sc8log_util21serialize_event_topic17h3209d79a15ec2486E
        local.get 1
        local.get 6
        call $_ZN11dharitri_sc8log_util21serialize_event_topic17h0020c58ddf8d98c7E
        local.get 1
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hd2966d379d5ee5abE
        call $managedWriteLog
        br 1 (;@1;)
      end
      local.get 5
      local.get 5
      i32.const 16
      i32.add
      call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h623c0e3995294b4aE
      i32.store offset=12
      local.get 5
      i32.const 1
      i32.store offset=8
      local.get 5
      local.get 5
      i32.const 12
      i32.add
      call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h623c0e3995294b4aE
      call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..into_multi_value..IntoMultiValue$GT$16into_multi_value17h3599d2376e4cd04dE
      i32.store offset=16
      i32.const 131416
      i32.const 20
      call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h608489916caa342dE
      local.tee 1
      local.get 0
      call $_ZN11dharitri_sc8log_util21serialize_event_topic17h06cf6c4f228bd7fdE
      local.get 1
      local.get 5
      i32.const 4
      i32.add
      call $_ZN11dharitri_sc8log_util21serialize_event_topic17hab882609b43404d2E
      local.get 1
      local.get 3
      call $_ZN11dharitri_sc8log_util21serialize_event_topic17h3209d79a15ec2486E
      local.get 1
      local.get 5
      i32.const 16
      i32.add
      call $_ZN11dharitri_sc8log_util21serialize_event_topic17ha474115468702873E
      local.get 1
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hd2966d379d5ee5abE
      call $managedWriteLog
    end
    call $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$12queued_calls17h074231cc2d8ed972E
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
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$9push_back17h759a25dfdb4fc207E
    local.get 5
    i32.const 96
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$12queued_calls17h074231cc2d8ed972E (;136;) (type 2) (result i32)
    i32.const 131373
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h17eb045a1ad4e3c4E
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h5fc68d0984af62cfE (;137;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 4
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 0
            i32.const 16
            i32.add
            i32.load8_u
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=8
            local.tee 5
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h3246b61acf9e65f6E
            local.tee 6
            i32.const 10000
            i32.gt_u
            br_if 1 (;@3;)
            i32.const 0
            i32.load8_u offset=141544
            i32.const 255
            i32.and
            br_if 1 (;@3;)
            i32.const 0
            local.get 6
            i32.store offset=141540
            i32.const 0
            i32.const 1
            i32.store8 offset=141544
            local.get 3
            i32.const 8
            i32.add
            local.get 6
            call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hd8ab64c93e334085E
            local.get 5
            i32.const 0
            local.get 3
            i32.load offset=8
            local.get 3
            i32.load offset=12
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h35505a2067aac40cE
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
          i32.load offset=141540
          i32.gt_u
          br_if 2 (;@1;)
          local.get 3
          local.get 4
          local.get 5
          call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h95dd1a03576b7dfcE
          local.get 1
          local.get 2
          local.get 3
          i32.load
          local.get 3
          i32.load offset=4
          call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
          br 1 (;@2;)
        end
        local.get 0
        i32.const 0
        i32.store8 offset=16
        local.get 5
        local.get 4
        local.get 1
        local.get 2
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h35505a2067aac40cE
        br_if 1 (;@1;)
        local.get 4
        local.get 2
        i32.add
        local.set 5
      end
      local.get 0
      local.get 5
      i32.store
      local.get 3
      i32.const 16
      i32.add
      global.set $__stack_pointer
      return
    end
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h29012e12a9925360E
    unreachable
  )
  (func $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E (;138;) (type 20) (param i32 i32) (result i64)
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
  (func $_ZN4core9panicking18panic_bounds_check17hdbf723dd9cf95e6aE (;139;) (type 12)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (func $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hd6ee38b85368ac2eE (;140;) (type 1) (param i32 i32 i32)
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
    local.get 2
    i32.const 131540
    i32.const 10000
    call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h9d37bd2321fe57ddE
    local.get 3
    i32.load offset=12
    local.set 2
    local.get 0
    local.get 3
    i32.load offset=8
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h29012e12a9925360E (;141;) (type 12)
    i32.const 131246
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h1d581669fc32dbdaE
    unreachable
  )
  (func $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h0edaeaa6dc6c58d2E (;142;) (type 16) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 8
    i32.add
    i32.const 0
    local.get 3
    local.get 1
    local.get 2
    call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h9d37bd2321fe57ddE
    local.get 4
    i32.load offset=12
    local.set 2
    local.get 0
    local.get 4
    i32.load offset=8
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN4core6option15Option$LT$T$GT$6unwrap17h7cfeabf589f81215E (;143;) (type 6) (param i32 i32)
    block ;; label = @1
      local.get 1
      i32.load
      i32.const 2
      i32.ne
      br_if 0 (;@1;)
      call $_ZN4core9panicking18panic_bounds_check17hdbf723dd9cf95e6aE
      unreachable
    end
    local.get 0
    local.get 1
    i32.const 48
    call $memcpy
    drop
  )
  (func $rust_begin_unwind (;144;) (type 12)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE (;145;) (type 12)
    i32.const 131520
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;146;) (type 12)
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h3ff82d9d17ad1983E
  )
  (func $queued_calls (;147;) (type 12)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 224
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h3ff82d9d17ad1983E
    local.get 0
    call $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$12queued_calls17h074231cc2d8ed972E
    local.tee 1
    i32.store offset=12
    local.get 0
    i32.const 72
    i32.add
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8get_info17h24315d591360ad12E
    local.get 0
    i32.const 16
    i32.add
    local.get 1
    local.get 0
    i32.load offset=76
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$14get_node_by_id17hb6427e1c1285dad5E
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
    i32.const 16
    i32.add
    i32.const 24
    i32.add
    local.set 2
    local.get 0
    i32.const 16
    i32.add
    i32.const 4
    i32.or
    local.set 1
    local.get 0
    i32.const 176
    i32.add
    i32.const 4
    i32.or
    local.set 3
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.load offset=72
        i32.const 2
        i32.eq
        br_if 1 (;@1;)
        local.get 0
        i32.const 16
        i32.add
        local.get 0
        i32.const 72
        i32.add
        call $_ZN113_$LT$dharitri_sc..storage..mappers..linked_list_mapper..LinkedListNode$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h281a27038ca84190E
        local.get 0
        i32.const 176
        i32.add
        local.get 0
        i32.const 16
        i32.add
        call $_ZN4core6option15Option$LT$T$GT$6unwrap17h7cfeabf589f81215E
        local.get 0
        i32.const 16
        i32.add
        local.get 0
        i32.load offset=120
        i32.load
        local.get 0
        i32.load offset=212
        call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$14get_node_by_id17hb6427e1c1285dad5E
        local.get 0
        i32.const 72
        i32.add
        local.get 0
        i32.const 16
        i32.add
        i32.const 48
        call $memcpy
        drop
        local.get 0
        i32.load offset=176
        local.set 4
        local.get 0
        i32.const 132
        i32.add
        local.get 3
        i32.const 44
        call $memcpy
        drop
        local.get 4
        i32.const 2
        i32.eq
        br_if 1 (;@1;)
        local.get 1
        local.get 0
        i64.load offset=132 align=4
        i64.store align=4
        local.get 1
        i32.const 8
        i32.add
        local.get 0
        i32.const 132
        i32.add
        i32.const 8
        i32.add
        i64.load align=4
        i64.store align=4
        local.get 1
        i32.const 16
        i32.add
        local.get 0
        i32.const 132
        i32.add
        i32.const 16
        i32.add
        i64.load align=4
        i64.store align=4
        local.get 1
        i32.const 24
        i32.add
        local.get 0
        i32.const 132
        i32.add
        i32.const 24
        i32.add
        i32.load
        i32.store
        local.get 0
        local.get 4
        i32.store offset=16
        local.get 0
        call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$14new_from_slice17h3f644d3e695b1a7dE
        local.get 0
        local.get 0
        i32.load
        i32.store offset=176
        local.get 0
        local.get 0
        i32.load8_u offset=4
        i32.const 1
        i32.and
        i32.store8 offset=180
        local.get 0
        i32.load8_u offset=44
        local.get 0
        i32.const 176
        i32.add
        call $_ZN102_$LT$forwarder_queue..QueuedCallType$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h5e982018252b6cfeE
        local.get 0
        i32.const 176
        i32.add
        local.get 0
        i32.load offset=32
        call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$16push_specialized17h195e8e3e85c5bde7E
        local.get 0
        i64.load offset=24
        local.get 0
        i32.const 176
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17he7db08c647466324E
        local.get 0
        i32.load offset=36
        local.get 0
        i32.const 176
        i32.add
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he0f585ad80e618d6E
        local.get 2
        local.get 0
        i32.const 176
        i32.add
        call $_ZN149_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he897f2b2b3183947E
        local.get 0
        i32.const 16
        i32.add
        local.get 0
        i32.const 176
        i32.add
        call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_multi_dcdt_payment..RewaOrMultiDcdtPayment$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h2344ca818c52fcbeE
        local.get 0
        i32.load offset=176
        local.get 0
        i32.load8_u offset=180
        call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$19into_managed_buffer17h4dd49c85cdf09a7cE
        call $mBufferFinish
        drop
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 224
    i32.add
    global.set $__stack_pointer
  )
  (func $add_queued_call_sync (;148;) (type 12)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    call $getNumArguments
    i32.store offset=141548
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h9468772604fa8f30E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4b250bc274286bf4E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9f224bea12b7573dE
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hb5a7457de7f5d565E
    local.set 3
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hdbadae8dc708b7c8E
    i32.const 0
    local.get 1
    i64.const 0
    local.get 2
    local.get 3
    call $_ZN15forwarder_queue14ForwarderQueue15add_queued_call17hbc98f775cbcc6803E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $add_queued_call_legacy_async (;149;) (type 12)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    call $getNumArguments
    i32.store offset=141548
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h9468772604fa8f30E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4b250bc274286bf4E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9f224bea12b7573dE
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hb5a7457de7f5d565E
    local.set 3
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hdbadae8dc708b7c8E
    i32.const 1
    local.get 1
    i64.const 0
    local.get 2
    local.get 3
    call $_ZN15forwarder_queue14ForwarderQueue15add_queued_call17hbc98f775cbcc6803E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $add_queued_call_transfer_execute (;150;) (type 12)
    (local i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    call $getNumArguments
    i32.store offset=141548
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h9468772604fa8f30E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4b250bc274286bf4E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hf9cbeb54d46e7827E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9f224bea12b7573dE
    local.set 3
    local.get 0
    i32.const 3
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hb5a7457de7f5d565E
    local.set 4
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hdbadae8dc708b7c8E
    i32.const 2
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_ZN15forwarder_queue14ForwarderQueue15add_queued_call17hbc98f775cbcc6803E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $add_queued_call_transfer_dcdt (;151;) (type 12)
    (local i32 i32 i64 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    call $getNumArguments
    i32.store offset=141548
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h9468772604fa8f30E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4b250bc274286bf4E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hf9cbeb54d46e7827E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9f224bea12b7573dE
    local.set 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h6f542adfbf65543bE
    local.set 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h3b465eabfed004e0E
    local.set 5
    local.get 0
    i32.const 5
    i32.store
    local.get 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hb5a7457de7f5d565E
    local.set 6
    local.get 0
    i32.load
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hdbadae8dc708b7c8E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hd2966d379d5ee5abE
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
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h7950a243bbf164daE
    call $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$12queued_calls17h074231cc2d8ed972E
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
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$9push_back17h759a25dfdb4fc207E
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $add_queued_call_promise (;152;) (type 12)
    (local i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    call $getNumArguments
    i32.store offset=141548
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h9468772604fa8f30E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4b250bc274286bf4E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hf9cbeb54d46e7827E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9f224bea12b7573dE
    local.set 3
    local.get 0
    i32.const 3
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hb5a7457de7f5d565E
    local.set 4
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hdbadae8dc708b7c8E
    i32.const 3
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_ZN15forwarder_queue14ForwarderQueue15add_queued_call17hbc98f775cbcc6803E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $add_queued_call (;153;) (type 12)
    (local i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    call $getNumArguments
    i32.store offset=141548
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h9468772604fa8f30E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h76718b01af2e379cE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4b250bc274286bf4E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hf9cbeb54d46e7827E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h9f224bea12b7573dE
    local.set 4
    local.get 0
    i32.const 4
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hb5a7457de7f5d565E
    local.set 5
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hdbadae8dc708b7c8E
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    call $_ZN15forwarder_queue14ForwarderQueue15add_queued_call17hbc98f775cbcc6803E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_queued_calls (;154;) (type 12)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 256
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h3ff82d9d17ad1983E
    local.get 0
    i32.const 120
    i32.add
    i32.const 8
    i32.add
    local.set 1
    local.get 0
    i32.const 120
    i32.add
    i32.const 16
    i32.add
    local.set 2
    local.get 0
    i32.const 88
    i32.add
    i32.const 16
    i32.add
    local.set 3
    local.get 0
    i32.const 88
    i32.add
    i32.const 8
    i32.add
    local.set 4
    local.get 0
    i32.const 56
    i32.add
    i32.const 4
    i32.or
    local.set 5
    local.get 0
    i32.const 56
    i32.add
    i32.const 16
    i32.add
    local.set 6
    local.get 0
    i32.const 152
    i32.add
    i32.const 4
    i32.or
    local.set 7
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 56
        i32.add
        call $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$12queued_calls17h074231cc2d8ed972E
        local.tee 8
        call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8get_info17h24315d591360ad12E
        local.get 8
        local.get 0
        i32.load offset=60
        local.tee 9
        call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$13is_empty_node17h7d39284823dd918bE
        br_if 1 (;@1;)
        local.get 0
        i32.const 200
        i32.add
        local.get 8
        local.get 9
        call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$14get_node_by_id17hb6427e1c1285dad5E
        local.get 0
        i32.const 152
        i32.add
        local.get 0
        i32.const 200
        i32.add
        call $_ZN4core6option15Option$LT$T$GT$6unwrap17h7cfeabf589f81215E
        block ;; label = @3
          local.get 8
          local.get 0
          i32.load offset=184
          local.tee 10
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$13is_empty_node17h7d39284823dd918bE
          br_if 0 (;@3;)
          local.get 0
          i32.const 120
          i32.add
          local.get 8
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8get_info17h24315d591360ad12E
          block ;; label = @4
            block ;; label = @5
              local.get 0
              i32.load offset=192
              local.tee 11
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              i32.const 200
              i32.add
              local.get 8
              local.get 11
              call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8get_node17hd95e79ff10243420E
              local.get 0
              local.get 0
              i32.load offset=188
              local.tee 9
              i32.store offset=236
              local.get 8
              local.get 11
              local.get 0
              i32.const 200
              i32.add
              call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17h4da02dfdd3bf140cE
              br 1 (;@4;)
            end
            local.get 0
            local.get 0
            i32.load offset=188
            local.tee 9
            i32.store offset=124
          end
          block ;; label = @4
            block ;; label = @5
              local.get 9
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              i32.const 200
              i32.add
              local.get 8
              local.get 9
              call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8get_node17hd95e79ff10243420E
              local.get 0
              local.get 11
              i32.store offset=240
              local.get 8
              local.get 9
              local.get 0
              i32.const 200
              i32.add
              call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17h4da02dfdd3bf140cE
              br 1 (;@4;)
            end
            local.get 0
            local.get 11
            i32.store offset=128
          end
          local.get 8
          local.get 10
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$23build_node_id_named_key17h28f1797a3bfb51ecE
          i32.const 1
          call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h37d420e054622745E
          local.get 0
          local.get 0
          i32.load offset=120
          i32.const -1
          i32.add
          i32.store offset=120
          local.get 8
          local.get 0
          i32.const 120
          i32.add
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_info17haafdf951281fff3eE
        end
        local.get 0
        i32.load offset=152
        local.set 8
        local.get 0
        i32.const 12
        i32.add
        local.get 7
        i32.const 44
        call $memcpy
        drop
        local.get 8
        i32.const 2
        i32.eq
        br_if 1 (;@1;)
        local.get 0
        local.get 8
        i32.store offset=152
        local.get 7
        local.get 0
        i32.const 12
        i32.add
        i32.const 44
        call $memcpy
        drop
        local.get 0
        i32.const 200
        i32.add
        local.get 0
        i32.const 152
        i32.add
        call $_ZN113_$LT$dharitri_sc..storage..mappers..linked_list_mapper..LinkedListNode$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h281a27038ca84190E
        local.get 0
        i32.const 56
        i32.add
        i32.const 24
        i32.add
        local.get 0
        i32.const 200
        i32.add
        i32.const 24
        i32.add
        i64.load
        i64.store
        local.get 6
        local.get 0
        i32.const 200
        i32.add
        i32.const 16
        i32.add
        i64.load
        i64.store
        local.get 0
        i32.const 56
        i32.add
        i32.const 8
        i32.add
        local.get 0
        i32.const 200
        i32.add
        i32.const 8
        i32.add
        i64.load
        i64.store
        local.get 0
        local.get 0
        i64.load offset=200
        local.tee 12
        i64.store offset=56
        block ;; label = @3
          block ;; label = @4
            local.get 12
            i32.wrap_i64
            br_if 0 (;@4;)
            i32.const 131480
            i32.const 24
            call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h608489916caa342dE
            local.tee 8
            local.get 0
            i32.load8_u offset=84
            call $_ZN11dharitri_sc8log_util21serialize_event_topic17h06cf6c4f228bd7fdE
            local.get 8
            local.get 6
            call $_ZN11dharitri_sc8log_util21serialize_event_topic17hab882609b43404d2E
            local.get 8
            local.get 0
            i32.load offset=76
            call $_ZN11dharitri_sc8log_util21serialize_event_topic17h3209d79a15ec2486E
            local.get 8
            local.get 0
            i32.load offset=60
            call $_ZN11dharitri_sc8log_util21serialize_event_topic17h0020c58ddf8d98c7E
            local.get 8
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hd2966d379d5ee5abE
            call $managedWriteLog
            br 1 (;@3;)
          end
          local.get 0
          local.get 5
          call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h623c0e3995294b4aE
          call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..into_multi_value..IntoMultiValue$GT$16into_multi_value17h3599d2376e4cd04dE
          i32.store offset=200
          i32.const 131456
          i32.const 24
          call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h608489916caa342dE
          local.tee 8
          local.get 0
          i32.load8_u offset=84
          call $_ZN11dharitri_sc8log_util21serialize_event_topic17h06cf6c4f228bd7fdE
          local.get 8
          local.get 6
          call $_ZN11dharitri_sc8log_util21serialize_event_topic17hab882609b43404d2E
          local.get 8
          local.get 0
          i32.load offset=76
          call $_ZN11dharitri_sc8log_util21serialize_event_topic17h3209d79a15ec2486E
          local.get 8
          local.get 0
          i32.const 200
          i32.add
          call $_ZN11dharitri_sc8log_util21serialize_event_topic17ha474115468702873E
          local.get 8
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hd2966d379d5ee5abE
          call $managedWriteLog
        end
        local.get 0
        i32.load offset=56
        local.set 9
        local.get 0
        i32.load offset=60
        local.set 8
        local.get 0
        i32.load offset=76
        local.set 11
        local.get 0
        i32.load offset=72
        local.set 10
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hd2966d379d5ee5abE
        local.set 13
        local.get 0
        local.get 10
        i32.store offset=112
        local.get 0
        i64.const -1
        i64.store offset=104
        local.get 0
        local.get 13
        i32.store offset=100
        local.get 0
        local.get 11
        i32.store offset=96
        local.get 0
        local.get 8
        i32.store offset=92
        local.get 0
        local.get 9
        i32.store offset=88
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                local.get 0
                i32.load8_u offset=84
                br_table 0 (;@6;) 1 (;@5;) 2 (;@4;) 3 (;@3;) 0 (;@6;)
              end
              local.get 0
              i32.const 200
              i32.add
              local.get 0
              i32.const 88
              i32.add
              call $_ZN215_$LT$dharitri_sc..types..interaction..contract_call_with_any_payment..ContractCallWithAnyPayment$LT$SA$C$OriginalResult$GT$$u20$as$u20$dharitri_sc..types..interaction..contract_call_trait..ContractCall$LT$SA$GT$$GT$15into_normalized17h62aee48d31f6e2f4E
              block ;; label = @6
                local.get 0
                i64.load offset=208
                local.tee 12
                i64.const -1
                i64.ne
                br_if 0 (;@6;)
                call $getGasLeft
                local.set 12
              end
              call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
              local.set 8
              local.get 12
              local.get 0
              i32.load offset=216
              local.get 0
              i32.load offset=224
              local.get 0
              i32.load offset=200
              local.get 0
              i32.load offset=204
              local.get 8
              call $managedExecuteOnDestContext
              drop
              call $cleanReturnData
              local.get 8
              call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h493bb8bc48232fb0E
              drop
              br 3 (;@2;)
            end
            local.get 0
            i32.const 200
            i32.add
            local.get 0
            i32.const 88
            i32.add
            call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall10async_call17h761d6afb8e82f4baE
            local.get 0
            i32.const 200
            i32.add
            call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17h7944d451723cc513E
            unreachable
          end
          local.get 0
          local.get 0
          i64.load offset=64
          local.tee 12
          i64.store offset=104
          block ;; label = @4
            local.get 9
            br_if 0 (;@4;)
            local.get 4
            local.get 8
            call $_ZN11dharitri_sc5types11interaction18contract_call_exec125_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_no_payment..ContractCallNoPayment$LT$SA$C$OriginalResult$GT$$GT$21transfer_execute_rewa17h1621ab8f8ddc5a21E
            br 2 (;@2;)
          end
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                local.get 8
                call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h1e7db7a3b7594ea7E
                br_table 1 (;@5;) 2 (;@4;) 0 (;@6;)
              end
              local.get 10
              local.get 8
              local.get 12
              call $_ZN11dharitri_sc5types11interaction18contract_call_exec125_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_no_payment..ContractCallNoPayment$LT$SA$C$OriginalResult$GT$$GT$31resolve_gas_limit_with_leftover17h55a75a89937f3d5dE
              local.get 11
              local.get 13
              call $managedMultiTransferDCDTNFTExecute
              drop
              br 3 (;@2;)
            end
            local.get 4
            call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h4c76c98ccf0fadd3E
            call $_ZN11dharitri_sc5types11interaction18contract_call_exec125_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_no_payment..ContractCallNoPayment$LT$SA$C$OriginalResult$GT$$GT$21transfer_execute_rewa17h1621ab8f8ddc5a21E
            br 2 (;@2;)
          end
          local.get 0
          i32.const 120
          i32.add
          local.get 8
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h5112cd0a646e2b9eE
          local.get 12
          call $_ZN11dharitri_sc5types11interaction18contract_call_exec125_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_no_payment..ContractCallNoPayment$LT$SA$C$OriginalResult$GT$$GT$31resolve_gas_limit_with_leftover17h55a75a89937f3d5dE
          local.set 12
          local.get 0
          i64.load offset=120
          local.set 14
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hd2966d379d5ee5abE
          local.set 8
          local.get 0
          i32.load offset=128
          call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha4ed5a73a393a9dfE
          local.set 9
          local.get 0
          local.get 0
          i32.load offset=132
          call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hfe0346952556828aE
          i32.store offset=212
          local.get 0
          local.get 14
          i64.store offset=200
          local.get 0
          local.get 9
          i32.store offset=208
          local.get 8
          local.get 0
          i32.const 200
          i32.add
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h7950a243bbf164daE
          local.get 10
          local.get 8
          local.get 12
          local.get 11
          local.get 13
          call $managedMultiTransferDCDTNFTExecute
          drop
          br 1 (;@2;)
        end
        local.get 1
        local.get 4
        i32.load
        i32.store
        local.get 0
        local.get 0
        i64.load offset=64
        i64.store offset=104
        local.get 2
        local.get 3
        i64.load
        i64.store
        local.get 2
        i32.const 8
        i32.add
        local.get 3
        i32.const 8
        i32.add
        i64.load
        i64.store
        local.get 0
        local.get 0
        i64.load offset=88
        i64.store offset=120
        local.get 0
        local.get 0
        i32.load offset=80
        i32.store offset=132
        local.get 0
        i32.const 200
        i32.add
        local.get 0
        i32.const 120
        i32.add
        call $_ZN215_$LT$dharitri_sc..types..interaction..contract_call_with_any_payment..ContractCallWithAnyPayment$LT$SA$C$OriginalResult$GT$$u20$as$u20$dharitri_sc..types..interaction..contract_call_trait..ContractCall$LT$SA$GT$$GT$15into_normalized17h62aee48d31f6e2f4E
        local.get 0
        i64.load offset=208
        local.set 12
        local.get 0
        i32.load offset=204
        local.set 10
        local.get 0
        i32.load offset=200
        local.set 13
        local.get 0
        i32.load offset=224
        local.set 15
        local.get 0
        i32.load offset=216
        local.set 16
        local.get 0
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hd2966d379d5ee5abE
        i32.store offset=128
        local.get 0
        i32.const 24
        i32.store offset=124
        local.get 0
        i32.const 131338
        i32.store offset=120
        i32.const -25
        i32.const 131520
        i32.const 0
        call $mBufferSetBytes
        drop
        i32.const -25
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha4ed5a73a393a9dfE
        local.set 9
        local.get 0
        local.get 0
        i32.load offset=128
        call $mBufferGetLength
        i32.store offset=208
        local.get 0
        i32.const 0
        i32.store offset=204
        local.get 0
        local.get 1
        i32.store offset=200
        block ;; label = @3
          loop ;; label = @4
            local.get 0
            local.get 0
            i32.const 200
            i32.add
            call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h995acf87a98a4338E
            local.get 0
            i32.load
            i32.eqz
            br_if 1 (;@3;)
            local.get 0
            local.get 0
            i32.load offset=4
            local.tee 11
            call $mBufferGetLength
            local.tee 8
            i32.const 24
            i32.shl
            local.get 8
            i32.const 65280
            i32.and
            i32.const 8
            i32.shl
            i32.or
            local.get 8
            i32.const 8
            i32.shr_u
            i32.const 65280
            i32.and
            local.get 8
            i32.const 24
            i32.shr_u
            i32.or
            i32.or
            i32.store offset=252
            local.get 9
            local.get 0
            i32.const 252
            i32.add
            i32.const 4
            call $mBufferAppendBytes
            drop
            local.get 9
            local.get 11
            call $mBufferAppend
            drop
            br 0 (;@4;)
          end
        end
        local.get 16
        local.get 15
        local.get 13
        local.get 10
        i32.const 131338
        i32.const 24
        i32.const 131338
        i32.const 24
        local.get 12
        i64.const 0
        local.get 9
        call $managedCreateAsyncCall
        drop
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 256
    i32.add
    global.set $__stack_pointer
  )
  (func $callback_count (;155;) (type 12)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h3ff82d9d17ad1983E
    i32.const 131385
    i32.const 14
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h17eb045a1ad4e3c4E
    local.set 1
    local.get 0
    i64.const 0
    i64.store offset=8
    block ;; label = @1
      block ;; label = @2
        local.get 1
        call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h63a22c3649ca2e71E
        local.tee 1
        call $mBufferGetLength
        local.tee 2
        i32.const 9
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.get 0
        i32.const 8
        i32.add
        i32.const 8
        local.get 2
        call $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h0edaeaa6dc6c58d2E
        local.get 1
        i32.const 0
        local.get 0
        i32.load
        local.tee 2
        local.get 0
        i32.load offset=4
        local.tee 3
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h35505a2067aac40cE
        drop
        local.get 2
        local.get 3
        call $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E
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
      i32.const 131232
      i32.const 14
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h1d581669fc32dbdaE
      unreachable
    end
    i32.const 131232
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h1d581669fc32dbdaE
    unreachable
  )
  (func $callback_payments (;156;) (type 12)
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h3ff82d9d17ad1983E
    i32.const 131399
    i32.const 17
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h17eb045a1ad4e3c4E
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h63a22c3649ca2e71E
    call $mBufferFinish
    drop
  )
  (func $callBack (;157;) (type 12))
  (func $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E (;158;) (type 12)
    call $rust_begin_unwind
    unreachable
  )
  (table (;0;) 1 1 funcref)
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 141557)
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
  (data $.rodata (;0;) (i32.const 131072) "invalid value\00\01\02\03argument decode error (): too few argumentstoo many argumentswrong number of argumentsMultiDCDTNFTTransferDCDTNFTTransferDCDTTransferCB_CLOSUREinput too longinput too shortManagedVec index out of range.node.infostorage decode error: bad array lengthpromises_callback_methodtocall_typequeued_callscallback_countcallback_paymentsadd_queued_call_dcdtadd_queued_call_rewaforward_queued_call_dcdtforward_queued_call_rewa\0d\00\02\00\0e\00\02\00\0f\00\02\00\10\00\02\00panic occurred")
  (data $.data (;1;) (i32.const 131536) "\9c\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.76.0-nightly (d86d65bbc 2023-12-10)")
  )
)