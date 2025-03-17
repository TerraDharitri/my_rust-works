(module $linked_list_repeat_wasm.wasm
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
  (type (;13;) (func (param i64 i32)))
  (type (;14;) (func (param i32 i32) (result i64)))
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
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;16;) (type 3)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;17;) (type 3)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;18;) (type 3)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;19;) (type 3)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;20;) (type 10)))
  (import "env" "smallIntFinishUnsigned" (func $smallIntFinishUnsigned (;21;) (type 11)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;22;) (type 6)))
  (func $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf5936c2691d24ba6E (;23;) (type 6) (param i32) (result i32)
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E (;24;) (type 2) (result i32)
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
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc472599ad1a3d71eE (;25;) (type 6) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h59a72da0de184b6eE (;26;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $mBufferEq
    i32.const 0
    i32.gt_s
  )
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hfa9d560d6253df9aE (;27;) (type 6) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h9557c4479fa0aa11E (;28;) (type 12) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131072
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17ha64ab76a36817f5aE
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17ha64ab76a36817f5aE (;29;) (type 3) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h50a2e6de91da4177E (;30;) (type 6) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hfa9d560d6253df9aE
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc5321a00d9e8dbd2E (;31;) (type 8) (param i32 i32)
    (local i32 i32 i64 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hfa9d560d6253df9aE
    local.tee 3
    call $mBufferGetLength
    local.set 1
    local.get 2
    i32.const 0
    i32.store8 offset=28
    local.get 2
    local.get 1
    i32.store offset=24
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
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h5e3419e44f65a7ecE
    local.set 1
    local.get 2
    i32.const 12
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h00cb92ecab97e791E
    local.set 4
    local.get 2
    i32.const 12
    i32.add
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17hf0a3c77311690325E
    local.set 3
    local.get 2
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h5e3419e44f65a7ecE
    local.set 5
    local.get 2
    i32.const 12
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h00cb92ecab97e791E
    local.set 6
    local.get 2
    i32.const 12
    i32.add
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17hf0a3c77311690325E
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
    i32.const 131189
    i32.const 5
    i32.const 131148
    i32.const 14
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h9557c4479fa0aa11E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h5e3419e44f65a7ecE (;32;) (type 6) (param i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hff90ebc92b4a6ec8E
    local.get 1
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load
    local.tee 2
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
    local.tee 3
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17he6a58a214aafaa6eE
    block ;; label = @1
      local.get 1
      i32.load
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      i32.const 131189
      i32.const 5
      i32.const 131123
      i32.const 15
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h9557c4479fa0aa11E
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h00cb92ecab97e791E (;33;) (type 7) (param i32) (result i64)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hff90ebc92b4a6ec8E
    local.get 1
    i64.load offset=8
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    i64.const 56
    i64.shl
    local.get 2
    i64.const 65280
    i64.and
    i64.const 40
    i64.shl
    i64.or
    local.get 2
    i64.const 16711680
    i64.and
    i64.const 24
    i64.shl
    local.get 2
    i64.const 4278190080
    i64.and
    i64.const 8
    i64.shl
    i64.or
    i64.or
    local.get 2
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 2
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 2
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 2
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
  )
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17hf0a3c77311690325E (;34;) (type 6) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h5e3419e44f65a7ecE
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h01de1772e1811ef4E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hee9c3cbb40306471E (;35;) (type 2) (result i32)
    (local i64)
    block ;; label = @1
      i32.const 0
      call $smallIntGetUnsignedArgument
      local.tee 0
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 131194
      i32.const 11
      i32.const 131148
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h9557c4479fa0aa11E
      unreachable
    end
    local.get 0
    i32.wrap_i64
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17haa86f6aac272c5cbE (;36;) (type 5) (param i32)
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
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h5a997952af247182E (;37;) (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h9cf4401d45025763E
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
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17he6a58a214aafaa6eE
    block ;; label = @1
      local.get 2
      i32.load offset=8
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      i32.const 131123
      i32.const 15
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17ha0a0013775a4b4a8E
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h9cf4401d45025763E (;38;) (type 3) (param i32 i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hdbb6d1817f5572d8E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17he6a58a214aafaa6eE (;39;) (type 12) (param i32 i32 i32 i32)
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
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17ha0a0013775a4b4a8E (;40;) (type 1) (param i32 i32 i32)
    (local i32)
    i32.const 131162
    i32.const 27
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17ha64ab76a36817f5aE
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
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hff90ebc92b4a6ec8E (;41;) (type 1) (param i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17hdd9e515e56ada6acE
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131189
      i32.const 5
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h04f8494dac541525E
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h35c17990f3a76ac0E (;42;) (type 9) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17he9323e2227878771E (;43;) (type 6) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp115_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h21ebc3c513ffae6bE (;44;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $bigIntCmp
    i32.eqz
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17hdd9e515e56ada6acE (;45;) (type 9) (param i32 i32 i32 i32) (result i32)
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
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17he9323e2227878771E
              local.tee 5
              i32.const 10000
              i32.gt_u
              br_if 1 (;@4;)
              i32.const 0
              i32.load8_u offset=141276
              i32.const 255
              i32.and
              br_if 1 (;@4;)
              i32.const 0
              local.get 5
              i32.store offset=141272
              i32.const 0
              i32.const 1
              i32.store8 offset=141276
              local.get 4
              i32.const 0
              i32.const 131272
              local.get 5
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h35c17990f3a76ac0E
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
            i32.load offset=141272
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
            i32.const 131272
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
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h35c17990f3a76ac0E
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
  (func $_ZN4core5slice5index22slice_index_order_fail17h203c6e1b4907093dE (;46;) (type 8) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17hb859252f4b513814E
    unreachable
  )
  (func $_ZN4core5slice5index24slice_end_index_len_fail17h7917b91b59da861bE (;47;) (type 5) (param i32)
    call $_ZN4core9panicking9panic_fmt17hb859252f4b513814E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h01de1772e1811ef4E (;48;) (type 6) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferToBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$23load_len_managed_buffer17h2325a8739c0baaf9E (;49;) (type 6) (param i32) (result i32)
    local.get 0
    i32.const -25
    call $mBufferStorageLoad
    drop
    i32.const -25
    call $mBufferGetLength
  )
  (func $_ZN11dharitri_sc7storage11storage_set11storage_set17h0acd3f5edb075b5eE (;50;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817hda9e22ddfa00c662E
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817hda9e22ddfa00c662E (;51;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17ha64ab76a36817f5aE
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_info17h856a4759914e4edfE (;52;) (type 8) (param i32 i32)
    (local i32 i32)
    local.get 0
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14build_name_key17h6d67bc4d4241db22E
    local.set 2
    block ;; label = @1
      local.get 1
      i32.load
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h306989678d2b0689E
      local.tee 0
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17hc886fec43ad32839E
      local.get 1
      i32.load offset=4
      local.get 0
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17hc886fec43ad32839E
      local.get 1
      i32.load offset=8
      local.get 0
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17hc886fec43ad32839E
      local.get 1
      i32.load offset=12
      local.get 0
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17hc886fec43ad32839E
      local.get 2
      local.get 0
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17had3b0c4b4be7dff0E
      return
    end
    local.get 2
    i32.const 1
    i32.const 0
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817hda9e22ddfa00c662E
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14build_name_key17h6d67bc4d4241db22E (;53;) (type 6) (param i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc472599ad1a3d71eE
    local.tee 0
    i32.const 131143
    i32.const 5
    call $mBufferAppendBytes
    drop
    local.get 0
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h306989678d2b0689E (;54;) (type 2) (result i32)
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17ha64ab76a36817f5aE
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17hc886fec43ad32839E (;55;) (type 8) (param i32 i32)
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
    call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17hdbf7e6864a161dcaE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17had3b0c4b4be7dff0E (;56;) (type 8) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17h2c1df85830ba44c2E (;57;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17hd0d6b598c9a98817E
    local.set 0
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h306989678d2b0689E
    local.set 1
    local.get 2
    i32.load offset=16
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hb41801608ffd2e46E
    local.get 2
    i64.load
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17ha24a78909ae8266fE
    local.get 2
    i32.load offset=20
    local.get 1
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h642d4a45a7241d68E
    local.get 2
    i32.load offset=24
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hb41801608ffd2e46E
    local.get 2
    i64.load offset=8
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17ha24a78909ae8266fE
    local.get 2
    i32.load offset=28
    local.get 1
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h642d4a45a7241d68E
    local.get 2
    i32.load offset=32
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17hc886fec43ad32839E
    local.get 2
    i32.load offset=36
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17hc886fec43ad32839E
    local.get 2
    i32.load offset=40
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17hc886fec43ad32839E
    local.get 0
    local.get 1
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17had3b0c4b4be7dff0E
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17hd0d6b598c9a98817E (;58;) (type 3) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc472599ad1a3d71eE
    local.tee 0
    i32.const 131138
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
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hb41801608ffd2e46E (;59;) (type 8) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17he9323e2227878771E
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
    call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17hdbf7e6864a161dcaE
    local.get 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17ha24a78909ae8266fE (;60;) (type 13) (param i64 i32)
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
    call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17hdbf7e6864a161dcaE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h642d4a45a7241d68E (;61;) (type 8) (param i32 i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 2
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 2
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hb41801608ffd2e46E
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17h9427643ea98b7b24E (;62;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17hd0d6b598c9a98817E
    local.set 0
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h306989678d2b0689E
    local.set 1
    local.get 2
    i32.load
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hb41801608ffd2e46E
    local.get 2
    i32.load offset=4
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17hc886fec43ad32839E
    local.get 2
    i32.load offset=8
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17hc886fec43ad32839E
    local.get 2
    i32.load offset=12
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17hc886fec43ad32839E
    local.get 0
    local.get 1
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17had3b0c4b4be7dff0E
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$13is_empty_node17h1859222555860dbfE (;63;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17hd0d6b598c9a98817E
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$23load_len_managed_buffer17h2325a8739c0baaf9E
    i32.eqz
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14get_node_by_id17h9036ced62cf2fddeE (;64;) (type 1) (param i32 i32 i32)
    (local i64)
    i64.const 0
    local.set 3
    block ;; label = @1
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$13is_empty_node17h1859222555860dbfE
      br_if 0 (;@1;)
      local.get 0
      i32.const 8
      i32.add
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_node17hec7c499390f0a1daE
      i64.const 1
      local.set 3
    end
    local.get 0
    local.get 3
    i64.store
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_node17hec7c499390f0a1daE (;65;) (type 1) (param i32 i32 i32)
    (local i32 i64 i32 i32 i64 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 12
    i32.add
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17hd0d6b598c9a98817E
    local.tee 2
    call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h689befd4ec65745eE
    local.get 3
    i32.const 12
    i32.add
    local.get 2
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h5a997952af247182E
    local.set 1
    local.get 3
    i32.const 12
    i32.add
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h24962974d21666b6E
    local.set 4
    local.get 3
    i32.const 12
    i32.add
    local.get 2
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h889bf80ceb784938E
    local.set 5
    local.get 3
    i32.const 12
    i32.add
    local.get 2
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h5a997952af247182E
    local.set 6
    local.get 3
    i32.const 12
    i32.add
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h24962974d21666b6E
    local.set 7
    local.get 3
    i32.const 12
    i32.add
    local.get 2
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h889bf80ceb784938E
    local.set 8
    local.get 3
    i32.const 12
    i32.add
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h9cf4401d45025763E
    local.set 9
    local.get 3
    i32.const 12
    i32.add
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h9cf4401d45025763E
    local.set 10
    local.get 3
    i32.const 12
    i32.add
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h9cf4401d45025763E
    local.set 11
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
        i32.store offset=141272
        i32.const 0
        i32.const 0
        i32.store8 offset=141276
      end
      local.get 0
      local.get 11
      i32.store offset=40
      local.get 0
      local.get 10
      i32.store offset=36
      local.get 0
      local.get 9
      i32.store offset=32
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
      local.get 1
      i32.store offset=16
      local.get 0
      local.get 7
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
    local.get 2
    i32.const 131148
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17ha0a0013775a4b4a8E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14get_node_by_id17hd89b2cf3c996160bE (;66;) (type 1) (param i32 i32 i32)
    (local i32)
    i32.const 0
    local.set 3
    block ;; label = @1
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$13is_empty_node17h1859222555860dbfE
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.add
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_node17h2bd0b3153c15132aE
      i32.const 1
      local.set 3
    end
    local.get 0
    local.get 3
    i32.store
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_node17h2bd0b3153c15132aE (;67;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 12
    i32.add
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17hd0d6b598c9a98817E
    local.tee 2
    call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h689befd4ec65745eE
    local.get 3
    i32.const 12
    i32.add
    local.get 2
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h5a997952af247182E
    local.set 1
    local.get 3
    i32.const 12
    i32.add
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h9cf4401d45025763E
    local.set 4
    local.get 3
    i32.const 12
    i32.add
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h9cf4401d45025763E
    local.set 5
    local.get 3
    i32.const 12
    i32.add
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h9cf4401d45025763E
    local.set 6
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
        i32.store offset=141272
        i32.const 0
        i32.const 0
        i32.store8 offset=141276
      end
      local.get 0
      local.get 6
      i32.store offset=12
      local.get 0
      local.get 5
      i32.store offset=8
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
    i32.const 131148
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17ha0a0013775a4b4a8E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$4iter17h23f2d697bff3ca2fE (;68;) (type 8) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.load
    local.tee 3
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_info17h4d54675a53d26121E
    local.get 0
    local.get 3
    local.get 2
    i32.load offset=4
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14get_node_by_id17h9036ced62cf2fddeE
    local.get 0
    local.get 1
    i32.store offset=56
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_info17h4d54675a53d26121E (;69;) (type 8) (param i32 i32)
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
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14build_name_key17h6d67bc4d4241db22E
          local.tee 1
          call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$23load_len_managed_buffer17h2325a8739c0baaf9E
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
        call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h689befd4ec65745eE
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h9cf4401d45025763E
        local.set 6
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h9cf4401d45025763E
        local.set 3
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h9cf4401d45025763E
        local.set 4
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h9cf4401d45025763E
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
      local.get 6
      i32.store
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 1
    i32.const 131148
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17ha0a0013775a4b4a8E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$4iter17hedd46618d5828d8aE (;70;) (type 8) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.load
    local.tee 3
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_info17h4d54675a53d26121E
    local.get 0
    local.get 3
    local.get 2
    i32.load offset=4
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14get_node_by_id17hd89b2cf3c996160bE
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h689befd4ec65745eE (;71;) (type 8) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 2
    call $mBufferStorageLoad
    drop
    local.get 2
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h24962974d21666b6E (;72;) (type 14) (param i32 i32) (result i64)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hdbb6d1817f5572d8E
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
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h889bf80ceb784938E (;73;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h5a997952af247182E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h01de1772e1811ef4E
  )
  (func $_ZN132_$LT$dharitri_sc..storage..mappers..linked_list_mapper..Iter$LT$SA$C$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h25208a807a6b2bb0E (;74;) (type 8) (param i32 i32)
    (local i32 i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load
        br_if 0 (;@2;)
        i32.const 0
        local.set 1
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=4
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc472599ad1a3d71eE
      local.set 3
      local.get 1
      i32.const 8
      i32.add
      local.tee 4
      i64.load32_u
      local.set 5
      local.get 1
      i32.const 16
      i32.add
      local.tee 6
      i32.load
      local.set 7
      local.get 2
      i32.const 12
      i32.add
      local.get 1
      i32.load offset=20
      i32.load
      local.get 1
      i32.load offset=12
      local.tee 8
      call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14get_node_by_id17hd89b2cf3c996160bE
      local.get 6
      local.get 2
      i32.const 12
      i32.add
      i32.const 16
      i32.add
      i32.load
      i32.store
      local.get 4
      local.get 2
      i32.const 12
      i32.add
      i32.const 8
      i32.add
      i64.load align=4
      i64.store align=4
      local.get 1
      local.get 2
      i64.load offset=12 align=4
      i64.store align=4
      local.get 0
      local.get 7
      i32.store offset=16
      local.get 0
      local.get 8
      i32.store offset=12
      local.get 0
      local.get 5
      i64.const 32
      i64.shl
      local.get 3
      i64.extend_i32_u
      i64.or
      i64.store offset=4 align=4
      i32.const 1
      local.set 1
    end
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN132_$LT$dharitri_sc..storage..mappers..linked_list_mapper..Iter$LT$SA$C$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he8920d9997811687E (;75;) (type 8) (param i32 i32)
    (local i32 i64 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i64.load
        i64.eqz
        i32.eqz
        br_if 0 (;@2;)
        i64.const 0
        local.set 3
        br 1 (;@1;)
      end
      local.get 2
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      call $_ZN95_$LT$benchmark_common..example_struct..ExampleStruct$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8b1e2dfd7fd50db5E
      local.get 2
      local.get 1
      i32.load offset=48
      i32.store offset=48
      local.get 2
      local.get 1
      i32.load offset=40
      i32.store offset=40
      local.get 1
      i32.load offset=44
      local.set 4
      local.get 0
      i32.const 8
      i32.add
      local.get 2
      i32.const 8
      i32.add
      i32.const 36
      call $memcpy
      drop
      local.get 2
      i64.load offset=48
      local.set 3
      local.get 2
      i32.const 8
      i32.add
      local.get 1
      i32.load offset=56
      i32.load
      local.get 4
      call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14get_node_by_id17h9036ced62cf2fddeE
      local.get 1
      local.get 2
      i32.const 8
      i32.add
      i32.const 56
      call $memcpy
      drop
      local.get 0
      local.get 3
      i64.store offset=48
      local.get 0
      local.get 4
      i32.store offset=44
      i64.const 1
      local.set 3
    end
    local.get 0
    local.get 3
    i64.store
    local.get 2
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN95_$LT$benchmark_common..example_struct..ExampleStruct$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8b1e2dfd7fd50db5E (;76;) (type 8) (param i32 i32)
    (local i32 i64 i32 i32 i64)
    local.get 1
    i32.load offset=16
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc472599ad1a3d71eE
    local.set 2
    local.get 1
    i64.load
    local.set 3
    local.get 1
    i32.load offset=20
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf5936c2691d24ba6E
    local.set 4
    local.get 1
    i32.load offset=24
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc472599ad1a3d71eE
    local.set 5
    local.get 1
    i64.load offset=8
    local.set 6
    local.get 1
    i32.load offset=28
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf5936c2691d24ba6E
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
  (func $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17hdbf7e6864a161dcaE (;77;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferAppendBytes
    drop
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hdbb6d1817f5572d8E (;78;) (type 12) (param i32 i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17hdd9e515e56ada6acE
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h7b93417a4621cd51E
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h04f8494dac541525E (;79;) (type 8) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 131123
    i32.const 15
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h9557c4479fa0aa11E
    unreachable
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h7b93417a4621cd51E (;80;) (type 5) (param i32)
    local.get 0
    i32.const 131123
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17ha0a0013775a4b4a8E
    unreachable
  )
  (func $_ZN4core3ptr70drop_in_place$LT$dharitri_sc..types..heap..boxed_bytes..BoxedBytes$GT$17hee0df98405bc1d69E (;81;) (type 5) (param i32)
    block ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      call $__rust_dealloc
      unreachable
    end
  )
  (func $__rust_dealloc (;82;) (type 10)
    call $_ZN120_$LT$dharitri_sc_wasm_adapter..wasm_alloc..fail_allocator..FailAllocator$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17h773bd12de2a43543E
    unreachable
  )
  (func $_ZN58_$LT$C$u20$as$u20$linked_list_repeat..LinkedListRepeat$GT$12bench_struct17h1ecb98d4a055cbf3E (;83;) (type 2) (result i32)
    i32.const 131205
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17ha64ab76a36817f5aE
  )
  (func $_ZN58_$LT$C$u20$as$u20$linked_list_repeat..LinkedListRepeat$GT$5bench17h69c7923168e010d7E (;84;) (type 2) (result i32)
    i32.const 131217
    i32.const 9
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17ha64ab76a36817f5aE
  )
  (func $_ZN120_$LT$dharitri_sc_wasm_adapter..wasm_alloc..fail_allocator..FailAllocator$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17h773bd12de2a43543E (;85;) (type 10)
    call $_ZN24dharitri_sc_wasm_adapter10wasm_alloc14fail_allocator29signal_allocation_not_allowed17h354ad39889ce1f1cE
    unreachable
  )
  (func $rust_begin_unwind (;86;) (type 10)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h8945d78c95e86419E
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h8945d78c95e86419E (;87;) (type 10)
    i32.const 131226
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;88;) (type 10)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17haa86f6aac272c5cbE
  )
  (func $add (;89;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17haa86f6aac272c5cbE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hee9c3cbb40306471E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h50a2e6de91da4177E
    local.set 2
    call $_ZN58_$LT$C$u20$as$u20$linked_list_repeat..LinkedListRepeat$GT$5bench17h69c7923168e010d7E
    local.set 3
    i32.const 0
    local.set 4
    block ;; label = @1
      loop ;; label = @2
        local.get 1
        local.get 4
        i32.eq
        br_if 1 (;@1;)
        local.get 2
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc472599ad1a3d71eE
        local.set 5
        local.get 0
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
        i32.store offset=16
        local.get 5
        local.get 0
        i32.const 16
        i32.add
        i32.const 4
        call $mBufferAppendBytes
        drop
        local.get 0
        local.get 3
        call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_info17h4d54675a53d26121E
        local.get 0
        local.get 0
        i32.load offset=12
        i32.const 1
        i32.add
        local.tee 6
        i32.store offset=12
        block ;; label = @3
          block ;; label = @4
            local.get 0
            i32.load
            local.tee 7
            br_if 0 (;@4;)
            local.get 0
            local.get 6
            i32.store offset=4
            i32.const 0
            local.set 8
            br 1 (;@3;)
          end
          local.get 0
          i32.const 16
          i32.add
          local.get 3
          local.get 0
          i32.load offset=8
          local.tee 8
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_node17h2bd0b3153c15132aE
          local.get 0
          local.get 6
          i32.store offset=24
          local.get 3
          local.get 8
          local.get 0
          i32.const 16
          i32.add
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17h9427643ea98b7b24E
        end
        local.get 0
        local.get 8
        i32.store offset=28
        local.get 0
        i32.const 0
        i32.store offset=24
        local.get 0
        local.get 6
        i32.store offset=20
        local.get 0
        local.get 5
        i32.store offset=16
        local.get 3
        local.get 6
        local.get 0
        i32.const 16
        i32.add
        call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17h9427643ea98b7b24E
        local.get 0
        local.get 7
        i32.const 1
        i32.add
        i32.store
        local.get 0
        local.get 6
        i32.store offset=8
        local.get 3
        local.get 0
        call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_info17h856a4759914e4edfE
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $count (;90;) (type 10)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17haa86f6aac272c5cbE
    i32.const 0
    local.set 1
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h50a2e6de91da4177E
    local.set 2
    local.get 0
    call $_ZN58_$LT$C$u20$as$u20$linked_list_repeat..LinkedListRepeat$GT$5bench17h69c7923168e010d7E
    i32.store
    local.get 0
    i32.const 4
    i32.add
    local.get 0
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$4iter17hedd46618d5828d8aE
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 28
        i32.add
        local.get 0
        i32.const 4
        i32.add
        call $_ZN132_$LT$dharitri_sc..storage..mappers..linked_list_mapper..Iter$LT$SA$C$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h25208a807a6b2bb0E
        local.get 0
        i32.load offset=28
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 0
        i32.load offset=32
        local.get 2
        call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h59a72da0de184b6eE
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
  (func $remove (;91;) (type 10)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17haa86f6aac272c5cbE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hee9c3cbb40306471E
    local.set 1
    call $_ZN58_$LT$C$u20$as$u20$linked_list_repeat..LinkedListRepeat$GT$5bench17h69c7923168e010d7E
    local.set 2
    block ;; label = @1
      block ;; label = @2
        loop ;; label = @3
          local.get 1
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.const 12
          i32.add
          local.get 2
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_info17h4d54675a53d26121E
          block ;; label = @4
            local.get 2
            local.get 0
            i32.load offset=16
            local.tee 3
            call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$13is_empty_node17h1859222555860dbfE
            br_if 0 (;@4;)
            local.get 0
            i32.const 28
            i32.add
            local.get 2
            local.get 3
            call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14get_node_by_id17hd89b2cf3c996160bE
            local.get 0
            i32.load offset=28
            i32.eqz
            br_if 3 (;@1;)
            local.get 0
            i32.load offset=44
            local.set 3
            local.get 0
            i32.load offset=40
            local.set 4
            local.get 2
            local.get 0
            i32.load offset=36
            local.tee 5
            call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$13is_empty_node17h1859222555860dbfE
            br_if 0 (;@4;)
            local.get 0
            i32.const 48
            i32.add
            local.get 2
            call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_info17h4d54675a53d26121E
            block ;; label = @5
              block ;; label = @6
                local.get 3
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                i32.const 28
                i32.add
                local.get 2
                local.get 3
                call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_node17h2bd0b3153c15132aE
                local.get 0
                local.get 4
                i32.store offset=36
                local.get 2
                local.get 3
                local.get 0
                i32.const 28
                i32.add
                call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17h9427643ea98b7b24E
                br 1 (;@5;)
              end
              local.get 0
              local.get 4
              i32.store offset=52
            end
            block ;; label = @5
              block ;; label = @6
                local.get 4
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                i32.const 28
                i32.add
                local.get 2
                local.get 4
                call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_node17h2bd0b3153c15132aE
                local.get 0
                local.get 3
                i32.store offset=40
                local.get 2
                local.get 4
                local.get 0
                i32.const 28
                i32.add
                call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17h9427643ea98b7b24E
                br 1 (;@5;)
              end
              local.get 0
              local.get 3
              i32.store offset=56
            end
            local.get 2
            local.get 5
            call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17hd0d6b598c9a98817E
            i32.const 1
            i32.const 0
            call $_ZN11dharitri_sc7storage11storage_set11storage_set17h0acd3f5edb075b5eE
            i32.const 0
            call $_ZN4core3ptr70drop_in_place$LT$dharitri_sc..types..heap..boxed_bytes..BoxedBytes$GT$17hee0df98405bc1d69E
            local.get 0
            local.get 0
            i32.load offset=48
            i32.const -1
            i32.add
            i32.store offset=48
            local.get 2
            local.get 0
            i32.const 48
            i32.add
            call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_info17h856a4759914e4edfE
          end
          local.get 1
          i32.const -1
          i32.add
          local.set 1
          br 0 (;@3;)
        end
      end
      local.get 0
      i32.const 64
      i32.add
      global.set $__stack_pointer
      return
    end
    call $_ZN4core6option13unwrap_failed17h3135ea563cdcf5b2E
    unreachable
  )
  (func $_ZN4core6option13unwrap_failed17h3135ea563cdcf5b2E (;92;) (type 10)
    call $_ZN4core9panicking5panic17hff86462b5c0334dbE
    unreachable
  )
  (func $bench (;93;) (type 10)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17haa86f6aac272c5cbE
    local.get 0
    call $_ZN58_$LT$C$u20$as$u20$linked_list_repeat..LinkedListRepeat$GT$5bench17h69c7923168e010d7E
    i32.store
    local.get 0
    i32.const 4
    i32.add
    local.get 0
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$4iter17hedd46618d5828d8aE
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 28
        i32.add
        local.get 0
        i32.const 4
        i32.add
        call $_ZN132_$LT$dharitri_sc..storage..mappers..linked_list_mapper..Iter$LT$SA$C$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h25208a807a6b2bb0E
        local.get 0
        i32.load offset=28
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=32
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
  (func $add_struct (;94;) (type 10)
    (local i32 i32 i32 i64 i32 i32 i64 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17haa86f6aac272c5cbE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hee9c3cbb40306471E
    local.set 1
    local.get 0
    i32.const 32
    i32.add
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc5321a00d9e8dbd2E
    local.get 0
    i32.const 108
    i32.add
    local.get 0
    i32.const 32
    i32.add
    i32.const 24
    i32.add
    local.tee 2
    i64.load
    local.tee 3
    i64.store align=4
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.tee 4
    i64.load
    i64.store
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.const 32
    i32.add
    i32.const 16
    i32.add
    local.tee 5
    i64.load
    i64.store
    local.get 0
    i32.const 24
    i32.add
    local.get 3
    i64.store
    local.get 0
    local.get 0
    i64.load offset=32
    local.tee 3
    i64.store offset=84 align=4
    local.get 0
    local.get 3
    i64.store
    local.get 1
    i64.extend_i32_u
    local.set 6
    i64.const 0
    local.set 3
    call $_ZN58_$LT$C$u20$as$u20$linked_list_repeat..LinkedListRepeat$GT$12bench_struct17h1ecb98d4a055cbf3E
    local.set 7
    block ;; label = @1
      loop ;; label = @2
        local.get 6
        local.get 3
        i64.eq
        br_if 1 (;@1;)
        local.get 0
        i32.const 80
        i32.add
        local.get 0
        call $_ZN95_$LT$benchmark_common..example_struct..ExampleStruct$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8b1e2dfd7fd50db5E
        local.get 4
        local.get 3
        i64.store
        local.get 5
        local.get 0
        i32.const 80
        i32.add
        i32.const 16
        i32.add
        local.tee 8
        i64.load
        i64.store
        local.get 2
        local.get 0
        i32.const 80
        i32.add
        i32.const 24
        i32.add
        local.tee 9
        i64.load
        i64.store
        local.get 0
        local.get 3
        i64.store offset=32
        local.get 0
        i32.const 64
        i32.add
        local.get 7
        call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_info17h4d54675a53d26121E
        local.get 0
        local.get 0
        i32.load offset=76
        i32.const 1
        i32.add
        local.tee 1
        i32.store offset=76
        block ;; label = @3
          block ;; label = @4
            local.get 0
            i32.load offset=64
            local.tee 10
            br_if 0 (;@4;)
            local.get 0
            local.get 1
            i32.store offset=68
            i32.const 0
            local.set 11
            br 1 (;@3;)
          end
          local.get 0
          i32.const 80
          i32.add
          local.get 7
          local.get 0
          i32.load offset=72
          local.tee 11
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_node17hec7c499390f0a1daE
          local.get 0
          local.get 1
          i32.store offset=116
          local.get 7
          local.get 11
          local.get 0
          i32.const 80
          i32.add
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17h2c1df85830ba44c2E
        end
        local.get 9
        local.get 2
        i64.load
        i64.store
        local.get 8
        local.get 5
        i64.load
        i64.store
        local.get 0
        i32.const 80
        i32.add
        i32.const 8
        i32.add
        local.get 4
        i64.load
        i64.store
        local.get 0
        local.get 0
        i64.load offset=32
        i64.store offset=80
        local.get 0
        local.get 11
        i32.store offset=120
        local.get 0
        i32.const 0
        i32.store offset=116
        local.get 0
        local.get 1
        i32.store offset=112
        local.get 7
        local.get 1
        local.get 0
        i32.const 80
        i32.add
        call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17h2c1df85830ba44c2E
        local.get 0
        local.get 10
        i32.const 1
        i32.add
        i32.store offset=64
        local.get 0
        local.get 1
        i32.store offset=72
        local.get 7
        local.get 0
        i32.const 64
        i32.add
        call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_info17h856a4759914e4edfE
        local.get 3
        i64.const 1
        i64.add
        local.set 3
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 128
    i32.add
    global.set $__stack_pointer
  )
  (func $count_struct (;95;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i64 i64 i64 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 160
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17haa86f6aac272c5cbE
    i32.const 0
    local.set 1
    local.get 0
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc5321a00d9e8dbd2E
    local.get 0
    call $_ZN58_$LT$C$u20$as$u20$linked_list_repeat..LinkedListRepeat$GT$12bench_struct17h1ecb98d4a055cbf3E
    i32.store offset=36
    local.get 0
    i32.const 40
    i32.add
    local.get 0
    i32.const 36
    i32.add
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$4iter17h23f2d697bff3ca2fE
    local.get 0
    i32.load offset=28
    local.set 2
    local.get 0
    i32.load offset=24
    local.set 3
    local.get 0
    i32.load offset=20
    local.set 4
    local.get 0
    i32.load offset=16
    local.set 5
    local.get 0
    i64.load offset=8
    local.set 6
    local.get 0
    i64.load
    local.set 7
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 104
        i32.add
        local.get 0
        i32.const 40
        i32.add
        call $_ZN132_$LT$dharitri_sc..storage..mappers..linked_list_mapper..Iter$LT$SA$C$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he8920d9997811687E
        local.get 0
        i64.load offset=104
        i64.eqz
        br_if 1 (;@1;)
        local.get 0
        i64.load offset=112
        local.set 8
        i32.const 0
        local.set 9
        local.get 0
        i32.load offset=140
        local.set 10
        local.get 0
        i32.load offset=136
        local.set 11
        local.get 0
        i32.load offset=132
        local.set 12
        local.get 0
        i64.load offset=120
        local.set 13
        block ;; label = @3
          local.get 0
          i32.load offset=128
          local.get 5
          call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h59a72da0de184b6eE
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          local.get 7
          i64.ne
          br_if 0 (;@3;)
          local.get 12
          local.get 4
          call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp115_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h21ebc3c513ffae6bE
          i32.eqz
          br_if 0 (;@3;)
          local.get 11
          local.get 3
          call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h59a72da0de184b6eE
          i32.eqz
          br_if 0 (;@3;)
          local.get 13
          local.get 6
          i64.ne
          br_if 0 (;@3;)
          local.get 10
          local.get 2
          call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp115_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h21ebc3c513ffae6bE
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
    i32.const 160
    i32.add
    global.set $__stack_pointer
  )
  (func $remove_struct (;96;) (type 10)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17haa86f6aac272c5cbE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hee9c3cbb40306471E
    local.set 1
    call $_ZN58_$LT$C$u20$as$u20$linked_list_repeat..LinkedListRepeat$GT$12bench_struct17h1ecb98d4a055cbf3E
    local.set 2
    block ;; label = @1
      block ;; label = @2
        loop ;; label = @3
          local.get 1
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.const 8
          i32.add
          local.get 2
          call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_info17h4d54675a53d26121E
          block ;; label = @4
            local.get 2
            local.get 0
            i32.load offset=12
            local.tee 3
            call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$13is_empty_node17h1859222555860dbfE
            br_if 0 (;@4;)
            local.get 0
            i32.const 24
            i32.add
            local.get 2
            local.get 3
            call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$14get_node_by_id17h9036ced62cf2fddeE
            local.get 0
            i64.load offset=24
            i64.const 0
            i64.eq
            br_if 3 (;@1;)
            local.get 0
            i32.load offset=72
            local.set 3
            local.get 0
            i32.load offset=68
            local.set 4
            local.get 2
            local.get 0
            i32.load offset=64
            local.tee 5
            call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$13is_empty_node17h1859222555860dbfE
            br_if 0 (;@4;)
            local.get 0
            i32.const 80
            i32.add
            local.get 2
            call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_info17h4d54675a53d26121E
            block ;; label = @5
              block ;; label = @6
                local.get 3
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                i32.const 24
                i32.add
                local.get 2
                local.get 3
                call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_node17hec7c499390f0a1daE
                local.get 0
                local.get 4
                i32.store offset=60
                local.get 2
                local.get 3
                local.get 0
                i32.const 24
                i32.add
                call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17h2c1df85830ba44c2E
                br 1 (;@5;)
              end
              local.get 0
              local.get 4
              i32.store offset=84
            end
            block ;; label = @5
              block ;; label = @6
                local.get 4
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                i32.const 24
                i32.add
                local.get 2
                local.get 4
                call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$8get_node17hec7c499390f0a1daE
                local.get 0
                local.get 3
                i32.store offset=64
                local.get 2
                local.get 4
                local.get 0
                i32.const 24
                i32.add
                call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_node17h2c1df85830ba44c2E
                br 1 (;@5;)
              end
              local.get 0
              local.get 3
              i32.store offset=88
            end
            local.get 2
            local.get 5
            call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17hd0d6b598c9a98817E
            i32.const 1
            i32.const 0
            call $_ZN11dharitri_sc7storage11storage_set11storage_set17h0acd3f5edb075b5eE
            i32.const 0
            call $_ZN4core3ptr70drop_in_place$LT$dharitri_sc..types..heap..boxed_bytes..BoxedBytes$GT$17hee0df98405bc1d69E
            local.get 0
            local.get 0
            i32.load offset=80
            i32.const -1
            i32.add
            i32.store offset=80
            local.get 2
            local.get 0
            i32.const 80
            i32.add
            call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper30LinkedListMapper$LT$SA$C$T$GT$8set_info17h856a4759914e4edfE
          end
          local.get 1
          i32.const -1
          i32.add
          local.set 1
          br 0 (;@3;)
        end
      end
      local.get 0
      i32.const 96
      i32.add
      global.set $__stack_pointer
      return
    end
    call $_ZN4core6option13unwrap_failed17h3135ea563cdcf5b2E
    unreachable
  )
  (func $bench_struct (;97;) (type 10)
    (local i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17haa86f6aac272c5cbE
    local.get 0
    call $_ZN58_$LT$C$u20$as$u20$linked_list_repeat..LinkedListRepeat$GT$12bench_struct17h1ecb98d4a055cbf3E
    i32.store offset=4
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 4
    i32.add
    call $_ZN11dharitri_sc7storage7mappers18linked_list_mapper34LinkedListMapper$LT$SA$C$T$C$A$GT$4iter17h23f2d697bff3ca2fE
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 72
        i32.add
        local.get 0
        i32.const 8
        i32.add
        call $_ZN132_$LT$dharitri_sc..storage..mappers..linked_list_mapper..Iter$LT$SA$C$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he8920d9997811687E
        local.get 0
        i64.load offset=72
        i64.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=108
        local.set 1
        local.get 0
        i64.load offset=88
        local.set 2
        local.get 0
        i32.load offset=104
        local.set 3
        local.get 0
        i32.load offset=100
        local.set 4
        local.get 0
        i32.load offset=96
        i32.const 1
        i32.const 0
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17ha64ab76a36817f5aE
        local.tee 5
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hb41801608ffd2e46E
        local.get 0
        i64.load offset=80
        local.get 5
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17ha24a78909ae8266fE
        local.get 4
        local.get 5
        call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h642d4a45a7241d68E
        local.get 3
        local.get 5
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hb41801608ffd2e46E
        local.get 2
        local.get 5
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17ha24a78909ae8266fE
        local.get 1
        local.get 5
        call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h642d4a45a7241d68E
        local.get 5
        call $mBufferFinish
        drop
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 128
    i32.add
    global.set $__stack_pointer
  )
  (func $callBack (;98;) (type 10))
  (func $_ZN4core9panicking9panic_fmt17hb859252f4b513814E (;99;) (type 10)
    call $rust_begin_unwind
    unreachable
  )
  (func $_ZN4core9panicking5panic17hff86462b5c0334dbE (;100;) (type 10)
    call $_ZN4core9panicking9panic_fmt17hb859252f4b513814E
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter10wasm_alloc14fail_allocator29signal_allocation_not_allowed17h354ad39889ce1f1cE (;101;) (type 10)
    i32.const 131240
    i32.const 27
    call $signalError
    unreachable
  )
  (func $_ZN17compiler_builtins3mem6memcpy17h6a01844efc49c0e5E (;102;) (type 4) (param i32 i32 i32) (result i32)
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
  (func $memcpy (;103;) (type 4) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN17compiler_builtins3mem6memcpy17h6a01844efc49c0e5E
  )
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 141280)
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
  (data $.rodata (;0;) (i32.const 131072) "argument decode error (): wrong number of argumentsinput too short.node.infoinput too longstorage decode error (key: valuenum_repeatsbench_structbenchmarkpanic occurredmemory allocation forbidden")
  (data $.data (;1;) (i32.const 131268) "8\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.80.1 (3f5fd8dd4 2024-08-06)")
  )
  (@custom "target_features" (after data) "\02+\0fmutable-globals+\08sign-ext")
)
