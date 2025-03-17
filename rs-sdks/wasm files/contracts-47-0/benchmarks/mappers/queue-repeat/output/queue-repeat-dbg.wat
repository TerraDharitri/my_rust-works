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
  (type (;12;) (func (param i32 i32 i32 i32)))
  (type (;13;) (func (param i32 i32) (result i64)))
  (type (;14;) (func (param i64 i32)))
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
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;15;) (type 3)))
  (import "env" "mBufferCopyByteSlice" (func $mBufferCopyByteSlice (;16;) (type 9)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;17;) (type 3)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;18;) (type 3)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;19;) (type 3)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;20;) (type 10)))
  (import "env" "smallIntFinishUnsigned" (func $smallIntFinishUnsigned (;21;) (type 11)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;22;) (type 6)))
  (func $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd8acb5e99011b4c9E (;23;) (type 6) (param i32) (result i32)
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
    i32.load offset=131252
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=131252
    local.get 0
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hdff02eab2d6544c5E (;25;) (type 6) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hc5708fde749d20b9E (;26;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $mBufferEq
    i32.const 0
    i32.gt_s
  )
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hfe150c27c107bbf6E (;27;) (type 6) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h30af66ea10ef4dd7E (;28;) (type 12) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131086
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hf693fc803164c985E
    local.tee 4
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 4
    i32.const 131109
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hf693fc803164c985E (;29;) (type 3) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4cf13a23342f6ce4E (;30;) (type 8) (param i32 i32)
    (local i32 i32 i64 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hfe150c27c107bbf6E
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
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h853bd60061e4daf7E
    local.set 1
    local.get 2
    i32.const 12
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h55e1d667d3bdad37E
    local.set 4
    local.get 2
    i32.const 12
    i32.add
    call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17he09d8ba46a4424b0E
    local.set 3
    local.get 2
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h853bd60061e4daf7E
    local.set 5
    local.get 2
    i32.const 12
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h55e1d667d3bdad37E
    local.set 6
    local.get 2
    i32.const 12
    i32.add
    call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17he09d8ba46a4424b0E
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
        i32.store offset=141256
        i32.const 0
        i32.const 0
        i32.store8 offset=141260
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
    i32.const 131174
    i32.const 5
    i32.const 131072
    i32.const 14
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h30af66ea10ef4dd7E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h853bd60061e4daf7E (;31;) (type 6) (param i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h12d49a9573bb997cE
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
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h87403550cdf19825E
    block ;; label = @1
      local.get 1
      i32.load
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      i32.const 131174
      i32.const 5
      i32.const 131137
      i32.const 15
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h30af66ea10ef4dd7E
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h55e1d667d3bdad37E (;32;) (type 7) (param i32) (result i64)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h12d49a9573bb997cE
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
  (func $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17he09d8ba46a4424b0E (;33;) (type 6) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h853bd60061e4daf7E
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h4d3b78cc418428c5E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17haee79fc15f6803bdE (;34;) (type 2) (result i32)
    (local i64)
    block ;; label = @1
      i32.const 0
      call $smallIntGetUnsignedArgument
      local.tee 0
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 131179
      i32.const 11
      i32.const 131072
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h30af66ea10ef4dd7E
      unreachable
    end
    local.get 0
    i32.wrap_i64
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hf4c4e2c07dfb8cfaE (;35;) (type 6) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hfe150c27c107bbf6E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h7dfcdc6277bd79e7E (;36;) (type 5) (param i32)
    block ;; label = @1
      call $getNumArguments
      local.get 0
      i32.ne
      br_if 0 (;@1;)
      return
    end
    i32.const 131112
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h12d49a9573bb997cE (;37;) (type 1) (param i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h37841aefe556c95fE
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131174
      i32.const 5
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17hf37c2b711d0ffa0bE
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E (;38;) (type 13) (param i32 i32) (result i64)
    (local i64)
    i64.const 0
    local.set 2
    block ;; label = @1
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
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h87403550cdf19825E (;39;) (type 12) (param i32 i32 i32 i32)
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
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hd68bea536c3a612fE (;40;) (type 6) (param i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h4e6e5786feb7e2adE
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
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h87403550cdf19825E
    block ;; label = @1
      local.get 1
      i32.load offset=8
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      i32.const 131137
      i32.const 15
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h789184aac6c04f51E
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h4e6e5786feb7e2adE (;41;) (type 6) (param i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hba780fa9e48db63fE
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
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h789184aac6c04f51E (;42;) (type 8) (param i32 i32)
    (local i32)
    i32.const 131190
    i32.const 22
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hf693fc803164c985E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 2
    call $managedSignalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed5basic12big_uint_cmp113_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$2eq17h7c8f9ddda3733f54E (;43;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $bigIntCmp
    i32.eqz
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h5b06be56e427d5bfE (;44;) (type 9) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h0c056633f70be9c3E (;45;) (type 6) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17ha9221c8fcca80b4dE (;46;) (type 8) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferAppend
    drop
  )
  (func $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h4d3b78cc418428c5E (;47;) (type 6) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferToBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h37841aefe556c95fE (;48;) (type 9) (param i32 i32 i32 i32) (result i32)
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
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h0c056633f70be9c3E
          local.tee 6
          i32.const 10000
          i32.gt_u
          br_if 1 (;@2;)
          i32.const 0
          i32.load8_u offset=141260
          i32.const 255
          i32.and
          br_if 1 (;@2;)
          i32.const 0
          local.get 6
          i32.store offset=141256
          i32.const 0
          i32.const 1
          i32.store8 offset=141260
          local.get 4
          i32.const 8
          i32.add
          local.get 6
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hccc35a40f89d6e81E
          local.get 5
          i32.const 0
          local.get 4
          i32.load offset=8
          local.get 4
          i32.load offset=12
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h5b06be56e427d5bfE
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
        i32.load offset=141256
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h5b06be56e427d5bfE
      local.set 0
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hccc35a40f89d6e81E (;49;) (type 8) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    i32.const 0
    local.get 1
    call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h95dd1a03576b7dfcE
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
  (func $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h95dd1a03576b7dfcE (;50;) (type 1) (param i32 i32 i32)
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
        call $_ZN4core5slice5index24slice_end_index_len_fail17h071ab3c1906221bcE
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
    i32.const 131256
    i32.add
    i32.store
  )
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E (;51;) (type 12) (param i32 i32 i32 i32)
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
  (func $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$14new_from_slice17h4b5dfe365a5590d1E (;52;) (type 5) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        i32.const 0
        i32.load8_u offset=141260
        local.tee 2
        br_if 0 (;@2;)
        i32.const 0
        i32.const 1
        i32.store8 offset=141260
        i32.const 0
        i32.const 0
        i32.store offset=141256
        local.get 1
        i32.const 8
        i32.add
        i32.const 0
        call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hccc35a40f89d6e81E
        local.get 1
        i32.load offset=8
        local.get 1
        i32.load offset=12
        i32.const 131236
        i32.const 0
        call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
        call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
        local.tee 3
        i32.const 131236
        i32.const 0
        call $mBufferSetBytes
        drop
        br 1 (;@1;)
      end
      i32.const 131236
      i32.const 0
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hf693fc803164c985E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$19into_managed_buffer17haf5c44b510185154E (;53;) (type 3) (param i32 i32) (result i32)
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
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h06461f4d31823c37E
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
      i32.store offset=141256
      i32.const 0
      i32.const 0
      i32.store8 offset=141260
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h06461f4d31823c37E (;54;) (type 5) (param i32)
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
      i32.load offset=141256
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
      i32.store offset=141256
      i32.const 0
      i32.const 0
      i32.store8 offset=141260
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h54390fd7709f1b68E (;55;) (type 6) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17hb1faa6d868a7f279E (;56;) (type 8) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$14build_name_key17h7855a6ffb97c43eaE
    local.set 0
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h1d626f6a84d3b28bE
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
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h84ee9c6a62c03aa6E
        local.get 1
        i32.load offset=4
        local.get 2
        i32.const 8
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h84ee9c6a62c03aa6E
        local.get 1
        i32.load offset=8
        local.get 2
        i32.const 8
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h84ee9c6a62c03aa6E
        local.get 1
        i32.load offset=12
        local.get 2
        i32.const 8
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h84ee9c6a62c03aa6E
        local.get 0
        local.get 2
        i32.load offset=8
        local.get 2
        i32.load8_u offset=12
        call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hccc9b0974fc5d1c3E
        br 1 (;@1;)
      end
      local.get 0
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h511e95d16b56c596E
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$14build_name_key17h7855a6ffb97c43eaE (;57;) (type 6) (param i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hdff02eab2d6544c5E
    local.tee 0
    i32.const 131169
    i32.const 5
    call $mBufferAppendBytes
    drop
    local.get 0
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h1d626f6a84d3b28bE (;58;) (type 5) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$14new_from_slice17h4b5dfe365a5590d1E
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h84ee9c6a62c03aa6E (;59;) (type 8) (param i32 i32)
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
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h7d8b96d1311c06c7E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hccc9b0974fc5d1c3E (;60;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$19into_managed_buffer17haf5c44b510185154E
    call $mBufferStorageStore
    drop
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h511e95d16b56c596E (;61;) (type 5) (param i32)
    local.get 0
    i32.const 131236
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hf693fc803164c985E
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h41a1314dbc1a13bfE (;62;) (type 12) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 0
    i32.const 131152
    i32.const 11
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h01cfecf941b64856E
    local.set 1
    local.get 4
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h1d626f6a84d3b28bE
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
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h84ee9c6a62c03aa6E
    local.get 3
    local.get 4
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h84ee9c6a62c03aa6E
    local.get 1
    local.get 4
    i32.load offset=8
    local.get 4
    i32.load8_u offset=12
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hccc9b0974fc5d1c3E
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h01cfecf941b64856E (;63;) (type 9) (param i32 i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hdff02eab2d6544c5E
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
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$4iter17h796ce7493fad0141E (;64;) (type 8) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.load
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17h2d6c88bdce31bc51E
    local.get 0
    local.get 2
    i32.load offset=4
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17h2d6c88bdce31bc51E (;65;) (type 8) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$14build_name_key17h7855a6ffb97c43eaE
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
        call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17he1d01feff04c9a05E
        local.get 2
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h4e6e5786feb7e2adE
        local.set 1
        local.get 2
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h4e6e5786feb7e2adE
        local.set 3
        local.get 2
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h4e6e5786feb7e2adE
        local.set 4
        local.get 2
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h4e6e5786feb7e2adE
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
        i32.store offset=141256
        i32.const 0
        i32.const 0
        i32.store8 offset=141260
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
    i32.const 131072
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h789184aac6c04f51E
    unreachable
  )
  (func $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17he1d01feff04c9a05E (;66;) (type 8) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h54390fd7709f1b68E
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
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17h45360010da1bfbb6E (;67;) (type 1) (param i32 i32 i32)
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
    i32.const 131152
    i32.const 11
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h01cfecf941b64856E
    call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17he1d01feff04c9a05E
    local.get 3
    i32.const 12
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h4e6e5786feb7e2adE
    local.set 2
    local.get 3
    i32.const 12
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h4e6e5786feb7e2adE
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
        i32.store offset=141256
        i32.const 0
        i32.const 0
        i32.store8 offset=141260
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
    i32.const 131072
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h789184aac6c04f51E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17had7f3ed4c709d6bfE (;68;) (type 1) (param i32 i32 i32)
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
    i32.const 131163
    i32.const 6
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h01cfecf941b64856E
    call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17he1d01feff04c9a05E
    local.get 3
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hd68bea536c3a612fE
    local.set 2
    local.get 3
    i32.const 12
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h97920df2f4ca8151E
    local.set 4
    local.get 3
    i32.const 12
    i32.add
    call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h893a68c916dbdec9E
    local.set 1
    local.get 3
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hd68bea536c3a612fE
    local.set 5
    local.get 3
    i32.const 12
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h97920df2f4ca8151E
    local.set 6
    local.get 3
    i32.const 12
    i32.add
    call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h893a68c916dbdec9E
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
        i32.store offset=141256
        i32.const 0
        i32.const 0
        i32.store8 offset=141260
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
    i32.const 131072
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h789184aac6c04f51E
    unreachable
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h97920df2f4ca8151E (;69;) (type 7) (param i32) (result i64)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hba780fa9e48db63fE
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
  (func $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h893a68c916dbdec9E (;70;) (type 6) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hd68bea536c3a612fE
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h4d3b78cc418428c5E
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17hf38477c276cba56dE (;71;) (type 3) (param i32 i32) (result i32)
    local.get 0
    i32.const 131163
    i32.const 6
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h01cfecf941b64856E
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h54390fd7709f1b68E
  )
  (func $_ZN126_$LT$dharitri_sc..storage..mappers..queue_mapper..Iter$LT$SA$C$A$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0121cafa02d9b320E (;72;) (type 8) (param i32 i32)
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
      call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17h45360010da1bfbb6E
      local.get 1
      local.get 2
      i32.load offset=12
      i32.store offset=4
      i32.const 1
      local.set 1
      local.get 4
      i32.load
      local.get 3
      call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17hf38477c276cba56dE
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
  (func $_ZN126_$LT$dharitri_sc..storage..mappers..queue_mapper..Iter$LT$SA$C$A$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h12b7f76f8caf9a2cE (;73;) (type 8) (param i32 i32)
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
      call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17h45360010da1bfbb6E
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
      call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17had7f3ed4c709d6bfE
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
  (func $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h919c9f639d8e344eE (;74;) (type 8) (param i32 i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 2
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 2
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h15464bfce202ae42E
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h15464bfce202ae42E (;75;) (type 8) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h0c056633f70be9c3E
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
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h7d8b96d1311c06c7E
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.load8_u offset=4
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h0c056633f70be9c3E
          local.set 3
          i32.const 10000
          i32.const 0
          i32.load offset=141256
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
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hee4a5b1593c06562E
          local.get 0
          i32.const 0
          local.get 2
          i32.load
          local.get 2
          i32.load offset=4
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h5b06be56e427d5bfE
          drop
          i32.const 0
          local.get 3
          i32.store offset=141256
          br 2 (;@1;)
        end
        local.get 1
        i32.load
        local.get 0
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17ha9221c8fcca80b4dE
        br 1 (;@1;)
      end
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h06461f4d31823c37E
      local.get 1
      i32.load
      local.get 0
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17ha9221c8fcca80b4dE
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h7d8b96d1311c06c7E (;76;) (type 1) (param i32 i32 i32)
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
          i32.load offset=141256
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
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hee4a5b1593c06562E
          local.get 3
          i32.load offset=8
          local.get 3
          i32.load offset=12
          local.get 1
          local.get 2
          call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
          i32.const 0
          local.get 0
          i32.store offset=141256
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
      call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h06461f4d31823c37E
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
  (func $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hee4a5b1593c06562E (;77;) (type 1) (param i32 i32 i32)
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
    call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h95dd1a03576b7dfcE
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
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hba780fa9e48db63fE (;78;) (type 1) (param i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h37841aefe556c95fE
      i32.eqz
      br_if 0 (;@1;)
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h4f0fd239394973ebE
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h81537da65a0b8b55E (;79;) (type 14) (param i64 i32)
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
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h7d8b96d1311c06c7E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h4f0fd239394973ebE (;80;) (type 10)
    i32.const 131137
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h789184aac6c04f51E
    unreachable
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17hf37c2b711d0ffa0bE (;81;) (type 8) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 131137
    i32.const 15
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h30af66ea10ef4dd7E
    unreachable
  )
  (func $_ZN47_$LT$C$u20$as$u20$queue_repeat..QueueRepeat$GT$12bench_struct17h9e795173e16f5ae2E (;82;) (type 2) (result i32)
    i32.const 131212
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hf693fc803164c985E
  )
  (func $_ZN47_$LT$C$u20$as$u20$queue_repeat..QueueRepeat$GT$5bench17ha3dfc59ba72013d1E (;83;) (type 2) (result i32)
    i32.const 131224
    i32.const 9
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hf693fc803164c985E
  )
  (func $rust_begin_unwind (;84;) (type 10)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE (;85;) (type 10)
    i32.const 131236
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;86;) (type 10)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h7dfcdc6277bd79e7E
  )
  (func $add (;87;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h7dfcdc6277bd79e7E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17haee79fc15f6803bdE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hf4c4e2c07dfb8cfaE
    local.set 2
    call $_ZN47_$LT$C$u20$as$u20$queue_repeat..QueueRepeat$GT$5bench17ha3dfc59ba72013d1E
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
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hdff02eab2d6544c5E
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
        i32.const 16
        i32.add
        local.get 3
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17h2d6c88bdce31bc51E
        local.get 0
        local.get 0
        i32.load offset=28
        i32.const 1
        i32.add
        local.tee 6
        i32.store offset=28
        block ;; label = @3
          block ;; label = @4
            local.get 0
            i32.load offset=16
            local.tee 7
            br_if 0 (;@4;)
            local.get 0
            local.get 6
            i32.store offset=20
            i32.const 0
            local.set 8
            br 1 (;@3;)
          end
          local.get 0
          i32.const 8
          i32.add
          local.get 3
          local.get 0
          i32.load offset=24
          local.tee 8
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17h45360010da1bfbb6E
          local.get 3
          local.get 8
          local.get 0
          i32.load offset=8
          local.get 6
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h41a1314dbc1a13bfE
        end
        local.get 3
        local.get 6
        local.get 8
        i32.const 0
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h41a1314dbc1a13bfE
        local.get 0
        local.get 6
        i32.store offset=24
        local.get 3
        i32.const 131163
        i32.const 6
        local.get 6
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h01cfecf941b64856E
        local.get 5
        call $mBufferStorageStore
        drop
        local.get 0
        local.get 7
        i32.const 1
        i32.add
        i32.store offset=16
        local.get 3
        local.get 0
        i32.const 16
        i32.add
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17hb1faa6d868a7f279E
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
  (func $count (;88;) (type 10)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h7dfcdc6277bd79e7E
    i32.const 0
    local.set 1
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hf4c4e2c07dfb8cfaE
    local.set 2
    local.get 0
    call $_ZN47_$LT$C$u20$as$u20$queue_repeat..QueueRepeat$GT$5bench17ha3dfc59ba72013d1E
    i32.store offset=20
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 20
    i32.add
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$4iter17h796ce7493fad0141E
    local.get 0
    local.get 0
    i64.load offset=8
    i64.store offset=24 align=4
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        local.get 0
        i32.const 24
        i32.add
        call $_ZN126_$LT$dharitri_sc..storage..mappers..queue_mapper..Iter$LT$SA$C$A$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0121cafa02d9b320E
        local.get 0
        i32.load
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 1
        local.get 0
        i32.load offset=4
        local.get 2
        call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hc5708fde749d20b9E
        i32.add
        local.set 1
        br 0 (;@2;)
      end
    end
    local.get 1
    i64.extend_i32_u
    call $smallIntFinishUnsigned
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $remove (;89;) (type 10)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h7dfcdc6277bd79e7E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17haee79fc15f6803bdE
    local.set 1
    call $_ZN47_$LT$C$u20$as$u20$queue_repeat..QueueRepeat$GT$5bench17ha3dfc59ba72013d1E
    local.set 2
    block ;; label = @1
      loop ;; label = @2
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 32
        i32.add
        local.get 2
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17h2d6c88bdce31bc51E
        block ;; label = @3
          local.get 0
          i32.load offset=36
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.const 24
          i32.add
          local.get 2
          local.get 3
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17h45360010da1bfbb6E
          local.get 0
          i32.load offset=28
          local.set 4
          local.get 0
          i32.load offset=24
          local.set 5
          local.get 0
          i32.const 48
          i32.add
          local.get 2
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17h2d6c88bdce31bc51E
          block ;; label = @4
            block ;; label = @5
              local.get 5
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              i32.const 16
              i32.add
              local.get 2
              local.get 5
              call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17h45360010da1bfbb6E
              local.get 2
              local.get 5
              local.get 0
              i32.load offset=16
              local.get 4
              call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h41a1314dbc1a13bfE
              br 1 (;@4;)
            end
            local.get 0
            local.get 4
            i32.store offset=52
          end
          block ;; label = @4
            block ;; label = @5
              local.get 4
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              i32.const 8
              i32.add
              local.get 2
              local.get 4
              call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17h45360010da1bfbb6E
              local.get 2
              local.get 4
              local.get 5
              local.get 0
              i32.load offset=12
              call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h41a1314dbc1a13bfE
              br 1 (;@4;)
            end
            local.get 0
            local.get 5
            i32.store offset=56
          end
          local.get 2
          i32.const 131152
          i32.const 11
          local.get 3
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h01cfecf941b64856E
          call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h511e95d16b56c596E
          local.get 2
          local.get 3
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17hf38477c276cba56dE
          drop
          local.get 2
          i32.const 131163
          i32.const 6
          local.get 3
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h01cfecf941b64856E
          call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h511e95d16b56c596E
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
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17hb1faa6d868a7f279E
        end
        local.get 1
        i32.const -1
        i32.add
        local.set 1
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $bench (;90;) (type 10)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h7dfcdc6277bd79e7E
    local.get 0
    call $_ZN47_$LT$C$u20$as$u20$queue_repeat..QueueRepeat$GT$5bench17ha3dfc59ba72013d1E
    i32.store offset=20
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 20
    i32.add
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$4iter17h796ce7493fad0141E
    local.get 0
    local.get 0
    i64.load offset=8
    i64.store offset=24 align=4
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        local.get 0
        i32.const 24
        i32.add
        call $_ZN126_$LT$dharitri_sc..storage..mappers..queue_mapper..Iter$LT$SA$C$A$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0121cafa02d9b320E
        local.get 0
        i32.load
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=4
        call $mBufferFinish
        drop
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $add_struct (;91;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h7dfcdc6277bd79e7E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17haee79fc15f6803bdE
    local.set 1
    local.get 0
    i32.const 24
    i32.add
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4cf13a23342f6ce4E
    local.get 0
    i32.const 52
    i32.add
    i32.load
    local.set 2
    local.get 0
    i32.const 48
    i32.add
    i32.load
    local.set 3
    local.get 0
    i32.const 44
    i32.add
    i32.load
    local.set 4
    local.get 0
    i32.const 40
    i32.add
    i32.load
    local.set 5
    local.get 1
    i64.extend_i32_u
    local.set 6
    i64.const 0
    local.set 7
    call $_ZN47_$LT$C$u20$as$u20$queue_repeat..QueueRepeat$GT$12bench_struct17h9e795173e16f5ae2E
    local.set 1
    block ;; label = @1
      loop ;; label = @2
        local.get 6
        local.get 7
        i64.eq
        br_if 1 (;@1;)
        local.get 5
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hdff02eab2d6544c5E
        local.set 8
        local.get 4
        call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd8acb5e99011b4c9E
        local.set 9
        local.get 3
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hdff02eab2d6544c5E
        local.set 10
        local.get 2
        call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd8acb5e99011b4c9E
        local.set 11
        local.get 0
        i32.const 16
        i32.add
        local.get 1
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17h2d6c88bdce31bc51E
        local.get 0
        local.get 0
        i32.load offset=28
        i32.const 1
        i32.add
        local.tee 12
        i32.store offset=28
        block ;; label = @3
          block ;; label = @4
            local.get 0
            i32.load offset=16
            local.tee 13
            br_if 0 (;@4;)
            local.get 0
            local.get 12
            i32.store offset=20
            i32.const 0
            local.set 14
            br 1 (;@3;)
          end
          local.get 0
          i32.const 8
          i32.add
          local.get 1
          local.get 0
          i32.load offset=24
          local.tee 14
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17h45360010da1bfbb6E
          local.get 1
          local.get 14
          local.get 0
          i32.load offset=8
          local.get 12
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h41a1314dbc1a13bfE
        end
        local.get 1
        local.get 12
        local.get 14
        i32.const 0
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h41a1314dbc1a13bfE
        local.get 0
        local.get 12
        i32.store offset=24
        local.get 1
        i32.const 131163
        i32.const 6
        local.get 12
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h01cfecf941b64856E
        local.set 12
        local.get 0
        call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h1d626f6a84d3b28bE
        local.get 0
        local.get 0
        i32.load8_u offset=4
        i32.store8 offset=60
        local.get 0
        local.get 0
        i32.load
        i32.store offset=56
        local.get 8
        local.get 0
        i32.const 56
        i32.add
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h15464bfce202ae42E
        local.get 7
        local.get 0
        i32.const 56
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h81537da65a0b8b55E
        local.get 9
        local.get 0
        i32.const 56
        i32.add
        call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h919c9f639d8e344eE
        local.get 10
        local.get 0
        i32.const 56
        i32.add
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h15464bfce202ae42E
        local.get 7
        local.get 0
        i32.const 56
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h81537da65a0b8b55E
        local.get 11
        local.get 0
        i32.const 56
        i32.add
        call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h919c9f639d8e344eE
        local.get 12
        local.get 0
        i32.load offset=56
        local.get 0
        i32.load8_u offset=60
        call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hccc9b0974fc5d1c3E
        local.get 0
        local.get 13
        i32.const 1
        i32.add
        i32.store offset=16
        local.get 1
        local.get 0
        i32.const 16
        i32.add
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17hb1faa6d868a7f279E
        local.get 7
        i64.const 1
        i64.add
        local.set 7
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $count_struct (;92;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i64 i64 i64 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h7dfcdc6277bd79e7E
    i32.const 0
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4cf13a23342f6ce4E
    local.get 0
    call $_ZN47_$LT$C$u20$as$u20$queue_repeat..QueueRepeat$GT$12bench_struct17h9e795173e16f5ae2E
    i32.store offset=44
    local.get 0
    local.get 0
    i32.const 44
    i32.add
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$4iter17h796ce7493fad0141E
    local.get 0
    local.get 0
    i64.load
    i64.store offset=48 align=4
    local.get 0
    i32.load offset=36
    local.set 2
    local.get 0
    i32.load offset=32
    local.set 3
    local.get 0
    i32.load offset=28
    local.set 4
    local.get 0
    i32.load offset=24
    local.set 5
    local.get 0
    i64.load offset=16
    local.set 6
    local.get 0
    i64.load offset=8
    local.set 7
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 56
        i32.add
        local.get 0
        i32.const 48
        i32.add
        call $_ZN126_$LT$dharitri_sc..storage..mappers..queue_mapper..Iter$LT$SA$C$A$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h12b7f76f8caf9a2cE
        local.get 0
        i64.load offset=56
        i64.eqz
        br_if 1 (;@1;)
        local.get 0
        i64.load offset=64
        local.set 8
        i32.const 0
        local.set 9
        local.get 0
        i32.load offset=92
        local.set 10
        local.get 0
        i32.load offset=88
        local.set 11
        local.get 0
        i32.load offset=84
        local.set 12
        local.get 0
        i64.load offset=72
        local.set 13
        block ;; label = @3
          local.get 0
          i32.load offset=80
          local.get 5
          call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hc5708fde749d20b9E
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          local.get 7
          i64.ne
          br_if 0 (;@3;)
          local.get 12
          local.get 4
          call $_ZN11dharitri_sc5types7managed5basic12big_uint_cmp113_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$2eq17h7c8f9ddda3733f54E
          i32.eqz
          br_if 0 (;@3;)
          local.get 11
          local.get 3
          call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hc5708fde749d20b9E
          i32.eqz
          br_if 0 (;@3;)
          local.get 13
          local.get 6
          i64.ne
          br_if 0 (;@3;)
          local.get 10
          local.get 2
          call $_ZN11dharitri_sc5types7managed5basic12big_uint_cmp113_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$2eq17h7c8f9ddda3733f54E
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
    i32.const 96
    i32.add
    global.set $__stack_pointer
  )
  (func $remove_struct (;93;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h7dfcdc6277bd79e7E
    local.get 0
    i32.const 32
    i32.add
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17haee79fc15f6803bdE
    local.set 2
    call $_ZN47_$LT$C$u20$as$u20$queue_repeat..QueueRepeat$GT$12bench_struct17h9e795173e16f5ae2E
    local.set 3
    block ;; label = @1
      loop ;; label = @2
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 64
        i32.add
        local.get 3
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17h2d6c88bdce31bc51E
        block ;; label = @3
          local.get 0
          i32.load offset=68
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.const 16
          i32.add
          local.get 3
          local.get 4
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17h45360010da1bfbb6E
          local.get 0
          i32.load offset=20
          local.set 5
          local.get 0
          i32.load offset=16
          local.set 6
          local.get 0
          i32.const 80
          i32.add
          local.get 3
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17h2d6c88bdce31bc51E
          block ;; label = @4
            block ;; label = @5
              local.get 6
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              i32.const 8
              i32.add
              local.get 3
              local.get 6
              call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17h45360010da1bfbb6E
              local.get 3
              local.get 6
              local.get 0
              i32.load offset=8
              local.get 5
              call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h41a1314dbc1a13bfE
              br 1 (;@4;)
            end
            local.get 0
            local.get 5
            i32.store offset=84
          end
          block ;; label = @4
            block ;; label = @5
              local.get 5
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              local.get 3
              local.get 5
              call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17h45360010da1bfbb6E
              local.get 3
              local.get 5
              local.get 6
              local.get 0
              i32.load offset=4
              call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h41a1314dbc1a13bfE
              br 1 (;@4;)
            end
            local.get 0
            local.get 6
            i32.store offset=88
          end
          local.get 3
          i32.const 131152
          i32.const 11
          local.get 4
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h01cfecf941b64856E
          call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h511e95d16b56c596E
          local.get 1
          local.get 3
          local.get 4
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17had7f3ed4c709d6bfE
          local.get 3
          i32.const 131163
          i32.const 6
          local.get 4
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17h01cfecf941b64856E
          call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h511e95d16b56c596E
          local.get 0
          local.get 0
          i32.load offset=80
          i32.const -1
          i32.add
          i32.store offset=80
          local.get 3
          local.get 0
          i32.const 80
          i32.add
          call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17hb1faa6d868a7f279E
        end
        local.get 2
        i32.const -1
        i32.add
        local.set 2
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 96
    i32.add
    global.set $__stack_pointer
  )
  (func $bench_struct (;94;) (type 10)
    (local i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h7dfcdc6277bd79e7E
    local.get 0
    call $_ZN47_$LT$C$u20$as$u20$queue_repeat..QueueRepeat$GT$12bench_struct17h9e795173e16f5ae2E
    i32.store offset=20
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 20
    i32.add
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$4iter17h796ce7493fad0141E
    local.get 0
    local.get 0
    i64.load offset=8
    i64.store offset=24 align=4
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 32
        i32.add
        local.get 0
        i32.const 24
        i32.add
        call $_ZN126_$LT$dharitri_sc..storage..mappers..queue_mapper..Iter$LT$SA$C$A$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h12b7f76f8caf9a2cE
        local.get 0
        i64.load offset=32
        i64.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=68
        local.set 1
        local.get 0
        i64.load offset=48
        local.set 2
        local.get 0
        i32.load offset=64
        local.set 3
        local.get 0
        i32.load offset=60
        local.set 4
        local.get 0
        i32.load offset=56
        local.set 5
        local.get 0
        call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$14new_from_slice17h4b5dfe365a5590d1E
        local.get 0
        local.get 0
        i32.load
        i32.store offset=72
        local.get 0
        local.get 0
        i32.load8_u offset=4
        i32.const 1
        i32.and
        i32.store8 offset=76
        local.get 5
        local.get 0
        i32.const 72
        i32.add
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h15464bfce202ae42E
        local.get 0
        i64.load offset=40
        local.get 0
        i32.const 72
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h81537da65a0b8b55E
        local.get 4
        local.get 0
        i32.const 72
        i32.add
        call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h919c9f639d8e344eE
        local.get 3
        local.get 0
        i32.const 72
        i32.add
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h15464bfce202ae42E
        local.get 2
        local.get 0
        i32.const 72
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h81537da65a0b8b55E
        local.get 1
        local.get 0
        i32.const 72
        i32.add
        call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h919c9f639d8e344eE
        local.get 0
        i32.load offset=72
        local.get 0
        i32.load8_u offset=76
        call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$19into_managed_buffer17haf5c44b510185154E
        call $mBufferFinish
        drop
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $callBack (;95;) (type 10))
  (func $memcpy (;96;) (type 4) (param i32 i32 i32) (result i32)
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
  (func $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E (;97;) (type 10)
    call $rust_begin_unwind
    unreachable
  )
  (func $_ZN4core5slice5index24slice_end_index_len_fail17h071ab3c1906221bcE (;98;) (type 5) (param i32)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE (;99;) (type 8) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (table (;0;) 1 1 funcref)
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 141264)
  (global (;2;) i32 i32.const 141264)
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
  (data $.rodata (;0;) (i32.const 131072) "input too longargument decode error (): wrong number of argumentsinput too short.node_links.value.infovaluenum_repeatsstorage decode error: bench_structbenchmark\00\00\00panic occurred")
  (data $.data (;1;) (i32.const 131252) "\9c\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.76.0-nightly (d86d65bbc 2023-12-10)")
  )
)