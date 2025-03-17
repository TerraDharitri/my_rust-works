(module $single_value_repeat_wasm.wasm
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
  (func $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2d7cfd54ed33fd3bE (;22;) (type 6) (param i32) (result i32)
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
    i32.load offset=131236
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=131236
    local.get 0
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha878e586716b35f8E (;24;) (type 6) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h0abfe4f200e80780E (;25;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $mBufferEq
    i32.const 0
    i32.gt_s
  )
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hc2eaf1b4d90ce8faE (;26;) (type 6) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hc4a542862372bab9E (;27;) (type 12) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131072
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h02747eebf6ce1711E
    local.tee 4
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 4
    i32.const 131095
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h02747eebf6ce1711E (;28;) (type 3) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h2e2dd55adbf0c421E (;29;) (type 12) (param i32 i32 i32 i32)
    (local i32 i32 i64 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 1
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hc2eaf1b4d90ce8faE
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
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h0134e0fd2271b44cE
    local.set 1
    local.get 4
    i32.const 12
    i32.add
    local.get 2
    local.get 3
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17hcc40d128ecdb1e68E
    local.set 6
    local.get 4
    i32.const 12
    i32.add
    local.get 2
    local.get 3
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h207a69b64dff8148E
    local.set 5
    local.get 4
    i32.const 12
    i32.add
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h0134e0fd2271b44cE
    local.set 7
    local.get 4
    i32.const 12
    i32.add
    local.get 2
    local.get 3
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17hcc40d128ecdb1e68E
    local.set 8
    local.get 4
    i32.const 12
    i32.add
    local.get 2
    local.get 3
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h207a69b64dff8148E
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
        i32.store offset=141240
        i32.const 0
        i32.const 0
        i32.store8 offset=141244
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
    i32.const 131138
    i32.const 14
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hc4a542862372bab9E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h0134e0fd2271b44cE (;30;) (type 4) (param i32 i32 i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h26c69510fd100911E
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
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17hcd4f6f8d0cec13c5E
    block ;; label = @1
      local.get 3
      i32.load
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131123
      i32.const 15
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hc4a542862372bab9E
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17hcc40d128ecdb1e68E (;31;) (type 13) (param i32 i32 i32) (result i64)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h26c69510fd100911E
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
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h207a69b64dff8148E (;32;) (type 4) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h0134e0fd2271b44cE
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h31e45a46924649caE
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd0ef21fef4436608E (;33;) (type 2) (result i32)
    (local i64)
    block ;; label = @1
      i32.const 0
      call $smallIntGetUnsignedArgument
      local.tee 0
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 131187
      i32.const 11
      i32.const 131138
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hc4a542862372bab9E
      unreachable
    end
    local.get 0
    i32.wrap_i64
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hff62180dd3edb486E (;34;) (type 6) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hc2eaf1b4d90ce8faE
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h34b7b5caeaa875f0E (;35;) (type 5) (param i32)
    block ;; label = @1
      call $getNumArguments
      local.get 0
      i32.ne
      br_if 0 (;@1;)
      return
    end
    i32.const 131098
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h26c69510fd100911E (;36;) (type 14) (param i32 i32 i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h1f0cd39e1f57a335E
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 4
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17ha03cc52144984014E
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17hcd4f6f8d0cec13c5E (;37;) (type 12) (param i32 i32 i32 i32)
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
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hcfd08469fb714ddbE (;38;) (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hc586a89f929828f2E
    local.get 2
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load
    local.tee 3
    local.get 2
    i32.load offset=12
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
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17hcd4f6f8d0cec13c5E
    block ;; label = @1
      local.get 2
      i32.load
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      i32.const 131123
      i32.const 15
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hd2a09b1d6c0d26baE
      unreachable
    end
    local.get 2
    i32.load offset=4
    local.set 1
    local.get 0
    local.get 3
    local.get 4
    i32.add
    i32.store
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hc586a89f929828f2E (;39;) (type 12) (param i32 i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h1f0cd39e1f57a335E
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17hd8ad0d5872b76ae3E
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hd2a09b1d6c0d26baE (;40;) (type 1) (param i32 i32 i32)
    (local i32)
    i32.const 131152
    i32.const 27
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h02747eebf6ce1711E
    local.tee 3
    local.get 0
    call $mBufferAppend
    drop
    local.get 3
    i32.const 131095
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
  (func $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h93366e4551e264d6E (;41;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferAppendBytes
    drop
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hc787ad231f8ae0cfE (;42;) (type 9) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17hdabcd4ea485cf9f3E (;43;) (type 6) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h3c008316378ba83bE (;44;) (type 8) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferAppend
    drop
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp115_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h53df94eef169e6a9E (;45;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $bigIntCmp
    i32.eqz
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h1f0cd39e1f57a335E (;46;) (type 9) (param i32 i32 i32 i32) (result i32)
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
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17hdabcd4ea485cf9f3E
              local.tee 5
              i32.const 10000
              i32.gt_u
              br_if 1 (;@4;)
              i32.const 0
              i32.load8_u offset=141244
              i32.const 255
              i32.and
              br_if 1 (;@4;)
              i32.const 0
              local.get 5
              i32.store offset=141240
              i32.const 0
              i32.const 1
              i32.store8 offset=141244
              local.get 4
              i32.const 0
              i32.const 131240
              local.get 5
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hc787ad231f8ae0cfE
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
            i32.load offset=141240
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
            i32.const 131240
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
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hc787ad231f8ae0cfE
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
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17hfb796894bdb46af9E (;49;) (type 6) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h31e45a46924649caE (;50;) (type 6) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferToBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h2a5c67bf513af736E (;51;) (type 6) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_set13storage_clear17h5396e62449684d35E (;52;) (type 5) (param i32)
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
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17hd69bad252aa1b069E (;53;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hcfd08469fb714ddbE
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h31e45a46924649caE
  )
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h71c4465cd425c52aE (;54;) (type 8) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17hfb796894bdb46af9E
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h0e0811633f46308cE
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h0e0811633f46308cE (;55;) (type 8) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17hdabcd4ea485cf9f3E
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h93366e4551e264d6E
    local.get 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h3c008316378ba83bE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17hac04fa52da63fc08E (;56;) (type 15) (param i32 i32) (result i64)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hc586a89f929828f2E
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h69a450cb46d27605E (;57;) (type 16) (param i64 i32)
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h93366e4551e264d6E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17ha03cc52144984014E (;58;) (type 8) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 131123
    i32.const 15
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hc4a542862372bab9E
    unreachable
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17hd8ad0d5872b76ae3E (;59;) (type 5) (param i32)
    local.get 0
    i32.const 131123
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hd2a09b1d6c0d26baE
    unreachable
  )
  (func $_ZN19single_value_repeat17SingleValueRepeat7item_at17hcc6e75735ec368bcE (;60;) (type 3) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha878e586716b35f8E
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
    local.get 0
    i32.const 131210
    i32.const 9
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h02747eebf6ce1711E
    local.tee 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h0e0811633f46308cE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $_ZN19single_value_repeat17SingleValueRepeat9struct_at17h5434ba21cde884a2E (;61;) (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i64)
    local.get 0
    i32.load offset=16
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha878e586716b35f8E
    local.set 2
    local.get 0
    i32.load offset=20
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2d7cfd54ed33fd3bE
    local.set 3
    local.get 0
    i32.load offset=24
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha878e586716b35f8E
    local.set 4
    local.get 0
    i32.load offset=28
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2d7cfd54ed33fd3bE
    local.set 5
    local.get 2
    i32.const 131198
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h02747eebf6ce1711E
    local.tee 0
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h0e0811633f46308cE
    local.get 1
    i64.extend_i32_u
    local.tee 6
    local.get 0
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h69a450cb46d27605E
    local.get 3
    local.get 0
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h71c4465cd425c52aE
    local.get 4
    local.get 0
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h0e0811633f46308cE
    local.get 6
    local.get 0
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h69a450cb46d27605E
    local.get 5
    local.get 0
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h71c4465cd425c52aE
    local.get 0
  )
  (func $_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h81cf317feb67963dE (;62;) (type 8) (param i32 i32)
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
  (func $rust_begin_unwind (;63;) (type 10)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h8945d78c95e86419E
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h8945d78c95e86419E (;64;) (type 10)
    i32.const 131219
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;65;) (type 10)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h34b7b5caeaa875f0E
  )
  (func $add (;66;) (type 10)
    (local i32 i32 i32 i32)
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h34b7b5caeaa875f0E
    i32.const 0
    local.set 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd0ef21fef4436608E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hff62180dd3edb486E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hff62180dd3edb486E
    local.set 3
    block ;; label = @1
      loop ;; label = @2
        local.get 1
        local.get 0
        i32.eq
        br_if 1 (;@1;)
        local.get 2
        local.get 0
        call $_ZN19single_value_repeat17SingleValueRepeat7item_at17hcc6e75735ec368bcE
        local.get 3
        call $mBufferStorageStore
        drop
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        br 0 (;@2;)
      end
    end
  )
  (func $count (;67;) (type 10)
    (local i32 i32 i32 i32 i32)
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h34b7b5caeaa875f0E
    i32.const 0
    local.set 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd0ef21fef4436608E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hff62180dd3edb486E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hff62180dd3edb486E
    local.set 3
    i32.const 0
    local.set 4
    block ;; label = @1
      loop ;; label = @2
        local.get 1
        local.get 0
        i32.eq
        br_if 1 (;@1;)
        local.get 4
        local.get 2
        local.get 0
        call $_ZN19single_value_repeat17SingleValueRepeat7item_at17hcc6e75735ec368bcE
        call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h2a5c67bf513af736E
        local.get 3
        call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h0abfe4f200e80780E
        i32.add
        local.set 4
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        br 0 (;@2;)
      end
    end
    local.get 4
    i64.extend_i32_u
    call $smallIntFinishUnsigned
  )
  (func $remove (;68;) (type 10)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h34b7b5caeaa875f0E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd0ef21fef4436608E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hff62180dd3edb486E
    local.set 2
    local.get 0
    i32.const 0
    i32.store8 offset=28
    local.get 0
    local.get 1
    i32.store offset=24
    local.get 0
    i32.const 1
    i32.store offset=20
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.get 0
        i32.const 20
        i32.add
        call $_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h81cf317feb67963dE
        local.get 0
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        local.get 0
        i32.load offset=12
        call $_ZN19single_value_repeat17SingleValueRepeat7item_at17hcc6e75735ec368bcE
        call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h5396e62449684d35E
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $add_struct (;69;) (type 10)
    (local i32 i32 i64 i64 i64 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 144
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h34b7b5caeaa875f0E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd0ef21fef4436608E
    local.set 1
    local.get 0
    i32.const 80
    i32.add
    i32.const 1
    i32.const 131184
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h2e2dd55adbf0c421E
    local.get 0
    i32.const 112
    i32.add
    i32.const 2
    i32.const 131179
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h2e2dd55adbf0c421E
    local.get 0
    i32.const 72
    i32.add
    local.get 0
    i32.const 80
    i32.add
    i32.const 24
    i32.add
    i64.load
    local.tee 2
    i64.store align=4
    local.get 0
    i32.const 64
    i32.add
    local.get 0
    i32.const 80
    i32.add
    i32.const 16
    i32.add
    i64.load
    local.tee 3
    i64.store align=4
    local.get 0
    i32.const 56
    i32.add
    local.get 0
    i32.const 80
    i32.add
    i32.const 8
    i32.add
    i64.load
    local.tee 4
    i64.store align=4
    local.get 0
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 4
    i64.store
    local.get 0
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 3
    i64.store
    local.get 0
    i32.const 8
    i32.add
    i32.const 24
    i32.add
    local.get 2
    i64.store
    local.get 0
    local.get 0
    i64.load offset=80
    local.tee 2
    i64.store offset=48 align=4
    local.get 0
    local.get 2
    i64.store offset=8
    local.get 0
    i64.load offset=112
    local.set 2
    local.get 0
    i64.load offset=120
    local.set 3
    local.get 0
    i32.load offset=128
    local.set 5
    local.get 0
    i32.load offset=132
    local.set 6
    local.get 0
    i32.load offset=136
    local.set 7
    local.get 0
    i32.load offset=140
    local.set 8
    i32.const 0
    local.set 9
    block ;; label = @1
      loop ;; label = @2
        local.get 1
        local.get 9
        i32.eq
        br_if 1 (;@1;)
        local.get 0
        i32.const 8
        i32.add
        local.get 9
        call $_ZN19single_value_repeat17SingleValueRepeat9struct_at17h5434ba21cde884a2E
        local.set 10
        local.get 5
        i32.const 1
        i32.const 0
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h02747eebf6ce1711E
        local.tee 11
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h0e0811633f46308cE
        local.get 2
        local.get 11
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h69a450cb46d27605E
        local.get 6
        local.get 11
        call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h71c4465cd425c52aE
        local.get 7
        local.get 11
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h0e0811633f46308cE
        local.get 3
        local.get 11
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h69a450cb46d27605E
        local.get 8
        local.get 11
        call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h71c4465cd425c52aE
        local.get 10
        local.get 11
        call $mBufferStorageStore
        drop
        local.get 9
        i32.const 1
        i32.add
        local.set 9
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 144
    i32.add
    global.set $__stack_pointer
  )
  (func $count_struct (;70;) (type 10)
    (local i32 i32 i64 i64 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 144
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h34b7b5caeaa875f0E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd0ef21fef4436608E
    local.set 1
    local.get 0
    i32.const 80
    i32.add
    i32.const 1
    i32.const 131184
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h2e2dd55adbf0c421E
    local.get 0
    i32.const 112
    i32.add
    i32.const 2
    i32.const 131179
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h2e2dd55adbf0c421E
    local.get 0
    i32.const 72
    i32.add
    local.get 0
    i32.const 80
    i32.add
    i32.const 24
    i32.add
    i64.load
    local.tee 2
    i64.store align=4
    local.get 0
    i32.const 64
    i32.add
    local.get 0
    i32.const 80
    i32.add
    i32.const 16
    i32.add
    i64.load
    local.tee 3
    i64.store align=4
    local.get 0
    i32.const 56
    i32.add
    local.get 0
    i32.const 80
    i32.add
    i32.const 8
    i32.add
    i64.load
    local.tee 4
    i64.store align=4
    local.get 0
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 4
    i64.store
    local.get 0
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 3
    i64.store
    local.get 0
    i32.const 8
    i32.add
    i32.const 24
    i32.add
    local.get 2
    i64.store
    local.get 0
    local.get 0
    i64.load offset=80
    local.tee 2
    i64.store offset=48 align=4
    local.get 0
    local.get 2
    i64.store offset=8
    local.get 0
    i64.load offset=112
    local.set 4
    local.get 0
    i64.load offset=120
    local.set 5
    local.get 0
    i32.load offset=128
    local.set 6
    local.get 0
    i32.load offset=132
    local.set 7
    local.get 0
    i32.load offset=136
    local.set 8
    local.get 0
    i32.load offset=140
    local.set 9
    i32.const 0
    local.set 10
    i32.const 0
    local.set 11
    block ;; label = @1
      block ;; label = @2
        loop ;; label = @3
          local.get 10
          local.get 1
          i32.ge_u
          br_if 1 (;@2;)
          local.get 0
          i32.const 8
          i32.add
          local.get 10
          call $_ZN19single_value_repeat17SingleValueRepeat9struct_at17h5434ba21cde884a2E
          local.tee 12
          call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h2a5c67bf513af736E
          local.tee 13
          call $mBufferGetLength
          local.set 14
          local.get 0
          i32.const 0
          i32.store8 offset=96
          local.get 0
          local.get 14
          i32.store offset=92
          local.get 0
          local.get 13
          i32.store offset=88
          local.get 0
          local.get 14
          i32.store offset=84
          local.get 0
          i32.const 0
          i32.store offset=80
          local.get 0
          i32.const 80
          i32.add
          local.get 12
          call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hcfd08469fb714ddbE
          local.set 14
          local.get 0
          i32.const 80
          i32.add
          local.get 12
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17hac04fa52da63fc08E
          local.set 2
          local.get 0
          i32.const 80
          i32.add
          local.get 12
          call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17hd69bad252aa1b069E
          local.set 13
          local.get 0
          i32.const 80
          i32.add
          local.get 12
          call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hcfd08469fb714ddbE
          local.set 15
          local.get 0
          i32.const 80
          i32.add
          local.get 12
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17hac04fa52da63fc08E
          local.set 3
          local.get 0
          i32.const 80
          i32.add
          local.get 12
          call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17hd69bad252aa1b069E
          local.set 16
          local.get 0
          i32.load offset=84
          local.get 0
          i32.load offset=80
          i32.ne
          br_if 2 (;@1;)
          block ;; label = @4
            local.get 0
            i32.load8_u offset=96
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            i32.const 0
            i32.store offset=141240
            i32.const 0
            i32.const 0
            i32.store8 offset=141244
          end
          i32.const 0
          local.set 12
          block ;; label = @4
            local.get 14
            local.get 6
            call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h0abfe4f200e80780E
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            local.get 4
            i64.ne
            br_if 0 (;@4;)
            local.get 13
            local.get 7
            call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp115_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h53df94eef169e6a9E
            i32.eqz
            br_if 0 (;@4;)
            local.get 15
            local.get 8
            call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h0abfe4f200e80780E
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 5
            i64.ne
            br_if 0 (;@4;)
            local.get 16
            local.get 9
            call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp115_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h53df94eef169e6a9E
            local.set 12
          end
          local.get 10
          local.get 10
          local.get 1
          i32.lt_u
          i32.add
          local.set 10
          local.get 12
          local.get 11
          i32.add
          local.set 11
          br 0 (;@3;)
        end
      end
      local.get 11
      i64.extend_i32_u
      call $smallIntFinishUnsigned
      local.get 0
      i32.const 144
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 12
    i32.const 131138
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hd2a09b1d6c0d26baE
    unreachable
  )
  (func $remove_struct (;71;) (type 10)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h34b7b5caeaa875f0E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd0ef21fef4436608E
    local.set 1
    local.get 0
    i32.const 80
    i32.add
    i32.const 1
    i32.const 131184
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h2e2dd55adbf0c421E
    local.get 0
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 0
    i32.const 80
    i32.add
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 0
    i32.const 80
    i32.add
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 8
    i32.add
    i32.const 24
    i32.add
    local.get 0
    i32.const 80
    i32.add
    i32.const 24
    i32.add
    i64.load
    i64.store
    local.get 0
    local.get 0
    i64.load offset=80
    local.tee 2
    i64.store offset=48 align=4
    local.get 0
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 0
    i32.store8 offset=52
    local.get 0
    local.get 1
    i32.store offset=48
    local.get 0
    i32.const 1
    i32.store offset=44
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        local.get 0
        i32.const 44
        i32.add
        call $_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h81cf317feb67963dE
        local.get 0
        i32.load
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 8
        i32.add
        local.get 0
        i32.load offset=4
        call $_ZN19single_value_repeat17SingleValueRepeat9struct_at17h5434ba21cde884a2E
        call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h5396e62449684d35E
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 112
    i32.add
    global.set $__stack_pointer
  )
  (func $callBack (;72;) (type 10))
  (func $_ZN4core9panicking9panic_fmt17hb859252f4b513814E (;73;) (type 10)
    call $rust_begin_unwind
    unreachable
  )
  (func $_ZN17compiler_builtins3mem6memcpy17h6a01844efc49c0e5E (;74;) (type 4) (param i32 i32 i32) (result i32)
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
  (func $memcpy (;75;) (type 4) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN17compiler_builtins3mem6memcpy17h6a01844efc49c0e5E
  )
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 141248)
  (global (;2;) i32 i32.const 141248)
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
  (data $.rodata (;0;) (i32.const 131072) "argument decode error (): wrong number of argumentsinput too shortinput too longstorage decode error (key: valuekeynum_repeatsbench_structbenchmarkpanic occurred")
  (data $.data (;1;) (i32.const 131236) "8\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.80.1 (3f5fd8dd4 2024-08-06)")
  )
  (@custom "target_features" (after data) "\02+\0fmutable-globals+\08sign-ext")
)
