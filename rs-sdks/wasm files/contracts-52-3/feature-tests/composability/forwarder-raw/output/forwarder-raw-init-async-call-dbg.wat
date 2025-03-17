(module $forwarder_raw_init_async_call_wasm.wasm
  (type (;0;) (func (result i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32 i32) (result i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func (param i32 i32)))
  (type (;6;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32 i64)))
  (type (;8;) (func))
  (type (;9;) (func (param i32 i32 i32)))
  (type (;10;) (func (param i32 i32 i32 i32)))
  (import "env" "mBufferNew" (func $mBufferNew (;0;) (type 0)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;1;) (type 1)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;2;) (type 2)))
  (import "env" "managedSignalError" (func $managedSignalError (;3;) (type 3)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;4;) (type 4)))
  (import "env" "signalError" (func $signalError (;5;) (type 5)))
  (import "env" "getNumArguments" (func $getNumArguments (;6;) (type 0)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;7;) (type 6)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;8;) (type 2)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;9;) (type 7)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;10;) (type 1)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;11;) (type 1)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;12;) (type 1)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;13;) (type 1)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;14;) (type 8)))
  (import "env" "managedGetMultiDCDTCallValue" (func $managedGetMultiDCDTCallValue (;15;) (type 3)))
  (import "env" "bigIntGetCallValue" (func $bigIntGetCallValue (;16;) (type 3)))
  (import "env" "bigIntSign" (func $bigIntSign (;17;) (type 4)))
  (import "env" "bigIntAdd" (func $bigIntAdd (;18;) (type 9)))
  (import "env" "managedWriteLog" (func $managedWriteLog (;19;) (type 5)))
  (import "env" "managedAsyncCall" (func $managedAsyncCall (;20;) (type 10)))
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h961d8683c000444eE (;21;) (type 4) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17hb55ad9be51e0b546E (;22;) (type 10) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17h49538655f86aab68E
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17h49538655f86aab68E (;23;) (type 10) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $managedAsyncCall
    unreachable
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17he74f4a251b97a824E (;24;) (type 8)
    (local i32)
    i32.const 131072
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h823257af7d4bb28fE
    local.tee 0
    i32.const 131152
    i32.const 2
    call $mBufferAppendBytes
    drop
    local.get 0
    i32.const 131095
    i32.const 3
    call $mBufferAppendBytes
    drop
    local.get 0
    i32.const 131185
    i32.const 16
    call $mBufferAppendBytes
    drop
    local.get 0
    call $managedSignalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h823257af7d4bb28fE (;25;) (type 1) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h2c8c644a982f0c56E (;26;) (type 4) (param i32) (result i32)
    (local i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hbf78ec7a5ecbd806E
    local.set 1
    local.get 0
    i32.load
    local.set 2
    block ;; label = @1
      loop ;; label = @2
        local.get 2
        i32.const 0
        i32.load offset=131252
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
        call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h316f182a33c7f8e1E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h6ef9742f26f280cbE
        local.get 3
        local.set 2
        br 0 (;@2;)
      end
    end
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hbf78ec7a5ecbd806E (;27;) (type 0) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    i32.const 1
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
  )
  (func $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h316f182a33c7f8e1E (;28;) (type 4) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h6ef9742f26f280cbE (;29;) (type 5) (param i32 i32)
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h43e5847d4d13a2c2E (;30;) (type 0) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 0
      call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h316f182a33c7f8e1E
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17he74f4a251b97a824E
      unreachable
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h677e032f2fb515d7E (;31;) (type 0) (result i32)
    i32.const 1
    call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h316f182a33c7f8e1E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17he3b40f7147460460E (;32;) (type 3) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=131252
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h184213a5739293b2E (;33;) (type 3) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=131252
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h68ec786e8381b74eE (;34;) (type 8)
    i32.const 0
    call $getNumArguments
    i32.store offset=131252
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h77e5084919baa48cE (;35;) (type 9) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17hd76962aca983b25dE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17hd76962aca983b25dE (;36;) (type 9) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h0ef66ab4535d98a1E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17hdae4e4c4d8704957E (;37;) (type 9) (param i32 i32 i32)
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h7d17e02dae4b878cE
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17hf0cf53288b349f25E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h7d17e02dae4b878cE (;38;) (type 0) (result i32)
    i32.const -10
    i64.const 0
    call $bigIntSetInt64
    i32.const -10
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17hf0cf53288b349f25E (;39;) (type 10) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17hb55ad9be51e0b546E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h0ef66ab4535d98a1E (;40;) (type 9) (param i32 i32 i32)
    local.get 1
    local.get 2
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17hdae4e4c4d8704957E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h5ccdea420e527612E (;41;) (type 3) (param i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h77e5084919baa48cE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h60116cda92f35407E (;42;) (type 10) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    drop
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E (;43;) (type 0) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=131248
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=131248
    local.get 0
  )
  (func $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h2fc204a00dcc1861E (;44;) (type 5) (param i32 i32)
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
  (func $_ZN11dharitri_sc7storage11storage_set11storage_set17ha25abb23c66dc5e4E (;45;) (type 5) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h823257af7d4bb28fE
    call $mBufferStorageStore
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$4push17h9d0e463f535cdfb3E (;46;) (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 1
    call $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17ha344f39abd01df9bE
    local.set 4
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h961d8683c000444eE
    local.tee 5
    i32.const 131147
    i32.const 5
    call $mBufferAppendBytes
    drop
    local.get 5
    local.get 4
    i32.const 1
    i32.add
    local.tee 4
    call $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h2fc204a00dcc1861E
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hcbddc1e9312b76aaE
    local.set 0
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i32.load offset=8
        local.tee 6
        i32.const 2147483646
        i32.eq
        br_if 0 (;@2;)
        local.get 6
        local.get 0
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h66a060c0d099c98bE
        br 1 (;@1;)
      end
      local.get 3
      i32.const 67108864
      i32.store offset=4
      local.get 0
      local.get 3
      i32.const 4
      i32.add
      i32.const 4
      call $mBufferAppendBytes
      drop
      local.get 0
      i32.const 131201
      i32.const 4
      call $mBufferAppendBytes
      drop
    end
    local.get 3
    local.get 2
    i64.load
    local.tee 7
    i64.const 56
    i64.shl
    local.get 7
    i64.const 65280
    i64.and
    i64.const 40
    i64.shl
    i64.or
    local.get 7
    i64.const 16711680
    i64.and
    i64.const 24
    i64.shl
    local.get 7
    i64.const 4278190080
    i64.and
    i64.const 8
    i64.shl
    i64.or
    i64.or
    local.get 7
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 7
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 7
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 7
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=8
    local.get 0
    local.get 3
    i32.const 8
    i32.add
    i32.const 8
    call $mBufferAppendBytes
    drop
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 6
    local.get 2
    i32.load offset=12
    call $mBufferFromBigIntUnsigned
    drop
    local.get 6
    local.get 0
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h66a060c0d099c98bE
    local.get 5
    local.get 0
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17he78ec623257c67b5E
    local.get 1
    local.get 4
    call $_ZN11dharitri_sc7storage11storage_set11storage_set17ha25abb23c66dc5e4E
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17ha344f39abd01df9bE (;47;) (type 4) (param i32) (result i32)
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
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 2
    call $mBufferStorageLoad
    drop
    block ;; label = @1
      local.get 2
      call $mBufferGetLength
      local.tee 3
      i32.const 9
      i32.ge_u
      br_if 0 (;@1;)
      local.get 2
      i32.const 0
      local.get 3
      local.get 1
      i32.const 8
      i32.add
      local.get 3
      i32.sub
      i32.const 8
      i32.add
      call $mBufferGetByteSlice
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
      br_if 0 (;@1;)
      local.get 1
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 4
      i32.wrap_i64
      return
    end
    local.get 0
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hc51283b757320aeeE
    unreachable
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hcbddc1e9312b76aaE (;48;) (type 0) (result i32)
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h823257af7d4bb28fE
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h66a060c0d099c98bE (;49;) (type 5) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
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
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    call $mBufferAppendBytes
    drop
    local.get 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17he78ec623257c67b5E (;50;) (type 5) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferStorageStore
    drop
  )
  (func $_ZN13forwarder_raw22forwarder_raw_alt_init26ForwarderRawAlterativeInit15init_async_call17he52d3155efb6cae5E (;51;) (type 9) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hbf78ec7a5ecbd806E
    drop
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    local.get 3
    i32.store offset=4
    local.get 3
    i32.const 4
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h5ccdea420e527612E
    unreachable
  )
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hc51283b757320aeeE (;52;) (type 3) (param i32)
    (local i32)
    i32.const 131154
    i32.const 27
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h823257af7d4bb28fE
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
    i32.const 131095
    i32.const 3
    call $mBufferAppendBytes
    drop
    local.get 1
    i32.const 131133
    i32.const 14
    call $mBufferAppendBytes
    drop
    local.get 1
    call $managedSignalError
    unreachable
  )
  (func $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h64f364150b2b8f7fE (;53;) (type 5) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h60116cda92f35407E
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
  (func $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$17callback_payments17hfcbae990a678b5d8E (;54;) (type 3) (param i32)
    (local i32 i32)
    i32.const 131230
    i32.const 17
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h823257af7d4bb28fE
    local.tee 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h961d8683c000444eE
    local.tee 2
    i32.const 131181
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
  (func $init (;55;) (type 8)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h68ec786e8381b74eE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h184213a5739293b2E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h43e5847d4d13a2c2E
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h677e032f2fb515d7E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h2c8c644a982f0c56E
    local.set 3
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17he3b40f7147460460E
    local.get 1
    local.get 2
    local.get 3
    call $_ZN13forwarder_raw22forwarder_raw_alt_init26ForwarderRawAlterativeInit15init_async_call17he52d3155efb6cae5E
    unreachable
  )
  (func $callBack (;56;) (type 8)
    (local i32 i32 i32 i32 i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hbf78ec7a5ecbd806E
    drop
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hbf78ec7a5ecbd806E
    drop
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h68ec786e8381b74eE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h184213a5739293b2E
    local.get 0
    i32.const 0
    i32.store offset=40
    local.get 0
    i32.const 40
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h2c8c644a982f0c56E
    local.set 1
    local.get 0
    i32.load offset=40
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17he3b40f7147460460E
    i32.const -21
    local.set 2
    block ;; label = @1
      block ;; label = @2
        i32.const 0
        i32.load8_u offset=131260
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
      i32.store8 offset=131260
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
          i32.const 40
          i32.add
          i32.const 8
          i32.add
          i64.const 0
          i64.store
          local.get 0
          i64.const 0
          i64.store offset=40
          local.get 2
          local.get 3
          i32.const 16
          local.get 0
          i32.const 40
          i32.add
          call $mBufferGetByteSlice
          drop
          local.get 0
          i32.load offset=52
          local.set 3
          local.get 0
          i64.load offset=44 align=4
          local.set 6
          local.get 0
          i32.load offset=40
          local.set 7
          local.get 0
          i32.const 24
          i32.add
          call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$17callback_payments17hfcbae990a678b5d8E
          local.get 0
          i32.load offset=28
          local.set 8
          local.get 0
          i32.load offset=24
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
          i32.store offset=52
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
          i32.store offset=48
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
          i64.store offset=40
          local.get 9
          local.get 8
          local.get 0
          i32.const 40
          i32.add
          call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$4push17h9d0e463f535cdfb3E
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
          i32.load8_u offset=131256
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
        i32.store8 offset=131256
        i32.const -11
        call $bigIntGetCallValue
      end
      local.get 3
      call $bigIntSign
      i32.const 0
      i32.le_s
      br_if 0 (;@1;)
      local.get 0
      i32.const 16
      i32.add
      call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$17callback_payments17hfcbae990a678b5d8E
      local.get 0
      i32.load offset=20
      local.set 5
      local.get 0
      i32.load offset=16
      local.set 8
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
      local.tee 7
      i64.const 0
      call $bigIntSetInt64
      local.get 7
      local.get 7
      local.get 3
      call $bigIntAdd
      local.get 0
      local.get 7
      i32.store offset=52
      local.get 0
      i64.const 0
      i64.store offset=40
      local.get 0
      i32.const 2147483646
      i32.store offset=48
      local.get 8
      local.get 5
      local.get 0
      i32.const 40
      i32.add
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$4push17h9d0e463f535cdfb3E
    end
    local.get 0
    local.get 1
    i32.store offset=36
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hbf78ec7a5ecbd806E
    local.tee 8
    i32.const 131205
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h823257af7d4bb28fE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h6ef9742f26f280cbE
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hbf78ec7a5ecbd806E
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h961d8683c000444eE
    local.set 7
    local.get 0
    local.get 1
    call $mBufferGetLength
    i32.store offset=48
    local.get 0
    i32.const 0
    i32.store offset=44
    local.get 0
    local.get 0
    i32.const 36
    i32.add
    i32.store offset=40
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.get 0
        i32.const 40
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h64f364150b2b8f7fE
        local.get 0
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 0
        i32.load offset=12
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
        i32.store offset=60
        local.get 7
        local.get 0
        i32.const 60
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
    i32.const 131217
    i32.const 13
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h823257af7d4bb28fE
    local.tee 3
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h961d8683c000444eE
    local.tee 7
    i32.const 131181
    i32.const 4
    call $mBufferAppendBytes
    drop
    local.get 7
    call $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17ha344f39abd01df9bE
    local.set 8
    local.get 3
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h961d8683c000444eE
    local.tee 5
    i32.const 131147
    i32.const 5
    call $mBufferAppendBytes
    drop
    local.get 5
    local.get 8
    i32.const 1
    i32.add
    local.tee 8
    call $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h2fc204a00dcc1861E
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hcbddc1e9312b76aaE
    local.set 3
    local.get 0
    local.get 0
    i32.load offset=36
    call $mBufferGetLength
    i32.store offset=48
    local.get 0
    i32.const 0
    i32.store offset=44
    local.get 0
    local.get 0
    i32.const 36
    i32.add
    i32.store offset=40
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        local.get 0
        i32.const 40
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h64f364150b2b8f7fE
        local.get 0
        i32.load
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=4
        local.get 3
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h66a060c0d099c98bE
        br 0 (;@2;)
      end
    end
    local.get 5
    local.get 3
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17he78ec623257c67b5E
    local.get 7
    local.get 8
    call $_ZN11dharitri_sc7storage11storage_set11storage_set17ha25abb23c66dc5e4E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (table (;0;) 1 1 funcref)
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 131261)
  (global (;2;) i32 i32.const 131264)
  (export "memory" (memory 0))
  (export "init" (func $init))
  (export "callBack" (func $callBack))
  (export "upgrade" (func $init))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data $.rodata (;0;) (i32.const 131072) "argument decode error (): too few argumentstoo many argumentsinput too long.itemtostorage decode error (key: .lenbad array lengthREWAcallback_rawcallback_argscallback_payments")
  (data $.data (;1;) (i32.const 131248) "8\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.80.1 (3f5fd8dd4 2024-08-06)")
  )
  (@custom "target_features" (after data) "\02+\0fmutable-globals+\08sign-ext")
)
