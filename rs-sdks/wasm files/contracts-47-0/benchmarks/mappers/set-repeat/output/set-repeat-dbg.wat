(module
  (type (;0;) (func (param i32 i64)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (result i32)))
  (type (;3;) (func (param i32 i32) (result i32)))
  (type (;4;) (func (param i32 i32 i32) (result i32)))
  (type (;5;) (func (param i32)))
  (type (;6;) (func (param i32) (result i64)))
  (type (;7;) (func (param i32) (result i32)))
  (type (;8;) (func (param i32 i32)))
  (type (;9;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;10;) (func))
  (type (;11;) (func (param i64)))
  (type (;12;) (func (param i32 i32 i32 i32 i32)))
  (type (;13;) (func (param i32 i32 i32 i32)))
  (type (;14;) (func (param i32 i32) (result i64)))
  (type (;15;) (func (param i64 i32)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;0;) (type 0)))
  (import "env" "bigIntAdd" (func $bigIntAdd (;1;) (type 1)))
  (import "env" "mBufferNew" (func $mBufferNew (;2;) (type 2)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;3;) (type 3)))
  (import "env" "mBufferEq" (func $mBufferEq (;4;) (type 3)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;5;) (type 3)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;6;) (type 4)))
  (import "env" "managedSignalError" (func $managedSignalError (;7;) (type 5)))
  (import "env" "smallIntGetUnsignedArgument" (func $smallIntGetUnsignedArgument (;8;) (type 6)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;9;) (type 7)))
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
  (import "env" "mBufferFinish" (func $mBufferFinish (;22;) (type 7)))
  (func $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6c070346f583ab30E (;23;) (type 7) (param i32) (result i32)
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E (;24;) (type 2) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=131260
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=131260
    local.get 0
  )
  (func $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha36cbbe1324bea3cE (;25;) (type 12) (param i32 i32 i32 i32 i32)
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
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE (;26;) (type 8) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf525c14277cd2831E (;27;) (type 7) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h584e1d921581e940E (;28;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $mBufferEq
    i32.const 0
    i32.gt_s
  )
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hada537d89a399dffE (;29;) (type 7) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hc80841f47344ee22E (;30;) (type 13) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131102
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he4dc06b4db348281E
    local.tee 4
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 4
    i32.const 131125
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he4dc06b4db348281E (;31;) (type 3) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h720f01776bae7b04E (;32;) (type 2) (result i32)
    (local i64)
    block ;; label = @1
      i32.const 0
      call $smallIntGetUnsignedArgument
      local.tee 0
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 131077
      i32.const 11
      i32.const 131088
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hc80841f47344ee22E
      unreachable
    end
    local.get 0
    i32.wrap_i64
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd058b631d325f061E (;33;) (type 7) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hada537d89a399dffE
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hf57bb1d640c06ba2E (;34;) (type 8) (param i32 i32)
    (local i32 i32 i64 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hada537d89a399dffE
    local.tee 3
    call $mBufferGetLength
    local.set 1
    local.get 2
    i32.const 28
    i32.add
    i32.const 0
    i32.store8
    local.get 2
    i32.const 24
    i32.add
    local.get 1
    i32.store
    local.get 2
    local.get 3
    i32.store offset=20
    local.get 2
    local.get 1
    i32.store offset=16
    local.get 2
    i32.const 0
    i32.store offset=12
    local.get 2
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hc5a51c8324057476E
    local.set 1
    local.get 2
    i32.const 12
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h54252520bbaf2121E
    local.set 4
    local.get 2
    i32.const 12
    i32.add
    call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17hd01f193feeb68821E
    local.set 3
    local.get 2
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hc5a51c8324057476E
    local.set 5
    local.get 2
    i32.const 12
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h54252520bbaf2121E
    local.set 6
    local.get 2
    i32.const 12
    i32.add
    call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17hd01f193feeb68821E
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
        i32.load8_u offset=28
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        i32.store offset=141264
        i32.const 0
        i32.const 0
        i32.store8 offset=141268
      end
      local.get 0
      local.get 7
      i32.store offset=28
      local.get 0
      local.get 5
      i32.store offset=24
      local.get 0
      local.get 3
      i32.store offset=20
      local.get 0
      local.get 1
      i32.store offset=16
      local.get 0
      local.get 6
      i64.store offset=8
      local.get 0
      local.get 4
      i64.store
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131072
    i32.const 5
    i32.const 131088
    i32.const 14
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hc80841f47344ee22E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hc5a51c8324057476E (;35;) (type 7) (param i32) (result i32)
    (local i32 i32 i32 i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hed43a97214a5b771E
    local.get 1
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load
    local.tee 2
    local.get 1
    i32.const 12
    i32.add
    i32.const 4
    call $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E
    i32.wrap_i64
    local.tee 3
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h2615a8c0e4eab620E
    block ;; label = @1
      local.get 1
      i32.load
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      i32.const 131072
      i32.const 5
      i32.const 131153
      i32.const 15
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hc80841f47344ee22E
      unreachable
    end
    local.get 1
    i32.load offset=4
    local.set 4
    local.get 0
    local.get 2
    local.get 3
    i32.add
    i32.store
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 4
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h54252520bbaf2121E (;36;) (type 6) (param i32) (result i64)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hed43a97214a5b771E
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
  (func $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17hd01f193feeb68821E (;37;) (type 7) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hc5a51c8324057476E
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17he474df553f3daf11E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h0f61f58d44159becE (;38;) (type 5) (param i32)
    block ;; label = @1
      call $getNumArguments
      local.get 0
      i32.ne
      br_if 0 (;@1;)
      return
    end
    i32.const 131128
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h725771a22a26263dE (;39;) (type 7) (param i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h17dc263240b04430E
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
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h2615a8c0e4eab620E
    block ;; label = @1
      local.get 1
      i32.load offset=8
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      i32.const 131153
      i32.const 15
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h1a8c3cb703738ee7E
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h17dc263240b04430E (;40;) (type 7) (param i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17had67aa2219ade018E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h2615a8c0e4eab620E (;41;) (type 13) (param i32 i32 i32 i32)
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
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h1a8c3cb703738ee7E (;42;) (type 8) (param i32 i32)
    (local i32)
    i32.const 131198
    i32.const 22
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he4dc06b4db348281E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 2
    call $managedSignalError
    unreachable
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hed43a97214a5b771E (;43;) (type 1) (param i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17ha6fb06427d59311eE
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131072
      i32.const 5
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17hd6bc8aadfdf964beE
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E (;44;) (type 14) (param i32 i32) (result i64)
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
  (func $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h3b7789b4a850e63bE (;45;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferAppendBytes
    drop
  )
  (func $_ZN11dharitri_sc5types7managed5basic12big_uint_cmp113_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$2eq17h57d790d51ddddb2bE (;46;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $bigIntCmp
    i32.eqz
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17heb71f01d47439198E (;47;) (type 9) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17hc7a597bd0815f08eE (;48;) (type 7) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h494e3f38ec217937E (;49;) (type 8) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferAppend
    drop
  )
  (func $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h7f5d4380ad70263eE (;50;) (type 7) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17he474df553f3daf11E (;51;) (type 7) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferToBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17ha6fb06427d59311eE (;52;) (type 9) (param i32 i32 i32 i32) (result i32)
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
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17hc7a597bd0815f08eE
          local.tee 6
          i32.const 10000
          i32.gt_u
          br_if 1 (;@2;)
          i32.const 0
          i32.load8_u offset=141268
          i32.const 255
          i32.and
          br_if 1 (;@2;)
          i32.const 0
          local.get 6
          i32.store offset=141264
          i32.const 0
          i32.const 1
          i32.store8 offset=141268
          local.get 4
          i32.const 8
          i32.add
          local.get 6
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h44d3be7162f5c4e3E
          local.get 5
          i32.const 0
          local.get 4
          i32.load offset=8
          local.get 4
          i32.load offset=12
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17heb71f01d47439198E
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
        i32.load offset=141264
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17heb71f01d47439198E
      local.set 0
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h44d3be7162f5c4e3E (;53;) (type 8) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    i32.const 131264
    i32.const 10000
    local.get 1
    call $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h4f20d97b4869d9dbE
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
  (func $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h95dd1a03576b7dfcE (;54;) (type 1) (param i32 i32 i32)
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
    i32.const 131264
    i32.add
    i32.store
  )
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E (;55;) (type 13) (param i32 i32 i32 i32)
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
  (func $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$14new_from_slice17ha70104b44f81afc3E (;56;) (type 5) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        i32.const 0
        i32.load8_u offset=141268
        local.tee 2
        br_if 0 (;@2;)
        i32.const 0
        i32.const 1
        i32.store8 offset=141268
        i32.const 0
        i32.const 0
        i32.store offset=141264
        local.get 1
        i32.const 8
        i32.add
        i32.const 0
        call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h44d3be7162f5c4e3E
        local.get 1
        i32.load offset=8
        local.get 1
        i32.load offset=12
        i32.const 131244
        i32.const 0
        call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
        call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
        local.tee 3
        i32.const 131244
        i32.const 0
        call $mBufferSetBytes
        drop
        br 1 (;@1;)
      end
      i32.const 131244
      i32.const 0
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he4dc06b4db348281E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$19into_managed_buffer17h67f1901d6b45337aE (;57;) (type 3) (param i32 i32) (result i32)
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
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h844916dd3973d4d4E
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
      i32.store offset=141264
      i32.const 0
      i32.const 0
      i32.store8 offset=141268
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h844916dd3973d4d4E (;58;) (type 5) (param i32)
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
      i32.load offset=141264
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
      i32.store offset=141264
      i32.const 0
      i32.const 0
      i32.store8 offset=141268
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17he3d7d0f1db6bde8cE (;59;) (type 7) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_set11storage_set17h0b52592dba79e413E (;60;) (type 5) (param i32)
    local.get 0
    i32.const 131244
    i32.const 0
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817hbe9609fd9dd6fd8aE
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817hbe9609fd9dd6fd8aE (;61;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he4dc06b4db348281E
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage11storage_set11storage_set17hc58225479fb8e6faE (;62;) (type 8) (param i32 i32)
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
        i32.const 131244
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
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817hbe9609fd9dd6fd8aE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN4core9panicking18panic_bounds_check17hdbf723dd9cf95e6aE (;63;) (type 10)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$11get_node_id17h183f64141433e00eE (;64;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17hb9b0c463a4d08390E
    call $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17h4d5b347fccab3144E
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17hb9b0c463a4d08390E (;65;) (type 3) (param i32 i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf525c14277cd2831E
    local.tee 0
    i32.const 131168
    i32.const 8
    call $mBufferAppendBytes
    drop
    local.get 1
    i32.load offset=16
    local.get 0
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hc7ba8163d4b4f198E
    local.get 1
    i64.load
    local.get 0
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17haa20329d3d5b9c60E
    local.get 1
    i32.load offset=20
    local.get 0
    call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hc488a6f97c66a073E
    local.get 1
    i32.load offset=24
    local.get 0
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hc7ba8163d4b4f198E
    local.get 1
    i64.load offset=8
    local.get 0
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17haa20329d3d5b9c60E
    local.get 1
    i32.load offset=28
    local.get 0
    call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hc488a6f97c66a073E
    local.get 0
  )
  (func $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17h4d5b347fccab3144E (;66;) (type 7) (param i32) (result i32)
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
        call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17he3d7d0f1db6bde8cE
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
        call $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h4f20d97b4869d9dbE
        local.get 0
        i32.const 0
        local.get 1
        i32.load
        local.tee 2
        local.get 1
        i32.load offset=4
        local.tee 3
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17heb71f01d47439198E
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
      i32.const 131088
      i32.const 14
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h1a8c3cb703738ee7E
      unreachable
    end
    i32.const 131088
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h1a8c3cb703738ee7E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$11get_node_id17h51ad6da9626a3e38E (;67;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17h1bef768bcd2cbe18E
    call $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17h4d5b347fccab3144E
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17h1bef768bcd2cbe18E (;68;) (type 3) (param i32 i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf525c14277cd2831E
    local.tee 0
    i32.const 131168
    i32.const 8
    call $mBufferAppendBytes
    drop
    local.get 1
    local.get 0
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hc7ba8163d4b4f198E
    local.get 0
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hc7ba8163d4b4f198E (;69;) (type 8) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17hc7a597bd0815f08eE
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h3b7789b4a850e63bE
    local.get 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h494e3f38ec217937E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17haa20329d3d5b9c60E (;70;) (type 15) (param i64 i32)
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h3b7789b4a850e63bE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hc488a6f97c66a073E (;71;) (type 8) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h7f5d4380ad70263eE
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hc7ba8163d4b4f198E
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$4iter17h82f6e16348fbb8f4E (;72;) (type 8) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.load offset=4
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17h4cc5d340d97e7e50E
    local.get 0
    local.get 2
    i32.load offset=4
    i32.store offset=4
    local.get 0
    local.get 1
    i32.const 4
    i32.add
    i32.store
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17h4cc5d340d97e7e50E (;73;) (type 8) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$14build_name_key17h6ca098c1f911b402E
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
        call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h196adffb0d62d11dE
        local.get 2
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h17dc263240b04430E
        local.set 1
        local.get 2
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h17dc263240b04430E
        local.set 3
        local.get 2
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h17dc263240b04430E
        local.set 4
        local.get 2
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h17dc263240b04430E
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
        i32.store offset=141264
        i32.const 0
        i32.const 0
        i32.store8 offset=141268
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
    i32.const 131088
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h1a8c3cb703738ee7E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17h382eca65342d7886E (;74;) (type 8) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$14build_name_key17h6ca098c1f911b402E
    local.set 0
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hbaa03c425d64ed28E
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
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17ha7819aba023a17f7E
        local.get 1
        i32.load offset=4
        local.get 2
        i32.const 8
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17ha7819aba023a17f7E
        local.get 1
        i32.load offset=8
        local.get 2
        i32.const 8
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17ha7819aba023a17f7E
        local.get 1
        i32.load offset=12
        local.get 2
        i32.const 8
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17ha7819aba023a17f7E
        local.get 0
        local.get 2
        i32.load offset=8
        local.get 2
        i32.load8_u offset=12
        call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h1fb504168f191d1dE
        br 1 (;@1;)
      end
      local.get 0
      i32.const 131244
      i32.const 0
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817hbe9609fd9dd6fd8aE
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$14build_name_key17h6ca098c1f911b402E (;75;) (type 7) (param i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf525c14277cd2831E
    local.tee 0
    i32.const 131193
    i32.const 5
    call $mBufferAppendBytes
    drop
    local.get 0
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hbaa03c425d64ed28E (;76;) (type 5) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$14new_from_slice17ha70104b44f81afc3E
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17ha7819aba023a17f7E (;77;) (type 8) (param i32 i32)
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
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h4f9c8b0810cc700cE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h1fb504168f191d1dE (;78;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$19into_managed_buffer17h67f1901d6b45337aE
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h29f752ad89961991E (;79;) (type 13) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 0
    i32.const 131176
    i32.const 11
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h08a6f3d8992dfe0dE
    local.set 1
    local.get 4
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hbaa03c425d64ed28E
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
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17ha7819aba023a17f7E
    local.get 3
    local.get 4
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17ha7819aba023a17f7E
    local.get 1
    local.get 4
    i32.load offset=8
    local.get 4
    i32.load8_u offset=12
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h1fb504168f191d1dE
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h08a6f3d8992dfe0dE (;80;) (type 9) (param i32 i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf525c14277cd2831E
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
  (func $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h196adffb0d62d11dE (;81;) (type 8) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17he3d7d0f1db6bde8cE
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
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17ha3786c9e072bd746E (;82;) (type 1) (param i32 i32 i32)
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
    i32.const 131176
    i32.const 11
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h08a6f3d8992dfe0dE
    call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h196adffb0d62d11dE
    local.get 3
    i32.const 12
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h17dc263240b04430E
    local.set 2
    local.get 3
    i32.const 12
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h17dc263240b04430E
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
        i32.store offset=141264
        i32.const 0
        i32.const 0
        i32.store8 offset=141268
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
    i32.const 131088
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h1a8c3cb703738ee7E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17h7a995b13a348f562E (;83;) (type 1) (param i32 i32 i32)
    (local i32 i64 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 12
    i32.add
    local.get 1
    i32.const 131187
    i32.const 6
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h08a6f3d8992dfe0dE
    call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h196adffb0d62d11dE
    local.get 3
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h725771a22a26263dE
    local.set 2
    local.get 3
    i32.const 12
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h83f2c43a1b99a293E
    local.set 4
    local.get 3
    i32.const 12
    i32.add
    call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h9b64a29fda0db5bfE
    local.set 1
    local.get 3
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h725771a22a26263dE
    local.set 5
    local.get 3
    i32.const 12
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h83f2c43a1b99a293E
    local.set 6
    local.get 3
    i32.const 12
    i32.add
    call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h9b64a29fda0db5bfE
    local.set 7
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
        i32.store offset=141264
        i32.const 0
        i32.const 0
        i32.store8 offset=141268
      end
      local.get 0
      local.get 7
      i32.store offset=28
      local.get 0
      local.get 5
      i32.store offset=24
      local.get 0
      local.get 1
      i32.store offset=20
      local.get 0
      local.get 2
      i32.store offset=16
      local.get 0
      local.get 6
      i64.store offset=8
      local.get 0
      local.get 4
      i64.store
      local.get 3
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131088
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h1a8c3cb703738ee7E
    unreachable
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h83f2c43a1b99a293E (;84;) (type 6) (param i32) (result i64)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17had67aa2219ade018E
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
  (func $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h9b64a29fda0db5bfE (;85;) (type 7) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h725771a22a26263dE
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17he474df553f3daf11E
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17hf9f5fe93ea941197E (;86;) (type 3) (param i32 i32) (result i32)
    local.get 0
    i32.const 131187
    i32.const 6
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h08a6f3d8992dfe0dE
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17he3d7d0f1db6bde8cE
  )
  (func $_ZN126_$LT$dharitri_sc..storage..mappers..queue_mapper..Iter$LT$SA$C$A$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3013c1e2a349d305E (;87;) (type 8) (param i32 i32)
    (local i32 i32 i64 i32)
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
        br_if 0 (;@2;)
        i64.const 0
        local.set 4
        br 1 (;@1;)
      end
      local.get 2
      i32.const 8
      i32.add
      local.get 1
      i32.load
      local.tee 5
      i32.load
      local.get 3
      call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17ha3786c9e072bd746E
      local.get 1
      local.get 2
      i32.load offset=12
      i32.store offset=4
      local.get 0
      i32.const 8
      i32.add
      local.get 5
      i32.load
      local.get 3
      call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17h7a995b13a348f562E
      i64.const 1
      local.set 4
    end
    local.get 0
    local.get 4
    i64.store
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN126_$LT$dharitri_sc..storage..mappers..queue_mapper..Iter$LT$SA$C$A$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hffcdd60662f45219E (;88;) (type 8) (param i32 i32)
    (local i32 i32 i32)
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
        br_if 0 (;@2;)
        i32.const 0
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      i32.const 8
      i32.add
      local.get 1
      i32.load
      local.tee 4
      i32.load
      local.get 3
      call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17ha3786c9e072bd746E
      local.get 1
      local.get 2
      i32.load offset=12
      i32.store offset=4
      i32.const 1
      local.set 1
      local.get 4
      i32.load
      local.get 3
      call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17hf9f5fe93ea941197E
      local.set 3
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
  (func $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he34620669018dc45E (;89;) (type 8) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h7f5d4380ad70263eE
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h8557ae03c114a245E
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h8557ae03c114a245E (;90;) (type 8) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17hc7a597bd0815f08eE
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
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h4f9c8b0810cc700cE
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.load8_u offset=4
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17hc7a597bd0815f08eE
          local.set 3
          i32.const 10000
          i32.const 0
          i32.load offset=141264
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
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hfba302f20368f299E
          local.get 0
          i32.const 0
          local.get 2
          i32.load
          local.get 2
          i32.load offset=4
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17heb71f01d47439198E
          drop
          i32.const 0
          local.get 3
          i32.store offset=141264
          br 2 (;@1;)
        end
        local.get 1
        i32.load
        local.get 0
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h494e3f38ec217937E
        br 1 (;@1;)
      end
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h844916dd3973d4d4E
      local.get 1
      i32.load
      local.get 0
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h494e3f38ec217937E
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h4f20d97b4869d9dbE (;91;) (type 13) (param i32 i32 i32 i32)
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
    call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha36cbbe1324bea3cE
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
  (func $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h4f9c8b0810cc700cE (;92;) (type 1) (param i32 i32 i32)
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
          i32.load offset=141264
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
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hfba302f20368f299E
          local.get 3
          i32.load offset=8
          local.get 3
          i32.load offset=12
          local.get 1
          local.get 2
          call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
          i32.const 0
          local.get 0
          i32.store offset=141264
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
      call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h844916dd3973d4d4E
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
  (func $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hfba302f20368f299E (;93;) (type 1) (param i32 i32 i32)
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
    i32.const 131264
    i32.const 10000
    call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha36cbbe1324bea3cE
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
  (func $_ZN16benchmark_common16benchmark_common15BenchmarkCommon12append_index17hcd19badf91a0513cE (;94;) (type 3) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf525c14277cd2831E
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
  (func $_ZN16benchmark_common16benchmark_common15BenchmarkCommon16use_index_struct17h656144eb2025ae0eE (;95;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i64)
    local.get 1
    i32.load offset=16
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf525c14277cd2831E
    local.set 3
    local.get 1
    i32.load offset=20
    call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6c070346f583ab30E
    local.set 4
    local.get 1
    i32.load offset=24
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf525c14277cd2831E
    local.set 5
    local.get 0
    local.get 1
    i32.load offset=28
    call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6c070346f583ab30E
    i32.store offset=28
    local.get 0
    local.get 5
    i32.store offset=24
    local.get 0
    local.get 4
    i32.store offset=20
    local.get 0
    local.get 3
    i32.store offset=16
    local.get 0
    local.get 2
    i64.extend_i32_u
    local.tee 6
    i64.store offset=8
    local.get 0
    local.get 6
    i64.store
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17had67aa2219ade018E (;96;) (type 1) (param i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17ha6fb06427d59311eE
      i32.eqz
      br_if 0 (;@1;)
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17hda87b2ad4ba3ebefE
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17hcb7b868728c35054E (;97;) (type 15) (param i64 i32)
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
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h4f9c8b0810cc700cE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17hd6bc8aadfdf964beE (;98;) (type 8) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 131153
    i32.const 15
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hc80841f47344ee22E
    unreachable
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17hda87b2ad4ba3ebefE (;99;) (type 10)
    i32.const 131153
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h1a8c3cb703738ee7E
    unreachable
  )
  (func $_ZN43_$LT$C$u20$as$u20$set_repeat..SetRepeat$GT$12bench_struct17h430fcd3a03e5ce9cE (;100;) (type 5) (param i32)
    (local i32 i32)
    i32.const 131220
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he4dc06b4db348281E
    local.tee 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf525c14277cd2831E
    local.set 2
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN43_$LT$C$u20$as$u20$set_repeat..SetRepeat$GT$5bench17h18021b31c5560076E (;101;) (type 5) (param i32)
    (local i32 i32)
    i32.const 131232
    i32.const 9
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17he4dc06b4db348281E
    local.tee 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf525c14277cd2831E
    local.set 2
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h8f2d68dfbd45c560E (;102;) (type 8) (param i32 i32)
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
  (func $rust_begin_unwind (;103;) (type 10)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE (;104;) (type 10)
    i32.const 131244
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;105;) (type 10)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h0f61f58d44159becE
  )
  (func $add (;106;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h0f61f58d44159becE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h720f01776bae7b04E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd058b631d325f061E
    local.set 2
    local.get 0
    i32.const 8
    i32.add
    call $_ZN43_$LT$C$u20$as$u20$set_repeat..SetRepeat$GT$5bench17h18021b31c5560076E
    local.get 0
    i32.load offset=12
    local.set 3
    local.get 0
    i32.load offset=8
    local.set 4
    i32.const 0
    local.set 5
    block ;; label = @1
      loop ;; label = @2
        local.get 1
        local.get 5
        i32.eq
        br_if 1 (;@1;)
        block ;; label = @3
          local.get 4
          local.get 2
          local.get 5
          call $_ZN16benchmark_common16benchmark_common15BenchmarkCommon12append_index17hcd19badf91a0513cE
          local.tee 6
          call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$11get_node_id17h51ad6da9626a3e38E
          br_if 0 (;@3;)
          local.get 0
          i32.const 16
          i32.add
          local.get 3
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17h4cc5d340d97e7e50E
          local.get 0
          local.get 0
          i32.load offset=28
          i32.const 1
          i32.add
          local.tee 7
          i32.store offset=28
          block ;; label = @4
            block ;; label = @5
              local.get 0
              i32.load offset=16
              local.tee 8
              br_if 0 (;@5;)
              local.get 0
              local.get 7
              i32.store offset=20
              i32.const 0
              local.set 9
              br 1 (;@4;)
            end
            local.get 0
            local.get 3
            local.get 0
            i32.load offset=24
            local.tee 9
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17ha3786c9e072bd746E
            local.get 3
            local.get 9
            local.get 0
            i32.load
            local.get 7
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h29f752ad89961991E
          end
          local.get 3
          local.get 7
          local.get 9
          i32.const 0
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h29f752ad89961991E
          local.get 0
          local.get 7
          i32.store offset=24
          local.get 3
          i32.const 131187
          i32.const 6
          local.get 7
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h08a6f3d8992dfe0dE
          local.get 6
          call $mBufferStorageStore
          drop
          local.get 0
          local.get 8
          i32.const 1
          i32.add
          i32.store offset=16
          local.get 3
          local.get 0
          i32.const 16
          i32.add
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17h382eca65342d7886E
          local.get 4
          local.get 6
          call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17h1bef768bcd2cbe18E
          local.get 7
          call $_ZN11dharitri_sc7storage11storage_set11storage_set17hc58225479fb8e6faE
        end
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $count (;107;) (type 10)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h0f61f58d44159becE
    i32.const 0
    local.set 1
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd058b631d325f061E
    local.set 2
    local.get 0
    i32.const 24
    i32.add
    call $_ZN43_$LT$C$u20$as$u20$set_repeat..SetRepeat$GT$5bench17h18021b31c5560076E
    local.get 0
    local.get 0
    i64.load offset=24
    i64.store offset=32 align=4
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.const 32
    i32.add
    call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$4iter17h82f6e16348fbb8f4E
    local.get 0
    local.get 0
    i64.load offset=16
    i64.store offset=40 align=4
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.get 0
        i32.const 40
        i32.add
        call $_ZN126_$LT$dharitri_sc..storage..mappers..queue_mapper..Iter$LT$SA$C$A$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hffcdd60662f45219E
        local.get 0
        i32.load offset=8
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 1
        local.get 0
        i32.load offset=12
        local.get 2
        call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h584e1d921581e940E
        i32.add
        local.set 1
        br 0 (;@2;)
      end
    end
    local.get 1
    i64.extend_i32_u
    call $smallIntFinishUnsigned
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $remove (;108;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h0f61f58d44159becE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h720f01776bae7b04E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd058b631d325f061E
    local.set 2
    local.get 0
    i32.const 40
    i32.add
    call $_ZN43_$LT$C$u20$as$u20$set_repeat..SetRepeat$GT$5bench17h18021b31c5560076E
    local.get 0
    i32.load offset=44
    local.set 3
    local.get 0
    i32.load offset=40
    local.set 4
    local.get 0
    i32.const 0
    i32.store8 offset=60
    local.get 0
    local.get 1
    i32.store offset=56
    local.get 0
    i32.const 1
    i32.store offset=52
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 32
        i32.add
        local.get 0
        i32.const 52
        i32.add
        call $_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h8f2d68dfbd45c560E
        local.get 0
        i32.load offset=32
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 2
        local.get 0
        i32.load offset=36
        call $_ZN16benchmark_common16benchmark_common15BenchmarkCommon12append_index17hcd19badf91a0513cE
        local.tee 5
        call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$11get_node_id17h51ad6da9626a3e38E
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 24
        i32.add
        local.get 3
        local.get 1
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17ha3786c9e072bd746E
        local.get 0
        i32.load offset=28
        local.set 6
        local.get 0
        i32.load offset=24
        local.set 7
        local.get 0
        i32.const 64
        i32.add
        local.get 3
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17h4cc5d340d97e7e50E
        block ;; label = @3
          block ;; label = @4
            local.get 7
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.const 16
            i32.add
            local.get 3
            local.get 7
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17ha3786c9e072bd746E
            local.get 3
            local.get 7
            local.get 0
            i32.load offset=16
            local.get 6
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h29f752ad89961991E
            br 1 (;@3;)
          end
          local.get 0
          local.get 6
          i32.store offset=68
        end
        block ;; label = @3
          block ;; label = @4
            local.get 6
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.const 8
            i32.add
            local.get 3
            local.get 6
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17ha3786c9e072bd746E
            local.get 3
            local.get 6
            local.get 7
            local.get 0
            i32.load offset=12
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h29f752ad89961991E
            br 1 (;@3;)
          end
          local.get 0
          local.get 7
          i32.store offset=72
        end
        local.get 3
        i32.const 131176
        i32.const 11
        local.get 1
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h08a6f3d8992dfe0dE
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h0b52592dba79e413E
        local.get 3
        local.get 1
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17hf9f5fe93ea941197E
        drop
        local.get 3
        i32.const 131187
        i32.const 6
        local.get 1
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h08a6f3d8992dfe0dE
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h0b52592dba79e413E
        local.get 0
        local.get 0
        i32.load offset=64
        i32.const -1
        i32.add
        i32.store offset=64
        local.get 3
        local.get 0
        i32.const 64
        i32.add
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17h382eca65342d7886E
        local.get 4
        local.get 5
        call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17h1bef768bcd2cbe18E
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h0b52592dba79e413E
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $bench (;109;) (type 10)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h0f61f58d44159becE
    local.get 0
    i32.const 24
    i32.add
    call $_ZN43_$LT$C$u20$as$u20$set_repeat..SetRepeat$GT$5bench17h18021b31c5560076E
    local.get 0
    local.get 0
    i64.load offset=24
    i64.store offset=32 align=4
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.const 32
    i32.add
    call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$4iter17h82f6e16348fbb8f4E
    local.get 0
    local.get 0
    i64.load offset=16
    i64.store offset=40 align=4
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.get 0
        i32.const 40
        i32.add
        call $_ZN126_$LT$dharitri_sc..storage..mappers..queue_mapper..Iter$LT$SA$C$A$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hffcdd60662f45219E
        local.get 0
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=12
        call $mBufferFinish
        drop
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $add_struct (;110;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h0f61f58d44159becE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h720f01776bae7b04E
    local.set 1
    local.get 0
    i32.const 64
    i32.add
    i32.const 8
    i32.add
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hf57bb1d640c06ba2E
    local.get 0
    i32.const 32
    i32.add
    i32.const 24
    i32.add
    local.get 0
    i32.const 96
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 32
    i32.add
    i32.const 16
    i32.add
    local.get 0
    i32.const 64
    i32.add
    i32.const 24
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.get 0
    i32.const 64
    i32.add
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 0
    local.get 0
    i64.load offset=72
    i64.store offset=32
    local.get 0
    i32.const 24
    i32.add
    call $_ZN43_$LT$C$u20$as$u20$set_repeat..SetRepeat$GT$12bench_struct17h430fcd3a03e5ce9cE
    local.get 0
    i32.load offset=28
    local.set 2
    local.get 0
    i32.load offset=24
    local.set 3
    i32.const 0
    local.set 4
    block ;; label = @1
      loop ;; label = @2
        local.get 1
        local.get 4
        i32.eq
        br_if 1 (;@1;)
        local.get 0
        i32.const 64
        i32.add
        local.get 0
        i32.const 32
        i32.add
        local.get 4
        call $_ZN16benchmark_common16benchmark_common15BenchmarkCommon16use_index_struct17h656144eb2025ae0eE
        block ;; label = @3
          local.get 3
          local.get 0
          i32.const 64
          i32.add
          call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$11get_node_id17h183f64141433e00eE
          br_if 0 (;@3;)
          local.get 0
          i32.const 104
          i32.add
          local.get 2
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17h4cc5d340d97e7e50E
          local.get 0
          local.get 0
          i32.load offset=116
          i32.const 1
          i32.add
          local.tee 5
          i32.store offset=116
          block ;; label = @4
            block ;; label = @5
              local.get 0
              i32.load offset=104
              local.tee 6
              br_if 0 (;@5;)
              local.get 0
              local.get 5
              i32.store offset=108
              i32.const 0
              local.set 7
              br 1 (;@4;)
            end
            local.get 0
            i32.const 16
            i32.add
            local.get 2
            local.get 0
            i32.load offset=112
            local.tee 7
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17ha3786c9e072bd746E
            local.get 2
            local.get 7
            local.get 0
            i32.load offset=16
            local.get 5
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h29f752ad89961991E
          end
          local.get 2
          local.get 5
          local.get 7
          i32.const 0
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h29f752ad89961991E
          local.get 0
          local.get 5
          i32.store offset=112
          local.get 2
          i32.const 131187
          i32.const 6
          local.get 5
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h08a6f3d8992dfe0dE
          local.set 7
          local.get 0
          i32.const 8
          i32.add
          call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hbaa03c425d64ed28E
          local.get 0
          local.get 0
          i32.load8_u offset=12
          i32.store8 offset=124
          local.get 0
          local.get 0
          i32.load offset=8
          i32.store offset=120
          local.get 0
          i32.load offset=80
          local.get 0
          i32.const 120
          i32.add
          call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h8557ae03c114a245E
          local.get 0
          i64.load offset=64
          local.get 0
          i32.const 120
          i32.add
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17hcb7b868728c35054E
          local.get 0
          i32.load offset=84
          local.get 0
          i32.const 120
          i32.add
          call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he34620669018dc45E
          local.get 0
          i32.load offset=88
          local.get 0
          i32.const 120
          i32.add
          call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h8557ae03c114a245E
          local.get 0
          i64.load offset=72
          local.get 0
          i32.const 120
          i32.add
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17hcb7b868728c35054E
          local.get 0
          i32.load offset=92
          local.get 0
          i32.const 120
          i32.add
          call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he34620669018dc45E
          local.get 7
          local.get 0
          i32.load offset=120
          local.get 0
          i32.load8_u offset=124
          call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h1fb504168f191d1dE
          local.get 0
          local.get 6
          i32.const 1
          i32.add
          i32.store offset=104
          local.get 2
          local.get 0
          i32.const 104
          i32.add
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17h382eca65342d7886E
          local.get 3
          local.get 0
          i32.const 64
          i32.add
          call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17hb9b0c463a4d08390E
          local.get 5
          call $_ZN11dharitri_sc7storage11storage_set11storage_set17hc58225479fb8e6faE
        end
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 128
    i32.add
    global.set $__stack_pointer
  )
  (func $count_struct (;111;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i64 i64 i64 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h0f61f58d44159becE
    i32.const 0
    local.set 1
    local.get 0
    i32.const 24
    i32.add
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hf57bb1d640c06ba2E
    local.get 0
    i32.const 16
    i32.add
    call $_ZN43_$LT$C$u20$as$u20$set_repeat..SetRepeat$GT$12bench_struct17h430fcd3a03e5ce9cE
    local.get 0
    local.get 0
    i64.load offset=16
    i64.store offset=56 align=4
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 56
    i32.add
    call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$4iter17h82f6e16348fbb8f4E
    local.get 0
    local.get 0
    i64.load offset=8
    i64.store offset=64 align=4
    local.get 0
    i32.load offset=52
    local.set 2
    local.get 0
    i32.load offset=48
    local.set 3
    local.get 0
    i32.load offset=44
    local.set 4
    local.get 0
    i32.load offset=40
    local.set 5
    local.get 0
    i64.load offset=32
    local.set 6
    local.get 0
    i64.load offset=24
    local.set 7
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 72
        i32.add
        local.get 0
        i32.const 64
        i32.add
        call $_ZN126_$LT$dharitri_sc..storage..mappers..queue_mapper..Iter$LT$SA$C$A$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3013c1e2a349d305E
        local.get 0
        i64.load offset=72
        i64.eqz
        br_if 1 (;@1;)
        local.get 0
        i64.load offset=80
        local.set 8
        i32.const 0
        local.set 9
        local.get 0
        i32.load offset=108
        local.set 10
        local.get 0
        i32.load offset=104
        local.set 11
        local.get 0
        i32.load offset=100
        local.set 12
        local.get 0
        i64.load offset=88
        local.set 13
        block ;; label = @3
          local.get 0
          i32.load offset=96
          local.get 5
          call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h584e1d921581e940E
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          local.get 7
          i64.ne
          br_if 0 (;@3;)
          local.get 12
          local.get 4
          call $_ZN11dharitri_sc5types7managed5basic12big_uint_cmp113_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$2eq17h57d790d51ddddb2bE
          i32.eqz
          br_if 0 (;@3;)
          local.get 11
          local.get 3
          call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h584e1d921581e940E
          i32.eqz
          br_if 0 (;@3;)
          local.get 13
          local.get 6
          i64.ne
          br_if 0 (;@3;)
          local.get 10
          local.get 2
          call $_ZN11dharitri_sc5types7managed5basic12big_uint_cmp113_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$2eq17h57d790d51ddddb2bE
          local.set 9
        end
        local.get 9
        local.get 1
        i32.add
        local.set 1
        br 0 (;@2;)
      end
    end
    local.get 1
    i64.extend_i32_u
    call $smallIntFinishUnsigned
    local.get 0
    i32.const 112
    i32.add
    global.set $__stack_pointer
  )
  (func $remove_struct (;112;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 176
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h0f61f58d44159becE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h720f01776bae7b04E
    local.set 1
    local.get 0
    i32.const 120
    i32.add
    i32.const 8
    i32.add
    local.tee 2
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hf57bb1d640c06ba2E
    local.get 0
    i32.const 40
    i32.add
    i32.const 24
    i32.add
    local.get 0
    i32.const 152
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 40
    i32.add
    i32.const 16
    i32.add
    local.get 0
    i32.const 120
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
    i32.const 120
    i32.add
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 0
    local.get 0
    i64.load offset=128
    i64.store offset=40
    local.get 0
    i32.const 32
    i32.add
    call $_ZN43_$LT$C$u20$as$u20$set_repeat..SetRepeat$GT$12bench_struct17h430fcd3a03e5ce9cE
    local.get 0
    i32.load offset=36
    local.set 3
    local.get 0
    i32.load offset=32
    local.set 4
    local.get 0
    i32.const 0
    i32.store8 offset=84
    local.get 0
    local.get 1
    i32.store offset=80
    local.get 0
    i32.const 1
    i32.store offset=76
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 24
        i32.add
        local.get 0
        i32.const 76
        i32.add
        call $_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h8f2d68dfbd45c560E
        local.get 0
        i32.load offset=24
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 88
        i32.add
        local.get 0
        i32.const 40
        i32.add
        local.get 0
        i32.load offset=28
        call $_ZN16benchmark_common16benchmark_common15BenchmarkCommon16use_index_struct17h656144eb2025ae0eE
        local.get 4
        local.get 0
        i32.const 88
        i32.add
        call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$11get_node_id17h183f64141433e00eE
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 16
        i32.add
        local.get 3
        local.get 1
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17ha3786c9e072bd746E
        local.get 0
        i32.load offset=20
        local.set 5
        local.get 0
        i32.load offset=16
        local.set 6
        local.get 0
        i32.const 160
        i32.add
        local.get 3
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17h4cc5d340d97e7e50E
        block ;; label = @3
          block ;; label = @4
            local.get 6
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.const 8
            i32.add
            local.get 3
            local.get 6
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17ha3786c9e072bd746E
            local.get 3
            local.get 6
            local.get 0
            i32.load offset=8
            local.get 5
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h29f752ad89961991E
            br 1 (;@3;)
          end
          local.get 0
          local.get 5
          i32.store offset=164
        end
        block ;; label = @3
          block ;; label = @4
            local.get 5
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 3
            local.get 5
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17ha3786c9e072bd746E
            local.get 3
            local.get 5
            local.get 6
            local.get 0
            i32.load offset=4
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h29f752ad89961991E
            br 1 (;@3;)
          end
          local.get 0
          local.get 6
          i32.store offset=168
        end
        local.get 3
        i32.const 131176
        i32.const 11
        local.get 1
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h08a6f3d8992dfe0dE
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h0b52592dba79e413E
        local.get 2
        local.get 3
        local.get 1
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17h7a995b13a348f562E
        local.get 3
        i32.const 131187
        i32.const 6
        local.get 1
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h08a6f3d8992dfe0dE
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h0b52592dba79e413E
        local.get 0
        local.get 0
        i32.load offset=160
        i32.const -1
        i32.add
        i32.store offset=160
        local.get 3
        local.get 0
        i32.const 160
        i32.add
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17h382eca65342d7886E
        local.get 4
        local.get 0
        i32.const 88
        i32.add
        call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17hb9b0c463a4d08390E
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h0b52592dba79e413E
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 176
    i32.add
    global.set $__stack_pointer
  )
  (func $bench_struct (;113;) (type 10)
    (local i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h0f61f58d44159becE
    local.get 0
    i32.const 24
    i32.add
    call $_ZN43_$LT$C$u20$as$u20$set_repeat..SetRepeat$GT$12bench_struct17h430fcd3a03e5ce9cE
    local.get 0
    local.get 0
    i64.load offset=24
    i64.store offset=32 align=4
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.const 32
    i32.add
    call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$4iter17h82f6e16348fbb8f4E
    local.get 0
    local.get 0
    i64.load offset=16
    i64.store offset=40 align=4
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 48
        i32.add
        local.get 0
        i32.const 40
        i32.add
        call $_ZN126_$LT$dharitri_sc..storage..mappers..queue_mapper..Iter$LT$SA$C$A$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3013c1e2a349d305E
        local.get 0
        i64.load offset=48
        i64.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=84
        local.set 1
        local.get 0
        i64.load offset=64
        local.set 2
        local.get 0
        i32.load offset=80
        local.set 3
        local.get 0
        i32.load offset=76
        local.set 4
        local.get 0
        i32.load offset=72
        local.set 5
        local.get 0
        i32.const 8
        i32.add
        call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$14new_from_slice17ha70104b44f81afc3E
        local.get 0
        local.get 0
        i32.load offset=8
        i32.store offset=88
        local.get 0
        local.get 0
        i32.load8_u offset=12
        i32.const 1
        i32.and
        i32.store8 offset=92
        local.get 5
        local.get 0
        i32.const 88
        i32.add
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h8557ae03c114a245E
        local.get 0
        i64.load offset=56
        local.get 0
        i32.const 88
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17hcb7b868728c35054E
        local.get 4
        local.get 0
        i32.const 88
        i32.add
        call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he34620669018dc45E
        local.get 3
        local.get 0
        i32.const 88
        i32.add
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h8557ae03c114a245E
        local.get 2
        local.get 0
        i32.const 88
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17hcb7b868728c35054E
        local.get 1
        local.get 0
        i32.const 88
        i32.add
        call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he34620669018dc45E
        local.get 0
        i32.load offset=88
        local.get 0
        i32.load8_u offset=92
        call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$19into_managed_buffer17h67f1901d6b45337aE
        call $mBufferFinish
        drop
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 96
    i32.add
    global.set $__stack_pointer
  )
  (func $callBack (;114;) (type 10))
  (func $memcpy (;115;) (type 4) (param i32 i32 i32) (result i32)
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
  (func $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E (;116;) (type 10)
    call $rust_begin_unwind
    unreachable
  )
  (table (;0;) 1 1 funcref)
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 141272)
  (global (;2;) i32 i32.const 141280)
  (export "memory" (memory 0))
  (export "init" (func $init))
  (export "add" (func $add))
  (export "count" (func $count))
  (export "remove" (func $remove))
  (export "bench" (func $bench))
  (export "add_struct" (func $add_struct))
  (export "count_struct" (func $count_struct))
  (export "remove_struct" (func $remove_struct))
  (export "bench_struct" (func $bench_struct))
  (export "callBack" (func $callBack))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data $.rodata (;0;) (i32.const 131072) "valuenum_repeatsinput too longargument decode error (): wrong number of argumentsinput too short.node_id.node_links.value.infostorage decode error: bench_structbenchmark\00\00\00panic occurred")
  (data $.data (;1;) (i32.const 131260) "\9c\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.76.0-nightly (d86d65bbc 2023-12-10)")
  )
)