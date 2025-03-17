(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32 i32)))
  (type (;5;) (func (param i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32 i64)))
  (type (;8;) (func))
  (type (;9;) (func (param i32 i32 i32 i32)))
  (type (;10;) (func (param i32 i32 i32)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;0;) (type 0)))
  (import "env" "managedSignalError" (func $managedSignalError (;1;) (type 1)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;2;) (type 2)))
  (import "env" "getNumArguments" (func $getNumArguments (;3;) (type 3)))
  (import "env" "signalError" (func $signalError (;4;) (type 4)))
  (import "env" "managedGetOriginalTxHash" (func $managedGetOriginalTxHash (;5;) (type 1)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;6;) (type 5)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;7;) (type 6)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;8;) (type 5)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;9;) (type 7)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;10;) (type 0)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;11;) (type 5)))
  (import "env" "mBufferNew" (func $mBufferNew (;12;) (type 3)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;13;) (type 8)))
  (import "env" "managedAsyncCall" (func $managedAsyncCall (;14;) (type 9)))
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17hde7ec7e7cfdd495cE (;15;) (type 9) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17hcba505d2f5fa12cbE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17hcba505d2f5fa12cbE (;16;) (type 9) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $managedAsyncCall
    unreachable
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hcbebd19d8e0e15deE (;17;) (type 8)
    (local i32)
    i32.const 131072
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hb244b7eaf1c402f4E
    local.tee 0
    i32.const 131174
    i32.const 7
    call $mBufferAppendBytes
    drop
    local.get 0
    i32.const 131095
    i32.const 3
    call $mBufferAppendBytes
    drop
    local.get 0
    i32.const 131158
    i32.const 16
    call $mBufferAppendBytes
    drop
    local.get 0
    call $managedSignalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hb244b7eaf1c402f4E (;18;) (type 5) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb4b2714e4ccac7adE (;19;) (type 3) (result i32)
    i32.const 1
    call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h5f2117bf68a0e168E
  )
  (func $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h5f2117bf68a0e168E (;20;) (type 2) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17he88255d700bc98a3E (;21;) (type 3) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 0
      call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h5f2117bf68a0e168E
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hcbebd19d8e0e15deE
      unreachable
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hf223f385370b5a2fE (;22;) (type 1) (param i32)
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
  (func $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17h332c0b007c967c27E (;23;) (type 1) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
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
      i32.const 131123
      i32.const 10
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hb244b7eaf1c402f4E
      local.tee 4
      local.get 3
      call $mBufferAppend
      drop
      block ;; label = @2
        block ;; label = @3
          i32.const 0
          i32.load8_u offset=141232
          local.tee 3
          br_if 0 (;@3;)
          i32.const 0
          i32.const 1
          i32.store8 offset=141232
          i32.const 0
          i32.const 0
          i32.store offset=141228
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha50c4e093cb1143bE
          local.set 5
          br 1 (;@2;)
        end
        i32.const 131208
        i32.const 0
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hb244b7eaf1c402f4E
        local.set 5
      end
      local.get 1
      local.get 5
      i32.store offset=16
      local.get 1
      local.get 3
      i32.const 1
      i32.xor
      i32.store8 offset=20
      local.get 0
      i32.const 20
      i32.add
      i32.load
      local.tee 3
      local.get 1
      i32.const 16
      i32.add
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h30e85ac7e7786306E
      local.get 1
      i32.const 16
      i32.add
      local.get 2
      local.get 3
      call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h0a172f13c7bc4a14E
      local.get 0
      i32.const 24
      i32.add
      i32.load
      local.tee 6
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17hb9df7bab36db8801E
      i32.const 2
      i32.shr_u
      local.get 1
      i32.const 16
      i32.add
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h30e85ac7e7786306E
      local.get 6
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17hb9df7bab36db8801E
      local.set 7
      i32.const 0
      local.set 2
      block ;; label = @2
        loop ;; label = @3
          local.get 2
          i32.const 4
          i32.add
          local.tee 5
          local.get 7
          i32.gt_u
          br_if 1 (;@2;)
          local.get 1
          i32.const 0
          i32.store offset=24
          local.get 6
          local.get 2
          local.get 1
          i32.const 24
          i32.add
          i32.const 4
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h673c4b2699501adaE
          local.get 1
          local.get 1
          i32.load offset=24
          local.tee 2
          i32.const 24
          i32.shl
          local.get 2
          i32.const 65280
          i32.and
          i32.const 8
          i32.shl
          i32.or
          local.get 2
          i32.const 8
          i32.shr_u
          i32.const 65280
          i32.and
          local.get 2
          i32.const 24
          i32.shr_u
          i32.or
          i32.or
          local.tee 3
          call $mBufferGetLength
          local.tee 2
          i32.const 24
          i32.shl
          local.get 2
          i32.const 65280
          i32.and
          i32.const 8
          i32.shl
          i32.or
          local.get 2
          i32.const 8
          i32.shr_u
          i32.const 65280
          i32.and
          local.get 2
          i32.const 24
          i32.shr_u
          i32.or
          i32.or
          i32.store offset=24
          local.get 1
          i32.const 16
          i32.add
          local.get 1
          i32.const 24
          i32.add
          i32.const 4
          call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h0a172f13c7bc4a14E
          block ;; label = @4
            block ;; label = @5
              local.get 1
              i32.load8_u offset=20
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              call $mBufferGetLength
              local.set 2
              i32.const 10000
              i32.const 0
              i32.load offset=141228
              local.tee 8
              i32.sub
              local.get 2
              i32.lt_u
              br_if 1 (;@4;)
              local.get 1
              i32.const 8
              i32.add
              local.get 8
              local.get 8
              local.get 2
              i32.add
              local.tee 2
              call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h597a8ca12042175fE
              local.get 3
              i32.const 0
              local.get 1
              i32.load offset=12
              local.get 1
              i32.load offset=8
              call $mBufferGetByteSlice
              drop
              i32.const 0
              local.get 2
              i32.store offset=141228
              local.get 5
              local.set 2
              br 2 (;@3;)
            end
            local.get 1
            i32.load offset=16
            local.get 3
            call $mBufferAppend
            drop
            local.get 5
            local.set 2
            br 1 (;@3;)
          end
          local.get 1
          i32.const 16
          i32.add
          call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h099671976a8250baE
          local.get 1
          i32.load offset=16
          local.get 3
          call $mBufferAppend
          drop
          local.get 5
          local.set 2
          br 0 (;@3;)
        end
      end
      local.get 1
      i32.load offset=16
      local.set 2
      local.get 1
      local.get 1
      i32.load8_u offset=20
      i32.store8 offset=28
      local.get 1
      local.get 2
      i32.store offset=24
      local.get 1
      i32.const 24
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h099671976a8250baE
      local.get 1
      i32.load offset=24
      local.set 2
      block ;; label = @2
        local.get 1
        i32.load8_u offset=28
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        i32.store offset=141228
        i32.const 0
        i32.const 0
        i32.store8 offset=141232
      end
      local.get 4
      local.get 2
      call $mBufferStorageStore
      drop
    end
    local.get 0
    call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$29call_and_exit_ignore_callback17h442e3e5991ba67b5E
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E (;24;) (type 3) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=131224
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=131224
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha50c4e093cb1143bE (;25;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    i32.const 131208
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h30e85ac7e7786306E (;26;) (type 4) (param i32 i32)
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
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h0a172f13c7bc4a14E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h0a172f13c7bc4a14E (;27;) (type 10) (param i32 i32 i32)
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
          i32.load offset=141228
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
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h597a8ca12042175fE
          local.get 3
          i32.load offset=8
          local.get 3
          i32.load offset=12
          local.get 1
          local.get 2
          call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
          i32.const 0
          local.get 0
          i32.store offset=141228
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
      call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h099671976a8250baE
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17hb9df7bab36db8801E (;28;) (type 2) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h673c4b2699501adaE (;29;) (type 9) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    drop
  )
  (func $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h597a8ca12042175fE (;30;) (type 10) (param i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        local.get 2
        local.get 1
        i32.lt_u
        br_if 0 (;@2;)
        local.get 2
        i32.const 10000
        i32.gt_u
        br_if 1 (;@1;)
        local.get 0
        local.get 2
        local.get 1
        i32.sub
        i32.store offset=4
        local.get 0
        local.get 1
        i32.const 131228
        i32.add
        i32.store
        return
      end
      local.get 1
      local.get 2
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE
      unreachable
    end
    local.get 2
    call $_ZN4core5slice5index24slice_end_index_len_fail17h071ab3c1906221bcE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h099671976a8250baE (;31;) (type 1) (param i32)
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
        i32.load offset=141228
        local.tee 1
        i32.const 10001
        i32.ge_u
        br_if 1 (;@1;)
        local.get 0
        i32.load
        i32.const 131228
        local.get 1
        call $mBufferAppendBytes
        drop
        i32.const 0
        i32.const 0
        i32.store offset=141228
        i32.const 0
        i32.const 0
        i32.store8 offset=141232
      end
      return
    end
    local.get 1
    call $_ZN4core5slice5index24slice_end_index_len_fail17h071ab3c1906221bcE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$29call_and_exit_ignore_callback17h442e3e5991ba67b5E (;32;) (type 1) (param i32)
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17hde7ec7e7cfdd495cE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall10async_call17hf2ffb86f4e9aba00E (;33;) (type 4) (param i32 i32)
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
  (func $_ZN11dharitri_sc5types11interaction24contract_call_no_payment48ContractCallNoPayment$LT$SA$C$OriginalResult$GT$3new17hc4da09548a9383a1E (;34;) (type 9) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hb244b7eaf1c402f4E
    local.set 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha50c4e093cb1143bE
    local.set 2
    local.get 0
    i64.const -1
    i64.store offset=8
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
    local.get 0
    local.get 1
    i32.store offset=16
  )
  (func $_ZN4core5slice5index24slice_end_index_len_fail17h071ab3c1906221bcE (;35;) (type 1) (param i32)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (func $_ZN134_$LT$builtin_func_features..builtin_func_proxy..Proxy$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$15extract_address17h8856cb396ad0a361E (;36;) (type 2) (param i32) (result i32)
    (local i32)
    local.get 0
    i32.load
    local.set 1
    local.get 0
    i32.const 2147483646
    i32.store
    block ;; label = @1
      local.get 1
      i32.const 2147483646
      i32.ne
      br_if 0 (;@1;)
      i32.const 131133
      i32.const 25
      call $signalError
      unreachable
    end
    local.get 1
  )
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E (;37;) (type 9) (param i32 i32 i32 i32)
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
  (func $_ZN21builtin_func_features18builtin_func_proxy10ProxyTrait13set_user_name17h3854d51f315146deE (;38;) (type 10) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    call $_ZN134_$LT$builtin_func_features..builtin_func_proxy..Proxy$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$15extract_address17h8856cb396ad0a361E
    i32.const 131181
    i32.const 11
    call $_ZN11dharitri_sc5types11interaction24contract_call_no_payment48ContractCallNoPayment$LT$SA$C$OriginalResult$GT$3new17hc4da09548a9383a1E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha50c4e093cb1143bE
    drop
    call $mBufferNew
    local.tee 1
    local.get 2
    call $mBufferAppend
    drop
    local.get 3
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
    i32.store offset=28
    local.get 3
    i32.load offset=4
    local.get 3
    i32.const 28
    i32.add
    i32.const 4
    call $mBufferAppendBytes
    drop
    local.get 0
    i32.const 16
    i32.add
    local.get 3
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 8
    i32.add
    local.get 3
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 0
    local.get 3
    i64.load
    i64.store
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN21builtin_func_features18builtin_func_proxy10ProxyTrait16delete_user_name17h221d5d9afc0829f1E (;39;) (type 4) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN134_$LT$builtin_func_features..builtin_func_proxy..Proxy$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$15extract_address17h8856cb396ad0a361E
    i32.const 131192
    i32.const 14
    call $_ZN11dharitri_sc5types11interaction24contract_call_no_payment48ContractCallNoPayment$LT$SA$C$OriginalResult$GT$3new17hc4da09548a9383a1E
  )
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE (;40;) (type 4) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (func $rust_begin_unwind (;41;) (type 8)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE (;42;) (type 8)
    i32.const 131208
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;43;) (type 8)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hf223f385370b5a2fE
  )
  (func $call_set_user_name (;44;) (type 8)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hf223f385370b5a2fE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17he88255d700bc98a3E
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb4b2714e4ccac7adE
    local.set 2
    local.get 0
    local.get 1
    i32.store offset=60
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    i32.const 60
    i32.add
    local.get 2
    call $_ZN21builtin_func_features18builtin_func_proxy10ProxyTrait13set_user_name17h3854d51f315146deE
    local.get 0
    i32.const 4
    i32.add
    local.get 0
    i32.const 32
    i32.add
    call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall10async_call17hf2ffb86f4e9aba00E
    local.get 0
    i32.const 4
    i32.add
    call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17h332c0b007c967c27E
    unreachable
  )
  (func $call_delete_user_name (;45;) (type 8)
    (local i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hf223f385370b5a2fE
    local.get 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17he88255d700bc98a3E
    i32.store offset=60
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    i32.const 60
    i32.add
    call $_ZN21builtin_func_features18builtin_func_proxy10ProxyTrait16delete_user_name17h221d5d9afc0829f1E
    local.get 0
    i32.const 4
    i32.add
    local.get 0
    i32.const 32
    i32.add
    call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall10async_call17hf2ffb86f4e9aba00E
    local.get 0
    i32.const 4
    i32.add
    call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17h332c0b007c967c27E
    unreachable
  )
  (func $callBack (;46;) (type 8))
  (func $memcpy (;47;) (type 0) (param i32 i32 i32) (result i32)
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
  (func $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E (;48;) (type 8)
    call $rust_begin_unwind
    unreachable
  )
  (table (;0;) 1 1 funcref)
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 141236)
  (global (;2;) i32 i32.const 141248)
  (export "memory" (memory 0))
  (export "init" (func $init))
  (export "call_set_user_name" (func $call_set_user_name))
  (export "call_delete_user_name" (func $call_delete_user_name))
  (export "callBack" (func $callBack))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data $.rodata (;0;) (i32.const 131072) "argument decode error (): wrong number of argumentsCB_CLOSURErecipient address not setbad array lengthaddressSetUserNameDeleteUserName\00\00panic occurred")
  (data $.data (;1;) (i32.const 131224) "\9c\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.76.0-nightly (d86d65bbc 2023-12-10)")
  )
)