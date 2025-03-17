(module $map_repeat_wasm.wasm
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
  (type (;12;) (func (param i32 i32 i32 i32)))
  (type (;13;) (func (param i32 i32 i32) (result i64)))
  (type (;14;) (func (param i32 i32 i32 i32 i32)))
  (type (;15;) (func (param i64 i32)))
  (type (;16;) (func (param i32 i32) (result i64)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;0;) (type 0)))
  (import "env" "bigIntAdd" (func $bigIntAdd (;1;) (type 1)))
  (import "env" "mBufferNew" (func $mBufferNew (;2;) (type 2)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;3;) (type 3)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;4;) (type 3)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;5;) (type 4)))
  (import "env" "managedSignalError" (func $managedSignalError (;6;) (type 5)))
  (import "env" "smallIntGetUnsignedArgument" (func $smallIntGetUnsignedArgument (;7;) (type 6)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;8;) (type 7)))
  (import "env" "getNumArguments" (func $getNumArguments (;9;) (type 2)))
  (import "env" "signalError" (func $signalError (;10;) (type 8)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;11;) (type 4)))
  (import "env" "bigIntCmp" (func $bigIntCmp (;12;) (type 3)))
  (import "env" "mBufferCopyByteSlice" (func $mBufferCopyByteSlice (;13;) (type 9)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;14;) (type 3)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;15;) (type 3)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;16;) (type 3)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;17;) (type 3)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;18;) (type 10)))
  (import "env" "smallIntFinishUnsigned" (func $smallIntFinishUnsigned (;19;) (type 11)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;20;) (type 9)))
  (import "env" "mBufferEq" (func $mBufferEq (;21;) (type 3)))
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 141312)
  (global (;2;) i32 i32.const 141312)
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
  (func $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h84911b314fc63137E (;22;) (type 7) (param i32) (result i32)
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE (;23;) (type 2) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=131300
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=131300
    local.get 0
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h155b32f81e8ee984E (;24;) (type 7) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h3141bb22372bf1e8E (;25;) (type 7) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h1971a99573c4733dE (;26;) (type 12) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131105
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h5c68f13981c72231E
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h5c68f13981c72231E (;27;) (type 3) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0f34cd0e93403d8cE (;28;) (type 2) (result i32)
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
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h1971a99573c4733dE
      unreachable
    end
    local.get 0
    i32.wrap_i64
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1a15a91b412e1616E (;29;) (type 12) (param i32 i32 i32 i32)
    (local i32 i32 i64 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 1
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h3141bb22372bf1e8E
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
    call $_ZN151_$LT$dharitri_sc..types..managed..wrapped..token_identifier..TokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h7b469ad435951adaE
    local.set 1
    local.get 4
    i32.const 12
    i32.add
    local.get 2
    local.get 3
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17habc6098dba514f3aE
    local.set 6
    local.get 4
    i32.const 12
    i32.add
    local.get 2
    local.get 3
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17hb3c6bc19eb632f3cE
    local.set 5
    local.get 4
    i32.const 12
    i32.add
    local.get 2
    local.get 3
    call $_ZN151_$LT$dharitri_sc..types..managed..wrapped..token_identifier..TokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h7b469ad435951adaE
    local.set 7
    local.get 4
    i32.const 12
    i32.add
    local.get 2
    local.get 3
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17habc6098dba514f3aE
    local.set 8
    local.get 4
    i32.const 12
    i32.add
    local.get 2
    local.get 3
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17hb3c6bc19eb632f3cE
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
        i32.store offset=141304
        i32.const 0
        i32.const 0
        i32.store8 offset=141308
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
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h1971a99573c4733dE
    unreachable
  )
  (func $_ZN151_$LT$dharitri_sc..types..managed..wrapped..token_identifier..TokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h7b469ad435951adaE (;30;) (type 4) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hda40ee9cb5034599E
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h13aeeaa3840dab8eE
    call $_ZN11dharitri_sc5types7managed7wrapped16token_identifier24TokenIdentifier$LT$M$GT$7try_new17h6d2a167a1f642e14E
    block ;; label = @1
      local.get 3
      i32.load offset=8
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=12
      local.set 2
      local.get 3
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 2
      return
    end
    local.get 1
    local.get 2
    i32.const 131250
    i32.const 13
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h1971a99573c4733dE
    unreachable
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17habc6098dba514f3aE (;31;) (type 13) (param i32 i32 i32) (result i64)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h805ffd7c59eec3a0E
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
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17hb3c6bc19eb632f3cE (;32;) (type 4) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hda40ee9cb5034599E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17hacfb6460c7ecf03dE
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h79f3d929e9d4d75aE (;33;) (type 7) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h3141bb22372bf1e8E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h4d2232a9a20bf10eE (;34;) (type 5) (param i32)
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
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hda40ee9cb5034599E (;35;) (type 4) (param i32 i32 i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h805ffd7c59eec3a0E
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
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h5837a55ab0f44caeE
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
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h1971a99573c4733dE
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
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h805ffd7c59eec3a0E (;36;) (type 14) (param i32 i32 i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h95569fd3ade5f2acE
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 4
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17hc6c76c4d03ea969dE
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h5837a55ab0f44caeE (;37;) (type 12) (param i32 i32 i32 i32)
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
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hfc5e7185d9aa5155E (;38;) (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hc8f4a52dc103ae25E
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
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h5837a55ab0f44caeE
    block ;; label = @1
      local.get 2
      i32.load offset=8
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      i32.const 131156
      i32.const 15
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h090c0ce2836cf8ccE
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hc8f4a52dc103ae25E (;39;) (type 3) (param i32 i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hed29b54c0518fd63E
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
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h090c0ce2836cf8ccE (;40;) (type 1) (param i32 i32 i32)
    (local i32)
    i32.const 131223
    i32.const 27
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h5c68f13981c72231E
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
  (func $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17hdaecec3e45f22b87E (;41;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferAppendBytes
    drop
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h407bcc35ad7defeaE (;42;) (type 9) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17he59cf7a5329a8f5dE
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17he59cf7a5329a8f5dE (;43;) (type 9) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h949e40774513a475E (;44;) (type 7) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h3024118455efcf8cE (;45;) (type 8) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferAppend
    drop
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp115_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h02f5365fbf2cc766E (;46;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $bigIntCmp
    i32.eqz
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped16token_identifier24TokenIdentifier$LT$M$GT$7try_new17h6d2a167a1f642e14E (;47;) (type 8) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h9a51dc48f161969eE
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
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h9a51dc48f161969eE (;48;) (type 7) (param i32) (result i32)
    i32.const -40
    i32.const 131171
    i32.const 11
    call $mBufferSetBytes
    drop
    i32.const -40
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h00ec339cb3020c69E
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h95569fd3ade5f2acE (;49;) (type 9) (param i32 i32 i32 i32) (result i32)
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
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h949e40774513a475E
                local.tee 6
                i32.const 10000
                i32.gt_u
                i32.const 0
                i32.load8_u offset=141308
                i32.or
                local.tee 7
                i32.const 1
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 6
                i32.store offset=141304
                i32.const 0
                i32.const 1
                i32.store8 offset=141308
                local.get 5
                i32.const 0
                i32.const 131304
                local.get 6
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h407bcc35ad7defeaE
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
                i32.store offset=141304
                i32.const 0
                i32.const 0
                i32.store8 offset=141308
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
            i32.load offset=141304
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
            i32.const 131304
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
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h407bcc35ad7defeaE
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
  (func $_ZN4core5slice5index22slice_index_order_fail17hce8d8012711d5a00E (;50;) (type 8) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN4core5slice5index22slice_index_order_fail8do_panic7runtime17h3eb440503b756a77E
    unreachable
  )
  (func $_ZN4core5slice5index24slice_end_index_len_fail17h07937a589bfe269aE (;51;) (type 5) (param i32)
    local.get 0
    call $_ZN4core5slice5index24slice_end_index_len_fail8do_panic7runtime17h40abf6316be1d38dE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h13aeeaa3840dab8eE (;52;) (type 7) (param i32) (result i32)
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
      i32.const 131171
      i32.const 11
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h5c68f13981c72231E
      local.set 0
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h00ec339cb3020c69E (;53;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $mBufferEq
    i32.const 0
    i32.gt_s
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h59c734b4db97eeaeE (;54;) (type 7) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17hacfb6460c7ecf03dE (;55;) (type 7) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    call $mBufferToBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h470c60775437777dE (;56;) (type 7) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h45519861ecd0e618E (;57;) (type 8) (param i32 i32)
    local.get 1
    i32.load offset=16
    local.get 0
    call $_ZN151_$LT$dharitri_sc..types..managed..wrapped..token_identifier..TokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h44b9cf6b37a918e4E
    local.get 1
    i64.load
    local.get 0
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h1eb219f08e07833dE
    local.get 1
    i32.load offset=20
    local.get 0
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h1184dd62b965afd5E
    local.get 1
    i32.load offset=24
    local.get 0
    call $_ZN151_$LT$dharitri_sc..types..managed..wrapped..token_identifier..TokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h44b9cf6b37a918e4E
    local.get 1
    i64.load offset=8
    local.get 0
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h1eb219f08e07833dE
    local.get 1
    i32.load offset=28
    local.get 0
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h1184dd62b965afd5E
  )
  (func $_ZN151_$LT$dharitri_sc..types..managed..wrapped..token_identifier..TokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h44b9cf6b37a918e4E (;58;) (type 8) (param i32 i32)
    block ;; label = @1
      local.get 0
      call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h9a51dc48f161969eE
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h03db414d97eda795E
      return
    end
    i32.const 4
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h7daf4dcd7a965140E
    local.get 1
    i32.const 131182
    i32.const 4
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17hdaecec3e45f22b87E
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h1eb219f08e07833dE (;59;) (type 15) (param i64 i32)
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17hdaecec3e45f22b87E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h1184dd62b965afd5E (;60;) (type 8) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h59c734b4db97eeaeE
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h03db414d97eda795E
  )
  (func $_ZN11dharitri_sc7storage11storage_set11storage_set17h4bb9be52c9c125dbE (;61;) (type 5) (param i32)
    local.get 0
    i32.const 1
    i32.const 0
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h3fe069843b26b11aE
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h3fe069843b26b11aE (;62;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h5c68f13981c72231E
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage11storage_set11storage_set17hac6c6c8d8dbabe58E (;63;) (type 8) (param i32 i32)
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
    i64.store8 offset=12
    local.get 2
    local.get 3
    i64.const 16
    i64.shr_u
    i32.wrap_i64
    local.tee 4
    i32.store8 offset=13
    local.get 2
    local.get 3
    i64.const 8
    i64.shr_u
    i32.wrap_i64
    local.tee 5
    i32.store8 offset=14
    local.get 2
    i32.const 0
    i32.store offset=8
    local.get 0
    local.get 2
    i32.const 8
    i32.add
    i32.const 5
    i32.const 4
    local.get 1
    i32.const 16777216
    i32.lt_u
    local.tee 6
    select
    local.get 6
    local.get 4
    i32.const 255
    i32.and
    i32.eqz
    i32.and
    local.tee 4
    i32.add
    i32.const 0
    local.get 4
    local.get 5
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
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h3fe069843b26b11aE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage11storage_set13storage_clear17h8f424b9b92628892E (;64;) (type 5) (param i32)
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
  (func $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$15build_named_key17h82943d07111fe114E (;65;) (type 3) (param i32 i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h155b32f81e8ee984E
    local.tee 0
    i32.const 131186
    i32.const 7
    call $mBufferAppendBytes
    drop
    local.get 1
    local.get 0
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h03db414d97eda795E
    local.get 0
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h03db414d97eda795E (;66;) (type 8) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h949e40774513a475E
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17hdaecec3e45f22b87E
    local.get 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h3024118455efcf8cE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$15build_named_key17hefb1a61b5c921840E (;67;) (type 3) (param i32 i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h155b32f81e8ee984E
    local.tee 0
    i32.const 131186
    i32.const 7
    call $mBufferAppendBytes
    drop
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h45519861ecd0e618E
    local.get 0
  )
  (func $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$16get_mapped_value17h52012196d673f3c7E (;68;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$15build_named_key17h82943d07111fe114E
    call $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17hb28a57bc8af73f9cE
  )
  (func $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17hb28a57bc8af73f9cE (;69;) (type 7) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h470c60775437777dE
  )
  (func $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$16get_mapped_value17h5ccdbbdc486265c5E (;70;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$15build_named_key17hefb1a61b5c921840E
    call $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17h066c35eb6166da15E
  )
  (func $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17h066c35eb6166da15E (;71;) (type 8) (param i32 i32)
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
    call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h91845d3698772bc2E
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN151_$LT$dharitri_sc..types..managed..wrapped..token_identifier..TokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h6eb0bc72b59b1667E
    local.set 3
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h9b8973b526cef254E
    local.set 4
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h55aba730f5850a38E
    local.set 5
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN151_$LT$dharitri_sc..types..managed..wrapped..token_identifier..TokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h6eb0bc72b59b1667E
    local.set 6
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h9b8973b526cef254E
    local.set 7
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h55aba730f5850a38E
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
        i32.store offset=141304
        i32.const 0
        i32.const 0
        i32.store8 offset=141308
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
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h090c0ce2836cf8ccE
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$3get17h8084aa2f61d11d9cE (;72;) (type 12) (param i32 i32 i32 i32)
    (local i64)
    i64.const 0
    local.set 4
    block ;; label = @1
      local.get 1
      local.get 3
      call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$8contains17he2de9cf2ef043c4bE
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 8
      i32.add
      local.get 2
      local.get 3
      call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$16get_mapped_value17h5ccdbbdc486265c5E
      i64.const 1
      local.set 4
    end
    local.get 0
    local.get 4
    i64.store
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$8contains17he2de9cf2ef043c4bE (;73;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$11get_node_id17he75b0a48851736bbE
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$3get17hd3193c05a7b506bbE (;74;) (type 12) (param i32 i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        local.get 1
        local.get 3
        call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$8contains17h0335d2bebb6b4908E
        br_if 0 (;@2;)
        i32.const 0
        local.set 1
        br 1 (;@1;)
      end
      i32.const 1
      local.set 1
      local.get 2
      local.get 3
      call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$16get_mapped_value17h52012196d673f3c7E
      local.set 3
    end
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$8contains17h0335d2bebb6b4908E (;75;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$11get_node_id17h42955e4e3a9d40f7E
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$11get_node_id17h42955e4e3a9d40f7E (;76;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17ha5e12ee897be9c6cE
    call $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17h25613d4cc8fb1b13E
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17ha5e12ee897be9c6cE (;77;) (type 3) (param i32 i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h155b32f81e8ee984E
    local.tee 0
    i32.const 131193
    i32.const 8
    call $mBufferAppendBytes
    drop
    local.get 1
    local.get 0
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h03db414d97eda795E
    local.get 0
  )
  (func $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17h25613d4cc8fb1b13E (;78;) (type 7) (param i32) (result i32)
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
        call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h470c60775437777dE
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
      i32.const 131091
      i32.const 14
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h090c0ce2836cf8ccE
      unreachable
    end
    local.get 0
    i32.const 131091
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h090c0ce2836cf8ccE
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$11get_node_id17he75b0a48851736bbE (;79;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17hdd6c14399e2a670aE
    call $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17h25613d4cc8fb1b13E
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17hdd6c14399e2a670aE (;80;) (type 3) (param i32 i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h155b32f81e8ee984E
    local.tee 0
    i32.const 131193
    i32.const 8
    call $mBufferAppendBytes
    drop
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h45519861ecd0e618E
    local.get 0
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17h51386e2311fffdf2E (;81;) (type 8) (param i32 i32)
    (local i32 i32)
    local.get 0
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$14build_name_key17h3215553c2f9ed6dcE
    local.set 2
    block ;; label = @1
      local.get 1
      i32.load
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h26711fccdb2b13aeE
      local.tee 0
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h7daf4dcd7a965140E
      local.get 1
      i32.load offset=4
      local.get 0
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h7daf4dcd7a965140E
      local.get 1
      i32.load offset=8
      local.get 0
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h7daf4dcd7a965140E
      local.get 1
      i32.load offset=12
      local.get 0
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h7daf4dcd7a965140E
      local.get 2
      local.get 0
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h320ad9a64a876ff1E
      return
    end
    local.get 2
    i32.const 1
    i32.const 0
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h3fe069843b26b11aE
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$14build_name_key17h3215553c2f9ed6dcE (;82;) (type 7) (param i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h155b32f81e8ee984E
    local.tee 0
    i32.const 131218
    i32.const 5
    call $mBufferAppendBytes
    drop
    local.get 0
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h26711fccdb2b13aeE (;83;) (type 2) (result i32)
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h5c68f13981c72231E
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h7daf4dcd7a965140E (;84;) (type 8) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17hdaecec3e45f22b87E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h320ad9a64a876ff1E (;85;) (type 8) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h3468d8c12a10a789E (;86;) (type 12) (param i32 i32 i32 i32)
    local.get 0
    i32.const 131201
    i32.const 11
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h2b6339de44794f10E
    local.set 0
    local.get 2
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h26711fccdb2b13aeE
    local.tee 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h7daf4dcd7a965140E
    local.get 3
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h7daf4dcd7a965140E
    local.get 0
    local.get 1
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h320ad9a64a876ff1E
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h2b6339de44794f10E (;87;) (type 9) (param i32 i32 i32 i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h155b32f81e8ee984E
    local.tee 0
    local.get 1
    local.get 2
    call $mBufferAppendBytes
    drop
    local.get 3
    local.get 0
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h7daf4dcd7a965140E
    local.get 0
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17h57ca0392593c3cb9E (;88;) (type 8) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$14build_name_key17h3215553c2f9ed6dcE
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
        call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h91845d3698772bc2E
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hc8f4a52dc103ae25E
        local.set 6
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hc8f4a52dc103ae25E
        local.set 3
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hc8f4a52dc103ae25E
        local.set 4
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hc8f4a52dc103ae25E
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
        i32.store offset=141304
        i32.const 0
        i32.const 0
        i32.store8 offset=141308
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
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h090c0ce2836cf8ccE
    unreachable
  )
  (func $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h91845d3698772bc2E (;89;) (type 8) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h470c60775437777dE
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
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17h6b6e9cce2464093bE (;90;) (type 1) (param i32 i32 i32)
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
    i32.const 131201
    i32.const 11
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h2b6339de44794f10E
    local.tee 2
    call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h91845d3698772bc2E
    local.get 3
    i32.const 12
    i32.add
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hc8f4a52dc103ae25E
    local.set 1
    local.get 3
    i32.const 12
    i32.add
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hc8f4a52dc103ae25E
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
        i32.store offset=141304
        i32.const 0
        i32.const 0
        i32.store8 offset=141308
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
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h090c0ce2836cf8ccE
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17h4df276b843bed722E (;91;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    i32.const 131212
    i32.const 6
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h2b6339de44794f10E
    call $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17h066c35eb6166da15E
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17h4f21ada1a632e103E (;92;) (type 3) (param i32 i32) (result i32)
    local.get 0
    i32.const 131212
    i32.const 6
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h2b6339de44794f10E
    call $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17hb28a57bc8af73f9cE
  )
  (func $_ZN121_$LT$benchmark_common..example_struct..ExampleStruct$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17hf85db66bce088d61E (;93;) (type 8) (param i32 i32)
    (local i32)
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h26711fccdb2b13aeE
    local.set 2
    local.get 0
    i32.load offset=16
    local.get 2
    call $_ZN151_$LT$dharitri_sc..types..managed..wrapped..token_identifier..TokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h44b9cf6b37a918e4E
    local.get 0
    i64.load
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h1eb219f08e07833dE
    local.get 0
    i32.load offset=20
    local.get 2
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h1184dd62b965afd5E
    local.get 0
    i32.load offset=24
    local.get 2
    call $_ZN151_$LT$dharitri_sc..types..managed..wrapped..token_identifier..TokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h44b9cf6b37a918e4E
    local.get 0
    i64.load offset=8
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h1eb219f08e07833dE
    local.get 0
    i32.load offset=28
    local.get 2
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h1184dd62b965afd5E
    local.get 1
    local.get 2
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h320ad9a64a876ff1E
  )
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h55aba730f5850a38E (;94;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hfc5e7185d9aa5155E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17hacfb6460c7ecf03dE
  )
  (func $_ZN151_$LT$dharitri_sc..types..managed..wrapped..token_identifier..TokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h6eb0bc72b59b1667E (;95;) (type 3) (param i32 i32) (result i32)
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
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hfc5e7185d9aa5155E
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h13aeeaa3840dab8eE
    call $_ZN11dharitri_sc5types7managed7wrapped16token_identifier24TokenIdentifier$LT$M$GT$7try_new17h6d2a167a1f642e14E
    block ;; label = @1
      local.get 2
      i32.load offset=8
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 2
      i32.load offset=12
      local.set 1
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 1
      return
    end
    local.get 1
    i32.const 131250
    i32.const 13
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h090c0ce2836cf8ccE
    unreachable
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h9b8973b526cef254E (;96;) (type 16) (param i32 i32) (result i64)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hed29b54c0518fd63E
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
  (func $_ZN16benchmark_common16benchmark_common15BenchmarkCommon12append_index17hd7cfcc21d22b6feeE (;97;) (type 3) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h155b32f81e8ee984E
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
  (func $_ZN16benchmark_common16benchmark_common15BenchmarkCommon16use_index_struct17hb971ce7d01a97054E (;98;) (type 1) (param i32 i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    call $_ZN95_$LT$benchmark_common..example_struct..ExampleStruct$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2af633b3fe49f0d3E
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
  (func $_ZN95_$LT$benchmark_common..example_struct..ExampleStruct$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2af633b3fe49f0d3E (;99;) (type 8) (param i32 i32)
    (local i32 i64 i32 i32 i64)
    local.get 1
    i32.load offset=16
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h155b32f81e8ee984E
    local.set 2
    local.get 1
    i64.load
    local.set 3
    local.get 1
    i32.load offset=20
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h84911b314fc63137E
    local.set 4
    local.get 1
    i32.load offset=24
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h155b32f81e8ee984E
    local.set 5
    local.get 1
    i64.load offset=8
    local.set 6
    local.get 1
    i32.load offset=28
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h84911b314fc63137E
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
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hed29b54c0518fd63E (;100;) (type 12) (param i32 i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h95569fd3ade5f2acE
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h8fe300fee93fc2c4E
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h8fe300fee93fc2c4E (;101;) (type 5) (param i32)
    local.get 0
    i32.const 131156
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h090c0ce2836cf8ccE
    unreachable
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17hc6c76c4d03ea969dE (;102;) (type 8) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 131156
    i32.const 15
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h1971a99573c4733dE
    unreachable
  )
  (func $_ZN43_$LT$C$u20$as$u20$map_repeat..MapRepeat$GT$12bench_struct17h81e1ca335f5918c6E (;103;) (type 5) (param i32)
    (local i32 i32 i32)
    i32.const 131263
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h5c68f13981c72231E
    local.tee 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h155b32f81e8ee984E
    local.set 2
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h155b32f81e8ee984E
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
  (func $_ZN43_$LT$C$u20$as$u20$map_repeat..MapRepeat$GT$5bench17h7dc25a35c9a237aaE (;104;) (type 5) (param i32)
    (local i32 i32 i32)
    i32.const 131275
    i32.const 9
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h5c68f13981c72231E
    local.tee 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h155b32f81e8ee984E
    local.set 2
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h155b32f81e8ee984E
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
  (func $_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hfc65eee68db11cb7E (;105;) (type 8) (param i32 i32)
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
  (func $rust_begin_unwind (;106;) (type 10)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17hbce93cd107d2a5cdE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17hbce93cd107d2a5cdE (;107;) (type 10)
    i32.const 131284
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;108;) (type 10)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h4d2232a9a20bf10eE
  )
  (func $add (;109;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h4d2232a9a20bf10eE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0f34cd0e93403d8cE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h79f3d929e9d4d75aE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h79f3d929e9d4d75aE
    local.set 3
    local.get 0
    i32.const 20
    i32.add
    call $_ZN43_$LT$C$u20$as$u20$map_repeat..MapRepeat$GT$5bench17h7dc25a35c9a237aaE
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
        call $_ZN16benchmark_common16benchmark_common15BenchmarkCommon12append_index17hd7cfcc21d22b6feeE
        local.set 8
        local.get 3
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h155b32f81e8ee984E
        local.set 9
        local.get 0
        i32.const 8
        i32.add
        local.get 6
        local.get 5
        local.get 8
        call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$3get17hd3193c05a7b506bbE
        local.get 5
        local.get 8
        call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$15build_named_key17h82943d07111fe114E
        local.get 9
        call $mBufferStorageStore
        drop
        block ;; label = @3
          local.get 6
          local.get 8
          call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$8contains17h0335d2bebb6b4908E
          br_if 0 (;@3;)
          local.get 0
          i32.const 32
          i32.add
          local.get 4
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17h57ca0392593c3cb9E
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
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17h6b6e9cce2464093bE
            local.get 4
            local.get 11
            local.get 0
            i32.load
            local.get 9
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h3468d8c12a10a789E
          end
          local.get 4
          local.get 9
          local.get 11
          i32.const 0
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h3468d8c12a10a789E
          local.get 0
          local.get 9
          i32.store offset=40
          local.get 4
          i32.const 131212
          i32.const 6
          local.get 9
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h2b6339de44794f10E
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
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17h51386e2311fffdf2E
          local.get 6
          local.get 8
          call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17ha5e12ee897be9c6cE
          local.get 9
          call $_ZN11dharitri_sc7storage11storage_set11storage_set17hac6c6c8d8dbabe58E
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
  (func $count (;110;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h4d2232a9a20bf10eE
    i32.const 0
    local.set 1
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h79f3d929e9d4d75aE
    local.set 2
    local.get 0
    i32.const 20
    i32.add
    call $_ZN43_$LT$C$u20$as$u20$map_repeat..MapRepeat$GT$5bench17h7dc25a35c9a237aaE
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    i32.load offset=24
    local.tee 3
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17h57ca0392593c3cb9E
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
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17h6b6e9cce2464093bE
          local.get 0
          i32.load offset=12
          local.set 7
          local.get 0
          local.get 6
          local.get 5
          local.get 3
          local.get 4
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17h4f21ada1a632e103E
          call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$3get17hd3193c05a7b506bbE
          local.get 0
          i32.load
          i32.const 1
          i32.and
          i32.eqz
          br_if 2 (;@1;)
          local.get 1
          local.get 0
          i32.load offset=4
          local.get 2
          call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h00ec339cb3020c69E
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
    call $_ZN4core6option13unwrap_failed17h7534a988a872bb9fE
    unreachable
  )
  (func $_ZN4core6option13unwrap_failed17h7534a988a872bb9fE (;111;) (type 10)
    call $_ZN4core9panicking5panic17hb20c9056d85d5b5eE
    unreachable
  )
  (func $remove (;112;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h4d2232a9a20bf10eE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0f34cd0e93403d8cE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h79f3d929e9d4d75aE
    local.set 2
    local.get 0
    i32.const 40
    i32.add
    call $_ZN43_$LT$C$u20$as$u20$map_repeat..MapRepeat$GT$5bench17h7dc25a35c9a237aaE
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
        call $_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hfc65eee68db11cb7E
        local.get 0
        i32.load offset=32
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 2
        local.get 0
        i32.load offset=36
        call $_ZN16benchmark_common16benchmark_common15BenchmarkCommon12append_index17hd7cfcc21d22b6feeE
        local.tee 5
        call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$11get_node_id17h42955e4e3a9d40f7E
        local.tee 6
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 24
        i32.add
        local.get 1
        local.get 6
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17h6b6e9cce2464093bE
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
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17h57ca0392593c3cb9E
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
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17h6b6e9cce2464093bE
            local.get 1
            local.get 8
            local.get 0
            i32.load offset=16
            local.get 7
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h3468d8c12a10a789E
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
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17h6b6e9cce2464093bE
            local.get 1
            local.get 7
            local.get 8
            local.get 0
            i32.load offset=12
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h3468d8c12a10a789E
            br 1 (;@3;)
          end
          local.get 0
          local.get 8
          i32.store offset=72
        end
        local.get 1
        i32.const 131201
        i32.const 11
        local.get 6
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h2b6339de44794f10E
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4bb9be52c9c125dbE
        local.get 1
        local.get 6
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17h4f21ada1a632e103E
        drop
        local.get 1
        i32.const 131212
        i32.const 6
        local.get 6
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h2b6339de44794f10E
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4bb9be52c9c125dbE
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
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17h51386e2311fffdf2E
        local.get 4
        local.get 5
        call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17ha5e12ee897be9c6cE
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4bb9be52c9c125dbE
        local.get 3
        local.get 5
        call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$16get_mapped_value17h52012196d673f3c7E
        drop
        local.get 3
        local.get 5
        call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$15build_named_key17h82943d07111fe114E
        call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h8f424b9b92628892E
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $add_struct (;113;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 272
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h4d2232a9a20bf10eE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0f34cd0e93403d8cE
    local.set 1
    local.get 0
    i32.const 144
    i32.add
    i32.const 1
    i32.const 131077
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1a15a91b412e1616E
    local.get 0
    i32.const 176
    i32.add
    i32.const 2
    i32.const 131072
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1a15a91b412e1616E
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
    call $_ZN43_$LT$C$u20$as$u20$map_repeat..MapRepeat$GT$12bench_struct17h81e1ca335f5918c6E
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
        call $_ZN16benchmark_common16benchmark_common15BenchmarkCommon16use_index_struct17hb971ce7d01a97054E
        local.get 0
        i32.const 144
        i32.add
        local.get 0
        i32.const 40
        i32.add
        call $_ZN95_$LT$benchmark_common..example_struct..ExampleStruct$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2af633b3fe49f0d3E
        local.get 0
        i32.const 72
        i32.add
        local.get 4
        local.get 3
        local.get 0
        i32.const 224
        i32.add
        call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$3get17h8084aa2f61d11d9cE
        local.get 0
        i32.const 144
        i32.add
        local.get 3
        local.get 0
        i32.const 224
        i32.add
        call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$15build_named_key17hefb1a61b5c921840E
        call $_ZN121_$LT$benchmark_common..example_struct..ExampleStruct$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17hf85db66bce088d61E
        block ;; label = @3
          local.get 4
          local.get 0
          i32.const 224
          i32.add
          call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$8contains17he2de9cf2ef043c4bE
          br_if 0 (;@3;)
          local.get 0
          i32.const 256
          i32.add
          local.get 2
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17h57ca0392593c3cb9E
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
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17h6b6e9cce2464093bE
            local.get 2
            local.get 8
            local.get 0
            i32.load
            local.get 6
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h3468d8c12a10a789E
          end
          local.get 2
          local.get 6
          local.get 8
          i32.const 0
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h3468d8c12a10a789E
          local.get 0
          local.get 6
          i32.store offset=264
          local.get 0
          i32.const 224
          i32.add
          local.get 2
          i32.const 131212
          i32.const 6
          local.get 6
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h2b6339de44794f10E
          call $_ZN121_$LT$benchmark_common..example_struct..ExampleStruct$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17hf85db66bce088d61E
          local.get 0
          local.get 7
          i32.const 1
          i32.add
          i32.store offset=256
          local.get 2
          local.get 0
          i32.const 256
          i32.add
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17h51386e2311fffdf2E
          local.get 4
          local.get 0
          i32.const 224
          i32.add
          call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17hdd6c14399e2a670aE
          local.get 6
          call $_ZN11dharitri_sc7storage11storage_set11storage_set17hac6c6c8d8dbabe58E
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
  (func $count_struct (;114;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 144
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h4d2232a9a20bf10eE
    i32.const 0
    local.set 1
    local.get 0
    i32.const 16
    i32.add
    i32.const 0
    i32.const 131072
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1a15a91b412e1616E
    local.get 0
    i32.const 52
    i32.add
    call $_ZN43_$LT$C$u20$as$u20$map_repeat..MapRepeat$GT$12bench_struct17h81e1ca335f5918c6E
    local.get 0
    i32.const 104
    i32.add
    local.get 0
    i32.load offset=56
    local.tee 2
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17h57ca0392593c3cb9E
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
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17h6b6e9cce2464093bE
          local.get 0
          i32.load offset=12
          local.set 3
          local.get 4
          local.get 2
          local.get 13
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17h4df276b843bed722E
          local.get 0
          i64.const 1
          i64.store offset=64
          local.get 0
          i32.const 104
          i32.add
          local.get 10
          local.get 9
          local.get 4
          call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$3get17h8084aa2f61d11d9cE
          local.get 0
          i32.load offset=104
          i32.eqz
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
            call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h00ec339cb3020c69E
            i32.eqz
            br_if 0 (;@4;)
            local.get 18
            local.get 12
            i64.ne
            br_if 0 (;@4;)
            local.get 16
            local.get 7
            call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp115_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h02f5365fbf2cc766E
            i32.eqz
            br_if 0 (;@4;)
            local.get 15
            local.get 6
            call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h00ec339cb3020c69E
            i32.eqz
            br_if 0 (;@4;)
            local.get 17
            local.get 11
            i64.ne
            br_if 0 (;@4;)
            local.get 14
            local.get 5
            call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp115_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h02f5365fbf2cc766E
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
    call $_ZN4core6option13unwrap_failed17h7534a988a872bb9fE
    unreachable
  )
  (func $remove_struct (;115;) (type 10)
    (local i32 i32 i32 i64 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 224
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h4d2232a9a20bf10eE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h0f34cd0e93403d8cE
    local.set 1
    local.get 0
    i32.const 96
    i32.add
    i32.const 1
    i32.const 131077
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1a15a91b412e1616E
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
    call $_ZN43_$LT$C$u20$as$u20$map_repeat..MapRepeat$GT$12bench_struct17h81e1ca335f5918c6E
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
        call $_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hfc65eee68db11cb7E
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
        call $_ZN16benchmark_common16benchmark_common15BenchmarkCommon16use_index_struct17hb971ce7d01a97054E
        local.get 6
        local.get 0
        i32.const 136
        i32.add
        call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$11get_node_id17he75b0a48851736bbE
        local.tee 7
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 24
        i32.add
        local.get 1
        local.get 7
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17h6b6e9cce2464093bE
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
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17h57ca0392593c3cb9E
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
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17h6b6e9cce2464093bE
            local.get 1
            local.get 9
            local.get 0
            i32.load offset=16
            local.get 8
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h3468d8c12a10a789E
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
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17h6b6e9cce2464093bE
            local.get 1
            local.get 8
            local.get 9
            local.get 0
            i32.load offset=12
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h3468d8c12a10a789E
            br 1 (;@3;)
          end
          local.get 0
          local.get 9
          i32.store offset=216
        end
        local.get 1
        i32.const 131201
        i32.const 11
        local.get 7
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h2b6339de44794f10E
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4bb9be52c9c125dbE
        local.get 4
        local.get 1
        local.get 7
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17h4df276b843bed722E
        local.get 1
        i32.const 131212
        i32.const 6
        local.get 7
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h2b6339de44794f10E
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4bb9be52c9c125dbE
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
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17h51386e2311fffdf2E
        local.get 6
        local.get 0
        i32.const 136
        i32.add
        call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17hdd6c14399e2a670aE
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4bb9be52c9c125dbE
        local.get 2
        local.get 5
        local.get 0
        i32.const 136
        i32.add
        call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$16get_mapped_value17h5ccdbbdc486265c5E
        local.get 5
        local.get 0
        i32.const 136
        i32.add
        call $_ZN11dharitri_sc7storage7mappers10map_mapper31MapMapper$LT$SA$C$K$C$V$C$A$GT$15build_named_key17hefb1a61b5c921840E
        call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h8f424b9b92628892E
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 224
    i32.add
    global.set $__stack_pointer
  )
  (func $callBack (;116;) (type 10))
  (func $_ZN4core9panicking9panic_fmt17h931ec2537c26fa22E (;117;) (type 10)
    call $rust_begin_unwind
    unreachable
  )
  (func $_ZN4core5slice5index24slice_end_index_len_fail8do_panic7runtime17h40abf6316be1d38dE (;118;) (type 5) (param i32)
    call $_ZN4core9panicking9panic_fmt17h931ec2537c26fa22E
    unreachable
  )
  (func $_ZN4core9panicking5panic17hb20c9056d85d5b5eE (;119;) (type 10)
    call $_ZN4core9panicking9panic_fmt17h931ec2537c26fa22E
    unreachable
  )
  (func $_ZN4core5slice5index22slice_index_order_fail8do_panic7runtime17h3eb440503b756a77E (;120;) (type 8) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17h931ec2537c26fa22E
    unreachable
  )
  (func $memcpy (;121;) (type 4) (param i32 i32 i32) (result i32)
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
  (data $.rodata (;0;) (i32.const 131072) "valuekeynum_repeatsinput too longargument decode error (): wrong number of argumentsinput too shortREWA-000000REWA.mapped.node_id.node_links.value.infostorage decode error (key: DCDT expectedbench_structbenchmarkpanic occurred")
  (data $.data (;1;) (i32.const 131300) "8\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.84.1 (e71f9a9a9 2025-01-27)")
  )
  (@custom "target_features" (after data) "\04+\0amultivalue+\0fmutable-globals+\0freference-types+\08sign-ext")
)
