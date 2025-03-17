(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32 i32) (result i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func (param i32 i32)))
  (type (;6;) (func (param i32 i64)))
  (type (;7;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;8;) (func))
  (type (;9;) (func (param i32 i32 i32)))
  (type (;10;) (func (param i32 i32 i32 i32)))
  (type (;11;) (func (param i32 i32 i32 i32 i32)))
  (import "env" "mBufferNew" (func $mBufferNew (;0;) (type 0)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;1;) (type 1)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;2;) (type 2)))
  (import "env" "managedSignalError" (func $managedSignalError (;3;) (type 3)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;4;) (type 4)))
  (import "env" "signalError" (func $signalError (;5;) (type 5)))
  (import "env" "managedGetOriginalTxHash" (func $managedGetOriginalTxHash (;6;) (type 3)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;7;) (type 6)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;8;) (type 7)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;9;) (type 2)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;10;) (type 1)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;11;) (type 1)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;12;) (type 1)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;13;) (type 1)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;14;) (type 8)))
  (import "env" "getNumArguments" (func $getNumArguments (;15;) (type 0)))
  (import "env" "managedGetMultiDCDTCallValue" (func $managedGetMultiDCDTCallValue (;16;) (type 3)))
  (import "env" "bigIntGetCallValue" (func $bigIntGetCallValue (;17;) (type 3)))
  (import "env" "bigIntSign" (func $bigIntSign (;18;) (type 4)))
  (import "env" "bigIntAdd" (func $bigIntAdd (;19;) (type 9)))
  (import "env" "managedWriteLog" (func $managedWriteLog (;20;) (type 5)))
  (import "env" "managedAsyncCall" (func $managedAsyncCall (;21;) (type 10)))
  (func $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6881f5108e0b79ecE (;22;) (type 11) (param i32 i32 i32 i32 i32)
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
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE (;23;) (type 5) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hfe8fdc068fbe996cE (;24;) (type 4) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17he0e37b0676c989d3E (;25;) (type 10) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17hcba505d2f5fa12cbE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17hcba505d2f5fa12cbE (;26;) (type 10) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $managedAsyncCall
    unreachable
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h6870e7805f68fad7E (;27;) (type 8)
    (local i32)
    i32.const 131072
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hd4950e68ddd954e6E
    local.tee 0
    i32.const 131162
    i32.const 2
    call $mBufferAppendBytes
    drop
    local.get 0
    i32.const 131095
    i32.const 3
    call $mBufferAppendBytes
    drop
    local.get 0
    i32.const 131190
    i32.const 16
    call $mBufferAppendBytes
    drop
    local.get 0
    call $managedSignalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hd4950e68ddd954e6E (;28;) (type 1) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17he1ff4534356bd6c4E (;29;) (type 4) (param i32) (result i32)
    (local i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hf2d8f75389ca6099E
    local.set 1
    local.get 0
    i32.load
    local.set 2
    block ;; label = @1
      loop ;; label = @2
        local.get 2
        i32.const 0
        i32.load offset=141280
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
        call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h7b0c4204fa17bb22E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hdd345a6ee75a7a92E
        local.get 3
        local.set 2
        br 0 (;@2;)
      end
    end
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hf2d8f75389ca6099E (;30;) (type 0) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    i32.const 131252
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
  )
  (func $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h7b0c4204fa17bb22E (;31;) (type 4) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hdd345a6ee75a7a92E (;32;) (type 5) (param i32 i32)
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hade26d9c75970c63E (;33;) (type 0) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 0
      call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h7b0c4204fa17bb22E
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h6870e7805f68fad7E
      unreachable
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd16803e33ad7b1efE (;34;) (type 0) (result i32)
    i32.const 1
    call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h7b0c4204fa17bb22E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h7e7235350f522bd1E (;35;) (type 3) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=141280
      local.get 0
      i32.gt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131115
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h2397d60ac803c27aE (;36;) (type 3) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=141280
      local.get 0
      i32.lt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131098
    i32.const 17
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17h5a7348514b4dca1fE (;37;) (type 3) (param i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
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
      i32.const 131133
      i32.const 10
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hd4950e68ddd954e6E
      local.tee 4
      local.get 3
      call $mBufferAppend
      drop
      local.get 1
      i32.const 16
      i32.add
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hc21466c782013b58E
      local.get 1
      local.get 1
      i32.load8_u offset=20
      i32.store8 offset=32
      local.get 1
      local.get 1
      i32.load offset=16
      i32.store offset=28
      local.get 2
      local.get 0
      i32.const 20
      i32.add
      i32.load
      local.get 1
      i32.const 28
      i32.add
      call $_ZN17dharitri_sc_codec14impl_for_types10impl_slice96_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$$u5b$T$u5d$$GT$24dep_encode_or_handle_err17h7e088b5d6fc28c2bE
      local.get 0
      i32.const 24
      i32.add
      local.tee 2
      i32.load
      local.tee 3
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h8280ae07c91a55c9E
      i32.const 2
      i32.shr_u
      local.get 1
      i32.const 28
      i32.add
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h46545779af3f1f07E
      local.get 1
      local.get 3
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h8280ae07c91a55c9E
      i32.store offset=44
      local.get 1
      i32.const 0
      i32.store offset=40
      local.get 1
      local.get 2
      i32.store offset=36
      block ;; label = @2
        loop ;; label = @3
          local.get 1
          i32.const 8
          i32.add
          local.get 1
          i32.const 36
          i32.add
          call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdc5caec6541f6928E
          local.get 1
          i32.load offset=8
          i32.eqz
          br_if 1 (;@2;)
          local.get 1
          i32.load offset=12
          local.get 1
          i32.const 28
          i32.add
          call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hb8691169d8c8491bE
          br 0 (;@3;)
        end
      end
      local.get 4
      local.get 1
      i32.load offset=28
      local.get 1
      i32.load8_u offset=32
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h6d81772bddd0485bE
    end
    local.get 0
    call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$29call_and_exit_ignore_callback17hded98f42918a888fE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E (;38;) (type 0) (result i32)
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
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hc21466c782013b58E (;39;) (type 3) (param i32)
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
        i32.const 131272
        i32.const 10000
        i32.const 0
        call $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hba614bb5f44a2110E
        local.get 1
        i32.load offset=8
        local.get 1
        i32.load offset=12
        i32.const 131252
        i32.const 0
        call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hf2d8f75389ca6099E
        local.set 3
        br 1 (;@1;)
      end
      i32.const 131252
      i32.const 0
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hd4950e68ddd954e6E
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
  (func $_ZN17dharitri_sc_codec14impl_for_types10impl_slice96_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$$u5b$T$u5d$$GT$24dep_encode_or_handle_err17h7e088b5d6fc28c2bE (;40;) (type 9) (param i32 i32 i32)
    local.get 1
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h46545779af3f1f07E
    local.get 2
    local.get 0
    local.get 1
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h8b3fd7992bdfe05fE
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h8280ae07c91a55c9E (;41;) (type 4) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h46545779af3f1f07E (;42;) (type 5) (param i32 i32)
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
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h8b3fd7992bdfe05fE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdc5caec6541f6928E (;43;) (type 5) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hdf3e935fc660aaccE
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
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hb8691169d8c8491bE (;44;) (type 5) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h8280ae07c91a55c9E
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
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h8b3fd7992bdfe05fE
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.load8_u offset=4
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h8280ae07c91a55c9E
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
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hd1271c19ec665ee7E
          local.get 0
          i32.const 0
          local.get 2
          i32.load
          local.get 2
          i32.load offset=4
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hdf3e935fc660aaccE
          i32.const 0
          local.get 3
          i32.store offset=141272
          br 2 (;@1;)
        end
        local.get 1
        i32.load
        local.get 0
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17hb8f39886aab2ac33E
        br 1 (;@1;)
      end
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h5541102de23e3bcdE
      local.get 1
      i32.load
      local.get 0
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17hb8f39886aab2ac33E
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h6d81772bddd0485bE (;45;) (type 9) (param i32 i32 i32)
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
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h5541102de23e3bcdE
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
  (func $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$29call_and_exit_ignore_callback17hded98f42918a888fE (;46;) (type 3) (param i32)
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17he0e37b0676c989d3E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall10async_call17h35de8e23e26c826aE (;47;) (type 5) (param i32 i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 2
    i64.const 0
    call $bigIntSetInt64
    local.get 0
    local.get 2
    i32.store offset=12
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    local.get 1
    i32.load offset=16
    i32.store offset=8
    local.get 0
    local.get 1
    i64.load
    i64.store align=4
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hdf3e935fc660aaccE (;48;) (type 10) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    drop
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17hb8f39886aab2ac33E (;49;) (type 5) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferAppend
    drop
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h5541102de23e3bcdE (;50;) (type 3) (param i32)
    (local i32)
    local.get 0
    i32.load8_u offset=4
    local.set 1
    local.get 0
    i32.const 0
    i32.store8 offset=4
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=141272
        local.tee 1
        i32.const 10001
        i32.ge_u
        br_if 1 (;@1;)
        local.get 0
        i32.load
        i32.const 131272
        local.get 1
        call $mBufferAppendBytes
        drop
        i32.const 0
        i32.const 0
        i32.store offset=141272
        i32.const 0
        i32.const 0
        i32.store8 offset=141276
      end
      return
    end
    local.get 1
    i32.const 10000
    call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE
    unreachable
  )
  (func $_ZN11dharitri_sc7storage11storage_get11storage_get17hc12b53a86b85b4d0E (;51;) (type 4) (param i32) (result i32)
    (local i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i64.const 0
    i64.store offset=8
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 2
    call $mBufferStorageLoad
    drop
    block ;; label = @1
      local.get 2
      call $mBufferGetLength
      local.tee 0
      i32.const 9
      i32.ge_u
      br_if 0 (;@1;)
      local.get 1
      local.get 1
      i32.const 8
      i32.add
      i32.const 8
      local.get 0
      call $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hba614bb5f44a2110E
      local.get 2
      i32.const 0
      local.get 1
      i32.load offset=4
      local.tee 0
      local.get 1
      i32.load
      local.tee 3
      call $mBufferGetByteSlice
      drop
      block ;; label = @2
        block ;; label = @3
          local.get 0
          br_if 0 (;@3;)
          i64.const 0
          local.set 4
          br 1 (;@2;)
        end
        i64.const 0
        local.set 4
        block ;; label = @3
          loop ;; label = @4
            local.get 0
            i32.eqz
            br_if 1 (;@3;)
            local.get 0
            i32.const -1
            i32.add
            local.set 0
            local.get 4
            i64.const 8
            i64.shl
            local.get 3
            i64.load8_u
            i64.or
            local.set 4
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            br 0 (;@4;)
          end
        end
        local.get 4
        i64.const 4294967296
        i64.ge_u
        br_if 1 (;@1;)
      end
      local.get 1
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 4
      i32.wrap_i64
      return
    end
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h739f10659df839aaE
    unreachable
  )
  (func $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hba614bb5f44a2110E (;52;) (type 10) (param i32 i32 i32 i32)
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
    call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6881f5108e0b79ecE
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
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h739f10659df839aaE (;53;) (type 8)
    (local i32)
    i32.const 131164
    i32.const 22
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hd4950e68ddd954e6E
    local.tee 0
    i32.const 131143
    i32.const 14
    call $mBufferAppendBytes
    drop
    local.get 0
    call $managedSignalError
    unreachable
  )
  (func $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h4b5a4ded0ccaca0cE (;54;) (type 5) (param i32 i32)
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
  (func $_ZN11dharitri_sc7storage11storage_set11storage_set17h76291aab77439624E (;55;) (type 5) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hd4950e68ddd954e6E
    call $mBufferStorageStore
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN4core9panicking18panic_bounds_check17hdbf723dd9cf95e6aE (;56;) (type 8)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$4push17hd12189d5f245314eE (;57;) (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_get11storage_get17hc12b53a86b85b4d0E
    local.set 4
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hfe8fdc068fbe996cE
    local.tee 0
    i32.const 131157
    i32.const 5
    call $mBufferAppendBytes
    drop
    local.get 0
    local.get 4
    i32.const 1
    i32.add
    local.tee 4
    call $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h4b5a4ded0ccaca0cE
    local.get 3
    i32.const 8
    i32.add
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hc21466c782013b58E
    local.get 3
    local.get 3
    i32.load8_u offset=12
    i32.store8 offset=20
    local.get 3
    local.get 3
    i32.load offset=8
    i32.store offset=16
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i32.load offset=8
        local.tee 5
        i32.const 2147483646
        i32.eq
        br_if 0 (;@2;)
        local.get 5
        local.get 3
        i32.const 16
        i32.add
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hb8691169d8c8491bE
        br 1 (;@1;)
      end
      i32.const 131206
      i32.const 4
      local.get 3
      i32.const 16
      i32.add
      call $_ZN17dharitri_sc_codec14impl_for_types10impl_slice96_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$$u5b$T$u5d$$GT$24dep_encode_or_handle_err17h7e088b5d6fc28c2bE
    end
    local.get 3
    local.get 2
    i64.load
    local.tee 6
    i64.const 56
    i64.shl
    local.get 6
    i64.const 65280
    i64.and
    i64.const 40
    i64.shl
    i64.or
    local.get 6
    i64.const 16711680
    i64.and
    i64.const 24
    i64.shl
    local.get 6
    i64.const 4278190080
    i64.and
    i64.const 8
    i64.shl
    i64.or
    i64.or
    local.get 6
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 6
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 6
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 6
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=24
    local.get 3
    i32.const 16
    i32.add
    local.get 3
    i32.const 24
    i32.add
    i32.const 8
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h8b3fd7992bdfe05fE
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 5
    local.get 2
    i32.load offset=12
    call $mBufferFromBigIntUnsigned
    drop
    local.get 5
    local.get 3
    i32.const 16
    i32.add
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hb8691169d8c8491bE
    local.get 0
    local.get 3
    i32.load offset=16
    local.get 3
    i32.load8_u offset=20
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h6d81772bddd0485bE
    local.get 1
    local.get 4
    call $_ZN11dharitri_sc7storage11storage_set11storage_set17h76291aab77439624E
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h8b3fd7992bdfe05fE (;58;) (type 9) (param i32 i32 i32)
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
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hd1271c19ec665ee7E
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
      call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h5541102de23e3bcdE
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
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E (;59;) (type 10) (param i32 i32 i32 i32)
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
  (func $_ZN13forwarder_raw22forwarder_raw_alt_init26ForwarderRawAlterativeInit15init_async_call17h9bc52fb89aa74f49E (;60;) (type 9) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hf2d8f75389ca6099E
    drop
    local.get 3
    local.get 0
    i32.store offset=56
    local.get 3
    i64.const -1
    i64.store offset=48
    local.get 3
    local.get 2
    i32.store offset=44
    local.get 3
    local.get 1
    i32.store offset=40
    local.get 3
    i32.const 12
    i32.add
    local.get 3
    i32.const 40
    i32.add
    call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall10async_call17h35de8e23e26c826aE
    local.get 3
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17h5a7348514b4dca1fE
    unreachable
  )
  (func $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hd1271c19ec665ee7E (;61;) (type 9) (param i32 i32 i32)
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
    call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6881f5108e0b79ecE
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
  (func $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$17callback_payments17h00c68c24dcd81b7bE (;62;) (type 3) (param i32)
    (local i32 i32)
    i32.const 131235
    i32.const 17
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hd4950e68ddd954e6E
    local.tee 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hfe8fdc068fbe996cE
    local.tee 2
    i32.const 131186
    i32.const 4
    call $mBufferAppendBytes
    drop
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $rust_begin_unwind (;63;) (type 8)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE (;64;) (type 8)
    i32.const 131252
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;65;) (type 8)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $getNumArguments
    i32.store offset=141280
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h2397d60ac803c27aE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hade26d9c75970c63E
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd16803e33ad7b1efE
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17he1ff4534356bd6c4E
    local.set 3
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h7e7235350f522bd1E
    local.get 1
    local.get 2
    local.get 3
    call $_ZN13forwarder_raw22forwarder_raw_alt_init26ForwarderRawAlterativeInit15init_async_call17h9bc52fb89aa74f49E
    unreachable
  )
  (func $callBack (;66;) (type 8)
    (local i32 i32 i32 i32 i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hf2d8f75389ca6099E
    drop
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hf2d8f75389ca6099E
    drop
    i32.const 0
    call $getNumArguments
    i32.store offset=141280
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h2397d60ac803c27aE
    local.get 0
    i32.const 0
    i32.store offset=56
    local.get 0
    i32.const 56
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17he1ff4534356bd6c4E
    local.set 1
    local.get 0
    i32.load offset=56
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h7e7235350f522bd1E
    i32.const -21
    local.set 2
    block ;; label = @1
      block ;; label = @2
        i32.const 0
        i32.load8_u offset=141288
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
      i32.store8 offset=141288
      i32.const -21
      call $managedGetMultiDCDTCallValue
    end
    block ;; label = @1
      block ;; label = @2
        local.get 2
        call $mBufferGetLength
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 3
        local.get 2
        call $mBufferGetLength
        local.set 4
        loop ;; label = @3
          local.get 3
          i32.const 16
          i32.add
          local.tee 5
          local.get 4
          i32.gt_u
          br_if 2 (;@1;)
          local.get 0
          i32.const 56
          i32.add
          i32.const 8
          i32.add
          i64.const 0
          i64.store
          local.get 0
          i64.const 0
          i64.store offset=56
          local.get 2
          local.get 3
          i32.const 16
          local.get 0
          i32.const 56
          i32.add
          call $mBufferGetByteSlice
          drop
          local.get 0
          i32.load offset=68
          local.set 3
          local.get 0
          i64.load offset=60 align=4
          local.set 6
          local.get 0
          i32.load offset=56
          local.set 7
          local.get 0
          i32.const 40
          i32.add
          call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$17callback_payments17h00c68c24dcd81b7bE
          local.get 0
          i32.load offset=44
          local.set 8
          local.get 0
          i32.load offset=40
          local.set 9
          local.get 0
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
          i32.store offset=68
          local.get 0
          local.get 7
          i32.const 24
          i32.shl
          local.get 7
          i32.const 65280
          i32.and
          i32.const 8
          i32.shl
          i32.or
          local.get 7
          i32.const 8
          i32.shr_u
          i32.const 65280
          i32.and
          local.get 7
          i32.const 24
          i32.shr_u
          i32.or
          i32.or
          i32.store offset=64
          local.get 0
          local.get 6
          i64.const 56
          i64.shl
          local.get 6
          i64.const 65280
          i64.and
          i64.const 40
          i64.shl
          i64.or
          local.get 6
          i64.const 16711680
          i64.and
          i64.const 24
          i64.shl
          local.get 6
          i64.const 4278190080
          i64.and
          i64.const 8
          i64.shl
          i64.or
          i64.or
          local.get 6
          i64.const 8
          i64.shr_u
          i64.const 4278190080
          i64.and
          local.get 6
          i64.const 24
          i64.shr_u
          i64.const 16711680
          i64.and
          i64.or
          local.get 6
          i64.const 40
          i64.shr_u
          i64.const 65280
          i64.and
          local.get 6
          i64.const 56
          i64.shr_u
          i64.or
          i64.or
          i64.or
          i64.store offset=56
          local.get 9
          local.get 8
          local.get 0
          i32.const 56
          i32.add
          call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$4push17hd12189d5f245314eE
          local.get 5
          local.set 3
          br 0 (;@3;)
        end
      end
      i32.const -11
      local.set 3
      block ;; label = @2
        block ;; label = @3
          i32.const 0
          i32.load8_u offset=141284
          local.tee 7
          i32.eqz
          br_if 0 (;@3;)
          i32.const -11
          i32.const 2147483647
          local.get 7
          select
          local.set 3
          br 1 (;@2;)
        end
        i32.const 0
        i32.const 1
        i32.store8 offset=141284
        i32.const -11
        call $bigIntGetCallValue
      end
      local.get 3
      call $bigIntSign
      i32.const 0
      i32.le_s
      br_if 0 (;@1;)
      local.get 0
      i32.const 32
      i32.add
      call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$17callback_payments17h00c68c24dcd81b7bE
      local.get 0
      i32.load offset=36
      local.set 5
      local.get 0
      i32.load offset=32
      local.set 8
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
      local.tee 7
      i64.const 0
      call $bigIntSetInt64
      local.get 7
      local.get 7
      local.get 3
      call $bigIntAdd
      local.get 0
      local.get 7
      i32.store offset=68
      local.get 0
      i64.const 0
      i64.store offset=56
      local.get 0
      i32.const 2147483646
      i32.store offset=64
      local.get 8
      local.get 5
      local.get 0
      i32.const 56
      i32.add
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$4push17hd12189d5f245314eE
    end
    local.get 0
    local.get 1
    i32.store offset=52
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hf2d8f75389ca6099E
    local.tee 8
    i32.const 131210
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hd4950e68ddd954e6E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hdd345a6ee75a7a92E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hf2d8f75389ca6099E
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hfe8fdc068fbe996cE
    local.set 7
    local.get 0
    local.get 1
    call $mBufferGetLength
    i32.store offset=64
    local.get 0
    i32.const 0
    i32.store offset=60
    local.get 0
    local.get 0
    i32.const 52
    i32.add
    i32.store offset=56
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 24
        i32.add
        local.get 0
        i32.const 56
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdc5caec6541f6928E
        local.get 0
        i32.load offset=24
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 0
        i32.load offset=28
        local.tee 5
        call $mBufferGetLength
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
        i32.store offset=72
        local.get 7
        local.get 0
        i32.const 72
        i32.add
        i32.const 4
        call $mBufferAppendBytes
        drop
        local.get 7
        local.get 5
        call $mBufferAppend
        drop
        br 0 (;@2;)
      end
    end
    local.get 8
    local.get 7
    call $managedWriteLog
    i32.const 131222
    i32.const 13
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hd4950e68ddd954e6E
    local.tee 7
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hfe8fdc068fbe996cE
    local.tee 3
    i32.const 131186
    i32.const 4
    call $mBufferAppendBytes
    drop
    local.get 3
    call $_ZN11dharitri_sc7storage11storage_get11storage_get17hc12b53a86b85b4d0E
    local.set 5
    local.get 7
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hfe8fdc068fbe996cE
    local.tee 7
    i32.const 131157
    i32.const 5
    call $mBufferAppendBytes
    drop
    local.get 7
    local.get 5
    i32.const 1
    i32.add
    local.tee 5
    call $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h4b5a4ded0ccaca0cE
    local.get 0
    i32.const 16
    i32.add
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hc21466c782013b58E
    local.get 0
    local.get 0
    i32.load8_u offset=20
    i32.store8 offset=76
    local.get 0
    local.get 0
    i32.load offset=16
    i32.store offset=72
    local.get 0
    local.get 0
    i32.load offset=52
    call $mBufferGetLength
    i32.store offset=64
    local.get 0
    i32.const 0
    i32.store offset=60
    local.get 0
    local.get 0
    i32.const 52
    i32.add
    i32.store offset=56
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.get 0
        i32.const 56
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdc5caec6541f6928E
        local.get 0
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=12
        local.get 0
        i32.const 72
        i32.add
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hb8691169d8c8491bE
        br 0 (;@2;)
      end
    end
    local.get 7
    local.get 0
    i32.load offset=72
    local.get 0
    i32.load8_u offset=76
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h6d81772bddd0485bE
    local.get 3
    local.get 5
    call $_ZN11dharitri_sc7storage11storage_set11storage_set17h76291aab77439624E
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $memcpy (;67;) (type 2) (param i32 i32 i32) (result i32)
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
  (func $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E (;68;) (type 8)
    call $rust_begin_unwind
    unreachable
  )
  (table (;0;) 1 1 funcref)
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 141289)
  (global (;2;) i32 i32.const 141296)
  (export "memory" (memory 0))
  (export "init" (func $init))
  (export "callBack" (func $callBack))
  (export "upgrade" (func $init))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data $.rodata (;0;) (i32.const 131072) "argument decode error (): too few argumentstoo many argumentsCB_CLOSUREinput too long.itemtostorage decode error: .lenbad array lengthREWAcallback_rawcallback_argscallback_paymentspanic occurred")
  (data $.data (;1;) (i32.const 131268) "\9c\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.76.0-nightly (d86d65bbc 2023-12-10)")
  )
)