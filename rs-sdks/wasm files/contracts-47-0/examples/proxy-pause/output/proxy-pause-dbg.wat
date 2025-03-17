(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (result i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i32 i32 i32) (result i32)))
  (type (;5;) (func (param i32) (result i32)))
  (type (;6;) (func (param i32 i64)))
  (type (;7;) (func (result i64)))
  (type (;8;) (func (param i64 i32 i32 i32 i32 i32) (result i32)))
  (type (;9;) (func))
  (type (;10;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;11;) (func (param i32 i32 i32 i32 i32)))
  (type (;12;) (func (param i32 i32 i32 i32)))
  (type (;13;) (func (param i32 i32 i32)))
  (type (;14;) (func (param i32 i32) (result i64)))
  (import "env" "signalError" (func $signalError (;0;) (type 0)))
  (import "env" "mBufferNew" (func $mBufferNew (;1;) (type 1)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;2;) (type 2)))
  (import "env" "managedCaller" (func $managedCaller (;3;) (type 3)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;4;) (type 4)))
  (import "env" "managedSignalError" (func $managedSignalError (;5;) (type 3)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;6;) (type 2)))
  (import "env" "getNumArguments" (func $getNumArguments (;7;) (type 1)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;8;) (type 5)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;9;) (type 6)))
  (import "env" "getGasLeft" (func $getGasLeft (;10;) (type 7)))
  (import "env" "managedExecuteOnDestContext" (func $managedExecuteOnDestContext (;11;) (type 8)))
  (import "env" "cleanReturnData" (func $cleanReturnData (;12;) (type 9)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;13;) (type 5)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;14;) (type 10)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;15;) (type 4)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;16;) (type 2)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;17;) (type 2)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;18;) (type 9)))
  (func $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17hd7ec8ec1646e0e65E (;19;) (type 9)
    i32.const 131227
    i32.const 22
    call $signalError
    unreachable
  )
  (func $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hdb694e595815b04dE (;20;) (type 11) (param i32 i32 i32 i32 i32)
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
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE (;21;) (type 0) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hea1f215c8ca59381E (;22;) (type 5) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN117_$LT$proxy_pause..pause_proxy..Proxy$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$15extract_address17h9bf46296aea0a422E (;23;) (type 5) (param i32) (result i32)
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
      i32.const 131086
      i32.const 25
      call $signalError
      unreachable
    end
    local.get 1
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h8e479a2b2c5ffbcbE (;24;) (type 9)
    call $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17hd7ec8ec1646e0e65E
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17hceebfebc605c4f37E (;25;) (type 1) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    call $managedCaller
    local.get 0
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E (;26;) (type 1) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=131356
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=131356
    local.get 0
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hc73f6d335fffb357E (;27;) (type 0) (param i32 i32)
    (local i32)
    i32.const 131111
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hbb070ba154e354caE
    local.tee 2
    i32.const 131314
    i32.const 8
    call $mBufferAppendBytes
    drop
    local.get 2
    i32.const 131134
    i32.const 3
    call $mBufferAppendBytes
    drop
    local.get 2
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 2
    call $managedSignalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hbb070ba154e354caE (;28;) (type 2) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h94529b7cdef6bb6eE (;29;) (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h14d00320f6cfcd27E
    local.set 2
    local.get 0
    i32.load
    local.set 3
    block ;; label = @1
      loop ;; label = @2
        local.get 3
        i32.const 0
        i32.load offset=141368
        i32.ge_s
        br_if 1 (;@1;)
        local.get 0
        local.get 3
        i32.const 1
        i32.add
        local.tee 4
        i32.store
        local.get 3
        call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
        local.tee 5
        call $mBufferGetArgument
        drop
        local.get 1
        local.get 5
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
        i32.store offset=12
        local.get 2
        local.get 1
        i32.const 12
        i32.add
        i32.const 4
        call $mBufferAppendBytes
        drop
        local.get 4
        local.set 3
        br 0 (;@2;)
      end
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h14d00320f6cfcd27E (;30;) (type 1) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    i32.const 131340
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17he6ec9e26c4fd5fe1E (;31;) (type 3) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=141368
      local.get 0
      i32.gt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131154
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h0592ecc09fc70f28E (;32;) (type 9)
    block ;; label = @1
      call $getNumArguments
      br_if 0 (;@1;)
      return
    end
    i32.const 131172
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h98cd594843f686f4E (;33;) (type 9)
    block ;; label = @1
      i32.const 0
      i32.load offset=141368
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131137
    i32.const 17
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io6finish12finish_multi17h6101f07a79413e9cE (;34;) (type 3) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 16
    i32.add
    local.get 0
    call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$4iter17hdb13187d9ca28679E
    local.get 1
    local.get 1
    i64.load offset=16
    i64.store offset=24 align=4
    block ;; label = @1
      loop ;; label = @2
        local.get 1
        i32.const 8
        i32.add
        local.get 1
        i32.const 24
        i32.add
        call $_ZN126_$LT$dharitri_sc..storage..mappers..queue_mapper..Iter$LT$SA$C$A$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd484a173fc365ac2E
        local.get 1
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.load offset=12
        call $mBufferFinish
        drop
        br 0 (;@2;)
      end
    end
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$4iter17hdb13187d9ca28679E (;35;) (type 0) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.load offset=4
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17he7c1126a46fae5f5E
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
  (func $_ZN126_$LT$dharitri_sc..storage..mappers..queue_mapper..Iter$LT$SA$C$A$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd484a173fc365ac2E (;36;) (type 0) (param i32 i32)
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
      call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17hde0505bd01e660bcE
      local.get 1
      local.get 2
      i32.load offset=12
      i32.store offset=4
      i32.const 1
      local.set 1
      local.get 4
      i32.load
      local.get 3
      call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17h75b1296b6e72a47dE
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
  (func $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall23execute_on_dest_context17h913165cc38c9e65dE (;37;) (type 3) (param i32)
    (local i32 i32 i32 i32 i64)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    i64.const 0
    call $bigIntSetInt64
    local.get 0
    i32.load offset=16
    local.set 2
    local.get 0
    i32.load offset=4
    local.set 3
    local.get 0
    i32.load
    local.set 4
    block ;; label = @1
      local.get 0
      i64.load offset=8
      local.tee 5
      i64.const -1
      i64.ne
      br_if 0 (;@1;)
      call $getGasLeft
      local.set 5
    end
    local.get 5
    local.get 2
    local.get 1
    local.get 4
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    call $managedExecuteOnDestContext
    drop
    call $cleanReturnData
    local.get 0
    call $mBufferGetLength
    drop
  )
  (func $_ZN11dharitri_sc5types11interaction24contract_call_no_payment48ContractCallNoPayment$LT$SA$C$OriginalResult$GT$3new17h0b62bef70916239fE (;38;) (type 12) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hbb070ba154e354caE
    local.set 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h14d00320f6cfcd27E
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h779e8707e8eccb7bE (;39;) (type 10) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h9a1b401c931dbc68E (;40;) (type 3) (param i32)
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
      i32.load offset=141360
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
      i32.store offset=141360
      i32.const 0
      i32.const 0
      i32.store8 offset=141364
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h95dd1a03576b7dfcE (;41;) (type 13) (param i32 i32 i32)
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
    i32.const 131360
    i32.add
    i32.store
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17hed8dc8428ca9fe04E (;42;) (type 5) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_set11storage_set17hdc84243b9a35eafcE (;43;) (type 3) (param i32)
    local.get 0
    i32.const 131340
    i32.const 0
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h57370bc5bd192c91E
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h57370bc5bd192c91E (;44;) (type 13) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hbb070ba154e354caE
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper23SetMapper$LT$SA$C$T$GT$10remove_all17h0038e1d2ee2c39edE (;45;) (type 13) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 2
    call $mBufferGetLength
    local.set 4
    local.get 3
    i32.const 0
    i32.store offset=44
    local.get 3
    local.get 4
    i32.const 2
    i32.shr_u
    i32.store offset=40
    local.get 3
    local.get 2
    i32.store offset=36
    block ;; label = @1
      loop ;; label = @2
        local.get 3
        i32.const 24
        i32.add
        local.get 3
        i32.const 36
        i32.add
        call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h51c30e437f75a511E
        local.get 3
        i32.load offset=24
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 3
        i32.load offset=28
        local.tee 5
        call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$11get_node_id17h5fbd626001975dbfE
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.const 16
        i32.add
        local.get 1
        local.get 2
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17hde0505bd01e660bcE
        local.get 3
        i32.load offset=20
        local.set 4
        local.get 3
        i32.load offset=16
        local.set 6
        local.get 3
        i32.const 48
        i32.add
        local.get 1
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17he7c1126a46fae5f5E
        block ;; label = @3
          block ;; label = @4
            local.get 6
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            i32.const 8
            i32.add
            local.get 1
            local.get 6
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17hde0505bd01e660bcE
            local.get 1
            local.get 6
            local.get 3
            i32.load offset=8
            local.get 4
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h7cc526e0ac1fb028E
            br 1 (;@3;)
          end
          local.get 3
          local.get 4
          i32.store offset=52
        end
        block ;; label = @3
          block ;; label = @4
            local.get 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 1
            local.get 4
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17hde0505bd01e660bcE
            local.get 1
            local.get 4
            local.get 6
            local.get 3
            i32.load offset=4
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h7cc526e0ac1fb028E
            br 1 (;@3;)
          end
          local.get 3
          local.get 6
          i32.store offset=56
        end
        local.get 1
        i32.const 131205
        i32.const 11
        local.get 2
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17ha6d5dde5c574b163E
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17hdc84243b9a35eafcE
        local.get 1
        local.get 2
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17h75b1296b6e72a47dE
        drop
        local.get 1
        i32.const 131216
        i32.const 6
        local.get 2
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17ha6d5dde5c574b163E
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17hdc84243b9a35eafcE
        local.get 3
        local.get 3
        i32.load offset=48
        i32.const -1
        i32.add
        i32.store offset=48
        local.get 1
        local.get 3
        i32.const 48
        i32.add
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17h2242a54a72b15e7bE
        local.get 0
        local.get 5
        call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17hd1a49196ccaceb7eE
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17hdc84243b9a35eafcE
        br 0 (;@2;)
      end
    end
    local.get 3
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h51c30e437f75a511E (;46;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 1
            i32.load offset=8
            local.tee 3
            local.get 1
            i32.load offset=4
            i32.lt_u
            br_if 0 (;@4;)
            i32.const 0
            local.set 4
            br 1 (;@3;)
          end
          local.get 2
          i32.const 0
          i32.store offset=12
          local.get 1
          i32.load
          local.get 3
          i32.const 2
          i32.shl
          local.get 2
          i32.const 12
          i32.add
          i32.const 4
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h779e8707e8eccb7bE
          br_if 1 (;@2;)
          local.get 2
          i32.load offset=12
          local.set 5
          i32.const 1
          local.set 4
          local.get 1
          local.get 3
          i32.const 1
          i32.add
          i32.store offset=8
          local.get 5
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
          call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hea1f215c8ca59381E
          call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hea1f215c8ca59381E
          local.tee 1
          call $mBufferGetLength
          i32.const 32
          i32.ne
          br_if 2 (;@1;)
        end
        local.get 0
        local.get 1
        i32.store offset=4
        local.get 0
        local.get 4
        i32.store
        local.get 2
        i32.const 16
        i32.add
        global.set $__stack_pointer
        return
      end
      i32.const 131137
      i32.const 17
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hc73f6d335fffb357E
      unreachable
    end
    i32.const 131298
    i32.const 16
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hc73f6d335fffb357E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$11get_node_id17h5fbd626001975dbfE (;47;) (type 2) (param i32 i32) (result i32)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17hd1a49196ccaceb7eE
    local.set 1
    local.get 2
    i64.const 0
    i64.store offset=8
    block ;; label = @1
      block ;; label = @2
        local.get 1
        call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17hed8dc8428ca9fe04E
        local.tee 1
        call $mBufferGetLength
        local.tee 0
        i32.const 9
        i32.ge_u
        br_if 0 (;@2;)
        local.get 2
        local.get 2
        i32.const 8
        i32.add
        i32.const 8
        local.get 0
        call $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hb3aeab13f403c448E
        local.get 1
        i32.const 0
        local.get 2
        i32.load
        local.tee 0
        local.get 2
        i32.load offset=4
        local.tee 3
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h779e8707e8eccb7bE
        drop
        local.get 0
        local.get 3
        call $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E
        local.tee 4
        i64.const 4294967296
        i64.ge_u
        br_if 1 (;@1;)
        local.get 2
        i32.const 16
        i32.add
        global.set $__stack_pointer
        local.get 4
        i32.wrap_i64
        return
      end
      i32.const 131072
      i32.const 14
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hae0897420f45b886E
      unreachable
    end
    i32.const 131072
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hae0897420f45b886E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17hde0505bd01e660bcE (;48;) (type 13) (param i32 i32 i32)
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
    i32.const 131205
    i32.const 11
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17ha6d5dde5c574b163E
    call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17hf0ae75730ab11077E
    local.get 3
    i32.const 12
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17ha40016bd1068e694E
    local.set 2
    local.get 3
    i32.const 12
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17ha40016bd1068e694E
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
        i32.store offset=141360
        i32.const 0
        i32.const 0
        i32.store8 offset=141364
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
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hae0897420f45b886E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17he7c1126a46fae5f5E (;49;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$14build_name_key17h74e423b85ef4d97eE
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
        call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17hf0ae75730ab11077E
        local.get 2
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17ha40016bd1068e694E
        local.set 1
        local.get 2
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17ha40016bd1068e694E
        local.set 3
        local.get 2
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17ha40016bd1068e694E
        local.set 4
        local.get 2
        i32.const 12
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17ha40016bd1068e694E
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
        i32.store offset=141360
        i32.const 0
        i32.const 0
        i32.store8 offset=141364
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
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hae0897420f45b886E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h7cc526e0ac1fb028E (;50;) (type 12) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 0
    i32.const 131205
    i32.const 11
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17ha6d5dde5c574b163E
    local.set 1
    local.get 4
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h2f0b94a0d00f0c13E
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
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17hfd4763d38b8f0419E
    local.get 3
    local.get 4
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17hfd4763d38b8f0419E
    local.get 1
    local.get 4
    i32.load offset=8
    local.get 4
    i32.load8_u offset=12
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hb34282192b07c4d0E
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17ha6d5dde5c574b163E (;51;) (type 10) (param i32 i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hea1f215c8ca59381E
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
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17h75b1296b6e72a47dE (;52;) (type 2) (param i32 i32) (result i32)
    block ;; label = @1
      local.get 0
      i32.const 131216
      i32.const 6
      local.get 1
      call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17ha6d5dde5c574b163E
      call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17hed8dc8428ca9fe04E
      local.tee 1
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      i32.const 131298
      i32.const 16
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hae0897420f45b886E
      unreachable
    end
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17h2242a54a72b15e7bE (;53;) (type 0) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$14build_name_key17h74e423b85ef4d97eE
    local.set 0
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h2f0b94a0d00f0c13E
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
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17hfd4763d38b8f0419E
        local.get 1
        i32.load offset=4
        local.get 2
        i32.const 8
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17hfd4763d38b8f0419E
        local.get 1
        i32.load offset=8
        local.get 2
        i32.const 8
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17hfd4763d38b8f0419E
        local.get 1
        i32.load offset=12
        local.get 2
        i32.const 8
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17hfd4763d38b8f0419E
        local.get 0
        local.get 2
        i32.load offset=8
        local.get 2
        i32.load8_u offset=12
        call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hb34282192b07c4d0E
        br 1 (;@1;)
      end
      local.get 0
      i32.const 131340
      i32.const 0
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h57370bc5bd192c91E
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17hd1a49196ccaceb7eE (;54;) (type 2) (param i32 i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hea1f215c8ca59381E
    local.tee 0
    i32.const 131197
    i32.const 8
    call $mBufferAppendBytes
    drop
    local.get 0
    local.get 1
    call $mBufferAppend
    drop
    local.get 0
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper23SetMapper$LT$SA$C$T$GT$6insert17h7e2bd6f171025afcE (;55;) (type 13) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block ;; label = @1
      local.get 0
      local.get 2
      call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$8contains17h23d82ad84be40a56E
      br_if 0 (;@1;)
      local.get 3
      i32.const 16
      i32.add
      local.get 1
      call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17he7c1126a46fae5f5E
      local.get 3
      local.get 3
      i32.load offset=28
      i32.const 1
      i32.add
      local.tee 4
      i32.store offset=28
      block ;; label = @2
        block ;; label = @3
          local.get 3
          i32.load offset=16
          local.tee 5
          br_if 0 (;@3;)
          local.get 3
          local.get 4
          i32.store offset=20
          i32.const 0
          local.set 6
          br 1 (;@2;)
        end
        local.get 3
        i32.const 8
        i32.add
        local.get 1
        local.get 3
        i32.load offset=24
        local.tee 6
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17hde0505bd01e660bcE
        local.get 1
        local.get 6
        local.get 3
        i32.load offset=8
        local.get 4
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h7cc526e0ac1fb028E
      end
      i32.const 0
      local.set 7
      local.get 1
      local.get 4
      local.get 6
      i32.const 0
      call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17h7cc526e0ac1fb028E
      local.get 3
      local.get 4
      i32.store offset=24
      local.get 1
      i32.const 131216
      i32.const 6
      local.get 4
      call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17ha6d5dde5c574b163E
      local.get 2
      call $mBufferStorageStore
      drop
      local.get 3
      local.get 5
      i32.const 1
      i32.add
      i32.store offset=16
      local.get 1
      local.get 3
      i32.const 16
      i32.add
      call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17h2242a54a72b15e7bE
      local.get 0
      local.get 2
      call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17hd1a49196ccaceb7eE
      local.set 2
      local.get 3
      local.get 4
      i64.extend_i32_u
      local.tee 8
      i64.const 56
      i64.shl
      local.get 8
      i64.const 65280
      i64.and
      i64.const 40
      i64.shl
      i64.or
      local.get 8
      i64.const 16711680
      i64.and
      i64.const 24
      i64.shl
      local.get 8
      i64.const 4278190080
      i64.and
      i64.const 8
      i64.shl
      i64.or
      i64.or
      i64.store offset=16
      block ;; label = @2
        block ;; label = @3
          local.get 4
          br_if 0 (;@3;)
          i32.const 131340
          local.set 4
          br 1 (;@2;)
        end
        i32.const 0
        local.set 1
        loop ;; label = @3
          block ;; label = @4
            block ;; label = @5
              local.get 1
              i32.const 8
              i32.eq
              br_if 0 (;@5;)
              local.get 3
              i32.const 16
              i32.add
              local.get 1
              i32.add
              local.tee 4
              i32.load8_u
              i32.eqz
              br_if 1 (;@4;)
              i32.const 8
              local.get 1
              i32.sub
              local.set 7
              br 3 (;@2;)
            end
            call $_ZN4core9panicking18panic_bounds_check17hdbf723dd9cf95e6aE
            unreachable
          end
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          br 0 (;@3;)
        end
      end
      local.get 2
      local.get 4
      local.get 7
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h57370bc5bd192c91E
    end
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$8contains17h23d82ad84be40a56E (;56;) (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$11get_node_id17h5fbd626001975dbfE
    i32.const 0
    i32.ne
  )
  (func $_ZN4core9panicking18panic_bounds_check17hdbf723dd9cf95e6aE (;57;) (type 9)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (func $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hb3aeab13f403c448E (;58;) (type 12) (param i32 i32 i32 i32)
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
    call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hdb694e595815b04dE
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
  (func $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E (;59;) (type 14) (param i32 i32) (result i64)
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
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hae0897420f45b886E (;60;) (type 0) (param i32 i32)
    (local i32)
    i32.const 131276
    i32.const 22
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hbb070ba154e354caE
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 2
    call $managedSignalError
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$14build_name_key17h74e423b85ef4d97eE (;61;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hea1f215c8ca59381E
    local.tee 0
    i32.const 131222
    i32.const 5
    call $mBufferAppendBytes
    drop
    local.get 0
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h2f0b94a0d00f0c13E (;62;) (type 3) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        i32.const 0
        i32.load8_u offset=141364
        local.tee 2
        br_if 0 (;@2;)
        i32.const 0
        i32.const 1
        i32.store8 offset=141364
        i32.const 0
        i32.const 0
        i32.store offset=141360
        local.get 1
        i32.const 8
        i32.add
        i32.const 0
        call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hbfec26e68dc6e0c3E
        local.get 1
        i32.load offset=8
        local.get 1
        i32.load offset=12
        i32.const 131340
        i32.const 0
        call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h14d00320f6cfcd27E
        local.set 3
        br 1 (;@1;)
      end
      i32.const 131340
      i32.const 0
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hbb070ba154e354caE
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17hfd4763d38b8f0419E (;63;) (type 0) (param i32 i32)
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
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.load8_u offset=4
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=141360
          local.tee 0
          i32.const -9997
          i32.add
          i32.const 4
          i32.lt_u
          br_if 1 (;@2;)
          local.get 2
          local.get 0
          local.get 0
          i32.const 4
          i32.add
          local.tee 1
          i32.const 131360
          i32.const 10000
          call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hdb694e595815b04dE
          local.get 2
          i32.load
          local.get 2
          i32.load offset=4
          local.get 2
          i32.const 12
          i32.add
          i32.const 4
          call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
          i32.const 0
          local.get 1
          i32.store offset=141360
          br 2 (;@1;)
        end
        local.get 1
        i32.load
        local.get 2
        i32.const 12
        i32.add
        i32.const 4
        call $mBufferAppendBytes
        drop
        br 1 (;@1;)
      end
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h9a1b401c931dbc68E
      local.get 1
      i32.load
      local.get 2
      i32.const 12
      i32.add
      i32.const 4
      call $mBufferAppendBytes
      drop
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hb34282192b07c4d0E (;64;) (type 13) (param i32 i32 i32)
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
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h9a1b401c931dbc68E
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
      i32.store offset=141360
      i32.const 0
      i32.const 0
      i32.store8 offset=141364
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
  (func $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17hf0ae75730ab11077E (;65;) (type 0) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17hed8dc8428ca9fe04E
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17ha40016bd1068e694E (;66;) (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 0
    i32.store offset=28
    local.get 0
    i32.load
    local.set 2
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 0
            i32.const 16
            i32.add
            i32.load8_u
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=8
            local.tee 3
            call $mBufferGetLength
            local.tee 4
            i32.const 10000
            i32.gt_u
            br_if 1 (;@3;)
            i32.const 0
            i32.load8_u offset=141364
            i32.const 255
            i32.and
            br_if 1 (;@3;)
            i32.const 0
            local.get 4
            i32.store offset=141360
            i32.const 0
            i32.const 1
            i32.store8 offset=141364
            local.get 1
            i32.const 16
            i32.add
            local.get 4
            call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hbfec26e68dc6e0c3E
            local.get 3
            i32.const 0
            local.get 1
            i32.load offset=16
            local.get 1
            i32.load offset=20
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h779e8707e8eccb7bE
            drop
            local.get 0
            i32.const 1
            i32.store8 offset=16
          end
          local.get 2
          i32.const 4
          i32.add
          local.tee 3
          i32.const 0
          i32.load offset=141360
          i32.gt_u
          br_if 2 (;@1;)
          local.get 1
          i32.const 8
          i32.add
          local.get 2
          local.get 3
          call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h95dd1a03576b7dfcE
          local.get 1
          i32.const 28
          i32.add
          i32.const 4
          local.get 1
          i32.load offset=8
          local.get 1
          i32.load offset=12
          call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
          br 1 (;@2;)
        end
        local.get 0
        i32.const 0
        i32.store8 offset=16
        local.get 3
        local.get 2
        local.get 1
        i32.const 28
        i32.add
        i32.const 4
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h779e8707e8eccb7bE
        br_if 1 (;@1;)
        local.get 2
        i32.const 4
        i32.add
        local.set 3
      end
      local.get 0
      local.get 3
      i32.store
      local.get 1
      i32.const 28
      i32.add
      i32.const 4
      call $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E
      local.set 5
      local.get 1
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 5
      i32.wrap_i64
      return
    end
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h9a5356e475a62201E
    unreachable
  )
  (func $_ZN11proxy_pause10PauseProxy13require_owner17h4b3cedfdd6f83b9eE (;67;) (type 9)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 8
    i32.add
    call $_ZN45_$LT$C$u20$as$u20$proxy_pause..PauseProxy$GT$6owners17h532264becf6fe584E
    block ;; label = @1
      local.get 0
      i32.load offset=8
      call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17hceebfebc605c4f37E
      call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$8contains17h23d82ad84be40a56E
      br_if 0 (;@1;)
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h8e479a2b2c5ffbcbE
      unreachable
    end
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN45_$LT$C$u20$as$u20$proxy_pause..PauseProxy$GT$6owners17h532264becf6fe584E (;68;) (type 3) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 8
    i32.add
    i32.const 131261
    i32.const 6
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hbb070ba154e354caE
    call $_ZN149_$LT$dharitri_sc..storage..mappers..set_mapper..SetMapper$LT$SA$C$T$GT$$u20$as$u20$dharitri_sc..storage..mappers..mapper..StorageMapper$LT$SA$GT$$GT$3new17hd03762155cd7f501E
    local.get 1
    i32.load offset=12
    local.set 2
    local.get 0
    local.get 1
    i32.load offset=8
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN131_$LT$dharitri_sc..storage..mappers..set_mapper..SetMapper$LT$SA$C$T$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h9161ae434c527dd3E (;69;) (type 13) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 2
    call $mBufferGetLength
    local.set 4
    local.get 3
    i32.const 0
    i32.store offset=28
    local.get 3
    local.get 4
    i32.const 2
    i32.shr_u
    i32.store offset=24
    local.get 3
    local.get 2
    i32.store offset=20
    loop ;; label = @1
      local.get 3
      i32.const 8
      i32.add
      local.get 3
      i32.const 20
      i32.add
      call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h51c30e437f75a511E
      block ;; label = @2
        local.get 3
        i32.load offset=8
        br_if 0 (;@2;)
        local.get 3
        i32.const 32
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 0
      local.get 1
      local.get 3
      i32.load offset=12
      call $_ZN11dharitri_sc7storage7mappers10set_mapper23SetMapper$LT$SA$C$T$GT$6insert17h7e2bd6f171025afcE
      br 0 (;@1;)
    end
  )
  (func $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hbfec26e68dc6e0c3E (;70;) (type 0) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    i32.const 131360
    i32.const 10000
    local.get 1
    call $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hb3aeab13f403c448E
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
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E (;71;) (type 12) (param i32 i32 i32 i32)
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
  (func $_ZN149_$LT$dharitri_sc..storage..mappers..set_mapper..SetMapper$LT$SA$C$T$GT$$u20$as$u20$dharitri_sc..storage..mappers..mapper..StorageMapper$LT$SA$GT$$GT$3new17hd03762155cd7f501E (;72;) (type 0) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hea1f215c8ca59381E
    local.set 2
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h9a5356e475a62201E (;73;) (type 9)
    i32.const 131322
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hae0897420f45b886E
    unreachable
  )
  (func $_ZN45_$LT$C$u20$as$u20$proxy_pause..PauseProxy$GT$9contracts17h15ed44149ee502c0E (;74;) (type 3) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 8
    i32.add
    i32.const 131267
    i32.const 9
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hbb070ba154e354caE
    call $_ZN149_$LT$dharitri_sc..storage..mappers..set_mapper..SetMapper$LT$SA$C$T$GT$$u20$as$u20$dharitri_sc..storage..mappers..mapper..StorageMapper$LT$SA$GT$$GT$3new17hd03762155cd7f501E
    local.get 1
    i32.load offset=12
    local.set 2
    local.get 0
    local.get 1
    i32.load offset=8
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $rust_begin_unwind (;75;) (type 9)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE (;76;) (type 9)
    i32.const 131340
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;77;) (type 9)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h0592ecc09fc70f28E
    local.get 0
    i32.const 8
    i32.add
    call $_ZN45_$LT$C$u20$as$u20$proxy_pause..PauseProxy$GT$6owners17h532264becf6fe584E
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17hceebfebc605c4f37E
    call $_ZN11dharitri_sc7storage7mappers10set_mapper23SetMapper$LT$SA$C$T$GT$6insert17h7e2bd6f171025afcE
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $addContracts (;78;) (type 9)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $getNumArguments
    i32.store offset=141368
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h98cd594843f686f4E
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h94529b7cdef6bb6eE
    local.set 1
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17he6ec9e26c4fd5fe1E
    call $_ZN11proxy_pause10PauseProxy13require_owner17h4b3cedfdd6f83b9eE
    local.get 0
    call $_ZN45_$LT$C$u20$as$u20$proxy_pause..PauseProxy$GT$9contracts17h15ed44149ee502c0E
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 1
    call $_ZN131_$LT$dharitri_sc..storage..mappers..set_mapper..SetMapper$LT$SA$C$T$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h9161ae434c527dd3E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $removeContracts (;79;) (type 9)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $getNumArguments
    i32.store offset=141368
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h98cd594843f686f4E
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h94529b7cdef6bb6eE
    local.set 1
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17he6ec9e26c4fd5fe1E
    call $_ZN11proxy_pause10PauseProxy13require_owner17h4b3cedfdd6f83b9eE
    local.get 0
    call $_ZN45_$LT$C$u20$as$u20$proxy_pause..PauseProxy$GT$9contracts17h15ed44149ee502c0E
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10set_mapper23SetMapper$LT$SA$C$T$GT$10remove_all17h0038e1d2ee2c39edE
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $addOwners (;80;) (type 9)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $getNumArguments
    i32.store offset=141368
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h98cd594843f686f4E
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h94529b7cdef6bb6eE
    local.set 1
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17he6ec9e26c4fd5fe1E
    call $_ZN11proxy_pause10PauseProxy13require_owner17h4b3cedfdd6f83b9eE
    local.get 0
    call $_ZN45_$LT$C$u20$as$u20$proxy_pause..PauseProxy$GT$6owners17h532264becf6fe584E
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 1
    call $_ZN131_$LT$dharitri_sc..storage..mappers..set_mapper..SetMapper$LT$SA$C$T$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h9161ae434c527dd3E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $removeOwners (;81;) (type 9)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $getNumArguments
    i32.store offset=141368
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h98cd594843f686f4E
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h94529b7cdef6bb6eE
    local.set 1
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17he6ec9e26c4fd5fe1E
    call $_ZN11proxy_pause10PauseProxy13require_owner17h4b3cedfdd6f83b9eE
    local.get 0
    call $_ZN45_$LT$C$u20$as$u20$proxy_pause..PauseProxy$GT$6owners17h532264becf6fe584E
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10set_mapper23SetMapper$LT$SA$C$T$GT$10remove_all17h0038e1d2ee2c39edE
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $pause (;82;) (type 9)
    (local i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h0592ecc09fc70f28E
    call $_ZN11proxy_pause10PauseProxy13require_owner17h4b3cedfdd6f83b9eE
    local.get 0
    i32.const 24
    i32.add
    call $_ZN45_$LT$C$u20$as$u20$proxy_pause..PauseProxy$GT$9contracts17h15ed44149ee502c0E
    local.get 0
    local.get 0
    i64.load offset=24
    i64.store offset=36 align=4
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.const 36
    i32.add
    call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$4iter17hdb13187d9ca28679E
    local.get 0
    local.get 0
    i64.load offset=16
    i64.store offset=44 align=4
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.get 0
        i32.const 44
        i32.add
        call $_ZN126_$LT$dharitri_sc..storage..mappers..queue_mapper..Iter$LT$SA$C$A$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd484a173fc365ac2E
        local.get 0
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 0
        i32.load offset=12
        i32.store offset=52
        local.get 0
        i32.const 56
        i32.add
        local.get 0
        i32.const 52
        i32.add
        call $_ZN117_$LT$proxy_pause..pause_proxy..Proxy$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$15extract_address17h9bf46296aea0a422E
        i32.const 131249
        i32.const 5
        call $_ZN11dharitri_sc5types11interaction24contract_call_no_payment48ContractCallNoPayment$LT$SA$C$OriginalResult$GT$3new17h0b62bef70916239fE
        local.get 0
        i32.const 56
        i32.add
        call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall23execute_on_dest_context17h913165cc38c9e65dE
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $unpause (;83;) (type 9)
    (local i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h0592ecc09fc70f28E
    call $_ZN11proxy_pause10PauseProxy13require_owner17h4b3cedfdd6f83b9eE
    local.get 0
    i32.const 24
    i32.add
    call $_ZN45_$LT$C$u20$as$u20$proxy_pause..PauseProxy$GT$9contracts17h15ed44149ee502c0E
    local.get 0
    local.get 0
    i64.load offset=24
    i64.store offset=36 align=4
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.const 36
    i32.add
    call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$4iter17hdb13187d9ca28679E
    local.get 0
    local.get 0
    i64.load offset=16
    i64.store offset=44 align=4
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.get 0
        i32.const 44
        i32.add
        call $_ZN126_$LT$dharitri_sc..storage..mappers..queue_mapper..Iter$LT$SA$C$A$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd484a173fc365ac2E
        local.get 0
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 0
        i32.load offset=12
        i32.store offset=52
        local.get 0
        i32.const 56
        i32.add
        local.get 0
        i32.const 52
        i32.add
        call $_ZN117_$LT$proxy_pause..pause_proxy..Proxy$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$15extract_address17h9bf46296aea0a422E
        i32.const 131254
        i32.const 7
        call $_ZN11dharitri_sc5types11interaction24contract_call_no_payment48ContractCallNoPayment$LT$SA$C$OriginalResult$GT$3new17h0b62bef70916239fE
        local.get 0
        i32.const 56
        i32.add
        call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall23execute_on_dest_context17h913165cc38c9e65dE
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $owners (;84;) (type 9)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h0592ecc09fc70f28E
    local.get 0
    call $_ZN45_$LT$C$u20$as$u20$proxy_pause..PauseProxy$GT$6owners17h532264becf6fe584E
    local.get 0
    local.get 0
    i64.load
    i64.store offset=8 align=4
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc2io6finish12finish_multi17h6101f07a79413e9cE
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $contracts (;85;) (type 9)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h0592ecc09fc70f28E
    local.get 0
    call $_ZN45_$LT$C$u20$as$u20$proxy_pause..PauseProxy$GT$9contracts17h15ed44149ee502c0E
    local.get 0
    local.get 0
    i64.load
    i64.store offset=8 align=4
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc2io6finish12finish_multi17h6101f07a79413e9cE
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $callBack (;86;) (type 9))
  (func $memcpy (;87;) (type 4) (param i32 i32 i32) (result i32)
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
  (func $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E (;88;) (type 9)
    call $rust_begin_unwind
    unreachable
  )
  (table (;0;) 1 1 funcref)
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 141372)
  (global (;2;) i32 i32.const 141376)
  (export "memory" (memory 0))
  (export "init" (func $init))
  (export "addContracts" (func $addContracts))
  (export "removeContracts" (func $removeContracts))
  (export "addOwners" (func $addOwners))
  (export "removeOwners" (func $removeOwners))
  (export "pause" (func $pause))
  (export "unpause" (func $unpause))
  (export "owners" (func $owners))
  (export "contracts" (func $contracts))
  (export "callBack" (func $callBack))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data $.rodata (;0;) (i32.const 131072) "input too longrecipient address not setargument decode error (): too few argumentstoo many argumentswrong number of arguments.node_id.node_links.value.infocaller is not an ownerpauseunpauseownerscontractsstorage decode error: bad array lengthvar argsinput too short\00\00\00panic occurred")
  (data $.data (;1;) (i32.const 131356) "\9c\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.76.0-nightly (d86d65bbc 2023-12-10)")
  )
)