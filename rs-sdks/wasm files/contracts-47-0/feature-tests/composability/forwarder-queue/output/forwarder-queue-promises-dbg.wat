(module
  (type (;0;) (func (param i32 i64)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (result i32)))
  (type (;3;) (func (param i32 i32) (result i32)))
  (type (;4;) (func (param i32)))
  (type (;5;) (func (param i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32) (result i64)))
  (type (;8;) (func (param i32 i32)))
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
  (type (;23;) (func (param i32 i64 i32)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;0;) (type 0)))
  (import "env" "bigIntAdd" (func $bigIntAdd (;1;) (type 1)))
  (import "env" "mBufferNew" (func $mBufferNew (;2;) (type 2)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;3;) (type 3)))
  (import "env" "managedSCAddress" (func $managedSCAddress (;4;) (type 4)))
  (import "env" "managedGetMultiDCDTCallValue" (func $managedGetMultiDCDTCallValue (;5;) (type 4)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;6;) (type 5)))
  (import "env" "bigIntGetCallValue" (func $bigIntGetCallValue (;7;) (type 4)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;8;) (type 3)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;9;) (type 6)))
  (import "env" "managedSignalError" (func $managedSignalError (;10;) (type 4)))
  (import "env" "getArgumentLength" (func $getArgumentLength (;11;) (type 5)))
  (import "env" "smallIntGetUnsignedArgument" (func $smallIntGetUnsignedArgument (;12;) (type 7)))
  (import "env" "bigIntGetUnsignedArgument" (func $bigIntGetUnsignedArgument (;13;) (type 8)))
  (import "env" "signalError" (func $signalError (;14;) (type 8)))
  (import "env" "getNumArguments" (func $getNumArguments (;15;) (type 2)))
  (import "env" "managedGetOriginalTxHash" (func $managedGetOriginalTxHash (;16;) (type 4)))
  (import "env" "managedTransferValueExecute" (func $managedTransferValueExecute (;17;) (type 9)))
  (import "env" "getGasLeft" (func $getGasLeft (;18;) (type 10)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;19;) (type 11)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;20;) (type 6)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;21;) (type 3)))
  (import "env" "mBufferCopyByteSlice" (func $mBufferCopyByteSlice (;22;) (type 11)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;23;) (type 3)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;24;) (type 3)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;25;) (type 3)))
  (import "env" "managedWriteLog" (func $managedWriteLog (;26;) (type 8)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;27;) (type 12)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;28;) (type 5)))
  (import "env" "managedExecuteOnDestContext" (func $managedExecuteOnDestContext (;29;) (type 13)))
  (import "env" "cleanReturnData" (func $cleanReturnData (;30;) (type 12)))
  (import "env" "managedMultiTransferDCDTNFTExecute" (func $managedMultiTransferDCDTNFTExecute (;31;) (type 9)))
  (import "env" "managedCreateAsyncCall" (func $managedCreateAsyncCall (;32;) (type 14)))
  (import "env" "smallIntFinishUnsigned" (func $smallIntFinishUnsigned (;33;) (type 15)))
  (import "env" "managedGetCallbackClosure" (func $managedGetCallbackClosure (;34;) (type 4)))
  (import "env" "managedBufferToHex" (func $managedBufferToHex (;35;) (type 8)))
  (import "env" "managedAsyncCall" (func $managedAsyncCall (;36;) (type 16)))
  (func $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17haccf7111bb3222c1E (;37;) (type 5) (param i32) (result i32)
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E (;38;) (type 2) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=131596
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=131596
    local.get 0
  )
  (func $_ZN102_$LT$forwarder_queue..QueuedCallType$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he260caf132d6820eE (;39;) (type 8) (param i32 i32)
    local.get 0
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    i32.const 131564
    i32.add
    i32.load
    i32.load8_u
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h20f56bbf4731d5f5E
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h20f56bbf4731d5f5E (;40;) (type 8) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$12append_bytes17h1fee6cdb9ee13441E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb6975b29d12f93cdE (;41;) (type 17) (param i32 i32 i32 i32 i32)
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
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE (;42;) (type 8) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (func $_ZN113_$LT$dharitri_sc..storage..mappers..linked_list_mapper..LinkedListNode$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h37ed8f8c22298f76E (;43;) (type 8) (param i32 i32)
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
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4a2f5aee78ebe281E
    local.set 4
    local.get 1
    i64.load offset=8
    local.set 5
    local.get 1
    i32.load offset=20
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4a2f5aee78ebe281E
    local.set 6
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h1ca18e891cb9f515E
    local.set 7
    local.get 2
    local.get 1
    i32.load offset=24
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1900377938575da4E
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
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_ref_iter..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9332ea0fbf88b14fE
        local.get 2
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 7
        local.get 2
        i32.load offset=12
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4a2f5aee78ebe281E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h902be845a520a12bE
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
        call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17haccf7111bb3222c1E
        local.set 8
        br 1 (;@1;)
      end
      i32.const 1
      local.set 9
      local.get 8
      call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he9ae5cc971fd0d18E
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
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4a2f5aee78ebe281E (;44;) (type 5) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h1ca18e891cb9f515E (;45;) (type 2) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    i32.const 131580
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1900377938575da4E (;46;) (type 5) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_ref_iter..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9332ea0fbf88b14fE (;47;) (type 8) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hd81460633a84061eE
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h902be845a520a12bE (;48;) (type 8) (param i32 i32)
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
  (func $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he9ae5cc971fd0d18E (;49;) (type 5) (param i32) (result i32)
    (local i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h1ca18e891cb9f515E
    local.set 2
    local.get 1
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1900377938575da4E
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
      call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93b555d1fa02e68E
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
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4a2f5aee78ebe281E
      local.set 4
      local.get 1
      local.get 0
      call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17haccf7111bb3222c1E
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
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h04c1bd25cba6349dE
      br 0 (;@1;)
    end
  )
  (func $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93b555d1fa02e68E (;50;) (type 8) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hd81460633a84061eE
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
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h3d3ce5a73d8f2809E
      local.set 4
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17hae97a0995d92c31eE
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
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h3d3ce5a73d8f2809E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h04c1bd25cba6349dE (;51;) (type 8) (param i32 i32)
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
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17hefbebfc700c22b70E (;52;) (type 16) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17hcba505d2f5fa12cbE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17hcba505d2f5fa12cbE (;53;) (type 16) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $managedAsyncCall
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17h20e57ade99134997E (;54;) (type 2) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    call $managedSCAddress
    local.get 0
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$11any_payment17hd9404da0e25e05c7E (;55;) (type 4) (param i32)
    (local i32 i32 i32 i32)
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
        i32.load8_u offset=141616
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
      i32.store8 offset=141616
      i32.const -21
      call $managedGetMultiDCDTCallValue
    end
    local.get 1
    local.get 2
    i32.store offset=12
    block ;; label = @1
      block ;; label = @2
        local.get 2
        call $mBufferGetLength
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 2
        local.get 1
        i32.const 12
        i32.add
        call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he9ae5cc971fd0d18E
        local.set 3
        br 1 (;@1;)
      end
      i32.const 0
      local.set 2
      i32.const -11
      local.set 3
      block ;; label = @2
        block ;; label = @3
          i32.const 0
          i32.load8_u offset=141612
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          i32.const -11
          i32.const 2147483647
          local.get 4
          select
          local.set 3
          br 1 (;@2;)
        end
        i32.const 0
        i32.const 1
        i32.store8 offset=141612
        i32.const -11
        call $bigIntGetCallValue
      end
      local.get 3
      call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17haccf7111bb3222c1E
      local.set 3
    end
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h00f31255e3395b5dE (;56;) (type 5) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h08966dc38d186507E (;57;) (type 16) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131089
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hbb48cccfd8fabbb2E
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hbb48cccfd8fabbb2E (;58;) (type 3) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h77482bbc181a16eaE (;59;) (type 5) (param i32) (result i32)
    (local i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h1ca18e891cb9f515E
    local.set 1
    local.get 0
    i32.load
    local.set 2
    block ;; label = @1
      loop ;; label = @2
        local.get 2
        i32.const 0
        i32.load offset=141608
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
        call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h00f31255e3395b5dE
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h902be845a520a12bE
        local.get 3
        local.set 2
        br 0 (;@2;)
      end
    end
    local.get 1
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h11cabc5208cc2e8eE (;60;) (type 5) (param i32) (result i32)
    block ;; label = @1
      local.get 0
      call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h00f31255e3395b5dE
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      i32.const 131420
      i32.const 2
      i32.const 131380
      i32.const 16
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h08966dc38d186507E
      unreachable
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h3ea813d47e5da579E (;61;) (type 2) (result i32)
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
      i32.const 131422
      i32.const 9
      i32.const 131258
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h08966dc38d186507E
      unreachable
    end
    i32.const 131422
    i32.const 9
    i32.const 131072
    i32.const 13
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h08966dc38d186507E
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbafae66ed5628449E (;62;) (type 2) (result i32)
    i32.const 3
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h00f31255e3395b5dE
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbcdbed9435e783e6E (;63;) (type 7) (param i32) (result i64)
    local.get 0
    call $smallIntGetUnsignedArgument
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc8658abe078e02f4E (;64;) (type 2) (result i32)
    (local i32)
    i32.const 4
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    call $bigIntGetUnsignedArgument
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd69fe4aa5be765d0E (;65;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h00f31255e3395b5dE
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h2ab953737ceb5f06E (;66;) (type 8) (param i32 i32)
    block ;; label = @1
      local.get 1
      local.get 0
      i32.lt_u
      br_if 0 (;@1;)
      return
    end
    i32.const 131132
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h35ab954780167c69E (;67;) (type 4) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=141608
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h36afac57fbf215f8E (;68;) (type 12)
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h3aedf5182b9a53f7E (;69;) (type 4) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=141608
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
  (func $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h5cefca9ebc88565cE (;70;) (type 8) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h043019494e828427E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h043019494e828427E (;71;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1900377938575da4E
    i32.const 2
    i32.shr_u
  )
  (func $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17haf38ae5a76752e2eE (;72;) (type 4) (param i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hbb48cccfd8fabbb2E
      local.tee 4
      local.get 3
      call $mBufferAppend
      drop
      local.get 1
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h7a521613bd1784c4E
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
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h86e891ed83f9126cE
      local.get 1
      i32.const 8
      i32.add
      local.get 2
      local.get 3
      call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$12append_bytes17h1fee6cdb9ee13441E
      local.get 0
      i32.const 24
      i32.add
      local.get 1
      i32.const 8
      i32.add
      call $_ZN149_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hd6263ac0672ee44bE
      local.get 4
      local.get 1
      i32.load offset=8
      local.get 1
      i32.load8_u offset=12
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h048ef4d38678661fE
    end
    local.get 0
    call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$29call_and_exit_ignore_callback17hab357152ed4709e3E
    unreachable
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h7a521613bd1784c4E (;73;) (type 4) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$14new_from_slice17hfa907b1a036b21c0E
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h86e891ed83f9126cE (;74;) (type 8) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17hc03da1a1c2238591E
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$12append_bytes17h1fee6cdb9ee13441E (;75;) (type 1) (param i32 i32 i32)
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
          i32.load offset=141600
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
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hb3846d02ab37744bE
          local.get 3
          i32.load offset=8
          local.get 3
          i32.load offset=12
          local.get 1
          local.get 2
          call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
          i32.const 0
          local.get 0
          i32.store offset=141600
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
      call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h7ad32a28477f1899E
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
  (func $_ZN149_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hd6263ac0672ee44bE (;76;) (type 8) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.tee 3
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h043019494e828427E
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h86e891ed83f9126cE
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1900377938575da4E
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
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_ref_iter..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9332ea0fbf88b14fE
        local.get 2
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=12
        local.get 1
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h2121bf10fde48836E
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h048ef4d38678661fE (;77;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$19into_managed_buffer17h815c38b1d9f7fc1fE
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$29call_and_exit_ignore_callback17hab357152ed4709e3E (;78;) (type 4) (param i32)
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17hefbebfc700c22b70E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$3new17he145525410dbab98E (;79;) (type 1) (param i32 i32 i32)
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hbb48cccfd8fabbb2E
    local.set 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h1ca18e891cb9f515E
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h561226f1372f065fE (;80;) (type 18) (param i32 i32 i32 i64)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17habd1116dde88ded2E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17habd1116dde88ded2E (;81;) (type 0) (param i32 i64)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h1ca18e891cb9f515E
    local.tee 2
    local.get 1
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417hd7575fcafb09bdf4E
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h902be845a520a12bE
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h616f1cfa323a8fd2E (;82;) (type 16) (param i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block ;; label = @1
      local.get 3
      i32.load
      local.tee 5
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1900377938575da4E
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 5
      call $_ZN11dharitri_sc8log_util21serialize_event_topic17h09a148a4c791555aE
      local.get 4
      local.get 3
      i32.load offset=4
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1900377938575da4E
      i32.store offset=28
      local.get 4
      i32.const 0
      i32.store offset=24
      local.get 4
      local.get 3
      i32.const 4
      i32.add
      i32.store offset=20
      loop ;; label = @2
        local.get 4
        i32.const 8
        i32.add
        local.get 4
        i32.const 20
        i32.add
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_ref_iter..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9332ea0fbf88b14fE
        local.get 4
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        local.get 4
        i32.load offset=12
        call $_ZN11dharitri_sc8log_util21serialize_event_topic17h09a148a4c791555aE
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 4
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17h09a148a4c791555aE (;83;) (type 8) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h1ca18e891cb9f515E
    drop
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4a2f5aee78ebe281E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h902be845a520a12bE
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17hc98be5ecdfb4b311E (;84;) (type 16) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17h09a148a4c791555aE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17he0727ed8ba61170fE (;85;) (type 16) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17he65461c308851853E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17he65461c308851853E (;86;) (type 8) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h1ca18e891cb9f515E
    drop
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17hf56fc336960871edE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h902be845a520a12bE
  )
  (func $_ZN11dharitri_sc5types11interaction18contract_call_exec125_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_no_payment..ContractCallNoPayment$LT$SA$C$OriginalResult$GT$$GT$21transfer_execute_rewa17h75a524309268b23aE (;87;) (type 8) (param i32 i32)
    (local i64)
    local.get 0
    i64.load offset=8
    call $_ZN11dharitri_sc5types11interaction18contract_call_exec125_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_no_payment..ContractCallNoPayment$LT$SA$C$OriginalResult$GT$$GT$31resolve_gas_limit_with_leftover17h9eb9d9c2e4b4235cE
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
  (func $_ZN11dharitri_sc5types11interaction18contract_call_exec125_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_no_payment..ContractCallNoPayment$LT$SA$C$OriginalResult$GT$$GT$31resolve_gas_limit_with_leftover17h9eb9d9c2e4b4235cE (;88;) (type 19) (param i64) (result i64)
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
  (func $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall10async_call17h5d022dfb5928f32bE (;89;) (type 8) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    call $_ZN215_$LT$dharitri_sc..types..interaction..contract_call_with_any_payment..ContractCallWithAnyPayment$LT$SA$C$OriginalResult$GT$$u20$as$u20$dharitri_sc..types..interaction..contract_call_trait..ContractCall$LT$SA$GT$$GT$15into_normalized17h47e8db0ee66b4d26E
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
  (func $_ZN215_$LT$dharitri_sc..types..interaction..contract_call_with_any_payment..ContractCallWithAnyPayment$LT$SA$C$OriginalResult$GT$$u20$as$u20$dharitri_sc..types..interaction..contract_call_trait..ContractCall$LT$SA$GT$$GT$15into_normalized17h47e8db0ee66b4d26E (;90;) (type 8) (param i32 i32)
    (local i32 i32 i32 i32 i32 i64 i32 i64)
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
      i32.const 112
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
      i32.const 112
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
      i64.store offset=112
      local.get 2
      call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h7804348e08078f57E
      i32.store offset=136
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 3
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hd7be5407a22da4beE
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17h20e57ade99134997E
          local.set 6
          local.get 2
          i64.load offset=112
          local.set 7
          local.get 2
          local.get 3
          i32.store offset=152
          local.get 2
          local.get 7
          i64.store offset=144 align=4
          local.get 2
          i32.const 32
          i32.add
          i32.const 131175
          i32.const 20
          call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$3new17he145525410dbab98E
          local.get 2
          i32.load offset=32
          local.set 5
          local.get 2
          i32.load offset=36
          local.tee 1
          local.get 4
          call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h0c1811861af28e7eE
          local.get 3
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hd7be5407a22da4beE
          local.set 4
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h1ca18e891cb9f515E
          local.tee 8
          local.get 4
          i64.extend_i32_u
          call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417hd7575fcafb09bdf4E
          local.get 1
          local.get 8
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h902be845a520a12bE
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
              call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93b555d1fa02e68E
              local.get 2
              i64.load offset=168
              i64.eqz
              br_if 1 (;@4;)
              local.get 2
              i32.load offset=188
              local.set 3
              local.get 2
              i32.const 24
              i32.add
              local.get 5
              local.get 1
              local.get 2
              i32.load offset=184
              call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17hc98be5ecdfb4b311E
              local.get 2
              i32.const 16
              i32.add
              local.get 2
              i32.load offset=24
              local.get 2
              i32.load offset=28
              local.get 2
              i64.load offset=176
              call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h561226f1372f065fE
              local.get 2
              i32.const 8
              i32.add
              local.get 2
              i32.load offset=16
              local.get 2
              i32.load offset=20
              local.get 3
              call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17he0727ed8ba61170fE
              local.get 2
              i32.load offset=12
              local.set 1
              local.get 2
              i32.load offset=8
              local.set 5
              br 0 (;@5;)
            end
          end
          local.get 2
          local.get 5
          local.get 1
          local.get 2
          i32.const 144
          i32.add
          call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h616f1cfa323a8fd2E
          local.get 2
          i64.load
          local.set 7
          local.get 2
          i64.load offset=120
          local.set 9
          local.get 0
          call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h7804348e08078f57E
          i32.store offset=24
          local.get 0
          local.get 6
          i32.store offset=16
          local.get 0
          local.get 9
          i64.store offset=8
          local.get 0
          local.get 7
          i64.store
          br 2 (;@1;)
        end
        local.get 0
        local.get 2
        i64.load offset=112
        i64.store
        local.get 0
        i32.const 24
        i32.add
        local.get 2
        i32.const 112
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
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h8b850f3fc8b72cedE
      block ;; label = @2
        block ;; label = @3
          local.get 2
          i64.load offset=168
          local.tee 7
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=128
          local.set 1
          local.get 2
          local.get 2
          i64.load offset=112
          i64.store offset=156 align=4
          local.get 2
          i32.const 64
          i32.add
          i32.const 131210
          i32.const 12
          call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$3new17he145525410dbab98E
          local.get 2
          i32.const 56
          i32.add
          local.get 2
          i32.load offset=64
          local.get 2
          i32.load offset=68
          local.get 2
          i32.load offset=176
          call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17hc98be5ecdfb4b311E
          local.get 2
          i32.const 48
          i32.add
          local.get 2
          i32.load offset=56
          local.get 2
          i32.load offset=60
          local.get 2
          i32.load offset=180
          call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17he0727ed8ba61170fE
          local.get 2
          i32.const 40
          i32.add
          local.get 2
          i32.load offset=48
          local.get 2
          i32.load offset=52
          local.get 2
          i32.const 156
          i32.add
          call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h616f1cfa323a8fd2E
          local.get 2
          i32.load offset=44
          local.set 5
          local.get 2
          i32.load offset=40
          local.set 3
          br 1 (;@2;)
        end
        call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17h20e57ade99134997E
        local.set 1
        local.get 2
        local.get 2
        i64.load offset=112
        i64.store offset=156 align=4
        local.get 2
        i32.const 104
        i32.add
        i32.const 131195
        i32.const 15
        call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$3new17he145525410dbab98E
        local.get 2
        i32.const 96
        i32.add
        local.get 2
        i32.load offset=104
        local.get 2
        i32.load offset=108
        local.get 2
        i32.load offset=176
        call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17hc98be5ecdfb4b311E
        local.get 2
        i32.const 88
        i32.add
        local.get 2
        i32.load offset=96
        local.get 2
        i32.load offset=100
        local.get 7
        call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h561226f1372f065fE
        local.get 2
        i32.const 80
        i32.add
        local.get 2
        i32.load offset=88
        local.get 2
        i32.load offset=92
        local.get 2
        i32.load offset=180
        call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17he0727ed8ba61170fE
        local.get 2
        i32.load offset=80
        local.set 3
        local.get 2
        i32.load offset=84
        local.set 5
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h1ca18e891cb9f515E
        drop
        local.get 5
        local.get 2
        i32.load offset=128
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4a2f5aee78ebe281E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h902be845a520a12bE
        local.get 2
        i32.const 72
        i32.add
        local.get 3
        local.get 5
        local.get 2
        i32.const 156
        i32.add
        call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h616f1cfa323a8fd2E
        local.get 2
        i32.load offset=76
        local.set 5
        local.get 2
        i32.load offset=72
        local.set 3
      end
      local.get 2
      i64.load offset=120
      local.set 7
      local.get 0
      call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h7804348e08078f57E
      i32.store offset=24
      local.get 0
      local.get 1
      i32.store offset=16
      local.get 0
      local.get 7
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
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h04b303d0542090f0E (;91;) (type 5) (param i32) (result i32)
    local.get 0
    local.get 0
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hb2d30acf8b350900E
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$27read_managed_buffer_of_size17h9d553efdcd732cbbE
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hb2d30acf8b350900E (;92;) (type 5) (param i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17haa3be73d17504e4aE
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
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$27read_managed_buffer_of_size17h9d553efdcd732cbbE (;93;) (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load
    local.tee 3
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h308feeaae38d20d2E
    block ;; label = @1
      local.get 2
      i32.load offset=8
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 2
      i32.load offset=12
      local.set 4
      local.get 0
      local.get 3
      local.get 1
      i32.add
      i32.store
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 4
      return
    end
    i32.const 131272
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17he90c938eeb69a5c7E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h308feeaae38d20d2E (;94;) (type 16) (param i32 i32 i32 i32)
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
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17he90c938eeb69a5c7E (;95;) (type 8) (param i32 i32)
    (local i32)
    i32.const 131358
    i32.const 22
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hbb48cccfd8fabbb2E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 2
    call $managedSignalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hd81460633a84061eE (;96;) (type 11) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h3d9b3ef247f4e7a1E (;97;) (type 8) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferAppend
    drop
  )
  (func $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17hf56fc336960871edE (;98;) (type 5) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h7804348e08078f57E (;99;) (type 2) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    i64.const 0
    call $bigIntSetInt64
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h8b850f3fc8b72cedE (;100;) (type 8) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hd81460633a84061eE
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
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h3d3ce5a73d8f2809E
    local.set 3
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17hae97a0995d92c31eE
    local.set 4
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h3d3ce5a73d8f2809E
    local.set 5
    block ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131287
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
  (func $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h3d3ce5a73d8f2809E (;101;) (type 3) (param i32 i32) (result i32)
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
    call $_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17he25807f5661e22cbE
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
  (func $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17hae97a0995d92c31eE (;102;) (type 20) (param i32 i32) (result i64)
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
    call $_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17he25807f5661e22cbE
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hd7be5407a22da4beE (;103;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1900377938575da4E
    i32.const 4
    i32.shr_u
  )
  (func $_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17he25807f5661e22cbE (;104;) (type 16) (param i32 i32 i32 i32)
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
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E (;105;) (type 16) (param i32 i32 i32 i32)
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
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h39e490150af877b4E (;106;) (type 11) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load8_u offset=8
          br_if 0 (;@3;)
          local.get 0
          i32.load
          local.tee 5
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1900377938575da4E
          local.tee 6
          i32.const 10000
          i32.gt_u
          br_if 1 (;@2;)
          i32.const 0
          i32.load8_u offset=141604
          i32.const 255
          i32.and
          br_if 1 (;@2;)
          i32.const 0
          local.get 6
          i32.store offset=141600
          i32.const 0
          i32.const 1
          i32.store8 offset=141604
          local.get 4
          i32.const 8
          i32.add
          local.get 6
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h5f112c8cdd3be34bE
          local.get 5
          i32.const 0
          local.get 4
          i32.load offset=8
          local.get 4
          i32.load offset=12
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hd81460633a84061eE
          drop
          local.get 0
          i32.const 1
          i32.store8 offset=8
        end
        i32.const 1
        local.set 0
        local.get 3
        local.get 1
        i32.add
        local.tee 5
        i32.const 0
        i32.load offset=141600
        i32.gt_u
        br_if 1 (;@1;)
        local.get 4
        local.get 1
        local.get 5
        call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h95dd1a03576b7dfcE
        local.get 2
        local.get 3
        local.get 4
        i32.load
        local.get 4
        i32.load offset=4
        call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
        i32.const 0
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.store8 offset=8
      local.get 5
      local.get 1
      local.get 2
      local.get 3
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hd81460633a84061eE
      local.set 0
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h5f112c8cdd3be34bE (;107;) (type 8) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    i32.const 131600
    i32.const 10000
    local.get 1
    call $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hd7f8e209270ef546E
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
  (func $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h95dd1a03576b7dfcE (;108;) (type 1) (param i32 i32 i32)
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
    i32.const 131600
    i32.add
    i32.store
  )
  (func $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hb3846d02ab37744bE (;109;) (type 1) (param i32 i32 i32)
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
    i32.const 131600
    i32.const 10000
    call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb6975b29d12f93cdE
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
  (func $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h7ad32a28477f1899E (;110;) (type 4) (param i32)
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
      i32.load offset=141600
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
      i32.store offset=141600
      i32.const 0
      i32.const 0
      i32.store8 offset=141604
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$14new_from_slice17hfa907b1a036b21c0E (;111;) (type 4) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        i32.const 0
        i32.load8_u offset=141604
        local.tee 2
        br_if 0 (;@2;)
        i32.const 0
        i32.const 1
        i32.store8 offset=141604
        i32.const 0
        i32.const 0
        i32.store offset=141600
        local.get 1
        i32.const 8
        i32.add
        i32.const 0
        call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h5f112c8cdd3be34bE
        local.get 1
        i32.load offset=8
        local.get 1
        i32.load offset=12
        i32.const 131580
        i32.const 0
        call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h1ca18e891cb9f515E
        local.set 3
        br 1 (;@1;)
      end
      i32.const 131580
      i32.const 0
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hbb48cccfd8fabbb2E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$19into_managed_buffer17h815c38b1d9f7fc1fE (;112;) (type 3) (param i32 i32) (result i32)
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
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h7ad32a28477f1899E
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
      i32.store offset=141600
      i32.const 0
      i32.const 0
      i32.store8 offset=141604
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$21append_managed_buffer17hab8ba367ce36f8d2E (;113;) (type 8) (param i32 i32)
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
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1900377938575da4E
          local.set 3
          i32.const 10000
          i32.const 0
          i32.load offset=141600
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
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hb3846d02ab37744bE
          local.get 1
          i32.const 0
          local.get 2
          i32.load offset=8
          local.get 2
          i32.load offset=12
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hd81460633a84061eE
          drop
          i32.const 0
          local.get 0
          i32.store offset=141600
          br 2 (;@1;)
        end
        local.get 0
        i32.load
        local.get 1
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h3d9b3ef247f4e7a1E
        br 1 (;@1;)
      end
      local.get 0
      call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h7ad32a28477f1899E
      local.get 0
      i32.load
      local.get 1
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h3d9b3ef247f4e7a1E
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17hd6baba9017bd5bb8E (;114;) (type 5) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$23load_len_managed_buffer17h3be117f1e52c2142E (;115;) (type 5) (param i32) (result i32)
    local.get 0
    i32.const -25
    call $mBufferStorageLoad
    drop
    i32.const -25
    call $mBufferGetLength
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$13is_empty_node17he403afbb91a52171E (;116;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$23build_node_id_named_key17h13bb091a07dc39d2E
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$23load_len_managed_buffer17h3be117f1e52c2142E
    i32.eqz
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$23build_node_id_named_key17h13bb091a07dc39d2E (;117;) (type 3) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4a2f5aee78ebe281E
    local.tee 0
    i32.const 131348
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
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$14build_name_key17he57d72b0c695339cE (;118;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4a2f5aee78ebe281E
    local.tee 0
    i32.const 131353
    i32.const 5
    call $mBufferAppendBytes
    drop
    local.get 0
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$14get_node_by_id17h10ef4f3384aee55dE (;119;) (type 1) (param i32 i32 i32)
    block ;; label = @1
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$13is_empty_node17he403afbb91a52171E
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8get_node17h5d8db8e5c2c8bf9fE
      return
    end
    local.get 0
    i32.const 2
    i32.store
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8get_node17h5d8db8e5c2c8bf9fE (;120;) (type 1) (param i32 i32 i32)
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
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$23build_node_id_named_key17h13bb091a07dc39d2E
    call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17hd9dfa52ea20eb759E
    block ;; label = @1
      block ;; label = @2
        local.get 3
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17hfcf44951d29c248bE
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
        call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$27read_managed_buffer_of_size17h9d553efdcd732cbbE
        local.set 5
        local.get 3
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h7e163e9a75015c77E
        local.set 6
        local.get 3
        i32.const 12
        i32.add
        call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h04b303d0542090f0E
        local.set 7
        local.get 3
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hb2d30acf8b350900E
        local.set 2
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h1ca18e891cb9f515E
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
            call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h04b303d0542090f0E
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h902be845a520a12bE
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
                call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17hfcf44951d29c248bE
                i32.const 255
                i32.and
                br_table 1 (;@5;) 2 (;@4;) 0 (;@6;)
              end
              i32.const 131072
              i32.const 13
              call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17he90c938eeb69a5c7E
              unreachable
            end
            i32.const 0
            local.set 2
            local.get 3
            i32.const 12
            i32.add
            call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h0ef44afd748632aeE
            local.set 8
            br 1 (;@3;)
          end
          local.get 3
          i32.const 12
          i32.add
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hb2d30acf8b350900E
          local.set 2
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h1ca18e891cb9f515E
          local.set 8
          block ;; label = @4
            loop ;; label = @5
              local.get 2
              i32.eqz
              br_if 1 (;@4;)
              local.get 3
              i32.const 12
              i32.add
              call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h04b303d0542090f0E
              local.set 9
              local.get 3
              i32.const 12
              i32.add
              call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h7e163e9a75015c77E
              local.set 10
              local.get 3
              local.get 3
              i32.const 12
              i32.add
              call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h0ef44afd748632aeE
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
              call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h04c1bd25cba6349dE
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
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hb2d30acf8b350900E
        local.set 9
        local.get 3
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hb2d30acf8b350900E
        local.set 11
        local.get 3
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hb2d30acf8b350900E
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
          i32.store offset=141600
          i32.const 0
          i32.const 0
          i32.store8 offset=141604
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
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17he90c938eeb69a5c7E
      unreachable
    end
    i32.const 131258
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17he90c938eeb69a5c7E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8get_info17hb4707361c924dc84E (;121;) (type 8) (param i32 i32)
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
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$14build_name_key17he57d72b0c695339cE
          local.tee 1
          call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$23load_len_managed_buffer17h3be117f1e52c2142E
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
        call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17hd9dfa52ea20eb759E
        local.get 2
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hb2d30acf8b350900E
        local.set 1
        local.get 2
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hb2d30acf8b350900E
        local.set 3
        local.get 2
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hb2d30acf8b350900E
        local.set 4
        local.get 2
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hb2d30acf8b350900E
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
        i32.store offset=141600
        i32.const 0
        i32.const 0
        i32.store8 offset=141604
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
    i32.const 131258
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17he90c938eeb69a5c7E
    unreachable
  )
  (func $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17hd9dfa52ea20eb759E (;122;) (type 8) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17hd6baba9017bd5bb8E
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17hfcf44951d29c248bE (;123;) (type 5) (param i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17haa3be73d17504e4aE
    local.get 1
    i32.load8_u offset=15
    local.set 0
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h7e163e9a75015c77E (;124;) (type 7) (param i32) (result i64)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17haa3be73d17504e4aE
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
  (func $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h0ef44afd748632aeE (;125;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h04b303d0542090f0E
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    call $mBufferToBigIntUnsigned
    drop
    local.get 0
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_info17hfa2853fac3034567E (;126;) (type 8) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$14build_name_key17he57d72b0c695339cE
    local.set 0
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h7a521613bd1784c4E
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
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17hc03da1a1c2238591E
        local.get 1
        i32.load offset=4
        local.get 2
        i32.const 8
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17hc03da1a1c2238591E
        local.get 1
        i32.load offset=8
        local.get 2
        i32.const 8
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17hc03da1a1c2238591E
        local.get 1
        i32.load offset=12
        local.get 2
        i32.const 8
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17hc03da1a1c2238591E
        local.get 0
        local.get 2
        i32.load offset=8
        local.get 2
        i32.load8_u offset=12
        call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h048ef4d38678661fE
        br 1 (;@1;)
      end
      local.get 0
      i32.const 131580
      i32.const 0
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h3b6dddfd0a62ed39E
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17hc03da1a1c2238591E (;127;) (type 8) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$12append_bytes17h1fee6cdb9ee13441E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h3b6dddfd0a62ed39E (;128;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hbb48cccfd8fabbb2E
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17hfb39a7d77128b93eE (;129;) (type 1) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$23build_node_id_named_key17h13bb091a07dc39d2E
    local.set 1
    local.get 3
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h7a521613bd1784c4E
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
    call $_ZN102_$LT$forwarder_queue..QueuedCallType$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he260caf132d6820eE
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    i32.load offset=16
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$21append_managed_buffer17hab8ba367ce36f8d2E
    local.get 2
    i64.load offset=8
    local.get 3
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h82768b3676272c6bE
    local.get 2
    i32.load offset=20
    local.get 3
    i32.const 8
    i32.add
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h2121bf10fde48836E
    local.get 2
    i32.const 24
    i32.add
    local.get 3
    i32.const 8
    i32.add
    call $_ZN149_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hd6263ac0672ee44bE
    local.get 2
    local.get 3
    i32.const 8
    i32.add
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_multi_dcdt_payment..RewaOrMultiDcdtPayment$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hf7e12c168378901aE
    local.get 2
    i32.load offset=32
    local.get 3
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17hc03da1a1c2238591E
    local.get 2
    i32.load offset=36
    local.get 3
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17hc03da1a1c2238591E
    local.get 2
    i32.load offset=40
    local.get 3
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17hc03da1a1c2238591E
    local.get 1
    local.get 3
    i32.load offset=8
    local.get 3
    i32.load8_u offset=12
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h048ef4d38678661fE
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h82768b3676272c6bE (;130;) (type 21) (param i64 i32)
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
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$12append_bytes17h1fee6cdb9ee13441E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h2121bf10fde48836E (;131;) (type 8) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1900377938575da4E
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
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$12append_bytes17h1fee6cdb9ee13441E
    local.get 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$21append_managed_buffer17hab8ba367ce36f8d2E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_multi_dcdt_payment..RewaOrMultiDcdtPayment$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hf7e12c168378901aE (;132;) (type 8) (param i32 i32)
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
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h20f56bbf4731d5f5E
        local.get 3
        i32.load
        local.get 1
        call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h377d759a86ce3f60E
        br 1 (;@1;)
      end
      i32.const 1
      local.get 1
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h20f56bbf4731d5f5E
      local.get 3
      i32.load
      local.tee 0
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hd7be5407a22da4beE
      local.get 1
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h86e891ed83f9126cE
      local.get 2
      local.get 0
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1900377938575da4E
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93b555d1fa02e68E
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
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h2121bf10fde48836E
        local.get 2
        i64.load offset=32
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h82768b3676272c6bE
        local.get 0
        local.get 1
        call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h377d759a86ce3f60E
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$9push_back17h6c785bf82ccd4c01E (;133;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8get_info17hb4707361c924dc84E
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
      call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8get_node17h5d8db8e5c2c8bf9fE
      local.get 3
      local.get 4
      i32.store offset=52
      local.get 1
      local.get 6
      local.get 3
      i32.const 16
      i32.add
      call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17hfb39a7d77128b93eE
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
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17hfb39a7d77128b93eE
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
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_info17hfa2853fac3034567E
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
  (func $memcpy (;134;) (type 6) (param i32 i32 i32) (result i32)
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
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17h8f650488bcb57d9eE (;135;) (type 5) (param i32) (result i32)
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
        call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17hd6baba9017bd5bb8E
        local.tee 0
        call $mBufferGetLength
        local.tee 2
        i32.const 9
        i32.ge_u
        br_if 0 (;@2;)
        local.get 1
        local.get 1
        i32.const 8
        i32.add
        i32.const 8
        local.get 2
        call $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hd7f8e209270ef546E
        local.get 0
        i32.const 0
        local.get 1
        i32.load
        local.tee 2
        local.get 1
        i32.load offset=4
        local.tee 3
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hd81460633a84061eE
        drop
        local.get 2
        local.get 3
        call $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E
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
      i32.const 131258
      i32.const 14
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17he90c938eeb69a5c7E
      unreachable
    end
    i32.const 131258
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17he90c938eeb69a5c7E
    unreachable
  )
  (func $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hd7f8e209270ef546E (;136;) (type 16) (param i32 i32 i32 i32)
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
    call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb6975b29d12f93cdE
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
  (func $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E (;137;) (type 20) (param i32 i32) (result i64)
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
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17h2d8a7dbe300a84c1E (;138;) (type 8) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h0c1811861af28e7eE
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h0c1811861af28e7eE (;139;) (type 8) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h1ca18e891cb9f515E
    drop
    local.get 0
    local.get 1
    i32.load
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4a2f5aee78ebe281E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h902be845a520a12bE
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17h40a8073bb6d6341dE (;140;) (type 8) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h1900377938575da4E
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
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_ref_iter..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9332ea0fbf88b14fE
        local.get 2
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 2
        i32.load offset=12
        call $_ZN11dharitri_sc8log_util21serialize_event_topic17h09a148a4c791555aE
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17ha25214f10252fa3aE (;141;) (type 8) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h1ca18e891cb9f515E
    local.tee 2
    local.get 1
    i64.extend_i32_u
    i64.const 255
    i64.and
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417hd7575fcafb09bdf4E
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h902be845a520a12bE
  )
  (func $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417hd7575fcafb09bdf4E (;142;) (type 0) (param i32 i64)
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
    call $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hfa66c899aa066fc8E
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
  (func $_ZN11dharitri_sc8log_util23event_topic_accumulator17h3ab494ff4d485b4dE (;143;) (type 3) (param i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h1ca18e891cb9f515E
    local.tee 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hbb48cccfd8fabbb2E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h902be845a520a12bE
    local.get 2
  )
  (func $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h377d759a86ce3f60E (;144;) (type 8) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17hf56fc336960871edE
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h2121bf10fde48836E
  )
  (func $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..into_multi_value..IntoMultiValue$GT$16into_multi_value17hb49f22d97b7620eeE (;145;) (type 5) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h1ca18e891cb9f515E
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
      call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb93b555d1fa02e68E
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
      call $_ZN11dharitri_sc8log_util21serialize_event_topic17h09a148a4c791555aE
      local.get 2
      local.get 1
      i64.load offset=32
      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17habd1116dde88ded2E
      local.get 2
      local.get 0
      call $_ZN11dharitri_sc8log_util21serialize_event_topic17he65461c308851853E
      br 0 (;@1;)
    end
  )
  (func $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h43a3a93dbbdba276E (;146;) (type 8) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hbb48cccfd8fabbb2E
    local.tee 1
    i32.const 131272
    i32.const 15
    call $mBufferAppendBytes
    drop
    local.get 1
    call $managedSignalError
    unreachable
  )
  (func $_ZN15forwarder_queue14ForwarderQueue15add_queued_call17h00bb8d03ced093a4E (;147;) (type 22) (param i32 i32 i64 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 1
    i32.store offset=20
    local.get 5
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$11any_payment17hd9404da0e25e05c7E
    local.get 5
    local.get 5
    i32.load offset=12
    local.tee 6
    i32.store offset=28
    local.get 5
    local.get 5
    i32.load offset=8
    local.tee 1
    i32.store offset=24
    block ;; label = @1
      block ;; label = @2
        local.get 1
        br_if 0 (;@2;)
        i32.const 131494
        i32.const 20
        call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h3ab494ff4d485b4dE
        local.tee 1
        local.get 0
        call $_ZN11dharitri_sc8log_util21serialize_event_topic17ha25214f10252fa3aE
        local.get 1
        local.get 5
        i32.const 20
        i32.add
        call $_ZN11dharitri_sc8log_util21serialize_event_topic17h2d8a7dbe300a84c1E
        local.get 1
        local.get 3
        call $_ZN11dharitri_sc8log_util21serialize_event_topic17h09a148a4c791555aE
        local.get 1
        local.get 6
        call $_ZN11dharitri_sc8log_util21serialize_event_topic17he65461c308851853E
        local.get 1
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h1ca18e891cb9f515E
        call $managedWriteLog
        br 1 (;@1;)
      end
      local.get 5
      local.get 5
      i32.const 28
      i32.add
      call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he9ae5cc971fd0d18E
      call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..into_multi_value..IntoMultiValue$GT$16into_multi_value17hb49f22d97b7620eeE
      i32.store offset=32
      i32.const 131474
      i32.const 20
      call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h3ab494ff4d485b4dE
      local.tee 1
      local.get 0
      call $_ZN11dharitri_sc8log_util21serialize_event_topic17ha25214f10252fa3aE
      local.get 1
      local.get 5
      i32.const 20
      i32.add
      call $_ZN11dharitri_sc8log_util21serialize_event_topic17h2d8a7dbe300a84c1E
      local.get 1
      local.get 3
      call $_ZN11dharitri_sc8log_util21serialize_event_topic17h09a148a4c791555aE
      local.get 1
      local.get 5
      i32.const 32
      i32.add
      call $_ZN11dharitri_sc8log_util21serialize_event_topic17h40a8073bb6d6341dE
      local.get 1
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h1ca18e891cb9f515E
      call $managedWriteLog
    end
    call $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$12queued_calls17hc9f7dd3df7e41a81E
    local.set 1
    local.get 5
    local.get 0
    i32.store8 offset=108
    local.get 5
    local.get 5
    i32.load offset=20
    i32.store offset=96
    local.get 5
    local.get 4
    i32.store offset=104
    local.get 5
    local.get 3
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
    local.get 1
    local.get 5
    i32.const 80
    i32.add
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$9push_back17h6c785bf82ccd4c01E
    local.get 5
    i32.const 112
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$12queued_calls17hc9f7dd3df7e41a81E (;148;) (type 2) (result i32)
    i32.const 131431
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hbb48cccfd8fabbb2E
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17haa3be73d17504e4aE (;149;) (type 1) (param i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h39e490150af877b4E
      i32.eqz
      br_if 0 (;@1;)
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h72e8a304c4da293bE
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hfa66c899aa066fc8E (;150;) (type 23) (param i32 i64 i32)
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
        i32.const 131580
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
      call $_ZN4core9panicking18panic_bounds_check17hdbf723dd9cf95e6aE
      unreachable
    end
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h050e901ab20f66b8E (;151;) (type 8) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h43a3a93dbbdba276E
    unreachable
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h72e8a304c4da293bE (;152;) (type 12)
    i32.const 131272
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17he90c938eeb69a5c7E
    unreachable
  )
  (func $_ZN4core6option15Option$LT$T$GT$6unwrap17hc77d7a0aa7fdab80E (;153;) (type 8) (param i32 i32)
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
  (func $_ZN4core9panicking18panic_bounds_check17hdbf723dd9cf95e6aE (;154;) (type 12)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (func $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$14callback_count17h8d52265678f394e5E (;155;) (type 2) (result i32)
    i32.const 131443
    i32.const 14
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hbb48cccfd8fabbb2E
  )
  (func $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$17callback_payments17hf05815aff565712aE (;156;) (type 2) (result i32)
    i32.const 131457
    i32.const 17
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hbb48cccfd8fabbb2E
  )
  (func $rust_begin_unwind (;157;) (type 12)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE (;158;) (type 12)
    i32.const 131580
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;159;) (type 12)
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h36afac57fbf215f8E
  )
  (func $queued_calls (;160;) (type 12)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 224
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h36afac57fbf215f8E
    local.get 0
    call $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$12queued_calls17hc9f7dd3df7e41a81E
    local.tee 1
    i32.store offset=12
    local.get 0
    i32.const 72
    i32.add
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8get_info17hb4707361c924dc84E
    local.get 0
    i32.const 16
    i32.add
    local.get 1
    local.get 0
    i32.load offset=76
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$14get_node_by_id17h10ef4f3384aee55dE
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
        call $_ZN113_$LT$dharitri_sc..storage..mappers..linked_list_mapper..LinkedListNode$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h37ed8f8c22298f76E
        local.get 0
        i32.const 176
        i32.add
        local.get 0
        i32.const 16
        i32.add
        call $_ZN4core6option15Option$LT$T$GT$6unwrap17hc77d7a0aa7fdab80E
        local.get 0
        i32.const 16
        i32.add
        local.get 0
        i32.load offset=120
        i32.load
        local.get 0
        i32.load offset=212
        call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$14get_node_by_id17h10ef4f3384aee55dE
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
        call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$14new_from_slice17hfa907b1a036b21c0E
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
        call $_ZN102_$LT$forwarder_queue..QueuedCallType$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he260caf132d6820eE
        local.get 0
        i32.const 176
        i32.add
        local.get 0
        i32.load offset=32
        call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$21append_managed_buffer17hab8ba367ce36f8d2E
        local.get 0
        i64.load offset=24
        local.get 0
        i32.const 176
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h82768b3676272c6bE
        local.get 0
        i32.load offset=36
        local.get 0
        i32.const 176
        i32.add
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h2121bf10fde48836E
        local.get 2
        local.get 0
        i32.const 176
        i32.add
        call $_ZN149_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hd6263ac0672ee44bE
        local.get 0
        i32.const 16
        i32.add
        local.get 0
        i32.const 176
        i32.add
        call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_multi_dcdt_payment..RewaOrMultiDcdtPayment$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hf7e12c168378901aE
        local.get 0
        i32.load offset=176
        local.get 0
        i32.load8_u offset=180
        call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$19into_managed_buffer17h815c38b1d9f7fc1fE
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
  (func $add_queued_call_sync (;161;) (type 12)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    call $getNumArguments
    i32.store offset=141608
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h3aedf5182b9a53f7E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h11cabc5208cc2e8eE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd69fe4aa5be765d0E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h77482bbc181a16eaE
    local.set 3
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h35ab954780167c69E
    i32.const 0
    local.get 1
    i64.const 0
    local.get 2
    local.get 3
    call $_ZN15forwarder_queue14ForwarderQueue15add_queued_call17h00bb8d03ced093a4E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $add_queued_call_legacy_async (;162;) (type 12)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    call $getNumArguments
    i32.store offset=141608
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h3aedf5182b9a53f7E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h11cabc5208cc2e8eE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd69fe4aa5be765d0E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h77482bbc181a16eaE
    local.set 3
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h35ab954780167c69E
    i32.const 1
    local.get 1
    i64.const 0
    local.get 2
    local.get 3
    call $_ZN15forwarder_queue14ForwarderQueue15add_queued_call17h00bb8d03ced093a4E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $add_queued_call_transfer_execute (;163;) (type 12)
    (local i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    call $getNumArguments
    i32.store offset=141608
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h3aedf5182b9a53f7E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h11cabc5208cc2e8eE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbcdbed9435e783e6E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd69fe4aa5be765d0E
    local.set 3
    local.get 0
    i32.const 3
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h77482bbc181a16eaE
    local.set 4
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h35ab954780167c69E
    i32.const 2
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_ZN15forwarder_queue14ForwarderQueue15add_queued_call17h00bb8d03ced093a4E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $add_queued_call_transfer_dcdt (;164;) (type 12)
    (local i32 i32 i64 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    call $getNumArguments
    i32.store offset=141608
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h3aedf5182b9a53f7E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h11cabc5208cc2e8eE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbcdbed9435e783e6E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd69fe4aa5be765d0E
    local.set 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbafae66ed5628449E
    local.set 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc8658abe078e02f4E
    local.set 5
    local.get 0
    i32.const 5
    i32.store
    local.get 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h77482bbc181a16eaE
    local.set 6
    local.get 0
    i32.load
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h35ab954780167c69E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h1ca18e891cb9f515E
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
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h04c1bd25cba6349dE
    call $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$12queued_calls17hc9f7dd3df7e41a81E
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
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$9push_back17h6c785bf82ccd4c01E
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $add_queued_call_promise (;165;) (type 12)
    (local i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    call $getNumArguments
    i32.store offset=141608
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h3aedf5182b9a53f7E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h11cabc5208cc2e8eE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbcdbed9435e783e6E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd69fe4aa5be765d0E
    local.set 3
    local.get 0
    i32.const 3
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h77482bbc181a16eaE
    local.set 4
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h35ab954780167c69E
    i32.const 3
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_ZN15forwarder_queue14ForwarderQueue15add_queued_call17h00bb8d03ced093a4E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $add_queued_call (;166;) (type 12)
    (local i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    call $getNumArguments
    i32.store offset=141608
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h3aedf5182b9a53f7E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h3ea813d47e5da579E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h11cabc5208cc2e8eE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbcdbed9435e783e6E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd69fe4aa5be765d0E
    local.set 4
    local.get 0
    i32.const 4
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h77482bbc181a16eaE
    local.set 5
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h35ab954780167c69E
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    call $_ZN15forwarder_queue14ForwarderQueue15add_queued_call17h00bb8d03ced093a4E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_queued_calls (;167;) (type 12)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 256
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h36afac57fbf215f8E
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
        call $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$12queued_calls17hc9f7dd3df7e41a81E
        local.tee 8
        call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8get_info17hb4707361c924dc84E
        local.get 8
        local.get 0
        i32.load offset=60
        local.tee 9
        call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$13is_empty_node17he403afbb91a52171E
        br_if 1 (;@1;)
        local.get 0
        i32.const 200
        i32.add
        local.get 8
        local.get 9
        call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$14get_node_by_id17h10ef4f3384aee55dE
        local.get 0
        i32.const 152
        i32.add
        local.get 0
        i32.const 200
        i32.add
        call $_ZN4core6option15Option$LT$T$GT$6unwrap17hc77d7a0aa7fdab80E
        block ;; label = @3
          local.get 8
          local.get 0
          i32.load offset=184
          local.tee 10
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$13is_empty_node17he403afbb91a52171E
          br_if 0 (;@3;)
          local.get 0
          i32.const 120
          i32.add
          local.get 8
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8get_info17hb4707361c924dc84E
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
              call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8get_node17h5d8db8e5c2c8bf9fE
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
              call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17hfb39a7d77128b93eE
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
              call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8get_node17h5d8db8e5c2c8bf9fE
              local.get 0
              local.get 11
              i32.store offset=240
              local.get 8
              local.get 9
              local.get 0
              i32.const 200
              i32.add
              call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17hfb39a7d77128b93eE
              br 1 (;@4;)
            end
            local.get 0
            local.get 11
            i32.store offset=128
          end
          local.get 8
          local.get 10
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$23build_node_id_named_key17h13bb091a07dc39d2E
          i32.const 1
          i32.const 0
          call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h3b6dddfd0a62ed39E
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
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_info17hfa2853fac3034567E
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
        call $_ZN113_$LT$dharitri_sc..storage..mappers..linked_list_mapper..LinkedListNode$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h37ed8f8c22298f76E
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
            i32.const 131538
            i32.const 24
            call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h3ab494ff4d485b4dE
            local.tee 8
            local.get 0
            i32.load8_u offset=84
            call $_ZN11dharitri_sc8log_util21serialize_event_topic17ha25214f10252fa3aE
            local.get 8
            local.get 6
            call $_ZN11dharitri_sc8log_util21serialize_event_topic17h2d8a7dbe300a84c1E
            local.get 8
            local.get 0
            i32.load offset=76
            call $_ZN11dharitri_sc8log_util21serialize_event_topic17h09a148a4c791555aE
            local.get 8
            local.get 0
            i32.load offset=60
            call $_ZN11dharitri_sc8log_util21serialize_event_topic17he65461c308851853E
            local.get 8
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h1ca18e891cb9f515E
            call $managedWriteLog
            br 1 (;@3;)
          end
          local.get 0
          local.get 5
          call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he9ae5cc971fd0d18E
          call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..into_multi_value..IntoMultiValue$GT$16into_multi_value17hb49f22d97b7620eeE
          i32.store offset=200
          i32.const 131514
          i32.const 24
          call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h3ab494ff4d485b4dE
          local.tee 8
          local.get 0
          i32.load8_u offset=84
          call $_ZN11dharitri_sc8log_util21serialize_event_topic17ha25214f10252fa3aE
          local.get 8
          local.get 6
          call $_ZN11dharitri_sc8log_util21serialize_event_topic17h2d8a7dbe300a84c1E
          local.get 8
          local.get 0
          i32.load offset=76
          call $_ZN11dharitri_sc8log_util21serialize_event_topic17h09a148a4c791555aE
          local.get 8
          local.get 0
          i32.const 200
          i32.add
          call $_ZN11dharitri_sc8log_util21serialize_event_topic17h40a8073bb6d6341dE
          local.get 8
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h1ca18e891cb9f515E
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
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h1ca18e891cb9f515E
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
              call $_ZN215_$LT$dharitri_sc..types..interaction..contract_call_with_any_payment..ContractCallWithAnyPayment$LT$SA$C$OriginalResult$GT$$u20$as$u20$dharitri_sc..types..interaction..contract_call_trait..ContractCall$LT$SA$GT$$GT$15into_normalized17h47e8db0ee66b4d26E
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
              local.get 0
              i32.const 120
              i32.add
              local.get 8
              call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h5cefca9ebc88565cE
              br 3 (;@2;)
            end
            local.get 0
            i32.const 200
            i32.add
            local.get 0
            i32.const 88
            i32.add
            call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall10async_call17h5d022dfb5928f32bE
            local.get 0
            i32.const 200
            i32.add
            call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17haf38ae5a76752e2eE
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
            call $_ZN11dharitri_sc5types11interaction18contract_call_exec125_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_no_payment..ContractCallNoPayment$LT$SA$C$OriginalResult$GT$$GT$21transfer_execute_rewa17h75a524309268b23aE
            br 2 (;@2;)
          end
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                local.get 8
                call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hd7be5407a22da4beE
                br_table 1 (;@5;) 2 (;@4;) 0 (;@6;)
              end
              local.get 10
              local.get 8
              local.get 12
              call $_ZN11dharitri_sc5types11interaction18contract_call_exec125_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_no_payment..ContractCallNoPayment$LT$SA$C$OriginalResult$GT$$GT$31resolve_gas_limit_with_leftover17h9eb9d9c2e4b4235cE
              local.get 11
              local.get 13
              call $managedMultiTransferDCDTNFTExecute
              drop
              br 3 (;@2;)
            end
            local.get 4
            call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h7804348e08078f57E
            call $_ZN11dharitri_sc5types11interaction18contract_call_exec125_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_no_payment..ContractCallNoPayment$LT$SA$C$OriginalResult$GT$$GT$21transfer_execute_rewa17h75a524309268b23aE
            br 2 (;@2;)
          end
          local.get 0
          i32.const 120
          i32.add
          local.get 8
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h8b850f3fc8b72cedE
          local.get 12
          call $_ZN11dharitri_sc5types11interaction18contract_call_exec125_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_no_payment..ContractCallNoPayment$LT$SA$C$OriginalResult$GT$$GT$31resolve_gas_limit_with_leftover17h9eb9d9c2e4b4235cE
          local.set 12
          local.get 0
          i64.load offset=120
          local.set 14
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h1ca18e891cb9f515E
          local.set 8
          local.get 0
          i32.load offset=128
          call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4a2f5aee78ebe281E
          local.set 9
          local.get 0
          local.get 0
          i32.load offset=132
          call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17haccf7111bb3222c1E
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
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h04c1bd25cba6349dE
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
        call $_ZN215_$LT$dharitri_sc..types..interaction..contract_call_with_any_payment..ContractCallWithAnyPayment$LT$SA$C$OriginalResult$GT$$u20$as$u20$dharitri_sc..types..interaction..contract_call_trait..ContractCall$LT$SA$GT$$GT$15into_normalized17h47e8db0ee66b4d26E
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
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h1ca18e891cb9f515E
        i32.store offset=128
        local.get 0
        i32.const 24
        i32.store offset=124
        local.get 0
        i32.const 131396
        i32.store offset=120
        i32.const -25
        i32.const 131580
        i32.const 0
        call $mBufferSetBytes
        drop
        i32.const -25
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4a2f5aee78ebe281E
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
            call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_ref_iter..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9332ea0fbf88b14fE
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
        i32.const 131396
        i32.const 24
        i32.const 131396
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
  (func $callback_count (;168;) (type 12)
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h36afac57fbf215f8E
    call $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$14callback_count17h8d52265678f394e5E
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17h8f650488bcb57d9eE
    i64.extend_i32_u
    call $smallIntFinishUnsigned
  )
  (func $callback_payments (;169;) (type 12)
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h36afac57fbf215f8E
    call $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$17callback_payments17hf05815aff565712aE
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17hd6baba9017bd5bb8E
    call $mBufferFinish
    drop
  )
  (func $promises_callback_method (;170;) (type 12)
    (local i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const -25
    call $managedGetCallbackClosure
    i32.const -23
    i32.const 131580
    i32.const 0
    call $mBufferSetBytes
    drop
    i32.const -25
    call $mBufferGetLength
    local.set 1
    local.get 0
    i32.const 88
    i32.add
    i32.const 0
    i32.store8
    local.get 0
    i32.const 84
    i32.add
    local.get 1
    i32.store
    local.get 0
    i32.const -25
    i32.store offset=80
    local.get 0
    local.get 1
    i32.store offset=76
    local.get 0
    i32.const 0
    i32.store offset=72
    local.get 0
    i32.const 80
    i32.add
    local.set 2
    i32.const 0
    local.set 3
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          loop ;; label = @4
            block ;; label = @5
              local.get 1
              local.get 3
              i32.ne
              br_if 0 (;@5;)
              block ;; label = @6
                local.get 0
                i32.load8_u offset=88
                i32.eqz
                br_if 0 (;@6;)
                i32.const 0
                i32.const 0
                i32.store offset=141600
                i32.const 0
                i32.const 0
                i32.store8 offset=141604
              end
              local.get 0
              i32.const 72
              i32.add
              i32.const -23
              call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h5cefca9ebc88565cE
              local.get 0
              i32.load offset=76
              local.get 0
              i32.load offset=80
              call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h2ab953737ceb5f06E
              call $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$14callback_count17h8d52265678f394e5E
              local.tee 3
              call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17h8f650488bcb57d9eE
              local.set 1
              local.get 0
              i64.const 0
              i64.store offset=72
              local.get 0
              i32.const 24
              i32.add
              local.get 1
              i32.const 1
              i32.add
              i64.extend_i32_u
              local.get 0
              i32.const 72
              i32.add
              call $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hfa66c899aa066fc8E
              local.get 3
              local.get 0
              i32.load offset=24
              local.get 0
              i32.load offset=28
              call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h3b6dddfd0a62ed39E
              local.get 0
              i32.const 16
              i32.add
              call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$11any_payment17hd9404da0e25e05c7E
              local.get 0
              i64.load offset=16
              local.set 4
              i32.const 131316
              i32.const 32
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hbb48cccfd8fabbb2E
              local.set 3
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h1ca18e891cb9f515E
              local.set 1
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h1ca18e891cb9f515E
              local.set 5
              local.get 0
              i32.const 64
              i32.add
              local.get 3
              i32.store
              local.get 0
              i32.const 56
              i32.add
              i64.const -1
              i64.store
              local.get 0
              i32.const 52
              i32.add
              local.get 5
              i32.store
              local.get 0
              local.get 1
              i32.store offset=48
              local.get 0
              local.get 4
              i64.store offset=40
              local.get 0
              i32.const 72
              i32.add
              local.get 0
              i32.const 40
              i32.add
              call $_ZN215_$LT$dharitri_sc..types..interaction..contract_call_with_any_payment..ContractCallWithAnyPayment$LT$SA$C$OriginalResult$GT$$u20$as$u20$dharitri_sc..types..interaction..contract_call_trait..ContractCall$LT$SA$GT$$GT$15into_normalized17h47e8db0ee66b4d26E
              local.get 0
              i32.const 8
              i32.add
              call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$14new_from_slice17hfa907b1a036b21c0E
              local.get 0
              local.get 0
              i32.load offset=8
              i32.store offset=108
              local.get 0
              local.get 0
              i32.load8_u offset=12
              i32.const 1
              i32.and
              i32.store8 offset=112
              local.get 0
              i32.const 108
              i32.add
              local.get 0
              i32.load offset=72
              call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$21append_managed_buffer17hab8ba367ce36f8d2E
              local.get 0
              local.get 0
              i32.load offset=76
              call $mBufferGetLength
              i32.store offset=124
              local.get 0
              i32.const 0
              i32.store offset=120
              local.get 0
              local.get 0
              i32.const 72
              i32.add
              i32.const 4
              i32.or
              i32.store offset=116
              loop ;; label = @6
                local.get 0
                local.get 0
                i32.const 116
                i32.add
                call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_ref_iter..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9332ea0fbf88b14fE
                local.get 0
                i32.load
                i32.eqz
                br_if 3 (;@3;)
                local.get 0
                i32.load offset=4
                local.set 3
                local.get 0
                i32.const 108
                i32.add
                i32.const 131232
                i32.const 1
                call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$12append_bytes17h1fee6cdb9ee13441E
                local.get 3
                i32.const -25
                call $managedBufferToHex
                local.get 0
                i32.const 108
                i32.add
                i32.const -25
                call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$21append_managed_buffer17hab8ba367ce36f8d2E
                br 0 (;@6;)
              end
            end
            local.get 0
            i32.const 0
            i32.store offset=40
            local.get 2
            local.get 3
            local.get 0
            i32.const 40
            i32.add
            i32.const 4
            call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h39e490150af877b4E
            br_if 2 (;@2;)
            local.get 0
            i32.const 32
            i32.add
            local.get 0
            i32.load offset=80
            local.get 0
            i32.load offset=72
            i32.const 4
            i32.add
            local.tee 3
            local.get 0
            i32.const 40
            i32.add
            i32.const 4
            call $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E
            i32.wrap_i64
            local.tee 1
            call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h308feeaae38d20d2E
            local.get 0
            i32.load offset=32
            i32.const 1
            i32.ne
            br_if 3 (;@1;)
            local.get 0
            i32.load offset=36
            local.set 5
            local.get 0
            local.get 3
            local.get 1
            i32.add
            local.tee 3
            i32.store offset=72
            i32.const -23
            local.get 5
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h902be845a520a12bE
            local.get 0
            i32.load offset=76
            local.set 1
            br 0 (;@4;)
          end
        end
        local.get 0
        i32.load offset=108
        local.get 0
        i32.load8_u offset=112
        call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$19into_managed_buffer17h815c38b1d9f7fc1fE
        local.set 3
        call $_ZN53_$LT$C$u20$as$u20$forwarder_queue..ForwarderQueue$GT$17callback_payments17hf05815aff565712aE
        local.get 3
        call $mBufferStorageStore
        drop
        local.get 0
        i32.const 128
        i32.add
        global.set $__stack_pointer
        return
      end
      i32.const 131233
      i32.const 25
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h050e901ab20f66b8E
      unreachable
    end
    i32.const 131233
    i32.const 25
    call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h43a3a93dbbdba276E
    unreachable
  )
  (func $callBack (;171;) (type 12))
  (func $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E (;172;) (type 12)
    call $rust_begin_unwind
    unreachable
  )
  (table (;0;) 1 1 funcref)
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 141617)
  (global (;2;) i32 i32.const 141632)
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
  (data $.rodata (;0;) (i32.const 131072) "invalid value\00\01\02\03argument decode error (): too few argumentstoo many argumentswrong number of argumentsMultiDCDTNFTTransferDCDTNFTTransferDCDTTransferCB_CLOSURE@serializer decode error: input too longinput too shortManagedVec index out of range\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00.node.infostorage decode error: bad array lengthpromises_callback_methodtocall_typequeued_callscallback_countcallback_paymentsadd_queued_call_dcdtadd_queued_call_rewaforward_queued_call_dcdtforward_queued_call_rewa\00\00\0d\00\02\00\0e\00\02\00\0f\00\02\00\10\00\02\00panic occurred")
  (data $.data (;1;) (i32.const 131596) "\9c\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.76.0-nightly (d86d65bbc 2023-12-10)")
  )
)