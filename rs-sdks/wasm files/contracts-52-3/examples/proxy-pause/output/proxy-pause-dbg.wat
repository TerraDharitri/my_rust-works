(module $proxy_pause_wasm.wasm
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (result i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i32 i32 i32) (result i32)))
  (type (;5;) (func (param i32) (result i32)))
  (type (;6;) (func (result i64)))
  (type (;7;) (func (param i32 i64)))
  (type (;8;) (func (param i64 i32 i32 i32 i32 i32) (result i32)))
  (type (;9;) (func))
  (type (;10;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;11;) (func (param i32 i32 i32 i32)))
  (type (;12;) (func (param i32 i32 i32)))
  (import "env" "signalError" (func $signalError (;0;) (type 0)))
  (import "env" "mBufferNew" (func $mBufferNew (;1;) (type 1)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;2;) (type 2)))
  (import "env" "managedCaller" (func $managedCaller (;3;) (type 3)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;4;) (type 4)))
  (import "env" "managedSignalError" (func $managedSignalError (;5;) (type 3)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;6;) (type 2)))
  (import "env" "getNumArguments" (func $getNumArguments (;7;) (type 1)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;8;) (type 5)))
  (import "env" "getGasLeft" (func $getGasLeft (;9;) (type 6)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;10;) (type 7)))
  (import "env" "managedExecuteOnDestContext" (func $managedExecuteOnDestContext (;11;) (type 8)))
  (import "env" "cleanReturnData" (func $cleanReturnData (;12;) (type 9)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;13;) (type 10)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;14;) (type 4)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;15;) (type 2)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;16;) (type 5)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;17;) (type 2)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;18;) (type 9)))
  (func $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17h74e580746c673069E (;19;) (type 9)
    i32.const 131202
    i32.const 22
    call $signalError
    unreachable
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h40aea751e63525e1E (;20;) (type 5) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hb63ee4b021b430ffE (;21;) (type 9)
    call $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17h74e580746c673069E
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h32a59ac66475f841E (;22;) (type 1) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    call $managedCaller
    local.get 0
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E (;23;) (type 1) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=131332
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=131332
    local.get 0
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17he367683564c141b6E (;24;) (type 0) (param i32 i32)
    (local i32)
    i32.const 131086
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h0b98e7d9575b1ac6E
    local.tee 2
    i32.const 131294
    i32.const 8
    call $mBufferAppendBytes
    drop
    local.get 2
    i32.const 131109
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h0b98e7d9575b1ac6E (;25;) (type 2) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h238d99299efd429fE (;26;) (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3new17hef4192e634e2ef1eE
    local.set 2
    local.get 0
    i32.load
    local.set 3
    block ;; label = @1
      loop ;; label = @2
        local.get 3
        i32.const 0
        i32.load offset=141344
        i32.ge_s
        br_if 1 (;@1;)
        local.get 0
        local.get 3
        i32.const 1
        i32.add
        local.tee 4
        i32.store
        local.get 3
        call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3new17hef4192e634e2ef1eE (;27;) (type 1) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    i32.const 1
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hf8466d0bc44b57bbE (;28;) (type 3) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=141344
      local.get 0
      i32.gt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131129
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hf8b6165dad884e18E (;29;) (type 9)
    block ;; label = @1
      call $getNumArguments
      br_if 0 (;@1;)
      return
    end
    i32.const 131147
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h5b782caa848ef6a2E (;30;) (type 9)
    block ;; label = @1
      i32.const 0
      i32.load offset=141344
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131112
    i32.const 17
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he21dde0dfb0290cfE (;31;) (type 9)
    i32.const 0
    call $getNumArguments
    i32.store offset=141344
  )
  (func $_ZN11dharitri_sc2io6finish12finish_multi17hdcb717085afca9caE (;32;) (type 3) (param i32)
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
    call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$4iter17h78f95604032dc0aeE
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
        call $_ZN126_$LT$dharitri_sc..storage..mappers..queue_mapper..Iter$LT$SA$C$A$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc60d54966ee9d48fE
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
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$4iter17h78f95604032dc0aeE (;33;) (type 0) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.load offset=4
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17hba37846a04d3fb7fE
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
  (func $_ZN126_$LT$dharitri_sc..storage..mappers..queue_mapper..Iter$LT$SA$C$A$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc60d54966ee9d48fE (;34;) (type 0) (param i32 i32)
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
      call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17h4ac26528885a382eE
      local.get 1
      local.get 2
      i32.load offset=12
      i32.store offset=4
      i32.const 1
      local.set 1
      local.get 4
      i32.load
      local.get 3
      call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17h2256e80ef2b039acE
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
  (func $_ZN11dharitri_sc5types11interaction2tx57Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$$LP$$RP$$C$RH$GT$8raw_call17h9f8532ad11af7b31E (;35;) (type 11) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h0b98e7d9575b1ac6E
    local.set 3
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3new17hef4192e634e2ef1eE
    i32.store offset=8
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17hbc95f8639cab5c3fE (;36;) (type 3) (param i32)
    (local i64 i32 i32 i32)
    call $getGasLeft
    local.set 1
    local.get 0
    i32.load offset=8
    local.set 2
    local.get 0
    i32.load offset=4
    local.set 3
    local.get 0
    i32.load
    local.set 0
    i32.const -10
    i64.const 0
    call $bigIntSetInt64
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.set 4
    local.get 1
    i64.const -100000
    i64.add
    local.get 1
    local.get 1
    i64.const 100000
    i64.gt_u
    select
    local.get 0
    i32.load
    i32.const -10
    local.get 3
    local.get 2
    local.get 4
    call $managedExecuteOnDestContext
    drop
    call $cleanReturnData
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hddecd9b19e49079cE (;37;) (type 10) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h595c7369a911bd81E (;38;) (type 5) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_set11storage_set17h4d3fda1b634af322E (;39;) (type 3) (param i32)
    local.get 0
    i32.const 1
    i32.const 0
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817hd18c93bf397ed768E
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817hd18c93bf397ed768E (;40;) (type 12) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h0b98e7d9575b1ac6E
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper23SetMapper$LT$SA$C$T$GT$10remove_all17h1fb3cb10b212b8f9E (;41;) (type 12) (param i32 i32 i32)
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
        call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0da41a78b3678c9bE
        local.get 3
        i32.load offset=24
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 3
        i32.load offset=28
        local.tee 5
        call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$11get_node_id17h6394a2c01be28100E
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.const 16
        i32.add
        local.get 1
        local.get 2
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17h4ac26528885a382eE
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
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17hba37846a04d3fb7fE
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
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17h4ac26528885a382eE
            local.get 1
            local.get 6
            local.get 3
            i32.load offset=8
            local.get 4
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17heab472e7bdf7e4a9E
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
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17h4ac26528885a382eE
            local.get 1
            local.get 4
            local.get 6
            local.get 3
            i32.load offset=4
            call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17heab472e7bdf7e4a9E
            br 1 (;@3;)
          end
          local.get 3
          local.get 6
          i32.store offset=56
        end
        local.get 1
        i32.const 131180
        i32.const 11
        local.get 2
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17hcab6280e5933fd46E
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4d3fda1b634af322E
        local.get 1
        local.get 2
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17h2256e80ef2b039acE
        drop
        local.get 1
        i32.const 131191
        i32.const 6
        local.get 2
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17hcab6280e5933fd46E
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4d3fda1b634af322E
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
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17h92213a1ee83dadd5E
        local.get 0
        local.get 5
        call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17h1bf25ff97ef413c4E
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4d3fda1b634af322E
        br 0 (;@2;)
      end
    end
    local.get 3
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0da41a78b3678c9bE (;42;) (type 0) (param i32 i32)
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
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hddecd9b19e49079cE
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
          call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h40aea751e63525e1E
          call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h40aea751e63525e1E
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
      i32.const 131112
      i32.const 17
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17he367683564c141b6E
      unreachable
    end
    i32.const 131278
    i32.const 16
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17he367683564c141b6E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$11get_node_id17h6394a2c01be28100E (;43;) (type 2) (param i32 i32) (result i32)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17h1bf25ff97ef413c4E
    local.set 0
    local.get 2
    i64.const 0
    i64.store offset=8
    block ;; label = @1
      block ;; label = @2
        local.get 0
        call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h595c7369a911bd81E
        local.tee 3
        call $mBufferGetLength
        local.tee 1
        i32.const 9
        i32.ge_u
        br_if 0 (;@2;)
        local.get 3
        i32.const 0
        local.get 2
        i32.const 8
        i32.add
        local.get 1
        i32.sub
        i32.const 8
        i32.add
        local.get 1
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hddecd9b19e49079cE
        drop
        local.get 2
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
        local.get 2
        i32.const 16
        i32.add
        global.set $__stack_pointer
        local.get 4
        i32.wrap_i64
        return
      end
      local.get 0
      i32.const 131072
      i32.const 14
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hc54bfd7da6e16658E
      unreachable
    end
    local.get 0
    i32.const 131072
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hc54bfd7da6e16658E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17h4ac26528885a382eE (;44;) (type 12) (param i32 i32 i32)
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
    i32.const 131180
    i32.const 11
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17hcab6280e5933fd46E
    local.tee 2
    call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17hc0950524e0bb4679E
    local.get 3
    i32.const 12
    i32.add
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h17de469b5dfdac2fE
    local.set 1
    local.get 3
    i32.const 12
    i32.add
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h17de469b5dfdac2fE
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
        i32.store offset=141336
        i32.const 0
        i32.const 0
        i32.store8 offset=141340
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
    i32.const 131072
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hc54bfd7da6e16658E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17hba37846a04d3fb7fE (;45;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$14build_name_key17he0e2de4c80fbf659E
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
        call $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17hc0950524e0bb4679E
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h17de469b5dfdac2fE
        local.set 6
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h17de469b5dfdac2fE
        local.set 3
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h17de469b5dfdac2fE
        local.set 4
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h17de469b5dfdac2fE
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
        i32.store offset=141336
        i32.const 0
        i32.const 0
        i32.store8 offset=141340
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
    i32.const 131072
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hc54bfd7da6e16658E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17heab472e7bdf7e4a9E (;46;) (type 11) (param i32 i32 i32 i32)
    local.get 0
    i32.const 131180
    i32.const 11
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17hcab6280e5933fd46E
    local.set 0
    local.get 2
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h8230ab6227b6d08fE
    local.tee 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h0ba0f83c8413eef0E
    local.get 3
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h0ba0f83c8413eef0E
    local.get 0
    local.get 1
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h9080e5d5c5d276fcE
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17hcab6280e5933fd46E (;47;) (type 10) (param i32 i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h40aea751e63525e1E
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
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$9get_value17h2256e80ef2b039acE (;48;) (type 2) (param i32 i32) (result i32)
    block ;; label = @1
      local.get 0
      i32.const 131191
      i32.const 6
      local.get 1
      call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17hcab6280e5933fd46E
      local.tee 0
      call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h595c7369a911bd81E
      local.tee 1
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.const 131278
      i32.const 16
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hc54bfd7da6e16658E
      unreachable
    end
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17h92213a1ee83dadd5E (;49;) (type 0) (param i32 i32)
    (local i32 i32)
    local.get 0
    call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$14build_name_key17he0e2de4c80fbf659E
    local.set 2
    block ;; label = @1
      local.get 1
      i32.load
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h8230ab6227b6d08fE
      local.tee 0
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h0ba0f83c8413eef0E
      local.get 1
      i32.load offset=4
      local.get 0
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h0ba0f83c8413eef0E
      local.get 1
      i32.load offset=8
      local.get 0
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h0ba0f83c8413eef0E
      local.get 1
      i32.load offset=12
      local.get 0
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h0ba0f83c8413eef0E
      local.get 2
      local.get 0
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h9080e5d5c5d276fcE
      return
    end
    local.get 2
    i32.const 1
    i32.const 0
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817hd18c93bf397ed768E
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17h1bf25ff97ef413c4E (;50;) (type 2) (param i32 i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h40aea751e63525e1E
    local.tee 0
    i32.const 131172
    i32.const 8
    call $mBufferAppendBytes
    drop
    local.get 0
    local.get 1
    call $mBufferAppend
    drop
    local.get 0
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper23SetMapper$LT$SA$C$T$GT$6insert17h70abe9eb14418fe2E (;51;) (type 12) (param i32 i32 i32)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block ;; label = @1
      local.get 0
      local.get 2
      call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$8contains17hb19a47a2966de1fcE
      br_if 0 (;@1;)
      local.get 3
      i32.const 16
      i32.add
      local.get 1
      call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_info17hba37846a04d3fb7fE
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
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$8get_node17h4ac26528885a382eE
        local.get 1
        local.get 6
        local.get 3
        i32.load offset=8
        local.get 4
        call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17heab472e7bdf7e4a9E
      end
      local.get 1
      local.get 4
      local.get 6
      i32.const 0
      call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_node17heab472e7bdf7e4a9E
      local.get 3
      local.get 4
      i32.store offset=24
      local.get 1
      i32.const 131191
      i32.const 6
      local.get 4
      call $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$23build_node_id_named_key17hcab6280e5933fd46E
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
      call $_ZN11dharitri_sc7storage7mappers12queue_mapper25QueueMapper$LT$SA$C$T$GT$8set_info17h92213a1ee83dadd5E
      local.get 0
      local.get 2
      call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$21build_named_value_key17h1bf25ff97ef413c4E
      local.set 2
      local.get 3
      local.get 4
      i32.store8 offset=23
      local.get 3
      i32.const 0
      i32.store offset=16
      local.get 3
      local.get 4
      i64.extend_i32_u
      local.tee 7
      i64.const 24
      i64.shr_u
      i32.wrap_i64
      local.tee 1
      i32.store8 offset=20
      local.get 3
      local.get 7
      i64.const 16
      i64.shr_u
      i32.wrap_i64
      local.tee 0
      i32.store8 offset=21
      local.get 3
      local.get 7
      i64.const 8
      i64.shr_u
      i32.wrap_i64
      local.tee 6
      i32.store8 offset=22
      local.get 2
      local.get 3
      i32.const 16
      i32.add
      i32.const 4
      i32.const 5
      local.get 1
      select
      local.get 0
      local.get 1
      i32.or
      i32.const 255
      i32.and
      i32.eqz
      local.tee 1
      i32.add
      i32.const 0
      local.get 1
      local.get 6
      i32.const 255
      i32.and
      select
      local.tee 1
      i32.add
      i32.const 0
      local.get 1
      local.get 4
      select
      i32.add
      local.tee 4
      i32.add
      i32.const 8
      local.get 4
      i32.sub
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817hd18c93bf397ed768E
    end
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$8contains17hb19a47a2966de1fcE (;52;) (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$11get_node_id17h6394a2c01be28100E
    i32.const 0
    i32.ne
  )
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hc54bfd7da6e16658E (;53;) (type 12) (param i32 i32 i32)
    (local i32)
    i32.const 131251
    i32.const 27
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h0b98e7d9575b1ac6E
    local.tee 3
    local.get 0
    call $mBufferAppend
    drop
    local.get 3
    i32.const 131109
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
  (func $_ZN11dharitri_sc7storage7mappers12queue_mapper29QueueMapper$LT$SA$C$T$C$A$GT$14build_name_key17he0e2de4c80fbf659E (;54;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h40aea751e63525e1E
    local.tee 0
    i32.const 131197
    i32.const 5
    call $mBufferAppendBytes
    drop
    local.get 0
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h8230ab6227b6d08fE (;55;) (type 1) (result i32)
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h0b98e7d9575b1ac6E
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h0ba0f83c8413eef0E (;56;) (type 0) (param i32 i32)
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
    call $mBufferAppendBytes
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h9080e5d5c5d276fcE (;57;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferStorageStore
    drop
  )
  (func $_ZN135_$LT$dharitri_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17hc0950524e0bb4679E (;58;) (type 0) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h595c7369a911bd81E
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17h17de469b5dfdac2fE (;59;) (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.load
    local.set 3
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  local.get 0
                  i32.load8_u offset=16
                  br_if 0 (;@7;)
                  local.get 0
                  i32.load offset=8
                  local.tee 4
                  call $mBufferGetLength
                  local.tee 5
                  i32.const 10000
                  i32.gt_u
                  br_if 1 (;@6;)
                  i32.const 0
                  i32.load8_u offset=141340
                  i32.const 255
                  i32.and
                  br_if 1 (;@6;)
                  i32.const 0
                  local.get 5
                  i32.store offset=141336
                  i32.const 0
                  i32.const 1
                  i32.store8 offset=141340
                  local.get 4
                  i32.const 0
                  i32.const 131336
                  local.get 5
                  call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hddecd9b19e49079cE
                  drop
                  local.get 0
                  i32.const 1
                  i32.store8 offset=16
                end
                local.get 3
                i32.const 4
                i32.add
                local.tee 4
                i32.const 0
                i32.load offset=141336
                i32.le_u
                br_if 1 (;@5;)
                br 5 (;@1;)
              end
              local.get 0
              i32.const 0
              i32.store8 offset=16
              local.get 4
              local.get 3
              local.get 2
              i32.const 12
              i32.add
              i32.const 4
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hddecd9b19e49079cE
              br_if 4 (;@1;)
              local.get 3
              i32.const 4
              i32.add
              local.set 4
              local.get 2
              i32.const 12
              i32.add
              local.set 3
              br 1 (;@4;)
            end
            local.get 3
            i32.const -5
            i32.gt_u
            br_if 1 (;@3;)
            local.get 4
            i32.const 10000
            i32.gt_u
            br_if 2 (;@2;)
            local.get 3
            i32.const 131336
            i32.add
            local.set 3
          end
          local.get 0
          local.get 4
          i32.store
          local.get 3
          i32.load align=1
          local.set 0
          local.get 2
          i32.const 16
          i32.add
          global.set $__stack_pointer
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
          return
        end
        local.get 3
        local.get 4
        call $_ZN4core5slice5index22slice_index_order_fail17h203c6e1b4907093dE
        unreachable
      end
      local.get 4
      call $_ZN4core5slice5index24slice_end_index_len_fail17h7917b91b59da861bE
      unreachable
    end
    local.get 1
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h75522a7632509943E
    unreachable
  )
  (func $_ZN11proxy_pause10PauseProxy13require_owner17h31e54c3e9843f1adE (;60;) (type 9)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 8
    i32.add
    call $_ZN45_$LT$C$u20$as$u20$proxy_pause..PauseProxy$GT$6owners17h86a1543de890c0f4E
    block ;; label = @1
      local.get 0
      i32.load offset=8
      call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h32a59ac66475f841E
      call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$8contains17hb19a47a2966de1fcE
      br_if 0 (;@1;)
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hb63ee4b021b430ffE
      unreachable
    end
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN45_$LT$C$u20$as$u20$proxy_pause..PauseProxy$GT$6owners17h86a1543de890c0f4E (;61;) (type 3) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 8
    i32.add
    i32.const 131236
    i32.const 6
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h0b98e7d9575b1ac6E
    call $_ZN149_$LT$dharitri_sc..storage..mappers..set_mapper..SetMapper$LT$SA$C$T$GT$$u20$as$u20$dharitri_sc..storage..mappers..mapper..StorageMapper$LT$SA$GT$$GT$3new17h5a42a479f9d11c3eE
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
  (func $_ZN131_$LT$dharitri_sc..storage..mappers..set_mapper..SetMapper$LT$SA$C$T$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h86c477f79789f54fE (;62;) (type 12) (param i32 i32 i32)
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
      call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0da41a78b3678c9bE
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
      call $_ZN11dharitri_sc7storage7mappers10set_mapper23SetMapper$LT$SA$C$T$GT$6insert17h70abe9eb14418fe2E
      br 0 (;@1;)
    end
  )
  (func $_ZN149_$LT$dharitri_sc..storage..mappers..set_mapper..SetMapper$LT$SA$C$T$GT$$u20$as$u20$dharitri_sc..storage..mappers..mapper..StorageMapper$LT$SA$GT$$GT$3new17h5a42a479f9d11c3eE (;63;) (type 0) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h40aea751e63525e1E
    local.set 2
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN4core5slice5index22slice_index_order_fail17h203c6e1b4907093dE (;64;) (type 0) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17hb859252f4b513814E
    unreachable
  )
  (func $_ZN4core5slice5index24slice_end_index_len_fail17h7917b91b59da861bE (;65;) (type 3) (param i32)
    call $_ZN4core9panicking9panic_fmt17hb859252f4b513814E
    unreachable
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h75522a7632509943E (;66;) (type 3) (param i32)
    local.get 0
    i32.const 131302
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hc54bfd7da6e16658E
    unreachable
  )
  (func $_ZN45_$LT$C$u20$as$u20$proxy_pause..PauseProxy$GT$9contracts17hbb078dd4a6dc3a6dE (;67;) (type 3) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 8
    i32.add
    i32.const 131242
    i32.const 9
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h0b98e7d9575b1ac6E
    call $_ZN149_$LT$dharitri_sc..storage..mappers..set_mapper..SetMapper$LT$SA$C$T$GT$$u20$as$u20$dharitri_sc..storage..mappers..mapper..StorageMapper$LT$SA$GT$$GT$3new17h5a42a479f9d11c3eE
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
  (func $rust_begin_unwind (;68;) (type 9)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h8945d78c95e86419E
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h8945d78c95e86419E (;69;) (type 9)
    i32.const 131317
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;70;) (type 9)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hf8b6165dad884e18E
    local.get 0
    i32.const 8
    i32.add
    call $_ZN45_$LT$C$u20$as$u20$proxy_pause..PauseProxy$GT$6owners17h86a1543de890c0f4E
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h32a59ac66475f841E
    call $_ZN11dharitri_sc7storage7mappers10set_mapper23SetMapper$LT$SA$C$T$GT$6insert17h70abe9eb14418fe2E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $addContracts (;71;) (type 9)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he21dde0dfb0290cfE
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h5b782caa848ef6a2E
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h238d99299efd429fE
    local.set 1
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hf8466d0bc44b57bbE
    call $_ZN11proxy_pause10PauseProxy13require_owner17h31e54c3e9843f1adE
    local.get 0
    call $_ZN45_$LT$C$u20$as$u20$proxy_pause..PauseProxy$GT$9contracts17hbb078dd4a6dc3a6dE
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 1
    call $_ZN131_$LT$dharitri_sc..storage..mappers..set_mapper..SetMapper$LT$SA$C$T$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h86c477f79789f54fE
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $removeContracts (;72;) (type 9)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he21dde0dfb0290cfE
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h5b782caa848ef6a2E
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h238d99299efd429fE
    local.set 1
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hf8466d0bc44b57bbE
    call $_ZN11proxy_pause10PauseProxy13require_owner17h31e54c3e9843f1adE
    local.get 0
    call $_ZN45_$LT$C$u20$as$u20$proxy_pause..PauseProxy$GT$9contracts17hbb078dd4a6dc3a6dE
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10set_mapper23SetMapper$LT$SA$C$T$GT$10remove_all17h1fb3cb10b212b8f9E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $addOwners (;73;) (type 9)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he21dde0dfb0290cfE
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h5b782caa848ef6a2E
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h238d99299efd429fE
    local.set 1
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hf8466d0bc44b57bbE
    call $_ZN11proxy_pause10PauseProxy13require_owner17h31e54c3e9843f1adE
    local.get 0
    call $_ZN45_$LT$C$u20$as$u20$proxy_pause..PauseProxy$GT$6owners17h86a1543de890c0f4E
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 1
    call $_ZN131_$LT$dharitri_sc..storage..mappers..set_mapper..SetMapper$LT$SA$C$T$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h86c477f79789f54fE
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $removeOwners (;74;) (type 9)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he21dde0dfb0290cfE
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h5b782caa848ef6a2E
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h238d99299efd429fE
    local.set 1
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hf8466d0bc44b57bbE
    call $_ZN11proxy_pause10PauseProxy13require_owner17h31e54c3e9843f1adE
    local.get 0
    call $_ZN45_$LT$C$u20$as$u20$proxy_pause..PauseProxy$GT$6owners17h86a1543de890c0f4E
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10set_mapper23SetMapper$LT$SA$C$T$GT$10remove_all17h1fb3cb10b212b8f9E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $pause (;75;) (type 9)
    (local i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hf8b6165dad884e18E
    call $_ZN11proxy_pause10PauseProxy13require_owner17h31e54c3e9843f1adE
    local.get 0
    i32.const 24
    i32.add
    call $_ZN45_$LT$C$u20$as$u20$proxy_pause..PauseProxy$GT$9contracts17hbb078dd4a6dc3a6dE
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
    call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$4iter17h78f95604032dc0aeE
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
        call $_ZN126_$LT$dharitri_sc..storage..mappers..queue_mapper..Iter$LT$SA$C$A$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc60d54966ee9d48fE
        local.get 0
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 0
        i32.load offset=12
        i32.store offset=52
        local.get 0
        i32.const 68
        i32.add
        local.get 0
        i32.const 52
        i32.add
        i32.const 131224
        i32.const 5
        call $_ZN11dharitri_sc5types11interaction2tx57Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$$LP$$RP$$C$RH$GT$8raw_call17h9f8532ad11af7b31E
        local.get 0
        local.get 0
        i32.load offset=76
        i32.store offset=64
        local.get 0
        local.get 0
        i64.load offset=68 align=4
        i64.store offset=56 align=4
        local.get 0
        i32.const 56
        i32.add
        call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17hbc95f8639cab5c3fE
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $unpause (;76;) (type 9)
    (local i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hf8b6165dad884e18E
    call $_ZN11proxy_pause10PauseProxy13require_owner17h31e54c3e9843f1adE
    local.get 0
    i32.const 24
    i32.add
    call $_ZN45_$LT$C$u20$as$u20$proxy_pause..PauseProxy$GT$9contracts17hbb078dd4a6dc3a6dE
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
    call $_ZN11dharitri_sc7storage7mappers10set_mapper27SetMapper$LT$SA$C$T$C$A$GT$4iter17h78f95604032dc0aeE
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
        call $_ZN126_$LT$dharitri_sc..storage..mappers..queue_mapper..Iter$LT$SA$C$A$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc60d54966ee9d48fE
        local.get 0
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 0
        i32.load offset=12
        i32.store offset=52
        local.get 0
        i32.const 68
        i32.add
        local.get 0
        i32.const 52
        i32.add
        i32.const 131229
        i32.const 7
        call $_ZN11dharitri_sc5types11interaction2tx57Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$$LP$$RP$$C$RH$GT$8raw_call17h9f8532ad11af7b31E
        local.get 0
        local.get 0
        i32.load offset=76
        i32.store offset=64
        local.get 0
        local.get 0
        i64.load offset=68 align=4
        i64.store offset=56 align=4
        local.get 0
        i32.const 56
        i32.add
        call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17hbc95f8639cab5c3fE
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $owners (;77;) (type 9)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hf8b6165dad884e18E
    local.get 0
    call $_ZN45_$LT$C$u20$as$u20$proxy_pause..PauseProxy$GT$6owners17h86a1543de890c0f4E
    local.get 0
    local.get 0
    i64.load
    i64.store offset=8 align=4
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc2io6finish12finish_multi17hdcb717085afca9caE
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $contracts (;78;) (type 9)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hf8b6165dad884e18E
    local.get 0
    call $_ZN45_$LT$C$u20$as$u20$proxy_pause..PauseProxy$GT$9contracts17hbb078dd4a6dc3a6dE
    local.get 0
    local.get 0
    i64.load
    i64.store offset=8 align=4
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc2io6finish12finish_multi17hdcb717085afca9caE
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $callBack (;79;) (type 9))
  (func $_ZN4core9panicking9panic_fmt17hb859252f4b513814E (;80;) (type 9)
    call $rust_begin_unwind
    unreachable
  )
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 141348)
  (global (;2;) i32 i32.const 141360)
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
  (data $.rodata (;0;) (i32.const 131072) "input too longargument decode error (): too few argumentstoo many argumentswrong number of arguments.node_id.node_links.value.infocaller is not an ownerpauseunpauseownerscontractsstorage decode error (key: bad array lengthvar argsinput too shortpanic occurred")
  (data $.data (;1;) (i32.const 131332) "8\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.80.1 (3f5fd8dd4 2024-08-06)")
  )
  (@custom "target_features" (after data) "\02+\0fmutable-globals+\08sign-ext")
)
