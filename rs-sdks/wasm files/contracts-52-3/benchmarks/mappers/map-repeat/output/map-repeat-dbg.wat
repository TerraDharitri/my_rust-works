(module $map_repeat_wasm.wasm
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
  (type (;12;) (func (param i32 i32 i32 i32)))
  (type (;13;) (func (param i32 i32 i32) (result i64)))
  (type (;14;) (func (param i32 i32 i32 i32 i32)))
  (type (;15;) (func (param i64 i32)))
  (type (;16;) (func (param i32 i32) (result i64)))
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
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;12;) (type 9)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;13;) (type 4)))
  (import "env" "bigIntCmp" (func $bigIntCmp (;14;) (type 3)))
  (import "env" "mBufferCopyByteSlice" (func $mBufferCopyByteSlice (;15;) (type 9)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;16;) (type 3)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;17;) (type 3)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;18;) (type 3)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;19;) (type 3)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;20;) (type 10)))
  (import "env" "smallIntFinishUnsigned" (func $smallIntFinishUnsigned (;21;) (type 11)))
  (func $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8de9fe162e537d3aE (;22;) (type 6) (param i32) (result i32)
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E (;23;) (type 2) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=131272
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=131272
    local.get 0
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h307b73fa0394aa64E (;24;) (type 6) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h4c7cb4508d086bc7E (;25;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $mBufferEq
    i32.const 0
    i32.gt_s
  )
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h8d0ba62b3aef6a9dE (;26;) (type 6) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hf8017bc48fd0f68dE (;27;) (type 12) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131105
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hb5700901fa4b6f46E
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hb5700901fa4b6f46E (;28;) (type 3) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h93069348927913f2E (;29;) (type 6) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h8d0ba62b3aef6a9dE
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc225c9fb46028524E (;30;) (type 12) (param i32 i32 i32 i32)
    (local i32 i32 i64 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 1
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h8d0ba62b3aef6a9dE
    local.tee 5
    call $mBufferGetLength
    local.set 1
    local.get 4
    i32.const 0
    i32.store8 offset=28
    local.get 4
    local.get 1
    i32.store offset=24
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
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h9a6397f895b4b670E
    local.set 1
    local.get 4
    i32.const 12
    i32.add
    local.get 2
    local.get 3
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17hd29b2be9cc9d40e9E
    local.set 6
    local.get 4
    i32.const 12
    i32.add
    local.get 2
    local.get 3
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h3388cfc30c1f2a2eE
    local.set 5
    local.get 4
    i32.const 12
    i32.add
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h9a6397f895b4b670E
    local.set 7
    local.get 4
    i32.const 12
    i32.add
    local.get 2
    local.get 3
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17hd29b2be9cc9d40e9E
    local.set 8
    local.get 4
    i32.const 12
    i32.add
    local.get 2
    local.get 3
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h3388cfc30c1f2a2eE
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
        i32.store offset=141276
        i32.const 0
        i32.const 0
        i32.store8 offset=141280
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
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hf8017bc48fd0f68dE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h9a6397f895b4b670E (;31;) (type 4) (param i32 i32 i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17haf7351ffc6b3326fE
    local.get 3
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load
    local.tee 4
    local.get 3
    i32.load offset=12
    local.tee 5
    i32.const 24
    i32.shl
    local.get 5
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 5
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 5
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    local.tee 5
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h7d510742592bf2efE
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
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hf8017bc48fd0f68dE
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17hd29b2be9cc9d40e9E (;32;) (type 13) (param i32 i32 i32) (result i64)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17haf7351ffc6b3326fE
    local.get 3
    i64.load offset=8
    local.set 4
    local.get 3
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
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h3388cfc30c1f2a2eE (;33;) (type 4) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h9a6397f895b4b670E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h84407391a9afb838E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc2bd671871f081d9E (;34;) (type 2) (result i32)
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
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hf8017bc48fd0f68dE
      unreachable
    end
    local.get 0
    i32.wrap_i64
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hcf74786d1e681481E (;35;) (type 5) (param i32)
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
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h2ffe93882098ffd1E (;36;) (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h61d9e360dd8b03fdE
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
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h7d510742592bf2efE
    block ;; label = @1
      local.get 2
      i32.load offset=8
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      i32.const 131156
      i32.const 15
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hc09de32539dbe524E
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h61d9e360dd8b03fdE (;37;) (type 3) (param i32 i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h5074f296acb0b5faE
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
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h7d510742592bf2efE (;38;) (type 12) (param i32 i32 i32 i32)
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
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hc09de32539dbe524E (;39;) (type 1) (param i32 i32 i32)
    (local i32)
    i32.const 131208
    i32.const 27
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hb5700901fa4b6f46E
    local.tee 3
    local.get 0
    call $mBufferAppend
    drop
    local.get 3
    i32.const 131128
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
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17haf7351ffc6b3326fE (;40;) (type 14) (param i32 i32 i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h77b16681d09a7946E
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 4
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17hf7a9ec8fd621950cE
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17ha30fe50ce03bd0cdE (;41;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferAppendBytes
    drop
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h31d9b3d2dfce6a01E (;42;) (type 9) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17hbff7f6240f1f848fE (;43;) (type 6) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17hd167bd15fecc1fa8E (;44;) (type 8) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferAppend
    drop
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp115_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17hbf281e1e1286e009E (;45;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $bigIntCmp
    i32.eqz
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h77b16681d09a7946E (;46;) (type 9) (param i32 i32 i32 i32) (result i32)
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
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17hbff7f6240f1f848fE
              local.tee 5
              i32.const 10000
              i32.gt_u
              br_if 1 (;@4;)
              i32.const 0
              i32.load8_u offset=141280
              i32.const 255
              i32.and
              br_if 1 (;@4;)
              i32.const 0
              local.get 5
              i32.store offset=141276
              i32.const 0
              i32.const 1
              i32.store8 offset=141280
              local.get 4
              i32.const 0
              i32.const 131276
              local.get 5
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h31d9b3d2dfce6a01E
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
            i32.load offset=141276
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
            local.get 1
            i32.const 131276
            i32.add
            local.get 3
            call $memcpy
            drop
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
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h31d9b3d2dfce6a01E
          local.set 4
        end
        local.get 4
        return
      end
      local.get 1
      local.get 0
      call $_ZN4core5slice5index22slice_index_order_fail17h203c6e1b4907093dE
      unreachable
    end
    local.get 0
    call $_ZN4core5slice5index24slice_end_index_len_fail17h7917b91b59da861bE
    unreachable
  )
  (func $_ZN4core5slice5index22slice_index_order_fail17h203c6e1b4907093dE (;47;) (type 8) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17hb859252f4b513814E
    unreachable
  )
  (func $_ZN4core5slice5index24slice_end_index_len_fail17h7917b91b59da861bE (;48;) (type 5) (param i32)
    call $_ZN4core9panicking9panic_fmt17hb859252f4b513814E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17hbda4cc011538dae7E (;49;) (type 6) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h84407391a9afb838E (;50;) (type 6) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferToBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h4608feb7405b48ccE (;51;) (type 6) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h9f8f94d687ce75f1E (;52;) (type 8) (param i32 i32)
    local.get 1
    i32.load offset=16
    local.get 0
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h0b6ecf106000000bE
    local.get 1
    i64.load
    local.get 0
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h52a0b2bf1f770fa5E
    local.get 1
    i32.load offset=20
    local.get 0
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h2755940bed99741fE
    local.get 1
    i32.load offset=24
    local.get 0
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h0b6ecf106000000bE
    local.get 1
    i64.load offset=8
    local.get 0
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h52a0b2bf1f770fa5E
    local.get 1
    i32.load offset=28
    local.get 0
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h2755940bed99741fE
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h0b6ecf106000000bE (;53;) (type 8) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17hbff7f6240f1f848fE
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17ha30fe50ce03bd0cdE
    local.get 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17hd167bd15fecc1fa8E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h52a0b2bf1f770fa5E (;54;) (type 15) (param i64 i32)
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17ha30fe50ce03bd0cdE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h2755940bed99741fE (;55;) (type 8) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17hbda4cc011538dae7E
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h0b6ecf106000000bE
  )
  (func $_ZN11dharitri_sc7storage11storage_set11storage_set17h5474f56a8caa13beE (;56;) (type 8) (param i32 i32)
    (local i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store8 offset=15
    local.get 2
    local.get 1
    i64.extend_i32_u
    local.tee 3
    i64.const 24
    i64.shr_u
    i32.wrap_i64
    local.tee 4
    i32.store8 offset=12
    local.get 2
    local.get 3
    i64.const 16
    i64.shr_u
    i32.wrap_i64
    local.tee 5
    i32.store8 offset=13
    local.get 2
    local.get 3
    i64.const 8
    i64.shr_u
    i32.wrap_i64
    local.tee 6
    i32.store8 offset=14
    local.get 2
    i32.const 0
    i32.store offset=8
    local.get 0
    local.get 2
    i32.const 8
    i32.add
    i32.const 4
    i32.const 5
    local.get 4
    select
    local.get 5
    local.get 4
    i32.or
    i32.const 255
    i32.and
    i32.eqz
    local.tee 4
    i32.add
    i32.const 0
    local.get 4
    local.get 6
    i32.const 255
    i32.and
    select
    local.tee 4
    i32.add
    i32.const 0
    local.get 4
    local.get 1
    select
    i32.add
    local.tee 1
    i32.add
    i32.const 8
    local.get 1
    i32.sub
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h82e85f616b3d2eaeE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h82e85f616b3d2eaeE (;57;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hb5700901fa4b6f46E
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage11storage_set11storage_set17h61691fd2919fea2fE (;58;) (type 5) (param i32)
    local.get 0
    i32.const 1
    i32.const 0
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h82e85f616b3d2eaeE
  )
  (func $_ZN11dharitri_sc7storage11storage_set13storage_clear17hc6ef8d5e962bfb7aE (;59;) (type 5) (param i32)
    i32.const -20
    i32.const 1
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
    i32.const -20
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$15build_named_key17h4d8b3ec76a87ab8aE (;60;) (type 3) (param i32 i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h307b73fa0394aa64E
    local.tee 0
    i32.const 131171
    i32.const 7
    call $mBufferAppendBytes
    drop
    local.get 1
    local.get 0
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h0b6ecf106000000bE
    local.get 0
  )
  (func $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$15build_named_key17he95551dc57228c77E (;61;) (type 3) (param i32 i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h307b73fa0394aa64E
    local.tee 0
    i32.const 131171
    i32.const 7
    call $mBufferAppendBytes
    drop
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h9f8f94d687ce75f1E
    local.get 0
  )
  (func $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$16get_mapped_value17h5e380a5a5f8a4bc7E (;62;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$15build_named_key17he95551dc57228c77E
    call $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17hbbe00da640e5afb6E
  )
  (func $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17hbbe00da640e5afb6E (;63;) (type 8) (param i32 i32)
    (local i32 i32 i64 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h30bc2b9795efcc4aE
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h2ffe93882098ffd1E
    local.set 3
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17hf1ebb49cac10ad5eE
    local.set 4
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h89e73ecc36d1171eE
    local.set 5
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h2ffe93882098ffd1E
    local.set 6
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17hf1ebb49cac10ad5eE
    local.set 7
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h89e73ecc36d1171eE
    local.set 8
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
        i32.store offset=141276
        i32.const 0
        i32.const 0
        i32.store8 offset=141280
      end
      local.get 0
      local.get 8
      i32.store offset=28
      local.get 0
      local.get 6
      i32.store offset=24
      local.get 0
      local.get 5
      i32.store offset=20
      local.get 0
      local.get 3
      i32.store offset=16
      local.get 0
      local.get 7
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
    local.get 1
    i32.const 131091
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hc09de32539dbe524E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$16get_mapped_value17h847bd0d77d8416b8E (;64;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$15build_named_key17h4d8b3ec76a87ab8aE
    call $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17h797f73b0f6097eb1E
  )
  (func $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17h797f73b0f6097eb1E (;65;) (type 6) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h4608feb7405b48ccE
  )
  (func $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$3get17h52735e7e7ac7105cE (;66;) (type 12) (param i32 i32 i32 i32)
    (local i64)
    i64.const 0
    local.set 4
    block ;; label = @1
      local.get 1
      local.get 3
      call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$8contains17h11eb635854d12e2dE
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 8
      i32.add
      local.get 2
      local.get 3
      call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$16get_mapped_value17h5e380a5a5f8a4bc7E
      i64.const 1
      local.set 4
    end
    local.get 0
    local.get 4
    i64.store
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$8contains17h11eb635854d12e2dE (;67;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$11get_node_id17h0466da39bb5060e9E
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$3get17h5be62b25b41cd261E (;68;) (type 12) (param i32 i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        local.get 1
        local.get 3
        call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$8contains17h379fa3a9b5343537E
        br_if 0 (;@2;)
        i32.const 0
        local.set 1
        br 1 (;@1;)
      end
      i32.const 1
      local.set 1
      local.get 2
      local.get 3
      call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$16get_mapped_value17h847bd0d77d8416b8E
      local.set 3
    end
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$8contains17h379fa3a9b5343537E (;69;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$11get_node_id17h3d04ea2078ac3af2E
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$11get_node_id17h0466da39bb5060e9E (;70;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17h37ed5775aee5a5fdE
    call $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17h253f3c3437ec47b4E
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17h37ed5775aee5a5fdE (;71;) (type 3) (param i32 i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h307b73fa0394aa64E
    local.tee 0
    i32.const 131178
    i32.const 8
    call $mBufferAppendBytes
    drop
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h9f8f94d687ce75f1E
    local.get 0
  )
  (func $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17h253f3c3437ec47b4E (;72;) (type 6) (param i32) (result i32)
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
        call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h4608feb7405b48ccE
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
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h31d9b3d2dfce6a01E
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
      i32.const 131091
      i32.const 14
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hc09de32539dbe524E
      unreachable
    end
    local.get 0
    i32.const 131091
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hc09de32539dbe524E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$11get_node_id17h3d04ea2078ac3af2E (;73;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17h4ab0ec53f0c3ec6fE
    call $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17h253f3c3437ec47b4E
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17h4ab0ec53f0c3ec6fE (;74;) (type 3) (param i32 i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h307b73fa0394aa64E
    local.tee 0
    i32.const 131178
    i32.const 8
    call $mBufferAppendBytes
    drop
    local.get 1
    local.get 0
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h0b6ecf106000000bE
    local.get 0
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17h7c4dd51bc5da639cE (;75;) (type 8) (param i32 i32)
    (local i32 i32)
    local.get 0
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$14build_name_key17h57fae5187ef156e5E
    local.set 2
    block ;; label = @1
      local.get 1
      i32.load
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h87a1e1bd2ae8dd51E
      local.tee 0
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h412be2c2320d818eE
      local.get 1
      i32.load offset=4
      local.get 0
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h412be2c2320d818eE
      local.get 1
      i32.load offset=8
      local.get 0
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h412be2c2320d818eE
      local.get 1
      i32.load offset=12
      local.get 0
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h412be2c2320d818eE
      local.get 2
      local.get 0
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hd45b41a3913024bdE
      return
    end
    local.get 2
    i32.const 1
    i32.const 0
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h82e85f616b3d2eaeE
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$14build_name_key17h57fae5187ef156e5E (;76;) (type 6) (param i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h307b73fa0394aa64E
    local.tee 0
    i32.const 131203
    i32.const 5
    call $mBufferAppendBytes
    drop
    local.get 0
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h87a1e1bd2ae8dd51E (;77;) (type 2) (result i32)
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hb5700901fa4b6f46E
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h412be2c2320d818eE (;78;) (type 8) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17ha30fe50ce03bd0cdE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hd45b41a3913024bdE (;79;) (type 8) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h2feaded493c2062dE (;80;) (type 12) (param i32 i32 i32 i32)
    local.get 0
    i32.const 131186
    i32.const 11
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h0b34e5c62c9e06b1E
    local.set 0
    local.get 2
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h87a1e1bd2ae8dd51E
    local.tee 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h412be2c2320d818eE
    local.get 3
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h412be2c2320d818eE
    local.get 0
    local.get 1
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hd45b41a3913024bdE
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h0b34e5c62c9e06b1E (;81;) (type 9) (param i32 i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h307b73fa0394aa64E
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
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17hcaec648acfba40eeE (;82;) (type 8) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$14build_name_key17h57fae5187ef156e5E
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
        call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h30bc2b9795efcc4aE
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h61d9e360dd8b03fdE
        local.set 6
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h61d9e360dd8b03fdE
        local.set 3
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h61d9e360dd8b03fdE
        local.set 4
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h61d9e360dd8b03fdE
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
        i32.store offset=141276
        i32.const 0
        i32.const 0
        i32.store8 offset=141280
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
    i32.const 131091
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hc09de32539dbe524E
    unreachable
  )
  (func $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h30bc2b9795efcc4aE (;83;) (type 8) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h4608feb7405b48ccE
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
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17hb7449498c1c3dfdaE (;84;) (type 1) (param i32 i32 i32)
    (local i32 i32)
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
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h0b34e5c62c9e06b1E
    local.tee 2
    call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h30bc2b9795efcc4aE
    local.get 3
    i32.const 12
    i32.add
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h61d9e360dd8b03fdE
    local.set 1
    local.get 3
    i32.const 12
    i32.add
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h61d9e360dd8b03fdE
    local.set 4
    block ;; label = @1
      local.get 3
      i32.load offset=16
      local.get 3
      i32.load offset=12
      i32.ne
      br_if 0 (;@1;)
      block ;; label = @2
        local.get 3
        i32.load8_u offset=28
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        i32.store offset=141276
        i32.const 0
        i32.const 0
        i32.store8 offset=141280
      end
      local.get 0
      local.get 4
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
      local.get 3
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 2
    i32.const 131091
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hc09de32539dbe524E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17h520838ff29fdbde9E (;85;) (type 3) (param i32 i32) (result i32)
    local.get 0
    i32.const 131197
    i32.const 6
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h0b34e5c62c9e06b1E
    call $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17h797f73b0f6097eb1E
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17h8fc2fc3c3a8c82a7E (;86;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    i32.const 131197
    i32.const 6
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h0b34e5c62c9e06b1E
    call $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17hbbe00da640e5afb6E
  )
  (func $_ZN121_$LT$benchmark_common..example_struct..ExampleStruct$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17hfa65719c4b7af1d2E (;87;) (type 8) (param i32 i32)
    (local i32)
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h87a1e1bd2ae8dd51E
    local.set 2
    local.get 0
    i32.load offset=16
    local.get 2
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h0b6ecf106000000bE
    local.get 0
    i64.load
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h52a0b2bf1f770fa5E
    local.get 0
    i32.load offset=20
    local.get 2
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h2755940bed99741fE
    local.get 0
    i32.load offset=24
    local.get 2
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h0b6ecf106000000bE
    local.get 0
    i64.load offset=8
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h52a0b2bf1f770fa5E
    local.get 0
    i32.load offset=28
    local.get 2
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h2755940bed99741fE
    local.get 1
    local.get 2
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hd45b41a3913024bdE
  )
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h89e73ecc36d1171eE (;88;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h2ffe93882098ffd1E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h84407391a9afb838E
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17hf1ebb49cac10ad5eE (;89;) (type 16) (param i32 i32) (result i64)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h5074f296acb0b5faE
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
  (func $_ZN16benchmark_common16benchmark_common15BenchmarkCommon12append_index17h825c48e3279f05b8E (;90;) (type 3) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h307b73fa0394aa64E
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
  (func $_ZN16benchmark_common16benchmark_common15BenchmarkCommon16use_index_struct17h16275a58632bc783E (;91;) (type 1) (param i32 i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    call $_ZN95_$LT$benchmark_common..example_struct..ExampleStruct$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h29efe8be387816bdE
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
  (func $_ZN95_$LT$benchmark_common..example_struct..ExampleStruct$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h29efe8be387816bdE (;92;) (type 8) (param i32 i32)
    (local i32 i64 i32 i32 i64)
    local.get 1
    i32.load offset=16
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h307b73fa0394aa64E
    local.set 2
    local.get 1
    i64.load
    local.set 3
    local.get 1
    i32.load offset=20
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8de9fe162e537d3aE
    local.set 4
    local.get 1
    i32.load offset=24
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h307b73fa0394aa64E
    local.set 5
    local.get 1
    i64.load offset=8
    local.set 6
    local.get 1
    i32.load offset=28
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8de9fe162e537d3aE
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
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h5074f296acb0b5faE (;93;) (type 12) (param i32 i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h77b16681d09a7946E
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17hba9489bb7df024b5E
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17hba9489bb7df024b5E (;94;) (type 5) (param i32)
    local.get 0
    i32.const 131156
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hc09de32539dbe524E
    unreachable
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17hf7a9ec8fd621950cE (;95;) (type 8) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 131156
    i32.const 15
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hf8017bc48fd0f68dE
    unreachable
  )
  (func $_ZN43_$LT$C$u20$as$u20$map_repeat..MapRepeat$GT$12bench_struct17hcdf7a0c1152c595dE (;96;) (type 5) (param i32)
    (local i32 i32 i32)
    i32.const 131235
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hb5700901fa4b6f46E
    local.tee 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h307b73fa0394aa64E
    local.set 2
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h307b73fa0394aa64E
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
  (func $_ZN43_$LT$C$u20$as$u20$map_repeat..MapRepeat$GT$5bench17h8c0867f9d3a8b81dE (;97;) (type 5) (param i32)
    (local i32 i32 i32)
    i32.const 131247
    i32.const 9
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hb5700901fa4b6f46E
    local.tee 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h307b73fa0394aa64E
    local.set 2
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h307b73fa0394aa64E
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
  (func $_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17ha2dfcf77de7f9ae6E (;98;) (type 8) (param i32 i32)
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
  (func $rust_begin_unwind (;99;) (type 10)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h8945d78c95e86419E
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h8945d78c95e86419E (;100;) (type 10)
    i32.const 131256
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;101;) (type 10)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hcf74786d1e681481E
  )
  (func $add (;102;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hcf74786d1e681481E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc2bd671871f081d9E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h93069348927913f2E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h93069348927913f2E
    local.set 3
    local.get 0
    i32.const 20
    i32.add
    call $_ZN43_$LT$C$u20$as$u20$map_repeat..MapRepeat$GT$5bench17h8c0867f9d3a8b81dE
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
        call $_ZN16benchmark_common16benchmark_common15BenchmarkCommon12append_index17h825c48e3279f05b8E
        local.set 8
        local.get 3
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h307b73fa0394aa64E
        local.set 9
        local.get 0
        i32.const 8
        i32.add
        local.get 6
        local.get 5
        local.get 8
        call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$3get17h5be62b25b41cd261E
        local.get 5
        local.get 8
        call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$15build_named_key17h4d8b3ec76a87ab8aE
        local.get 9
        call $mBufferStorageStore
        drop
        block ;; label = @3
          local.get 6
          local.get 8
          call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$8contains17h379fa3a9b5343537E
          br_if 0 (;@3;)
          local.get 0
          i32.const 32
          i32.add
          local.get 4
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17hcaec648acfba40eeE
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
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17hb7449498c1c3dfdaE
            local.get 4
            local.get 11
            local.get 0
            i32.load
            local.get 9
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h2feaded493c2062dE
          end
          local.get 4
          local.get 9
          local.get 11
          i32.const 0
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h2feaded493c2062dE
          local.get 0
          local.get 9
          i32.store offset=40
          local.get 4
          i32.const 131197
          i32.const 6
          local.get 9
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h0b34e5c62c9e06b1E
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
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17h7c4dd51bc5da639cE
          local.get 6
          local.get 8
          call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17h4ab0ec53f0c3ec6fE
          local.get 9
          call $_ZN11dharitri_sc7storage11storage_set11storage_set17h5474f56a8caa13beE
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
  (func $count (;103;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hcf74786d1e681481E
    i32.const 0
    local.set 1
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h93069348927913f2E
    local.set 2
    local.get 0
    i32.const 20
    i32.add
    call $_ZN43_$LT$C$u20$as$u20$map_repeat..MapRepeat$GT$5bench17h8c0867f9d3a8b81dE
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    i32.load offset=24
    local.tee 3
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17hcaec648acfba40eeE
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
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17hb7449498c1c3dfdaE
          local.get 0
          i32.load offset=12
          local.set 7
          local.get 0
          local.get 6
          local.get 5
          local.get 3
          local.get 4
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17h520838ff29fdbde9E
          call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$3get17h5be62b25b41cd261E
          local.get 0
          i32.load
          i32.eqz
          br_if 2 (;@1;)
          local.get 1
          local.get 0
          i32.load offset=4
          local.get 2
          call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h4c7cb4508d086bc7E
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
    call $_ZN4core6option13unwrap_failed17h3135ea563cdcf5b2E
    unreachable
  )
  (func $_ZN4core6option13unwrap_failed17h3135ea563cdcf5b2E (;104;) (type 10)
    call $_ZN4core9panicking5panic17hff86462b5c0334dbE
    unreachable
  )
  (func $remove (;105;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hcf74786d1e681481E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc2bd671871f081d9E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h93069348927913f2E
    local.set 2
    local.get 0
    i32.const 40
    i32.add
    call $_ZN43_$LT$C$u20$as$u20$map_repeat..MapRepeat$GT$5bench17h8c0867f9d3a8b81dE
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
        call $_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17ha2dfcf77de7f9ae6E
        local.get 0
        i32.load offset=32
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 2
        local.get 0
        i32.load offset=36
        call $_ZN16benchmark_common16benchmark_common15BenchmarkCommon12append_index17h825c48e3279f05b8E
        local.tee 5
        call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$11get_node_id17h3d04ea2078ac3af2E
        local.tee 6
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 24
        i32.add
        local.get 1
        local.get 6
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17hb7449498c1c3dfdaE
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
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17hcaec648acfba40eeE
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
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17hb7449498c1c3dfdaE
            local.get 1
            local.get 8
            local.get 0
            i32.load offset=16
            local.get 7
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h2feaded493c2062dE
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
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17hb7449498c1c3dfdaE
            local.get 1
            local.get 7
            local.get 8
            local.get 0
            i32.load offset=12
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h2feaded493c2062dE
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
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h0b34e5c62c9e06b1E
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h61691fd2919fea2fE
        local.get 1
        local.get 6
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17h520838ff29fdbde9E
        drop
        local.get 1
        i32.const 131197
        i32.const 6
        local.get 6
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h0b34e5c62c9e06b1E
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h61691fd2919fea2fE
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
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17h7c4dd51bc5da639cE
        local.get 4
        local.get 5
        call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17h4ab0ec53f0c3ec6fE
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h61691fd2919fea2fE
        local.get 3
        local.get 5
        call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$16get_mapped_value17h847bd0d77d8416b8E
        drop
        local.get 3
        local.get 5
        call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$15build_named_key17h4d8b3ec76a87ab8aE
        call $_ZN11dharitri_sc7storage11storage_set13storage_clear17hc6ef8d5e962bfb7aE
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $add_struct (;106;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 272
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hcf74786d1e681481E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc2bd671871f081d9E
    local.set 1
    local.get 0
    i32.const 144
    i32.add
    i32.const 1
    i32.const 131077
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc225c9fb46028524E
    local.get 0
    i32.const 176
    i32.add
    i32.const 2
    i32.const 131072
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc225c9fb46028524E
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
    local.get 0
    i64.load offset=76 align=4
    i64.store offset=8
    local.get 0
    local.get 0
    i64.load offset=108 align=4
    i64.store offset=40
    local.get 0
    i32.const 212
    i32.add
    call $_ZN43_$LT$C$u20$as$u20$map_repeat..MapRepeat$GT$12bench_struct17hcdf7a0c1152c595dE
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
        call $_ZN16benchmark_common16benchmark_common15BenchmarkCommon16use_index_struct17h16275a58632bc783E
        local.get 0
        i32.const 144
        i32.add
        local.get 0
        i32.const 40
        i32.add
        call $_ZN95_$LT$benchmark_common..example_struct..ExampleStruct$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h29efe8be387816bdE
        local.get 0
        i32.const 72
        i32.add
        local.get 4
        local.get 3
        local.get 0
        i32.const 224
        i32.add
        call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$3get17h52735e7e7ac7105cE
        local.get 0
        i32.const 144
        i32.add
        local.get 3
        local.get 0
        i32.const 224
        i32.add
        call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$15build_named_key17he95551dc57228c77E
        call $_ZN121_$LT$benchmark_common..example_struct..ExampleStruct$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17hfa65719c4b7af1d2E
        block ;; label = @3
          local.get 4
          local.get 0
          i32.const 224
          i32.add
          call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$8contains17h11eb635854d12e2dE
          br_if 0 (;@3;)
          local.get 0
          i32.const 256
          i32.add
          local.get 2
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17hcaec648acfba40eeE
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
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17hb7449498c1c3dfdaE
            local.get 2
            local.get 8
            local.get 0
            i32.load
            local.get 6
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h2feaded493c2062dE
          end
          local.get 2
          local.get 6
          local.get 8
          i32.const 0
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h2feaded493c2062dE
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
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h0b34e5c62c9e06b1E
          call $_ZN121_$LT$benchmark_common..example_struct..ExampleStruct$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17hfa65719c4b7af1d2E
          local.get 0
          local.get 7
          i32.const 1
          i32.add
          i32.store offset=256
          local.get 2
          local.get 0
          i32.const 256
          i32.add
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17h7c4dd51bc5da639cE
          local.get 4
          local.get 0
          i32.const 224
          i32.add
          call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17h37ed5775aee5a5fdE
          local.get 6
          call $_ZN11dharitri_sc7storage11storage_set11storage_set17h5474f56a8caa13beE
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
  (func $count_struct (;107;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 144
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hcf74786d1e681481E
    i32.const 0
    local.set 1
    local.get 0
    i32.const 16
    i32.add
    i32.const 0
    i32.const 131072
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc225c9fb46028524E
    local.get 0
    i32.const 52
    i32.add
    call $_ZN43_$LT$C$u20$as$u20$map_repeat..MapRepeat$GT$12bench_struct17hcdf7a0c1152c595dE
    local.get 0
    i32.const 104
    i32.add
    local.get 0
    i32.load offset=56
    local.tee 2
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17hcaec648acfba40eeE
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
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17hb7449498c1c3dfdaE
          local.get 0
          i32.load offset=12
          local.set 3
          local.get 4
          local.get 2
          local.get 13
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17h8fc2fc3c3a8c82a7E
          local.get 0
          i64.const 1
          i64.store offset=64
          local.get 0
          i32.const 104
          i32.add
          local.get 10
          local.get 9
          local.get 4
          call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$3get17h52735e7e7ac7105cE
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
            call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h4c7cb4508d086bc7E
            i32.eqz
            br_if 0 (;@4;)
            local.get 18
            local.get 12
            i64.ne
            br_if 0 (;@4;)
            local.get 16
            local.get 7
            call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp115_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17hbf281e1e1286e009E
            i32.eqz
            br_if 0 (;@4;)
            local.get 15
            local.get 6
            call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h4c7cb4508d086bc7E
            i32.eqz
            br_if 0 (;@4;)
            local.get 17
            local.get 11
            i64.ne
            br_if 0 (;@4;)
            local.get 14
            local.get 5
            call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp115_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17hbf281e1e1286e009E
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
    call $_ZN4core6option13unwrap_failed17h3135ea563cdcf5b2E
    unreachable
  )
  (func $remove_struct (;108;) (type 10)
    (local i32 i32 i32 i64 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 224
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hcf74786d1e681481E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc2bd671871f081d9E
    local.set 1
    local.get 0
    i32.const 96
    i32.add
    i32.const 1
    i32.const 131077
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc225c9fb46028524E
    local.get 0
    i32.const 40
    i32.add
    i32.const 8
    i32.add
    local.get 0
    i32.const 96
    i32.add
    i32.const 8
    i32.add
    local.tee 2
    i64.load
    i64.store
    local.get 0
    i32.const 40
    i32.add
    i32.const 16
    i32.add
    local.get 0
    i32.const 96
    i32.add
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 40
    i32.add
    i32.const 24
    i32.add
    local.get 0
    i32.const 96
    i32.add
    i32.const 24
    i32.add
    i64.load
    i64.store
    local.get 0
    local.get 0
    i64.load offset=96
    local.tee 3
    i64.store offset=172 align=4
    local.get 0
    local.get 3
    i64.store offset=40
    local.get 0
    i32.const 72
    i32.add
    call $_ZN43_$LT$C$u20$as$u20$map_repeat..MapRepeat$GT$12bench_struct17hcdf7a0c1152c595dE
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
    i32.const 168
    i32.add
    i32.const 8
    i32.add
    local.set 4
    local.get 0
    i32.load offset=80
    local.set 5
    local.get 0
    i32.load offset=76
    local.set 1
    local.get 0
    i32.load offset=72
    local.set 6
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 32
        i32.add
        local.get 0
        i32.const 84
        i32.add
        call $_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17ha2dfcf77de7f9ae6E
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
        call $_ZN16benchmark_common16benchmark_common15BenchmarkCommon16use_index_struct17h16275a58632bc783E
        local.get 6
        local.get 0
        i32.const 136
        i32.add
        call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$11get_node_id17h0466da39bb5060e9E
        local.tee 7
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 24
        i32.add
        local.get 1
        local.get 7
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17hb7449498c1c3dfdaE
        local.get 0
        i32.load offset=28
        local.set 8
        local.get 0
        i32.load offset=24
        local.set 9
        local.get 0
        i32.const 208
        i32.add
        local.get 1
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17hcaec648acfba40eeE
        block ;; label = @3
          block ;; label = @4
            local.get 9
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.const 16
            i32.add
            local.get 1
            local.get 9
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17hb7449498c1c3dfdaE
            local.get 1
            local.get 9
            local.get 0
            i32.load offset=16
            local.get 8
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h2feaded493c2062dE
            br 1 (;@3;)
          end
          local.get 0
          local.get 8
          i32.store offset=212
        end
        block ;; label = @3
          block ;; label = @4
            local.get 8
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.const 8
            i32.add
            local.get 1
            local.get 8
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17hb7449498c1c3dfdaE
            local.get 1
            local.get 8
            local.get 9
            local.get 0
            i32.load offset=12
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h2feaded493c2062dE
            br 1 (;@3;)
          end
          local.get 0
          local.get 9
          i32.store offset=216
        end
        local.get 1
        i32.const 131186
        i32.const 11
        local.get 7
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h0b34e5c62c9e06b1E
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h61691fd2919fea2fE
        local.get 4
        local.get 1
        local.get 7
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17h8fc2fc3c3a8c82a7E
        local.get 1
        i32.const 131197
        i32.const 6
        local.get 7
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h0b34e5c62c9e06b1E
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h61691fd2919fea2fE
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
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17h7c4dd51bc5da639cE
        local.get 6
        local.get 0
        i32.const 136
        i32.add
        call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17h37ed5775aee5a5fdE
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h61691fd2919fea2fE
        local.get 2
        local.get 5
        local.get 0
        i32.const 136
        i32.add
        call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$16get_mapped_value17h5e380a5a5f8a4bc7E
        local.get 5
        local.get 0
        i32.const 136
        i32.add
        call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$15build_named_key17he95551dc57228c77E
        call $_ZN11dharitri_sc7storage11storage_set13storage_clear17hc6ef8d5e962bfb7aE
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 224
    i32.add
    global.set $__stack_pointer
  )
  (func $callBack (;109;) (type 10))
  (func $_ZN4core9panicking9panic_fmt17hb859252f4b513814E (;110;) (type 10)
    call $rust_begin_unwind
    unreachable
  )
  (func $_ZN4core9panicking5panic17hff86462b5c0334dbE (;111;) (type 10)
    call $_ZN4core9panicking9panic_fmt17hb859252f4b513814E
    unreachable
  )
  (func $_ZN17compiler_builtins3mem6memcpy17h6a01844efc49c0e5E (;112;) (type 4) (param i32 i32 i32) (result i32)
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
  (func $memcpy (;113;) (type 4) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN17compiler_builtins3mem6memcpy17h6a01844efc49c0e5E
  )
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 141284)
  (global (;2;) i32 i32.const 141296)
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
  (data $.rodata (;0;) (i32.const 131072) "valuekeynum_repeatsinput too longargument decode error (): wrong number of argumentsinput too short.mapped.node_id.node_links.value.infostorage decode error (key: bench_structbenchmarkpanic occurred")
  (data $.data (;1;) (i32.const 131272) "8\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.80.1 (3f5fd8dd4 2024-08-06)")
  )
  (@custom "target_features" (after data) "\02+\0fmutable-globals+\08sign-ext")
)
