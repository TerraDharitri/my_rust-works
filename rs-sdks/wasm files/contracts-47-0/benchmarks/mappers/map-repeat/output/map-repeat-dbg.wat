(module
  (type (;0;) (func (param i32 i64)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (result i32)))
  (type (;3;) (func (param i32 i32) (result i32)))
  (type (;4;) (func (param i32 i32 i32) (result i32)))
  (type (;5;) (func (param i32)))
  (type (;6;) (func (param i32) (result i32)))
  (type (;7;) (func (param i32) (result i64)))
  (type (;8;) (func (param i32 i32)))
  (type (;9;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;10;) (func))
  (type (;11;) (func (param i64)))
  (type (;12;) (func (param i32 i32 i32 i32 i32)))
  (type (;13;) (func (param i32 i32 i32 i32)))
  (type (;14;) (func (param i32 i32 i32) (result i64)))
  (type (;15;) (func (param i32 i32) (result i64)))
  (type (;16;) (func (param i64 i32)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;0;) (type 0)))
  (import "env" "bigIntAdd" (func $bigIntAdd (;1;) (type 1)))
  (import "env" "mBufferNew" (func $mBufferNew (;2;) (type 2)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;3;) (type 3)))
  (import "env" "mBufferEq" (func $mBufferEq (;4;) (type 3)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;5;) (type 3)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;6;) (type 4)))
  (import "env" "managedSignalError" (func $managedSignalError (;7;) (type 5)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;8;) (type 6)))
  (import "env" "smallIntGetUnsignedArgument" (func $smallIntGetUnsignedArgument (;9;) (type 7)))
  (import "env" "getNumArguments" (func $getNumArguments (;10;) (type 2)))
  (import "env" "signalError" (func $signalError (;11;) (type 8)))
  (import "env" "bigIntCmp" (func $bigIntCmp (;12;) (type 3)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;13;) (type 9)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;14;) (type 4)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;15;) (type 3)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;16;) (type 3)))
  (import "env" "mBufferCopyByteSlice" (func $mBufferCopyByteSlice (;17;) (type 9)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;18;) (type 3)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;19;) (type 3)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;20;) (type 10)))
  (import "env" "smallIntFinishUnsigned" (func $smallIntFinishUnsigned (;21;) (type 11)))
  (func $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1c102167c16fd524E (;22;) (type 6) (param i32) (result i32)
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E (;23;) (type 2) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=131268
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=131268
    local.get 0
  )
  (func $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd6f5f54a0c66c659E (;24;) (type 12) (param i32 i32 i32 i32 i32)
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
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE (;25;) (type 8) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2a238543078a64b8E (;26;) (type 6) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h50e58cae5e539a74E (;27;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $mBufferEq
    i32.const 0
    i32.gt_s
  )
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17ha951a4bbc5ed9119E (;28;) (type 6) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h9d62dbdd92b1e84bE (;29;) (type 13) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131105
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he48147ecbd04f73bE
    local.tee 4
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 4
    i32.const 131128
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he48147ecbd04f73bE (;30;) (type 3) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h2bfdc5a8d550d788E (;31;) (type 13) (param i32 i32 i32 i32)
    (local i32 i32 i64 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 1
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17ha951a4bbc5ed9119E
    local.tee 5
    call $mBufferGetLength
    local.set 1
    local.get 4
    i32.const 28
    i32.add
    i32.const 0
    i32.store8
    local.get 4
    i32.const 24
    i32.add
    local.get 1
    i32.store
    local.get 4
    local.get 5
    i32.store offset=20
    local.get 4
    local.get 1
    i32.store offset=16
    local.get 4
    i32.const 0
    i32.store offset=12
    local.get 4
    i32.const 12
    i32.add
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h374a0fcebc934b34E
    local.set 1
    local.get 4
    i32.const 12
    i32.add
    local.get 2
    local.get 3
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h4420da81dc510507E
    local.set 6
    local.get 4
    i32.const 12
    i32.add
    local.get 2
    local.get 3
    call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17hc6eda88244e9c6bfE
    local.set 5
    local.get 4
    i32.const 12
    i32.add
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h374a0fcebc934b34E
    local.set 7
    local.get 4
    i32.const 12
    i32.add
    local.get 2
    local.get 3
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h4420da81dc510507E
    local.set 8
    local.get 4
    i32.const 12
    i32.add
    local.get 2
    local.get 3
    call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17hc6eda88244e9c6bfE
    local.set 9
    block ;; label = @1
      local.get 4
      i32.load offset=16
      local.get 4
      i32.load offset=12
      i32.ne
      br_if 0 (;@1;)
      block ;; label = @2
        local.get 4
        i32.load8_u offset=28
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        i32.store offset=141272
        i32.const 0
        i32.const 0
        i32.store8 offset=141276
      end
      local.get 0
      local.get 9
      i32.store offset=28
      local.get 0
      local.get 7
      i32.store offset=24
      local.get 0
      local.get 5
      i32.store offset=20
      local.get 0
      local.get 1
      i32.store offset=16
      local.get 0
      local.get 8
      i64.store offset=8
      local.get 0
      local.get 6
      i64.store
      local.get 4
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 2
    local.get 3
    i32.const 131091
    i32.const 14
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h9d62dbdd92b1e84bE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h374a0fcebc934b34E (;32;) (type 4) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 0
    i32.store offset=12
    local.get 0
    local.get 3
    i32.const 12
    i32.add
    i32.const 4
    local.get 1
    local.get 2
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17haab0ad330c1f5bddE
    local.get 3
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load
    local.tee 4
    local.get 3
    i32.const 12
    i32.add
    i32.const 4
    call $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E
    i32.wrap_i64
    local.tee 5
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h4b1d2b7574fa9543E
    block ;; label = @1
      local.get 3
      i32.load
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131156
      i32.const 15
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h9d62dbdd92b1e84bE
      unreachable
    end
    local.get 3
    i32.load offset=4
    local.set 2
    local.get 0
    local.get 4
    local.get 5
    i32.add
    i32.store
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h4420da81dc510507E (;33;) (type 14) (param i32 i32 i32) (result i64)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i64.const 0
    i64.store offset=8
    local.get 0
    local.get 3
    i32.const 8
    i32.add
    i32.const 8
    local.get 1
    local.get 2
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17haab0ad330c1f5bddE
    local.get 3
    i32.const 8
    i32.add
    i32.const 8
    call $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E
    local.set 4
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 4
  )
  (func $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17hc6eda88244e9c6bfE (;34;) (type 4) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h374a0fcebc934b34E
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h0f369c9db16fc0abE
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h6abff96fe88a34cfE (;35;) (type 6) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17ha951a4bbc5ed9119E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd2c2a8a7d6f7328aE (;36;) (type 2) (result i32)
    (local i64)
    block ;; label = @1
      i32.const 0
      call $smallIntGetUnsignedArgument
      local.tee 0
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 131080
      i32.const 11
      i32.const 131091
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h9d62dbdd92b1e84bE
      unreachable
    end
    local.get 0
    i32.wrap_i64
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h0c0f8875334ff3bdE (;37;) (type 5) (param i32)
    block ;; label = @1
      call $getNumArguments
      local.get 0
      i32.ne
      br_if 0 (;@1;)
      return
    end
    i32.const 131131
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17haab0ad330c1f5bddE (;38;) (type 12) (param i32 i32 i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h1c5e112df4e8f31aE
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 4
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h80649e3e75032eb4E
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E (;39;) (type 15) (param i32 i32) (result i64)
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
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h4b1d2b7574fa9543E (;40;) (type 13) (param i32 i32 i32 i32)
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
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hd7752f86ae7f847eE (;41;) (type 6) (param i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hf954b121dadf1305E
    local.set 2
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load
    local.tee 3
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h4b1d2b7574fa9543E
    block ;; label = @1
      local.get 1
      i32.load offset=8
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      i32.const 131156
      i32.const 15
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hbf1510b691c65b60E
      unreachable
    end
    local.get 1
    i32.load offset=12
    local.set 4
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 4
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hf954b121dadf1305E (;42;) (type 6) (param i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hed21fc94c6d54d16E
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
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hbf1510b691c65b60E (;43;) (type 8) (param i32 i32)
    (local i32)
    i32.const 131208
    i32.const 22
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he48147ecbd04f73bE
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 2
    call $managedSignalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17hb50169e04051593aE (;44;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferAppendBytes
    drop
  )
  (func $_ZN11dharitri_sc5types7managed5basic12big_uint_cmp113_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$2eq17h6d3d1eaad184c457E (;45;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $bigIntCmp
    i32.eqz
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h367b8f158ffac116E (;46;) (type 9) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h9d26952c647bcf21E (;47;) (type 6) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17hc5a10edc197e20d1E (;48;) (type 8) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferAppend
    drop
  )
  (func $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h592047cccdf95992E (;49;) (type 6) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h0f369c9db16fc0abE (;50;) (type 6) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferToBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h1c5e112df4e8f31aE (;51;) (type 9) (param i32 i32 i32 i32) (result i32)
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
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h9d26952c647bcf21E
          local.tee 6
          i32.const 10000
          i32.gt_u
          br_if 1 (;@2;)
          i32.const 0
          i32.load8_u offset=141276
          i32.const 255
          i32.and
          br_if 1 (;@2;)
          i32.const 0
          local.get 6
          i32.store offset=141272
          i32.const 0
          i32.const 1
          i32.store8 offset=141276
          local.get 4
          i32.const 8
          i32.add
          local.get 6
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h7c2024b7f6577e82E
          local.get 5
          i32.const 0
          local.get 4
          i32.load offset=8
          local.get 4
          i32.load offset=12
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h367b8f158ffac116E
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
        i32.load offset=141272
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h367b8f158ffac116E
      local.set 0
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h7c2024b7f6577e82E (;52;) (type 8) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    i32.const 131272
    i32.const 10000
    local.get 1
    call $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hb80f5d980669fa32E
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
  (func $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h95dd1a03576b7dfcE (;53;) (type 1) (param i32 i32 i32)
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
    i32.const 131272
    i32.add
    i32.store
  )
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E (;54;) (type 13) (param i32 i32 i32 i32)
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
  (func $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h673bed60d3138cbfE (;55;) (type 5) (param i32)
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
      i32.load offset=141272
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
      i32.store offset=141272
      i32.const 0
      i32.const 0
      i32.store8 offset=141276
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage11storage_get11storage_get17h00dc94dc41a18c0eE (;56;) (type 8) (param i32 i32)
    (local i32 i64 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17hd5fd38f3db4488adE
    local.get 2
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hd7752f86ae7f847eE
    local.set 1
    local.get 2
    i32.const 12
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h2334706d0d358009E
    local.set 3
    local.get 2
    i32.const 12
    i32.add
    call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17hdf7e1c53a03a91c7E
    local.set 4
    local.get 2
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hd7752f86ae7f847eE
    local.set 5
    local.get 2
    i32.const 12
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h2334706d0d358009E
    local.set 6
    local.get 2
    i32.const 12
    i32.add
    call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17hdf7e1c53a03a91c7E
    local.set 7
    block ;; label = @1
      local.get 2
      i32.load offset=16
      local.get 2
      i32.load offset=12
      i32.ne
      br_if 0 (;@1;)
      block ;; label = @2
        local.get 2
        i32.const 28
        i32.add
        i32.load8_u
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        i32.store offset=141272
        i32.const 0
        i32.const 0
        i32.store8 offset=141276
      end
      local.get 0
      local.get 7
      i32.store offset=28
      local.get 0
      local.get 5
      i32.store offset=24
      local.get 0
      local.get 4
      i32.store offset=20
      local.get 0
      local.get 1
      i32.store offset=16
      local.get 0
      local.get 6
      i64.store offset=8
      local.get 0
      local.get 3
      i64.store
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131091
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hbf1510b691c65b60E
    unreachable
  )
  (func $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17hd5fd38f3db4488adE (;57;) (type 8) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h4abac6c854e700f4E
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h2334706d0d358009E (;58;) (type 7) (param i32) (result i64)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hed21fc94c6d54d16E
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
  (func $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17hdf7e1c53a03a91c7E (;59;) (type 6) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hd7752f86ae7f847eE
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h0f369c9db16fc0abE
  )
  (func $_ZN11dharitri_sc7storage11storage_get11storage_get17h8c28397c0ab95363E (;60;) (type 6) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h4abac6c854e700f4E
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h4abac6c854e700f4E (;61;) (type 6) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h3297f10db5a82848E (;62;) (type 8) (param i32 i32)
    local.get 1
    i32.load offset=16
    local.get 0
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h19ba321c5ba99de1E
    local.get 1
    i64.load
    local.get 0
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17hc6a910f200f2645aE
    local.get 1
    i32.load offset=20
    local.get 0
    call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h3d54c498a9967075E
    local.get 1
    i32.load offset=24
    local.get 0
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h19ba321c5ba99de1E
    local.get 1
    i64.load offset=8
    local.get 0
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17hc6a910f200f2645aE
    local.get 1
    i32.load offset=28
    local.get 0
    call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h3d54c498a9967075E
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h19ba321c5ba99de1E (;63;) (type 8) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h9d26952c647bcf21E
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17hb50169e04051593aE
    local.get 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17hc5a10edc197e20d1E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17hc6a910f200f2645aE (;64;) (type 16) (param i64 i32)
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17hb50169e04051593aE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h3d54c498a9967075E (;65;) (type 8) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h592047cccdf95992E
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h19ba321c5ba99de1E
  )
  (func $_ZN11dharitri_sc7storage11storage_set11storage_set17h0df89f44ffb99f48E (;66;) (type 8) (param i32 i32)
    (local i32 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i64.extend_i32_u
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
    i64.store offset=8
    block ;; label = @1
      block ;; label = @2
        local.get 1
        br_if 0 (;@2;)
        i32.const 131252
        local.set 4
        i32.const 0
        local.set 1
        br 1 (;@1;)
      end
      i32.const 0
      local.set 1
      loop ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 1
            i32.const 8
            i32.eq
            br_if 0 (;@4;)
            local.get 2
            i32.const 8
            i32.add
            local.get 1
            i32.add
            local.tee 4
            i32.load8_u
            i32.eqz
            br_if 1 (;@3;)
            i32.const 8
            local.get 1
            i32.sub
            local.set 1
            br 3 (;@1;)
          end
          call $_ZN4core9panicking18panic_bounds_check17hdbf723dd9cf95e6aE
          unreachable
        end
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 4
    local.get 1
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h4fe0d00d846706eaE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN4core9panicking18panic_bounds_check17hdbf723dd9cf95e6aE (;67;) (type 10)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h4fe0d00d846706eaE (;68;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he48147ecbd04f73bE
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage11storage_set11storage_set17h1da34d1938841783E (;69;) (type 5) (param i32)
    local.get 0
    i32.const 131252
    i32.const 0
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h4fe0d00d846706eaE
  )
  (func $_ZN11dharitri_sc7storage11storage_set13storage_clear17hfc9c850f714f33beE (;70;) (type 5) (param i32)
    i32.const -20
    i32.const 131252
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
    i32.const -20
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$15build_named_key17h0936e06f91c0208eE (;71;) (type 3) (param i32 i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2a238543078a64b8E
    local.tee 0
    i32.const 131171
    i32.const 7
    call $mBufferAppendBytes
    drop
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h3297f10db5a82848E
    local.get 0
  )
  (func $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$15build_named_key17h5f2bd4a37dc561e4E (;72;) (type 3) (param i32 i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2a238543078a64b8E
    local.tee 0
    i32.const 131171
    i32.const 7
    call $mBufferAppendBytes
    drop
    local.get 1
    local.get 0
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h19ba321c5ba99de1E
    local.get 0
  )
  (func $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$16get_mapped_value17h266fbe0583aa1b4aE (;73;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$15build_named_key17h5f2bd4a37dc561e4E
    call $_ZN11dharitri_sc7storage11storage_get11storage_get17h8c28397c0ab95363E
  )
  (func $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$16get_mapped_value17haa87c79648ab47dbE (;74;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$15build_named_key17h0936e06f91c0208eE
    call $_ZN11dharitri_sc7storage11storage_get11storage_get17h00dc94dc41a18c0eE
  )
  (func $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$3get17h8d4fe72d1e9b7e71E (;75;) (type 13) (param i32 i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        local.get 1
        local.get 3
        call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$8contains17h5f6d93cdc75e10cdE
        br_if 0 (;@2;)
        i32.const 0
        local.set 1
        br 1 (;@1;)
      end
      i32.const 1
      local.set 1
      local.get 2
      local.get 3
      call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$16get_mapped_value17h266fbe0583aa1b4aE
      local.set 3
    end
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$8contains17h5f6d93cdc75e10cdE (;76;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$11get_node_id17h1808dbbc6103e264E
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$3get17h9ba8d42f678cb63aE (;77;) (type 13) (param i32 i32 i32 i32)
    (local i64)
    i64.const 0
    local.set 4
    block ;; label = @1
      local.get 1
      local.get 3
      call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$8contains17h93d0924b089db7fbE
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 8
      i32.add
      local.get 2
      local.get 3
      call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$16get_mapped_value17haa87c79648ab47dbE
      i64.const 1
      local.set 4
    end
    local.get 0
    local.get 4
    i64.store
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$8contains17h93d0924b089db7fbE (;78;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$11get_node_id17h9899a97f3c68f7f8E
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$11get_node_id17h1808dbbc6103e264E (;79;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17h8d0d6151612ba1b3E
    call $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17h0dbd345da2c47f06E
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17h8d0d6151612ba1b3E (;80;) (type 3) (param i32 i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2a238543078a64b8E
    local.tee 0
    i32.const 131178
    i32.const 8
    call $mBufferAppendBytes
    drop
    local.get 1
    local.get 0
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h19ba321c5ba99de1E
    local.get 0
  )
  (func $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17h0dbd345da2c47f06E (;81;) (type 6) (param i32) (result i32)
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
        call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h4abac6c854e700f4E
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
        call $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hb80f5d980669fa32E
        local.get 0
        i32.const 0
        local.get 1
        i32.load
        local.tee 2
        local.get 1
        i32.load offset=4
        local.tee 3
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h367b8f158ffac116E
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
      i32.const 131091
      i32.const 14
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hbf1510b691c65b60E
      unreachable
    end
    i32.const 131091
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hbf1510b691c65b60E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$11get_node_id17h9899a97f3c68f7f8E (;82;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17hc009d18a647eb68dE
    call $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17h0dbd345da2c47f06E
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17hc009d18a647eb68dE (;83;) (type 3) (param i32 i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2a238543078a64b8E
    local.tee 0
    i32.const 131178
    i32.const 8
    call $mBufferAppendBytes
    drop
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h3297f10db5a82848E
    local.get 0
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17ha87d5969fc07ccf9E (;84;) (type 8) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$14build_name_key17hae0448d6b7263ec0E
    local.set 0
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h01426126f5dc0d48E
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
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h635d96690b3bf5f2E
        local.get 1
        i32.load offset=4
        local.get 2
        i32.const 8
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h635d96690b3bf5f2E
        local.get 1
        i32.load offset=8
        local.get 2
        i32.const 8
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h635d96690b3bf5f2E
        local.get 1
        i32.load offset=12
        local.get 2
        i32.const 8
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h635d96690b3bf5f2E
        local.get 0
        local.get 2
        i32.load offset=8
        local.get 2
        i32.load8_u offset=12
        call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h3b72903a31fc128dE
        br 1 (;@1;)
      end
      local.get 0
      i32.const 131252
      i32.const 0
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h4fe0d00d846706eaE
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$14build_name_key17hae0448d6b7263ec0E (;85;) (type 6) (param i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2a238543078a64b8E
    local.tee 0
    i32.const 131203
    i32.const 5
    call $mBufferAppendBytes
    drop
    local.get 0
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h01426126f5dc0d48E (;86;) (type 5) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        i32.const 0
        i32.load8_u offset=141276
        local.tee 2
        br_if 0 (;@2;)
        i32.const 0
        i32.const 1
        i32.store8 offset=141276
        i32.const 0
        i32.const 0
        i32.store offset=141272
        local.get 1
        i32.const 8
        i32.add
        i32.const 0
        call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h7c2024b7f6577e82E
        local.get 1
        i32.load offset=8
        local.get 1
        i32.load offset=12
        i32.const 131252
        i32.const 0
        call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
        call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
        local.tee 3
        i32.const 131252
        i32.const 0
        call $mBufferSetBytes
        drop
        br 1 (;@1;)
      end
      i32.const 131252
      i32.const 0
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he48147ecbd04f73bE
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h635d96690b3bf5f2E (;87;) (type 8) (param i32 i32)
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
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h5df6645af7bb95feE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h3b72903a31fc128dE (;88;) (type 1) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 2
    i32.store8 offset=12
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h673bed60d3138cbfE
    local.get 3
    i32.load offset=8
    local.set 2
    block ;; label = @1
      local.get 3
      i32.load8_u offset=12
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      i32.store offset=141272
      i32.const 0
      i32.const 0
      i32.store8 offset=141276
    end
    local.get 0
    local.get 2
    call $mBufferStorageStore
    drop
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h41ddc977be5a0ad4E (;89;) (type 13) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 0
    i32.const 131186
    i32.const 11
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h4cebf2e9dfddbe2eE
    local.set 1
    local.get 4
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h01426126f5dc0d48E
    local.get 4
    local.get 4
    i32.load8_u offset=4
    i32.store8 offset=12
    local.get 4
    local.get 4
    i32.load
    i32.store offset=8
    local.get 2
    local.get 4
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h635d96690b3bf5f2E
    local.get 3
    local.get 4
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h635d96690b3bf5f2E
    local.get 1
    local.get 4
    i32.load offset=8
    local.get 4
    i32.load8_u offset=12
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h3b72903a31fc128dE
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h4cebf2e9dfddbe2eE (;90;) (type 9) (param i32 i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2a238543078a64b8E
    local.tee 0
    local.get 1
    local.get 2
    call $mBufferAppendBytes
    drop
    local.get 4
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
    i32.store offset=12
    local.get 0
    local.get 4
    i32.const 12
    i32.add
    i32.const 4
    call $mBufferAppendBytes
    drop
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17h7254127ae160239fE (;91;) (type 8) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$14build_name_key17hae0448d6b7263ec0E
    local.tee 1
    i32.const -25
    call $mBufferStorageLoad
    drop
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          i32.const -25
          call $mBufferGetLength
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
        call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17hd5fd38f3db4488adE
        local.get 2
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hf954b121dadf1305E
        local.set 1
        local.get 2
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hf954b121dadf1305E
        local.set 3
        local.get 2
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hf954b121dadf1305E
        local.set 4
        local.get 2
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hf954b121dadf1305E
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
        i32.store offset=141272
        i32.const 0
        i32.const 0
        i32.store8 offset=141276
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
    i32.const 131091
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hbf1510b691c65b60E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17hb1bc91b3692b639fE (;92;) (type 1) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 12
    i32.add
    local.get 1
    i32.const 131186
    i32.const 11
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h4cebf2e9dfddbe2eE
    call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17hd5fd38f3db4488adE
    local.get 3
    i32.const 12
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hf954b121dadf1305E
    local.set 2
    local.get 3
    i32.const 12
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hf954b121dadf1305E
    local.set 1
    block ;; label = @1
      local.get 3
      i32.load offset=16
      local.get 3
      i32.load offset=12
      i32.ne
      br_if 0 (;@1;)
      block ;; label = @2
        local.get 3
        i32.const 28
        i32.add
        i32.load8_u
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        i32.store offset=141272
        i32.const 0
        i32.const 0
        i32.store8 offset=141276
      end
      local.get 0
      local.get 1
      i32.store offset=4
      local.get 0
      local.get 2
      i32.store
      local.get 3
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131091
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hbf1510b691c65b60E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17h2b9d9519d96b1f38E (;93;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    i32.const 131197
    i32.const 6
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h4cebf2e9dfddbe2eE
    call $_ZN11dharitri_sc7storage11storage_get11storage_get17h00dc94dc41a18c0eE
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17hdc8cd25b035ababfE (;94;) (type 3) (param i32 i32) (result i32)
    local.get 0
    i32.const 131197
    i32.const 6
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h4cebf2e9dfddbe2eE
    call $_ZN11dharitri_sc7storage11storage_get11storage_get17h8c28397c0ab95363E
  )
  (func $_ZN121_$LT$benchmark_common..example_struct..ExampleStruct$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17hc6e8530dd681ef48E (;95;) (type 8) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h01426126f5dc0d48E
    local.get 2
    local.get 2
    i32.load8_u offset=4
    i32.store8 offset=12
    local.get 2
    local.get 2
    i32.load
    i32.store offset=8
    local.get 0
    i32.load offset=16
    local.get 2
    i32.const 8
    i32.add
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h19514816791816b3E
    local.get 0
    i64.load
    local.get 2
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h464d7ed18e7de1b9E
    local.get 0
    i32.load offset=20
    local.get 2
    i32.const 8
    i32.add
    call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17haa33e0e74f217273E
    local.get 0
    i32.load offset=24
    local.get 2
    i32.const 8
    i32.add
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h19514816791816b3E
    local.get 0
    i64.load offset=8
    local.get 2
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h464d7ed18e7de1b9E
    local.get 0
    i32.load offset=28
    local.get 2
    i32.const 8
    i32.add
    call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17haa33e0e74f217273E
    local.get 1
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load8_u offset=12
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h3b72903a31fc128dE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h19514816791816b3E (;96;) (type 8) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h9d26952c647bcf21E
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
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h5df6645af7bb95feE
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.load8_u offset=4
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h9d26952c647bcf21E
          local.set 3
          i32.const 10000
          i32.const 0
          i32.load offset=141272
          local.tee 4
          i32.sub
          local.get 3
          i32.lt_u
          br_if 1 (;@2;)
          local.get 2
          local.get 4
          local.get 4
          local.get 3
          i32.add
          local.tee 3
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hbf2a32b91b2fbf43E
          local.get 0
          i32.const 0
          local.get 2
          i32.load
          local.get 2
          i32.load offset=4
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h367b8f158ffac116E
          drop
          i32.const 0
          local.get 3
          i32.store offset=141272
          br 2 (;@1;)
        end
        local.get 1
        i32.load
        local.get 0
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17hc5a10edc197e20d1E
        br 1 (;@1;)
      end
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h673bed60d3138cbfE
      local.get 1
      i32.load
      local.get 0
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17hc5a10edc197e20d1E
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h464d7ed18e7de1b9E (;97;) (type 16) (param i64 i32)
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
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h5df6645af7bb95feE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17haa33e0e74f217273E (;98;) (type 8) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h592047cccdf95992E
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h19514816791816b3E
  )
  (func $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hb80f5d980669fa32E (;99;) (type 13) (param i32 i32 i32 i32)
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
    call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd6f5f54a0c66c659E
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
  (func $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h5df6645af7bb95feE (;100;) (type 1) (param i32 i32 i32)
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
          i32.load offset=141272
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
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hbf2a32b91b2fbf43E
          local.get 3
          i32.load offset=8
          local.get 3
          i32.load offset=12
          local.get 1
          local.get 2
          call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
          i32.const 0
          local.get 0
          i32.store offset=141272
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
      call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h673bed60d3138cbfE
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
  (func $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hbf2a32b91b2fbf43E (;101;) (type 1) (param i32 i32 i32)
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
    i32.const 131272
    i32.const 10000
    call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd6f5f54a0c66c659E
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
  (func $_ZN16benchmark_common16benchmark_common15BenchmarkCommon12append_index17h6fd935e0c13722d3E (;102;) (type 3) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2a238543078a64b8E
    local.set 0
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
  (func $_ZN16benchmark_common16benchmark_common15BenchmarkCommon16use_index_struct17h7be275e35cfcf256E (;103;) (type 1) (param i32 i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    call $_ZN95_$LT$benchmark_common..example_struct..ExampleStruct$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h57a1453a5608d50dE
    local.get 0
    local.get 2
    i64.extend_i32_u
    local.tee 4
    i64.store
    local.get 0
    i32.const 8
    i32.add
    local.get 4
    i64.store
    local.get 0
    i32.const 16
    i32.add
    local.get 3
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 24
    i32.add
    local.get 3
    i32.const 24
    i32.add
    i64.load
    i64.store
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN95_$LT$benchmark_common..example_struct..ExampleStruct$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h57a1453a5608d50dE (;104;) (type 8) (param i32 i32)
    (local i32 i64 i32 i32 i64)
    local.get 1
    i32.load offset=16
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2a238543078a64b8E
    local.set 2
    local.get 1
    i64.load
    local.set 3
    local.get 1
    i32.load offset=20
    call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1c102167c16fd524E
    local.set 4
    local.get 1
    i32.load offset=24
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2a238543078a64b8E
    local.set 5
    local.get 1
    i64.load offset=8
    local.set 6
    local.get 1
    i32.load offset=28
    call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1c102167c16fd524E
    local.set 1
    local.get 0
    local.get 5
    i32.store offset=24
    local.get 0
    local.get 4
    i32.store offset=20
    local.get 0
    local.get 3
    i64.store
    local.get 0
    local.get 2
    i32.store offset=16
    local.get 0
    local.get 1
    i32.store offset=28
    local.get 0
    local.get 6
    i64.store offset=8
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hed21fc94c6d54d16E (;105;) (type 1) (param i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h1c5e112df4e8f31aE
      i32.eqz
      br_if 0 (;@1;)
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17had5d9c2301f4ca96E
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h80649e3e75032eb4E (;106;) (type 8) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 131156
    i32.const 15
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h9d62dbdd92b1e84bE
    unreachable
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17had5d9c2301f4ca96E (;107;) (type 10)
    i32.const 131156
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hbf1510b691c65b60E
    unreachable
  )
  (func $_ZN43_$LT$C$u20$as$u20$map_repeat..MapRepeat$GT$12bench_struct17h272ee37e07e63e66E (;108;) (type 5) (param i32)
    (local i32 i32 i32)
    i32.const 131230
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he48147ecbd04f73bE
    local.tee 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2a238543078a64b8E
    local.set 2
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2a238543078a64b8E
    local.set 3
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
    local.get 0
    local.get 2
    i32.store offset=8
  )
  (func $_ZN43_$LT$C$u20$as$u20$map_repeat..MapRepeat$GT$5bench17h6277dc0e44f5625eE (;109;) (type 5) (param i32)
    (local i32 i32 i32)
    i32.const 131242
    i32.const 9
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he48147ecbd04f73bE
    local.tee 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2a238543078a64b8E
    local.set 2
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2a238543078a64b8E
    local.set 3
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
    local.get 0
    local.get 2
    i32.store offset=8
  )
  (func $_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h641a18bdb444bc43E (;110;) (type 8) (param i32 i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 2
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load8_u offset=8
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      local.get 1
      i32.load
      local.tee 3
      local.get 1
      i32.load offset=4
      local.tee 4
      i32.gt_u
      br_if 0 (;@1;)
      block ;; label = @2
        local.get 3
        local.get 4
        i32.lt_u
        br_if 0 (;@2;)
        i32.const 1
        local.set 2
        local.get 1
        i32.const 1
        i32.store8 offset=8
        br 1 (;@1;)
      end
      i32.const 1
      local.set 2
      local.get 1
      local.get 3
      i32.const 1
      i32.add
      i32.store
    end
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $rust_begin_unwind (;111;) (type 10)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE (;112;) (type 10)
    i32.const 131252
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;113;) (type 10)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h0c0f8875334ff3bdE
  )
  (func $add (;114;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h0c0f8875334ff3bdE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd2c2a8a7d6f7328aE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h6abff96fe88a34cfE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h6abff96fe88a34cfE
    local.set 3
    local.get 0
    i32.const 20
    i32.add
    call $_ZN43_$LT$C$u20$as$u20$map_repeat..MapRepeat$GT$5bench17h6277dc0e44f5625eE
    local.get 0
    i32.load offset=24
    local.set 4
    local.get 0
    i32.load offset=28
    local.set 5
    local.get 0
    i32.load offset=20
    local.set 6
    i32.const 0
    local.set 7
    block ;; label = @1
      loop ;; label = @2
        local.get 1
        local.get 7
        i32.eq
        br_if 1 (;@1;)
        local.get 2
        local.get 7
        call $_ZN16benchmark_common16benchmark_common15BenchmarkCommon12append_index17h6fd935e0c13722d3E
        local.set 8
        local.get 3
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2a238543078a64b8E
        local.set 9
        local.get 0
        i32.const 8
        i32.add
        local.get 6
        local.get 5
        local.get 8
        call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$3get17h8d4fe72d1e9b7e71E
        local.get 5
        local.get 8
        call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$15build_named_key17h5f2bd4a37dc561e4E
        local.get 9
        call $mBufferStorageStore
        drop
        block ;; label = @3
          local.get 6
          local.get 8
          call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$8contains17h5f6d93cdc75e10cdE
          br_if 0 (;@3;)
          local.get 0
          i32.const 32
          i32.add
          local.get 4
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17h7254127ae160239fE
          local.get 0
          local.get 0
          i32.load offset=44
          i32.const 1
          i32.add
          local.tee 9
          i32.store offset=44
          block ;; label = @4
            block ;; label = @5
              local.get 0
              i32.load offset=32
              local.tee 10
              br_if 0 (;@5;)
              local.get 0
              local.get 9
              i32.store offset=36
              i32.const 0
              local.set 11
              br 1 (;@4;)
            end
            local.get 0
            local.get 4
            local.get 0
            i32.load offset=40
            local.tee 11
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17hb1bc91b3692b639fE
            local.get 4
            local.get 11
            local.get 0
            i32.load
            local.get 9
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h41ddc977be5a0ad4E
          end
          local.get 4
          local.get 9
          local.get 11
          i32.const 0
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h41ddc977be5a0ad4E
          local.get 0
          local.get 9
          i32.store offset=40
          local.get 4
          i32.const 131197
          i32.const 6
          local.get 9
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h4cebf2e9dfddbe2eE
          local.get 8
          call $mBufferStorageStore
          drop
          local.get 0
          local.get 10
          i32.const 1
          i32.add
          i32.store offset=32
          local.get 4
          local.get 0
          i32.const 32
          i32.add
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17ha87d5969fc07ccf9E
          local.get 6
          local.get 8
          call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17h8d0d6151612ba1b3E
          local.get 9
          call $_ZN11dharitri_sc7storage11storage_set11storage_set17h0df89f44ffb99f48E
        end
        local.get 7
        i32.const 1
        i32.add
        local.set 7
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $count (;115;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h0c0f8875334ff3bdE
    i32.const 0
    local.set 1
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h6abff96fe88a34cfE
    local.set 2
    local.get 0
    i32.const 20
    i32.add
    call $_ZN43_$LT$C$u20$as$u20$map_repeat..MapRepeat$GT$5bench17h6277dc0e44f5625eE
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    i32.load offset=24
    local.tee 3
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17h7254127ae160239fE
    local.get 0
    i32.load offset=36
    local.set 4
    local.get 0
    i32.load offset=28
    local.set 5
    local.get 0
    i32.load offset=20
    local.set 6
    block ;; label = @1
      block ;; label = @2
        loop ;; label = @3
          local.get 4
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.const 8
          i32.add
          local.get 3
          local.get 4
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17hb1bc91b3692b639fE
          local.get 0
          i32.load offset=12
          local.set 7
          local.get 0
          local.get 6
          local.get 5
          local.get 3
          local.get 4
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17hdc8cd25b035ababfE
          call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$3get17h8d4fe72d1e9b7e71E
          local.get 0
          i32.load
          i32.eqz
          br_if 2 (;@1;)
          local.get 1
          local.get 0
          i32.load offset=4
          local.get 2
          call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h50e58cae5e539a74E
          i32.add
          local.set 1
          local.get 7
          local.set 4
          br 0 (;@3;)
        end
      end
      local.get 1
      i64.extend_i32_u
      call $smallIntFinishUnsigned
      local.get 0
      i32.const 48
      i32.add
      global.set $__stack_pointer
      return
    end
    call $_ZN4core9panicking18panic_bounds_check17hdbf723dd9cf95e6aE
    unreachable
  )
  (func $remove (;116;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h0c0f8875334ff3bdE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd2c2a8a7d6f7328aE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h6abff96fe88a34cfE
    local.set 2
    local.get 0
    i32.const 40
    i32.add
    call $_ZN43_$LT$C$u20$as$u20$map_repeat..MapRepeat$GT$5bench17h6277dc0e44f5625eE
    local.get 0
    i32.const 0
    i32.store8 offset=60
    local.get 0
    local.get 1
    i32.store offset=56
    local.get 0
    i32.const 1
    i32.store offset=52
    local.get 0
    i32.load offset=48
    local.set 3
    local.get 0
    i32.load offset=44
    local.set 1
    local.get 0
    i32.load offset=40
    local.set 4
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 32
        i32.add
        local.get 0
        i32.const 52
        i32.add
        call $_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h641a18bdb444bc43E
        local.get 0
        i32.load offset=32
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 2
        local.get 0
        i32.load offset=36
        call $_ZN16benchmark_common16benchmark_common15BenchmarkCommon12append_index17h6fd935e0c13722d3E
        local.tee 5
        call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$11get_node_id17h1808dbbc6103e264E
        local.tee 6
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 24
        i32.add
        local.get 1
        local.get 6
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17hb1bc91b3692b639fE
        local.get 0
        i32.load offset=28
        local.set 7
        local.get 0
        i32.load offset=24
        local.set 8
        local.get 0
        i32.const 64
        i32.add
        local.get 1
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17h7254127ae160239fE
        block ;; label = @3
          block ;; label = @4
            local.get 8
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.const 16
            i32.add
            local.get 1
            local.get 8
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17hb1bc91b3692b639fE
            local.get 1
            local.get 8
            local.get 0
            i32.load offset=16
            local.get 7
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h41ddc977be5a0ad4E
            br 1 (;@3;)
          end
          local.get 0
          local.get 7
          i32.store offset=68
        end
        block ;; label = @3
          block ;; label = @4
            local.get 7
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.const 8
            i32.add
            local.get 1
            local.get 7
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17hb1bc91b3692b639fE
            local.get 1
            local.get 7
            local.get 8
            local.get 0
            i32.load offset=12
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h41ddc977be5a0ad4E
            br 1 (;@3;)
          end
          local.get 0
          local.get 8
          i32.store offset=72
        end
        local.get 1
        i32.const 131186
        i32.const 11
        local.get 6
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h4cebf2e9dfddbe2eE
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h1da34d1938841783E
        local.get 1
        local.get 6
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17hdc8cd25b035ababfE
        drop
        local.get 1
        i32.const 131197
        i32.const 6
        local.get 6
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h4cebf2e9dfddbe2eE
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h1da34d1938841783E
        local.get 0
        local.get 0
        i32.load offset=64
        i32.const -1
        i32.add
        i32.store offset=64
        local.get 1
        local.get 0
        i32.const 64
        i32.add
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17ha87d5969fc07ccf9E
        local.get 4
        local.get 5
        call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17h8d0d6151612ba1b3E
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h1da34d1938841783E
        local.get 3
        local.get 5
        call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$16get_mapped_value17h266fbe0583aa1b4aE
        drop
        local.get 3
        local.get 5
        call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$15build_named_key17h5f2bd4a37dc561e4E
        call $_ZN11dharitri_sc7storage11storage_set13storage_clear17hfc9c850f714f33beE
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $add_struct (;117;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 272
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h0c0f8875334ff3bdE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd2c2a8a7d6f7328aE
    local.set 1
    local.get 0
    i32.const 144
    i32.add
    i32.const 1
    i32.const 131077
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h2bfdc5a8d550d788E
    local.get 0
    i32.const 176
    i32.add
    i32.const 2
    i32.const 131072
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h2bfdc5a8d550d788E
    local.get 0
    i32.const 76
    i32.add
    local.get 0
    i32.const 144
    i32.add
    i32.const 64
    call $memcpy
    drop
    local.get 0
    i32.const 40
    i32.add
    i32.const 8
    i32.add
    local.get 0
    i32.const 116
    i32.add
    i64.load align=4
    i64.store
    local.get 0
    i32.const 40
    i32.add
    i32.const 16
    i32.add
    local.get 0
    i32.const 124
    i32.add
    i64.load align=4
    i64.store
    local.get 0
    i32.const 40
    i32.add
    i32.const 24
    i32.add
    local.get 0
    i32.const 132
    i32.add
    i64.load align=4
    i64.store
    local.get 0
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 0
    i32.const 84
    i32.add
    i64.load align=4
    i64.store
    local.get 0
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 0
    i32.const 92
    i32.add
    i64.load align=4
    i64.store
    local.get 0
    i32.const 8
    i32.add
    i32.const 24
    i32.add
    local.get 0
    i32.const 100
    i32.add
    i64.load align=4
    i64.store
    local.get 0
    local.get 0
    i64.load offset=108 align=4
    i64.store offset=40
    local.get 0
    local.get 0
    i64.load offset=76 align=4
    i64.store offset=8
    local.get 0
    i32.const 212
    i32.add
    call $_ZN43_$LT$C$u20$as$u20$map_repeat..MapRepeat$GT$12bench_struct17h272ee37e07e63e66E
    local.get 0
    i32.load offset=216
    local.set 2
    local.get 0
    i32.load offset=220
    local.set 3
    local.get 0
    i32.load offset=212
    local.set 4
    i32.const 0
    local.set 5
    block ;; label = @1
      loop ;; label = @2
        local.get 1
        local.get 5
        i32.eq
        br_if 1 (;@1;)
        local.get 0
        i32.const 224
        i32.add
        local.get 0
        i32.const 8
        i32.add
        local.get 5
        call $_ZN16benchmark_common16benchmark_common15BenchmarkCommon16use_index_struct17h7be275e35cfcf256E
        local.get 0
        i32.const 144
        i32.add
        local.get 0
        i32.const 40
        i32.add
        call $_ZN95_$LT$benchmark_common..example_struct..ExampleStruct$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h57a1453a5608d50dE
        local.get 0
        i32.const 72
        i32.add
        local.get 4
        local.get 3
        local.get 0
        i32.const 224
        i32.add
        call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$3get17h9ba8d42f678cb63aE
        local.get 0
        i32.const 144
        i32.add
        local.get 3
        local.get 0
        i32.const 224
        i32.add
        call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$15build_named_key17h0936e06f91c0208eE
        call $_ZN121_$LT$benchmark_common..example_struct..ExampleStruct$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17hc6e8530dd681ef48E
        block ;; label = @3
          local.get 4
          local.get 0
          i32.const 224
          i32.add
          call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$8contains17h93d0924b089db7fbE
          br_if 0 (;@3;)
          local.get 0
          i32.const 256
          i32.add
          local.get 2
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17h7254127ae160239fE
          local.get 0
          local.get 0
          i32.load offset=268
          i32.const 1
          i32.add
          local.tee 6
          i32.store offset=268
          block ;; label = @4
            block ;; label = @5
              local.get 0
              i32.load offset=256
              local.tee 7
              br_if 0 (;@5;)
              local.get 0
              local.get 6
              i32.store offset=260
              i32.const 0
              local.set 8
              br 1 (;@4;)
            end
            local.get 0
            local.get 2
            local.get 0
            i32.load offset=264
            local.tee 8
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17hb1bc91b3692b639fE
            local.get 2
            local.get 8
            local.get 0
            i32.load
            local.get 6
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h41ddc977be5a0ad4E
          end
          local.get 2
          local.get 6
          local.get 8
          i32.const 0
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h41ddc977be5a0ad4E
          local.get 0
          local.get 6
          i32.store offset=264
          local.get 0
          i32.const 224
          i32.add
          local.get 2
          i32.const 131197
          i32.const 6
          local.get 6
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h4cebf2e9dfddbe2eE
          call $_ZN121_$LT$benchmark_common..example_struct..ExampleStruct$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17hc6e8530dd681ef48E
          local.get 0
          local.get 7
          i32.const 1
          i32.add
          i32.store offset=256
          local.get 2
          local.get 0
          i32.const 256
          i32.add
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17ha87d5969fc07ccf9E
          local.get 4
          local.get 0
          i32.const 224
          i32.add
          call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17hc009d18a647eb68dE
          local.get 6
          call $_ZN11dharitri_sc7storage11storage_set11storage_set17h0df89f44ffb99f48E
        end
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 272
    i32.add
    global.set $__stack_pointer
  )
  (func $memcpy (;118;) (type 4) (param i32 i32 i32) (result i32)
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
  (func $count_struct (;119;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 144
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h0c0f8875334ff3bdE
    i32.const 0
    local.set 1
    local.get 0
    i32.const 16
    i32.add
    i32.const 0
    i32.const 131072
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h2bfdc5a8d550d788E
    local.get 0
    i32.const 52
    i32.add
    call $_ZN43_$LT$C$u20$as$u20$map_repeat..MapRepeat$GT$12bench_struct17h272ee37e07e63e66E
    local.get 0
    i32.const 104
    i32.add
    local.get 0
    i32.load offset=56
    local.tee 2
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17h7254127ae160239fE
    local.get 0
    i32.load offset=108
    local.set 3
    local.get 0
    i32.const 72
    i32.add
    local.set 4
    local.get 0
    i32.load offset=44
    local.set 5
    local.get 0
    i32.load offset=40
    local.set 6
    local.get 0
    i32.load offset=36
    local.set 7
    local.get 0
    i32.load offset=32
    local.set 8
    local.get 0
    i32.load offset=60
    local.set 9
    local.get 0
    i32.load offset=52
    local.set 10
    local.get 0
    i64.load offset=24
    local.set 11
    local.get 0
    i64.load offset=16
    local.set 12
    block ;; label = @1
      block ;; label = @2
        loop ;; label = @3
          local.get 3
          local.tee 13
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.const 8
          i32.add
          local.get 2
          local.get 13
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17hb1bc91b3692b639fE
          local.get 0
          i32.load offset=12
          local.set 3
          local.get 4
          local.get 2
          local.get 13
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17h2b9d9519d96b1f38E
          local.get 0
          i64.const 1
          i64.store offset=64
          local.get 0
          i32.const 104
          i32.add
          local.get 10
          local.get 9
          local.get 4
          call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$3get17h9ba8d42f678cb63aE
          local.get 0
          i64.load offset=104
          i64.const 0
          i64.eq
          br_if 2 (;@1;)
          local.get 0
          i32.load offset=140
          local.set 14
          local.get 0
          i32.load offset=136
          local.set 15
          local.get 0
          i32.load offset=132
          local.set 16
          local.get 0
          i64.load offset=120
          local.set 17
          local.get 0
          i64.load offset=112
          local.set 18
          i32.const 0
          local.set 13
          block ;; label = @4
            local.get 0
            i32.load offset=128
            local.get 8
            call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h50e58cae5e539a74E
            i32.eqz
            br_if 0 (;@4;)
            local.get 18
            local.get 12
            i64.ne
            br_if 0 (;@4;)
            local.get 16
            local.get 7
            call $_ZN11dharitri_sc5types7managed5basic12big_uint_cmp113_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$2eq17h6d3d1eaad184c457E
            i32.eqz
            br_if 0 (;@4;)
            local.get 15
            local.get 6
            call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h50e58cae5e539a74E
            i32.eqz
            br_if 0 (;@4;)
            local.get 17
            local.get 11
            i64.ne
            br_if 0 (;@4;)
            local.get 14
            local.get 5
            call $_ZN11dharitri_sc5types7managed5basic12big_uint_cmp113_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$2eq17h6d3d1eaad184c457E
            local.set 13
          end
          local.get 13
          local.get 1
          i32.add
          local.set 1
          br 0 (;@3;)
        end
      end
      local.get 1
      i64.extend_i32_u
      call $smallIntFinishUnsigned
      local.get 0
      i32.const 144
      i32.add
      global.set $__stack_pointer
      return
    end
    call $_ZN4core9panicking18panic_bounds_check17hdbf723dd9cf95e6aE
    unreachable
  )
  (func $remove_struct (;120;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 224
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h0c0f8875334ff3bdE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd2c2a8a7d6f7328aE
    local.set 1
    local.get 0
    i32.const 168
    i32.add
    i32.const 8
    i32.add
    local.tee 2
    i32.const 1
    i32.const 131077
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h2bfdc5a8d550d788E
    local.get 0
    i32.const 40
    i32.add
    i32.const 24
    i32.add
    local.get 0
    i32.const 200
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 40
    i32.add
    i32.const 16
    i32.add
    local.get 0
    i32.const 168
    i32.add
    i32.const 24
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 40
    i32.add
    i32.const 8
    i32.add
    local.get 0
    i32.const 168
    i32.add
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 0
    local.get 0
    i64.load offset=176
    i64.store offset=40
    local.get 0
    i32.const 72
    i32.add
    call $_ZN43_$LT$C$u20$as$u20$map_repeat..MapRepeat$GT$12bench_struct17h272ee37e07e63e66E
    local.get 0
    i32.const 0
    i32.store8 offset=92
    local.get 0
    local.get 1
    i32.store offset=88
    local.get 0
    i32.const 1
    i32.store offset=84
    local.get 0
    i32.const 96
    i32.add
    i32.const 8
    i32.add
    local.set 3
    local.get 0
    i32.load offset=80
    local.set 4
    local.get 0
    i32.load offset=76
    local.set 1
    local.get 0
    i32.load offset=72
    local.set 5
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 32
        i32.add
        local.get 0
        i32.const 84
        i32.add
        call $_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h641a18bdb444bc43E
        local.get 0
        i32.load offset=32
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 136
        i32.add
        local.get 0
        i32.const 40
        i32.add
        local.get 0
        i32.load offset=36
        call $_ZN16benchmark_common16benchmark_common15BenchmarkCommon16use_index_struct17h7be275e35cfcf256E
        local.get 5
        local.get 0
        i32.const 136
        i32.add
        call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$11get_node_id17h9899a97f3c68f7f8E
        local.tee 6
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 24
        i32.add
        local.get 1
        local.get 6
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17hb1bc91b3692b639fE
        local.get 0
        i32.load offset=28
        local.set 7
        local.get 0
        i32.load offset=24
        local.set 8
        local.get 0
        i32.const 208
        i32.add
        local.get 1
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17h7254127ae160239fE
        block ;; label = @3
          block ;; label = @4
            local.get 8
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.const 16
            i32.add
            local.get 1
            local.get 8
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17hb1bc91b3692b639fE
            local.get 1
            local.get 8
            local.get 0
            i32.load offset=16
            local.get 7
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h41ddc977be5a0ad4E
            br 1 (;@3;)
          end
          local.get 0
          local.get 7
          i32.store offset=212
        end
        block ;; label = @3
          block ;; label = @4
            local.get 7
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.const 8
            i32.add
            local.get 1
            local.get 7
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17hb1bc91b3692b639fE
            local.get 1
            local.get 7
            local.get 8
            local.get 0
            i32.load offset=12
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h41ddc977be5a0ad4E
            br 1 (;@3;)
          end
          local.get 0
          local.get 8
          i32.store offset=216
        end
        local.get 1
        i32.const 131186
        i32.const 11
        local.get 6
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h4cebf2e9dfddbe2eE
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h1da34d1938841783E
        local.get 2
        local.get 1
        local.get 6
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17h2b9d9519d96b1f38E
        local.get 1
        i32.const 131197
        i32.const 6
        local.get 6
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h4cebf2e9dfddbe2eE
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h1da34d1938841783E
        local.get 0
        local.get 0
        i32.load offset=208
        i32.const -1
        i32.add
        i32.store offset=208
        local.get 1
        local.get 0
        i32.const 208
        i32.add
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17ha87d5969fc07ccf9E
        local.get 5
        local.get 0
        i32.const 136
        i32.add
        call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17hc009d18a647eb68dE
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h1da34d1938841783E
        local.get 3
        local.get 4
        local.get 0
        i32.const 136
        i32.add
        call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$16get_mapped_value17haa87c79648ab47dbE
        local.get 4
        local.get 0
        i32.const 136
        i32.add
        call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$15build_named_key17h0936e06f91c0208eE
        call $_ZN11dharitri_sc7storage11storage_set13storage_clear17hfc9c850f714f33beE
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 224
    i32.add
    global.set $__stack_pointer
  )
  (func $callBack (;121;) (type 10))
  (func $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E (;122;) (type 10)
    call $rust_begin_unwind
    unreachable
  )
  (table (;0;) 1 1 funcref)
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 141280)
  (global (;2;) i32 i32.const 141280)
  (export "memory" (memory 0))
  (export "init" (func $init))
  (export "add" (func $add))
  (export "count" (func $count))
  (export "remove" (func $remove))
  (export "add_struct" (func $add_struct))
  (export "count_struct" (func $count_struct))
  (export "remove_struct" (func $remove_struct))
  (export "callBack" (func $callBack))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data $.rodata (;0;) (i32.const 131072) "valuekeynum_repeatsinput too longargument decode error (): wrong number of argumentsinput too short.mapped.node_id.node_links.value.infostorage decode error: bench_structbenchmark\00panic occurred")
  (data $.data (;1;) (i32.const 131268) "\9c\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.76.0-nightly (d86d65bbc 2023-12-10)")
  )
)