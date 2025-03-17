(module
  (type (;0;) (func (param i32 i64)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i32)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32) (result i32)))
  (type (;8;) (func (param i32) (result i64)))
  (type (;9;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32) (result i32)))
  (type (;10;) (func (result i64)))
  (type (;11;) (func (param i64 i32 i32 i32 i32 i32) (result i32)))
  (type (;12;) (func))
  (type (;13;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;14;) (func (param i64)))
  (type (;15;) (func (param i32 i32 i32 i32 i32)))
  (type (;16;) (func (param i32 i32 i32 i32)))
  (type (;17;) (func (param i32 i32 i32) (result i64)))
  (type (;18;) (func (param i32 i32) (result i64)))
  (type (;19;) (func (param i32 i32 i32 i64)))
  (type (;20;) (func (param i32 i64 i32)))
  (type (;21;) (func (param i64 i32)))
  (type (;22;) (func (param i32 i32 i32 i64 i32)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;0;) (type 0)))
  (import "env" "bigIntAdd" (func $bigIntAdd (;1;) (type 1)))
  (import "env" "signalError" (func $signalError (;2;) (type 2)))
  (import "env" "mBufferNew" (func $mBufferNew (;3;) (type 3)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;4;) (type 4)))
  (import "env" "managedSCAddress" (func $managedSCAddress (;5;) (type 5)))
  (import "env" "managedGetBackTransfers" (func $managedGetBackTransfers (;6;) (type 2)))
  (import "env" "managedGetMultiDCDTCallValue" (func $managedGetMultiDCDTCallValue (;7;) (type 5)))
  (import "env" "bigIntGetCallValue" (func $bigIntGetCallValue (;8;) (type 5)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;9;) (type 4)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;10;) (type 6)))
  (import "env" "managedSignalError" (func $managedSignalError (;11;) (type 5)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;12;) (type 7)))
  (import "env" "bigIntGetUnsignedArgument" (func $bigIntGetUnsignedArgument (;13;) (type 2)))
  (import "env" "smallIntGetUnsignedArgument" (func $smallIntGetUnsignedArgument (;14;) (type 8)))
  (import "env" "getNumArguments" (func $getNumArguments (;15;) (type 3)))
  (import "env" "managedGetCallbackClosure" (func $managedGetCallbackClosure (;16;) (type 5)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;17;) (type 6)))
  (import "env" "managedCreateAsyncCall" (func $managedCreateAsyncCall (;18;) (type 9)))
  (import "env" "getGasLeft" (func $getGasLeft (;19;) (type 10)))
  (import "env" "managedExecuteOnDestContext" (func $managedExecuteOnDestContext (;20;) (type 11)))
  (import "env" "cleanReturnData" (func $cleanReturnData (;21;) (type 12)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;22;) (type 4)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;23;) (type 4)))
  (import "env" "mBufferCopyByteSlice" (func $mBufferCopyByteSlice (;24;) (type 13)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;25;) (type 4)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;26;) (type 4)))
  (import "env" "bigIntSign" (func $bigIntSign (;27;) (type 7)))
  (import "env" "managedWriteLog" (func $managedWriteLog (;28;) (type 2)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;29;) (type 12)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;30;) (type 7)))
  (import "env" "finish" (func $finish (;31;) (type 2)))
  (import "env" "smallIntFinishUnsigned" (func $smallIntFinishUnsigned (;32;) (type 14)))
  (import "env" "bigIntFinishUnsigned" (func $bigIntFinishUnsigned (;33;) (type 5)))
  (import "env" "bigIntCmp" (func $bigIntCmp (;34;) (type 4)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;35;) (type 13)))
  (func $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2239f74d755cf426E (;36;) (type 7) (param i32) (result i32)
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E (;37;) (type 3) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=131668
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=131668
    local.get 0
  )
  (func $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17h79c0c2fc1265609cE (;38;) (type 12)
    i32.const 131383
    i32.const 30
    call $signalError
    unreachable
  )
  (func $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h21129ecede4ce80eE (;39;) (type 15) (param i32 i32 i32 i32 i32)
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
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE (;40;) (type 2) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h86f965898d6dcae1E (;41;) (type 7) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hca6ebb440490d618E (;42;) (type 12)
    call $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17h79c0c2fc1265609cE
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17h151e722c77c8bb03E (;43;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    call $managedSCAddress
    local.get 0
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$18get_back_transfers17hdabffa061c209ee1E (;44;) (type 5) (param i32)
    (local i32 i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 2
    call $managedGetBackTransfers
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17he06449e1e966226bE (;45;) (type 5) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const -21
    local.set 2
    block ;; label = @1
      block ;; label = @2
        i32.const 0
        i32.load8_u offset=141688
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
      i32.store8 offset=141688
      i32.const -21
      call $managedGetMultiDCDTCallValue
    end
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 2
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17ha47c0742771a71eaE
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          i32.const 131086
          i32.const 34
          call $signalError
          unreachable
        end
        i32.const -11
        local.set 2
        block ;; label = @3
          block ;; label = @4
            i32.const 0
            i32.load8_u offset=141684
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            i32.const -11
            i32.const 2147483647
            local.get 3
            select
            local.set 2
            br 1 (;@3;)
          end
          i32.const 0
          i32.const 1
          i32.store8 offset=141684
          i32.const -11
          call $bigIntGetCallValue
        end
        local.get 0
        local.get 2
        call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2239f74d755cf426E
        i32.store offset=12
        local.get 0
        i64.const 0
        i64.store
        local.get 0
        i32.const 2147483646
        i32.store offset=8
        br 1 (;@1;)
      end
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17hd331702546275c50E
      local.get 0
      local.get 1
      i64.load offset=8
      i64.store offset=8
      local.get 0
      local.get 1
      i64.load
      i64.store
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17ha47c0742771a71eaE (;46;) (type 7) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h30573c44611867b7E
    i32.const 4
    i32.shr_u
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17hd331702546275c50E (;47;) (type 2) (param i32 i32)
    (local i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    local.get 2
    i64.const 0
    i64.store offset=8
    local.get 1
    i32.const 0
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h681b242f66608b85E
    local.set 1
    local.get 2
    i32.const 0
    i32.store offset=28
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h0d79bc79e20643efE
    local.set 3
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h425fe75d69a08a0dE
    local.set 4
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h0d79bc79e20643efE
    local.set 5
    block ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131293
      i32.const 29
      call $signalError
      unreachable
    end
    local.get 0
    local.get 5
    i32.store offset=12
    local.get 0
    local.get 3
    i32.store offset=8
    local.get 0
    local.get 4
    i64.store
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h53e119eba2049245E (;48;) (type 7) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb09d49bce5dc1062E (;49;) (type 16) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131120
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6753e1d5436bec5eE
    local.tee 4
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 4
    i32.const 131143
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6753e1d5436bec5eE (;50;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6a41ebce43078192E (;51;) (type 7) (param i32) (result i32)
    local.get 0
    i32.const 131490
    i32.const 4
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h0b4d36df97fe6c6fE
  )
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h0b4d36df97fe6c6fE (;52;) (type 6) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h1082ef63154bd6deE
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h36eef1d7331fa5e9E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17ha82a40114309f6f3E (;53;) (type 7) (param i32) (result i32)
    (local i64)
    block ;; label = @1
      local.get 0
      i32.const 131494
      i32.const 4
      call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h1082ef63154bd6deE
      i32.const 131494
      i32.const 4
      call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417h9f65477bfe3cda08E
      local.tee 1
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 131494
      i32.const 4
      i32.const 131072
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb09d49bce5dc1062E
      unreachable
    end
    local.get 1
    i32.wrap_i64
  )
  (func $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h1082ef63154bd6deE (;54;) (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    i32.load offset=8
    local.set 4
    local.get 3
    i32.const 0
    i32.store offset=12
    block ;; label = @1
      local.get 0
      i32.load
      local.get 4
      i32.const 2
      i32.shl
      local.get 3
      i32.const 12
      i32.add
      i32.const 4
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h681b242f66608b85E
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=12
      local.set 2
      local.get 0
      local.get 4
      i32.const 1
      i32.add
      i32.store offset=8
      local.get 2
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
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h86f965898d6dcae1E
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
    i32.const 131146
    i32.const 17
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb09d49bce5dc1062E
    unreachable
  )
  (func $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417h9f65477bfe3cda08E (;55;) (type 17) (param i32 i32 i32) (result i64)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i64.const 0
    i64.store offset=8
    block ;; label = @1
      local.get 0
      call $mBufferGetLength
      local.tee 4
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131072
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb09d49bce5dc1062E
      unreachable
    end
    local.get 3
    local.get 3
    i32.const 8
    i32.add
    local.get 4
    call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h40e576d9a53d31ecE
    local.get 0
    i32.const 0
    local.get 3
    i32.load
    local.tee 4
    local.get 3
    i32.load offset=4
    local.tee 2
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E
    drop
    local.get 4
    local.get 2
    call $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E
    local.set 5
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 5
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17haadf6afe5ca3f48bE (;56;) (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h724c4fc1831356c2E
    local.set 3
    local.get 0
    i32.load
    local.set 4
    block ;; label = @1
      loop ;; label = @2
        local.get 4
        i32.const 0
        i32.load offset=141680
        i32.ge_s
        br_if 1 (;@1;)
        local.get 0
        local.get 4
        i32.const 1
        i32.add
        local.tee 5
        i32.store
        local.get 3
        local.get 4
        call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h53e119eba2049245E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hac68db40594b0179E
        local.get 5
        local.set 4
        br 0 (;@2;)
      end
    end
    local.get 3
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h724c4fc1831356c2E (;57;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    i32.const 131652
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hac68db40594b0179E (;58;) (type 2) (param i32 i32)
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h3023a5a57cb3a72dE (;59;) (type 3) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 0
      call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h53e119eba2049245E
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      i32.const 131381
      i32.const 2
      i32.const 131357
      i32.const 16
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb09d49bce5dc1062E
      unreachable
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h662c6ab58b94a6c3E (;60;) (type 3) (result i32)
    (local i32)
    i32.const 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    call $bigIntGetUnsignedArgument
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h67d51a902e7978f5E (;61;) (type 3) (result i32)
    (local i64)
    block ;; label = @1
      i32.const 0
      call $smallIntGetUnsignedArgument
      local.tee 0
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 131526
      i32.const 5
      i32.const 131072
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hb09d49bce5dc1062E
      unreachable
    end
    local.get 0
    i32.wrap_i64
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7d2c71dea46e313dE (;62;) (type 8) (param i32) (result i64)
    local.get 0
    call $smallIntGetUnsignedArgument
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbe75643f439a58edE (;63;) (type 3) (result i32)
    i32.const 1
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h53e119eba2049245E
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h4affca4eef3fe8deE
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h4affca4eef3fe8deE (;64;) (type 7) (param i32) (result i32)
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
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E
      drop
      i32.const 2147483646
      local.get 0
      local.get 1
      i32.load offset=12
      i32.const 1096238418
      i32.eq
      select
      local.set 0
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hecd04389ff222a83E (;65;) (type 3) (result i32)
    i32.const 1
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h53e119eba2049245E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5664bc6d4dec1fbcE (;66;) (type 2) (param i32 i32)
    block ;; label = @1
      local.get 1
      local.get 0
      i32.lt_u
      br_if 0 (;@1;)
      return
    end
    i32.const 131163
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17he3b4fa59ec88bae5E (;67;) (type 5) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=141680
      local.get 0
      i32.gt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131163
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h4d89b3d1031d7b5bE (;68;) (type 5) (param i32)
    block ;; label = @1
      call $getNumArguments
      local.get 0
      i32.ne
      br_if 0 (;@1;)
      return
    end
    i32.const 131181
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h3439d7b164d96e32E (;69;) (type 5) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=141680
      local.get 0
      i32.lt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131146
    i32.const 17
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf8c6363c33fb2e81E (;70;) (type 12)
    i32.const 0
    call $getNumArguments
    i32.store offset=141680
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple28callback_closure_args_loader17hb89e2404f4183e04E (;71;) (type 5) (param i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const -25
    call $managedGetCallbackClosure
    i32.const -23
    i32.const 131652
    i32.const 0
    call $mBufferSetBytes
    drop
    i32.const -25
    call $mBufferGetLength
    local.set 2
    local.get 1
    i32.const 24
    i32.add
    i32.const 0
    i32.store8
    local.get 1
    i32.const 20
    i32.add
    local.get 2
    i32.store
    local.get 1
    i32.const -25
    i32.store offset=16
    local.get 1
    local.get 2
    i32.store offset=12
    local.get 1
    i32.const 0
    i32.store offset=8
    local.get 1
    i32.const 16
    i32.add
    local.set 3
    i32.const 0
    local.set 4
    block ;; label = @1
      loop ;; label = @2
        block ;; label = @3
          local.get 2
          local.get 4
          i32.ne
          br_if 0 (;@3;)
          block ;; label = @4
            local.get 1
            i32.load8_u offset=24
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            i32.const 0
            i32.store offset=141672
            i32.const 0
            i32.const 0
            i32.store8 offset=141676
          end
          local.get 0
          i32.const -23
          call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h670db54a3eb4f6f2E
          local.get 1
          i32.const 32
          i32.add
          global.set $__stack_pointer
          return
        end
        local.get 1
        i32.const 0
        i32.store offset=28
        block ;; label = @3
          local.get 3
          local.get 4
          local.get 1
          i32.const 28
          i32.add
          i32.const 4
          call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17hfad147ace668221dE
          br_if 0 (;@3;)
          local.get 1
          local.get 1
          i32.load offset=16
          local.get 1
          i32.load offset=8
          i32.const 4
          i32.add
          local.tee 4
          local.get 1
          i32.const 28
          i32.add
          i32.const 4
          call $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E
          i32.wrap_i64
          local.tee 2
          call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h3a9d1ceb35593ff7E
          local.get 1
          i32.load
          i32.const 1
          i32.ne
          br_if 2 (;@1;)
          local.get 1
          i32.load offset=4
          local.set 5
          local.get 1
          local.get 4
          local.get 2
          i32.add
          local.tee 4
          i32.store offset=8
          i32.const -23
          local.get 5
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hac68db40594b0179E
          local.get 1
          i32.load offset=12
          local.set 2
          br 1 (;@2;)
        end
      end
      i32.const 131253
      i32.const 25
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17hfc4acf4c26b74ebbE
      unreachable
    end
    i32.const 131253
    i32.const 25
    call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h155e7b115eef9188E
    unreachable
  )
  (func $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h670db54a3eb4f6f2E (;72;) (type 2) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h59b4025791efbebcE
    local.set 2
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17hfad147ace668221dE (;73;) (type 13) (param i32 i32 i32 i32) (result i32)
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
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h30573c44611867b7E
          local.tee 6
          i32.const 10000
          i32.gt_u
          br_if 1 (;@2;)
          i32.const 0
          i32.load8_u offset=141676
          i32.const 255
          i32.and
          br_if 1 (;@2;)
          i32.const 0
          local.get 6
          i32.store offset=141672
          i32.const 0
          i32.const 1
          i32.store8 offset=141676
          local.get 4
          i32.const 8
          i32.add
          local.get 6
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h45df19b52ba162a8E
          local.get 5
          i32.const 0
          local.get 4
          i32.load offset=8
          local.get 4
          i32.load offset=12
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h681b242f66608b85E
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
        i32.load offset=141672
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h681b242f66608b85E
      local.set 0
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E (;74;) (type 18) (param i32 i32) (result i64)
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
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h3a9d1ceb35593ff7E (;75;) (type 16) (param i32 i32 i32 i32)
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
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17hfc4acf4c26b74ebbE (;76;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h155e7b115eef9188E
    unreachable
  )
  (func $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h155e7b115eef9188E (;77;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6753e1d5436bec5eE
    local.tee 1
    i32.const 131278
    i32.const 15
    call $mBufferAppendBytes
    drop
    local.get 1
    call $managedSignalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h59b4025791efbebcE (;78;) (type 7) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h30573c44611867b7E
    i32.const 2
    i32.shr_u
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$3new17h95d828760d07cb6dE (;79;) (type 1) (param i32 i32 i32)
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6753e1d5436bec5eE
    local.set 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h724c4fc1831356c2E
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h5561fc79849cd2e7E (;80;) (type 16) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17haa2b23f9dbefd8eaE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17haa2b23f9dbefd8eaE (;81;) (type 2) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h724c4fc1831356c2E
    drop
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17ha935d84f6bcd854eE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hac68db40594b0179E
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h56c38f2c821c5073E (;82;) (type 15) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block ;; label = @1
      local.get 3
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h30573c44611867b7E
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h16f643eae9631ceeE
      local.get 4
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h30573c44611867b7E
      local.set 6
      i32.const 0
      local.set 3
      loop ;; label = @2
        local.get 3
        i32.const 4
        i32.add
        local.tee 7
        local.get 6
        i32.gt_u
        br_if 1 (;@1;)
        local.get 5
        i32.const 0
        i32.store offset=12
        local.get 4
        local.get 3
        local.get 5
        i32.const 12
        i32.add
        i32.const 4
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h681b242f66608b85E
        drop
        local.get 2
        local.get 5
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
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h16f643eae9631ceeE
        local.get 7
        local.set 3
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 5
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h30573c44611867b7E (;83;) (type 7) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h16f643eae9631ceeE (;84;) (type 2) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h724c4fc1831356c2E
    drop
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h86f965898d6dcae1E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hac68db40594b0179E
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h681b242f66608b85E (;85;) (type 13) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17ha2c530a2757a4125E (;86;) (type 19) (param i32 i32 i32 i64)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h16cfd791229fbe0bE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h16cfd791229fbe0bE (;87;) (type 0) (param i32 i64)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h724c4fc1831356c2E
    local.tee 2
    local.get 1
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h54fdf565e4bcee25E
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hac68db40594b0179E
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17hd83311a2942fae0aE (;88;) (type 16) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h16f643eae9631ceeE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction19async_call_promises27AsyncCallPromises$LT$SA$GT$16register_promise17h6e0a1d335316de0bE (;89;) (type 5) (param i32)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const -25
    local.set 2
    local.get 1
    i32.const -25
    i32.store offset=12
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load offset=32
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 16
        i32.add
        i32.const 8
        i32.add
        local.tee 3
        local.get 0
        i32.const 32
        i32.add
        local.tee 4
        i32.const 8
        i32.add
        i32.load
        i32.store
        local.get 1
        local.get 4
        i64.load align=4
        local.tee 5
        i64.store offset=16
        local.get 1
        i32.load offset=20
        local.set 4
        i32.const -25
        i32.const 131652
        i32.const 0
        call $mBufferSetBytes
        drop
        local.get 3
        local.get 1
        i32.const 12
        i32.add
        call $_ZN139_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17ha9c3067cabb29ef8E
        local.get 5
        i32.wrap_i64
        local.set 3
        local.get 1
        i32.load offset=12
        local.set 2
        br 1 (;@1;)
      end
      i32.const 0
      local.set 4
      i32.const 131652
      local.set 3
      i32.const -25
      i32.const 131652
      i32.const 0
      call $mBufferSetBytes
      drop
    end
    local.get 0
    i32.load offset=24
    local.get 0
    i32.load offset=28
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 3
    local.get 4
    local.get 3
    local.get 4
    local.get 0
    i64.load offset=8
    local.get 0
    i64.load offset=16
    local.get 2
    call $managedCreateAsyncCall
    drop
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN139_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17ha9c3067cabb29ef8E (;90;) (type 2) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.load
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h86f965898d6dcae1E
    local.set 3
    local.get 2
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h30573c44611867b7E
    i32.store offset=24
    local.get 2
    i32.const 0
    i32.store offset=20
    local.get 2
    local.get 0
    i32.store offset=16
    loop ;; label = @1
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 16
      i32.add
      call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9d314697c24c36f1E
      block ;; label = @2
        local.get 2
        i32.load offset=8
        br_if 0 (;@2;)
        local.get 1
        local.get 3
        i32.store
        local.get 2
        i32.const 32
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 2
      local.get 2
      i32.load offset=12
      local.tee 4
      call $mBufferGetLength
      local.tee 0
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
      i32.store offset=28
      local.get 3
      local.get 2
      i32.const 28
      i32.add
      i32.const 4
      call $mBufferAppendBytes
      drop
      local.get 3
      local.get 4
      call $mBufferAppend
      drop
      br 0 (;@1;)
    end
  )
  (func $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall18async_call_promise17h3db7fad51935cabaE (;91;) (type 2) (param i32 i32)
    (local i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load offset=8
        local.tee 3
        i32.const 2147483646
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        i64.load
        local.set 4
        local.get 1
        i32.load offset=12
        local.set 5
        local.get 2
        i32.const 48
        i32.add
        local.get 1
        i32.const 32
        i32.add
        i64.load
        i64.store
        local.get 2
        i32.const 40
        i32.add
        local.get 1
        i32.const 24
        i32.add
        i64.load
        i64.store
        local.get 2
        local.get 1
        i64.load offset=16
        i64.store offset=32
        local.get 2
        call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h068e23de55647c07E
        i32.store offset=56
        local.get 2
        local.get 5
        i32.store offset=76
        local.get 2
        local.get 4
        i64.store offset=64
        local.get 2
        local.get 3
        i32.store offset=72
        local.get 2
        local.get 2
        i32.const 32
        i32.add
        local.get 2
        i32.const 64
        i32.add
        call $_ZN11dharitri_sc5types11interaction21contract_call_convert123_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_with_rewa..ContractCallWithRewa$LT$SA$C$OriginalResult$GT$$GT$36convert_to_single_transfer_dcdt_call17h8f671f5f584f8deeE
        local.get 2
        i32.load offset=24
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      i32.const 8
      i32.add
      local.get 1
      i32.const 24
      i32.add
      i64.load
      i64.store
      local.get 2
      i32.const 16
      i32.add
      local.get 1
      i32.const 32
      i32.add
      i64.load
      i64.store
      local.get 2
      local.get 1
      i64.load offset=16
      i64.store
      local.get 1
      i32.load offset=12
      local.set 1
    end
    local.get 0
    local.get 1
    i32.store offset=28
    local.get 0
    local.get 2
    i32.load offset=16
    i32.store offset=24
    local.get 0
    i32.const 0
    i32.store offset=32
    local.get 0
    i64.const 0
    i64.store offset=16
    local.get 0
    local.get 2
    i64.load offset=8
    i64.store offset=8
    local.get 0
    local.get 2
    i64.load
    i64.store
    local.get 2
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h068e23de55647c07E (;92;) (type 3) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    i64.const 0
    call $bigIntSetInt64
    local.get 0
  )
  (func $_ZN11dharitri_sc5types11interaction21contract_call_convert123_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_with_rewa..ContractCallWithRewa$LT$SA$C$OriginalResult$GT$$GT$36convert_to_single_transfer_dcdt_call17h8f671f5f584f8deeE (;93;) (type 1) (param i32 i32 i32)
    (local i32 i64 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i64.load
        local.tee 4
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=16
        local.set 5
        local.get 1
        i32.load offset=4
        local.set 6
        local.get 1
        i32.load
        local.set 7
        local.get 3
        i32.const 32
        i32.add
        i32.const 131241
        i32.const 12
        call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$3new17h95d828760d07cb6dE
        local.get 3
        i32.const 24
        i32.add
        local.get 3
        i32.load offset=32
        local.get 3
        i32.load offset=36
        local.get 2
        i32.load offset=8
        call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17hd83311a2942fae0aE
        local.get 3
        i32.const 16
        i32.add
        local.get 3
        i32.load offset=24
        local.get 3
        i32.load offset=28
        local.get 2
        i32.load offset=12
        call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h5561fc79849cd2e7E
        local.get 3
        i32.const 8
        i32.add
        local.get 3
        i32.load offset=16
        local.get 3
        i32.load offset=20
        local.get 7
        local.get 6
        call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h56c38f2c821c5073E
        local.get 3
        i32.load offset=12
        local.set 2
        local.get 3
        i32.load offset=8
        local.set 6
        br 1 (;@1;)
      end
      call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17h151e722c77c8bb03E
      local.set 5
      local.get 1
      i32.load offset=4
      local.set 6
      local.get 1
      i32.load
      local.set 7
      local.get 3
      i32.const 72
      i32.add
      i32.const 131226
      i32.const 15
      call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$3new17h95d828760d07cb6dE
      local.get 3
      i32.const 64
      i32.add
      local.get 3
      i32.load offset=72
      local.get 3
      i32.load offset=76
      local.get 2
      i32.load offset=8
      call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17hd83311a2942fae0aE
      local.get 3
      i32.const 56
      i32.add
      local.get 3
      i32.load offset=64
      local.get 3
      i32.load offset=68
      local.get 4
      call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17ha2c530a2757a4125E
      local.get 3
      i32.const 48
      i32.add
      local.get 3
      i32.load offset=56
      local.get 3
      i32.load offset=60
      local.get 2
      i32.load offset=12
      call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h5561fc79849cd2e7E
      local.get 3
      i32.load offset=48
      local.set 8
      local.get 3
      i32.load offset=52
      local.set 2
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h724c4fc1831356c2E
      drop
      local.get 2
      local.get 1
      i32.load offset=16
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h86f965898d6dcae1E
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hac68db40594b0179E
      local.get 3
      i32.const 40
      i32.add
      local.get 8
      local.get 2
      local.get 7
      local.get 6
      call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h56c38f2c821c5073E
      local.get 3
      i32.load offset=44
      local.set 2
      local.get 3
      i32.load offset=40
      local.set 6
    end
    local.get 1
    i64.load offset=8
    local.set 4
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h068e23de55647c07E
    i32.store offset=24
    local.get 0
    local.get 5
    i32.store offset=16
    local.get 0
    local.get 4
    i64.store offset=8
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 6
    i32.store
    local.get 3
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall43execute_on_dest_context_with_back_transfers17h28871a8f103e9581E (;94;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h068e23de55647c07E
    local.set 3
    local.get 1
    i32.load offset=16
    local.set 4
    local.get 1
    i32.load offset=4
    local.set 5
    local.get 1
    i32.load
    local.set 6
    block ;; label = @1
      local.get 1
      i64.load offset=8
      local.tee 7
      i64.const -1
      i64.ne
      br_if 0 (;@1;)
      call $getGasLeft
      local.set 7
    end
    local.get 7
    local.get 4
    local.get 3
    local.get 6
    local.get 5
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $managedExecuteOnDestContext
    drop
    call $cleanReturnData
    local.get 2
    i32.const 20
    i32.add
    local.get 1
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h670db54a3eb4f6f2E
    local.get 2
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$18get_back_transfers17hdabffa061c209ee1E
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
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction24contract_call_no_payment48ContractCallNoPayment$LT$SA$C$OriginalResult$GT$3new17h5413913aa8802c79E (;95;) (type 16) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6753e1d5436bec5eE
    local.set 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h724c4fc1831356c2E
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
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h0ed57fc5e47a3835E (;96;) (type 7) (param i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17hb78789cf1ed932a3E
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
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h3a9d1ceb35593ff7E
    block ;; label = @1
      local.get 1
      i32.load offset=8
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      i32.const 131278
      i32.const 15
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hde3f340f9d631cf3E
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17hb78789cf1ed932a3E (;97;) (type 7) (param i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h726aafcf698381fdE
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
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hde3f340f9d631cf3E (;98;) (type 2) (param i32 i32)
    (local i32)
    i32.const 131331
    i32.const 22
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6753e1d5436bec5eE
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 2
    call $managedSignalError
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E (;99;) (type 13) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h0029f2da9aebdbcbE (;100;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferAppend
    drop
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$9overwrite17hb005b810915b2049E (;101;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferSetBytes
    drop
  )
  (func $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17ha935d84f6bcd854eE (;102;) (type 7) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h36eef1d7331fa5e9E (;103;) (type 7) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferToBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h0d79bc79e20643efE (;104;) (type 4) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 0
    i32.store offset=12
    local.get 2
    local.get 0
    local.get 1
    i32.load
    local.tee 3
    local.get 3
    i32.const 4
    i32.add
    local.tee 3
    call $_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h7c61808e7b8d8924E
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
    local.get 1
    local.get 3
    i32.store
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
  (func $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h425fe75d69a08a0dE (;105;) (type 18) (param i32 i32) (result i64)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i64.const 0
    i64.store offset=8
    local.get 2
    local.get 0
    local.get 1
    i32.load
    local.tee 3
    local.get 3
    i32.const 8
    i32.add
    local.tee 3
    call $_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h7c61808e7b8d8924E
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
    local.get 1
    local.get 3
    i32.store
    local.get 2
    i64.load offset=8
    local.set 4
    local.get 2
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
  (func $_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h7c61808e7b8d8924E (;106;) (type 16) (param i32 i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        local.get 3
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
        local.get 3
        i32.const 16
        i32.gt_u
        br_if 1 (;@1;)
        local.get 0
        local.get 3
        local.get 2
        i32.sub
        i32.store offset=4
        local.get 0
        local.get 1
        local.get 2
        i32.add
        i32.store
        return
      end
      local.get 2
      local.get 3
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE
      unreachable
    end
    local.get 3
    i32.const 16
    call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE
    unreachable
  )
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E (;107;) (type 16) (param i32 i32 i32 i32)
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
  (func $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h45df19b52ba162a8E (;108;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    i32.const 131672
    i32.const 10000
    local.get 1
    call $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h23703a0756ce93d8E
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
  (func $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h95dd1a03576b7dfcE (;109;) (type 1) (param i32 i32 i32)
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
    i32.const 131672
    i32.add
    i32.store
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$14new_from_slice17h6bf19af74e21bcf4E (;110;) (type 5) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        i32.const 0
        i32.load8_u offset=141676
        local.tee 2
        br_if 0 (;@2;)
        i32.const 0
        i32.const 1
        i32.store8 offset=141676
        i32.const 0
        i32.const 0
        i32.store offset=141672
        local.get 1
        i32.const 8
        i32.add
        i32.const 0
        call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h45df19b52ba162a8E
        local.get 1
        i32.load offset=8
        local.get 1
        i32.load offset=12
        i32.const 131652
        i32.const 0
        call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h724c4fc1831356c2E
        local.set 3
        br 1 (;@1;)
      end
      i32.const 131652
      i32.const 0
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6753e1d5436bec5eE
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
  (func $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$19into_managed_buffer17h82392f5c1bdbea97E (;111;) (type 4) (param i32 i32) (result i32)
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
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h5b5d01298a665fc3E
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
      i32.store offset=141672
      i32.const 0
      i32.const 0
      i32.store8 offset=141676
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h5b5d01298a665fc3E (;112;) (type 5) (param i32)
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
      i32.load offset=141672
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
      i32.store offset=141672
      i32.const 0
      i32.const 0
      i32.store8 offset=141676
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h6253de17aac0652bE (;113;) (type 7) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17hea526656ac387473E (;114;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i64.const 0
    i64.store offset=8
    local.get 2
    local.get 1
    i64.extend_i32_u
    local.get 2
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hfa66c899aa066fc8E
    local.get 0
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6753e1d5436bec5eE
    call $mBufferStorageStore
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hfa66c899aa066fc8E (;115;) (type 20) (param i32 i64 i32)
    (local i32 i32)
    local.get 2
    local.get 1
    i64.const 56
    i64.shl
    local.get 1
    i64.const 65280
    i64.and
    i64.const 40
    i64.shl
    i64.or
    local.get 1
    i64.const 16711680
    i64.and
    i64.const 24
    i64.shl
    local.get 1
    i64.const 4278190080
    i64.and
    i64.const 8
    i64.shl
    i64.or
    i64.or
    local.get 1
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 1
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 1
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 1
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store align=1
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i64.eqz
        i32.eqz
        br_if 0 (;@2;)
        i32.const 131652
        local.set 3
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      i32.const 0
      local.set 4
      block ;; label = @2
        loop ;; label = @3
          local.get 4
          i32.const 8
          i32.eq
          br_if 1 (;@2;)
          block ;; label = @4
            local.get 2
            local.get 4
            i32.add
            local.tee 3
            i32.load8_u
            br_if 0 (;@4;)
            local.get 4
            i32.const 1
            i32.add
            local.set 4
            br 1 (;@3;)
          end
        end
        i32.const 8
        local.get 4
        i32.sub
        local.set 4
        br 1 (;@1;)
      end
      call $_ZN4core9panicking18panic_bounds_check17hdbf723dd9cf95e6aE
      unreachable
    end
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$13get_unchecked17h32e4c789402168f2E (;116;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$8item_key17hc067f221a69d391aE
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h6253de17aac0652bE
    local.tee 1
    call $mBufferGetLength
    local.set 2
    local.get 3
    i32.const 20
    i32.add
    i32.const 0
    i32.store8
    local.get 3
    i32.const 16
    i32.add
    local.get 2
    i32.store
    local.get 3
    local.get 1
    i32.store offset=12
    local.get 3
    local.get 2
    i32.store offset=8
    local.get 3
    i32.const 0
    i32.store offset=4
    local.get 3
    i32.const 4
    i32.add
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h0ed57fc5e47a3835E
    local.set 4
    local.get 3
    i32.const 4
    i32.add
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h0ed57fc5e47a3835E
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h4affca4eef3fe8deE
    local.set 5
    local.get 3
    i64.const 0
    i64.store offset=24
    local.get 3
    i32.const 4
    i32.add
    local.get 3
    i32.const 24
    i32.add
    i32.const 8
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h726aafcf698381fdE
    local.get 3
    i32.const 24
    i32.add
    i32.const 8
    call $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E
    local.set 6
    local.get 3
    i32.const 4
    i32.add
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h0ed57fc5e47a3835E
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h36eef1d7331fa5e9E
    local.set 7
    local.get 3
    i32.const 4
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17hb78789cf1ed932a3E
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h724c4fc1831356c2E
    local.set 1
    block ;; label = @1
      loop ;; label = @2
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 3
        i32.const 4
        i32.add
        call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h0ed57fc5e47a3835E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hac68db40594b0179E
        local.get 2
        i32.const -1
        i32.add
        local.set 2
        br 0 (;@2;)
      end
    end
    block ;; label = @1
      local.get 3
      i32.load offset=8
      local.get 3
      i32.load offset=4
      i32.ne
      br_if 0 (;@1;)
      block ;; label = @2
        local.get 3
        i32.load8_u offset=20
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        i32.store offset=141672
        i32.const 0
        i32.const 0
        i32.store8 offset=141676
      end
      local.get 0
      local.get 1
      i32.store offset=20
      local.get 0
      local.get 7
      i32.store offset=16
      local.get 0
      local.get 5
      i32.store offset=12
      local.get 0
      local.get 4
      i32.store offset=8
      local.get 0
      local.get 6
      i64.store
      local.get 3
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131072
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hde3f340f9d631cf3E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$8item_key17hc067f221a69d391aE (;117;) (type 4) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h86f965898d6dcae1E
    local.tee 0
    i32.const 131326
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
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h726aafcf698381fdE (;118;) (type 1) (param i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17hfad147ace668221dE
      i32.eqz
      br_if 0 (;@1;)
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h549cb38ac03c5fc2E
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$3len17h2bdf099d444d3352E (;119;) (type 7) (param i32) (result i32)
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
        call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h6253de17aac0652bE
        local.tee 0
        call $mBufferGetLength
        local.tee 2
        i32.const 9
        i32.ge_u
        br_if 0 (;@2;)
        local.get 1
        local.get 1
        i32.const 8
        i32.add
        local.get 2
        call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h40e576d9a53d31ecE
        local.get 0
        i32.const 0
        local.get 1
        i32.load
        local.tee 2
        local.get 1
        i32.load offset=4
        local.tee 3
        call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E
        drop
        local.get 2
        local.get 3
        call $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E
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
      i32.const 131072
      i32.const 14
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hde3f340f9d631cf3E
      unreachable
    end
    i32.const 131072
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hde3f340f9d631cf3E
    unreachable
  )
  (func $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h40e576d9a53d31ecE (;120;) (type 1) (param i32 i32 i32)
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
    i32.const 8
    local.get 2
    call $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h23703a0756ce93d8E
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
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$4push17ha2ee4a2af8c5e7b5E (;121;) (type 1) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$3len17h2bdf099d444d3352E
    i32.const 1
    i32.add
    local.tee 4
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$8item_key17hc067f221a69d391aE
    local.set 0
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$14new_from_slice17h6bf19af74e21bcf4E
    local.get 3
    local.get 3
    i32.load
    i32.store offset=8
    local.get 3
    local.get 3
    i32.load8_u offset=4
    i32.const 1
    i32.and
    i32.store8 offset=12
    local.get 2
    i32.load offset=8
    local.get 3
    i32.const 8
    i32.add
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17ha73ab5f5fe88b99dE
    local.get 2
    i32.load offset=12
    local.get 3
    i32.const 8
    i32.add
    call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hef7937320a5cee76E
    local.get 2
    i64.load
    local.get 3
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17ha79b14948d2d8a75E
    local.get 2
    i32.load offset=16
    local.get 3
    i32.const 8
    i32.add
    call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h5567c787a25cbf5aE
    local.get 2
    i32.const 20
    i32.add
    local.get 3
    i32.const 8
    i32.add
    call $_ZN145_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h21646fde79906287E
    local.get 0
    local.get 3
    i32.load offset=8
    local.get 3
    i32.load8_u offset=12
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$19into_managed_buffer17h82392f5c1bdbea97E
    call $mBufferStorageStore
    drop
    local.get 1
    local.get 4
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17hea526656ac387473E
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17ha73ab5f5fe88b99dE (;122;) (type 2) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h30573c44611867b7E
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
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h6848760a0820b0fcE
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.load8_u offset=4
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h30573c44611867b7E
          local.set 3
          i32.const 10000
          i32.const 0
          i32.load offset=141672
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
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hf356acc1599bcb2eE
          local.get 0
          i32.const 0
          local.get 2
          i32.load
          local.get 2
          i32.load offset=4
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h681b242f66608b85E
          drop
          i32.const 0
          local.get 3
          i32.store offset=141672
          br 2 (;@1;)
        end
        local.get 1
        i32.load
        local.get 0
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h0029f2da9aebdbcbE
        br 1 (;@1;)
      end
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h5b5d01298a665fc3E
      local.get 1
      i32.load
      local.get 0
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h0029f2da9aebdbcbE
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hef7937320a5cee76E (;123;) (type 2) (param i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 2147483646
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17ha73ab5f5fe88b99dE
      return
    end
    i32.const 4
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17hef694c165d74967fE
    local.get 1
    i32.const 131322
    i32.const 4
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h6848760a0820b0fcE
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17ha79b14948d2d8a75E (;124;) (type 21) (param i64 i32)
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
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h6848760a0820b0fcE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h5567c787a25cbf5aE (;125;) (type 2) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17ha935d84f6bcd854eE
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17ha73ab5f5fe88b99dE
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h21646fde79906287E (;126;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.tee 3
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h59b4025791efbebcE
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17hef694c165d74967fE
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h30573c44611867b7E
    i32.store offset=28
    local.get 2
    i32.const 0
    i32.store offset=24
    local.get 2
    local.get 0
    i32.store offset=20
    loop ;; label = @1
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 20
      i32.add
      call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9d314697c24c36f1E
      block ;; label = @2
        local.get 2
        i32.load offset=8
        br_if 0 (;@2;)
        local.get 2
        i32.const 32
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 2
      i32.load offset=12
      local.get 1
      call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17ha73ab5f5fe88b99dE
      br 0 (;@1;)
    end
  )
  (func $_ZN11dharitri_sc8log_util23event_topic_accumulator17he7fe000fec7371aeE (;127;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h724c4fc1831356c2E
    local.tee 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6753e1d5436bec5eE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hac68db40594b0179E
    local.get 2
  )
  (func $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9d314697c24c36f1E (;128;) (type 2) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h681b242f66608b85E
      drop
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
  (func $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h6848760a0820b0fcE (;129;) (type 1) (param i32 i32 i32)
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
          i32.load offset=141672
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
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hf356acc1599bcb2eE
          local.get 3
          i32.load offset=8
          local.get 3
          i32.load offset=12
          local.get 1
          local.get 2
          call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
          i32.const 0
          local.get 0
          i32.store offset=141672
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
      call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h5b5d01298a665fc3E
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
  (func $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hf356acc1599bcb2eE (;130;) (type 1) (param i32 i32 i32)
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
    i32.const 131672
    i32.const 10000
    call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h21129ecede4ce80eE
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17hef694c165d74967fE (;131;) (type 2) (param i32 i32)
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
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h6848760a0820b0fcE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN149_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u3b$$u20$N$u5d$$GT$$GT$4from17h7e4c2656c3f7cdfcE (;132;) (type 3) (result i32)
    i32.const 131413
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6753e1d5436bec5eE
  )
  (func $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..into_multi_value..IntoMultiValue$GT$16into_multi_value17h3235d04f98c8e8beE (;133;) (type 7) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h724c4fc1831356c2E
    local.set 2
    local.get 1
    local.get 0
    call $mBufferGetLength
    i32.store offset=20
    local.get 1
    i32.const 0
    i32.store offset=16
    local.get 1
    local.get 1
    i32.const 8
    i32.add
    i32.store offset=12
    loop (result i32) ;; label = @1
      local.get 1
      i32.const 24
      i32.add
      local.get 1
      i32.const 12
      i32.add
      call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h36ad89fe3f95abffE
      block ;; label = @2
        local.get 1
        i64.load offset=24
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 1
        i32.const 48
        i32.add
        global.set $__stack_pointer
        local.get 2
        return
      end
      local.get 1
      i32.load offset=44
      local.set 0
      local.get 2
      local.get 1
      i32.load offset=40
      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h16f643eae9631ceeE
      local.get 2
      local.get 1
      i64.load offset=32
      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h16cfd791229fbe0bE
      local.get 2
      local.get 0
      call $_ZN11dharitri_sc8log_util21serialize_event_topic17haa2b23f9dbefd8eaE
      br 0 (;@1;)
    end
  )
  (func $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h36ad89fe3f95abffE (;134;) (type 2) (param i32 i32)
    (local i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i64.const 0
    local.set 3
    block ;; label = @1
      local.get 1
      i32.load offset=4
      local.tee 4
      i32.const 16
      i32.add
      local.tee 5
      local.get 1
      i32.load offset=8
      i32.gt_u
      br_if 0 (;@1;)
      local.get 1
      i32.load
      local.set 6
      local.get 2
      i32.const 16
      i32.add
      i64.const 0
      i64.store
      local.get 2
      i64.const 0
      i64.store offset=8
      local.get 6
      i32.load
      local.get 4
      local.get 2
      i32.const 8
      i32.add
      i32.const 16
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h681b242f66608b85E
      drop
      local.get 2
      i32.const 0
      i32.store offset=28
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h0d79bc79e20643efE
      local.set 4
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h425fe75d69a08a0dE
      local.set 3
      local.get 0
      i32.const 20
      i32.add
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h0d79bc79e20643efE
      i32.store
      local.get 0
      i32.const 16
      i32.add
      local.get 4
      i32.store
      local.get 0
      local.get 3
      i64.store offset=8
      local.get 1
      local.get 5
      i32.store offset=4
      i64.const 1
      local.set 3
    end
    local.get 0
    local.get 3
    i64.store
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h1058e2af10ee1e8bE (;135;) (type 2) (param i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 2147483646
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h86f965898d6dcae1E
      i32.store
      return
    end
    local.get 1
    i32.load
    i32.const 131322
    i32.const 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$9overwrite17hb005b810915b2049E
  )
  (func $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h54fdf565e4bcee25E (;136;) (type 0) (param i32 i64)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i64.const 0
    i64.store offset=8
    local.get 2
    local.get 1
    local.get 2
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hfa66c899aa066fc8E
    local.get 0
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$9overwrite17hb005b810915b2049E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17promises_features19call_promise_direct13CallbackProxy16the_one_callback17h8b41a77ffa1d2442E (;137;) (type 1) (param i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h724c4fc1831356c2E
    local.tee 3
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h04bf6949baef18aeE
    local.get 3
    local.get 2
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17haa2b23f9dbefd8eaE
    local.get 0
    local.get 3
    i32.store offset=8
    local.get 0
    i32.const 16
    i32.store offset=4
    local.get 0
    i32.const 131474
    i32.store
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h04bf6949baef18aeE (;138;) (type 2) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h724c4fc1831356c2E
    local.tee 2
    local.get 1
    i64.extend_i32_u
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h54fdf565e4bcee25E
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hac68db40594b0179E
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h549cb38ac03c5fc2E (;139;) (type 12)
    i32.const 131278
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hde3f340f9d631cf3E
    unreachable
  )
  (func $_ZN4core3cmp9PartialEq2ne17h9f1fcbec5de156d2E (;140;) (type 7) (param i32) (result i32)
    local.get 0
    call $bigIntSign
    i32.const 0
    i32.ne
  )
  (func $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h23703a0756ce93d8E (;141;) (type 16) (param i32 i32 i32 i32)
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
    call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h21129ecede4ce80eE
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
  (func $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hea86474ddbd5a108E (;142;) (type 7) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    local.get 0
    i64.extend_i32_u
    call $bigIntSetInt64
    local.get 1
  )
  (func $_ZN5vault10ProxyTrait14retrieve_funds17hdcab6350a3822e6eE (;143;) (type 22) (param i32 i32 i32 i64 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 1
    call $_ZN98_$LT$vault..Proxy$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$15extract_address17h1f794566d87318cfE
    i32.const 131543
    i32.const 14
    call $_ZN11dharitri_sc5types11interaction24contract_call_no_payment48ContractCallNoPayment$LT$SA$C$OriginalResult$GT$3new17h5413913aa8802c79E
    local.get 5
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h724c4fc1831356c2E
    i32.store offset=28
    local.get 2
    local.get 5
    i32.const 28
    i32.add
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h1058e2af10ee1e8bE
    local.get 5
    i32.load offset=4
    local.tee 1
    local.get 5
    i32.load offset=28
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hac68db40594b0179E
    local.get 1
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h16cfd791229fbe0bE
    local.get 1
    local.get 4
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17haa2b23f9dbefd8eaE
    local.get 0
    i32.const 16
    i32.add
    local.get 5
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 8
    i32.add
    local.get 5
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 0
    local.get 5
    i64.load
    i64.store
    local.get 5
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN98_$LT$vault..Proxy$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$15extract_address17h1f794566d87318cfE (;144;) (type 7) (param i32) (result i32)
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
      i32.const 131608
      i32.const 25
      call $signalError
      unreachable
    end
    local.get 1
  )
  (func $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$13callback_data17h8f9850cb33ba35f7E (;145;) (type 5) (param i32)
    (local i32 i32)
    i32.const 131557
    i32.const 13
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h6753e1d5436bec5eE
    local.tee 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h86f965898d6dcae1E
    local.tee 2
    i32.const 131353
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
  (func $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$29retrieve_funds_callback_event17h37d1a2c0d90eade5E (;146;) (type 20) (param i32 i64 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const 131413
    i32.const 23
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17he7fe000fec7371aeE
    local.set 4
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h724c4fc1831356c2E
    i32.store offset=12
    local.get 0
    local.get 3
    i32.const 12
    i32.add
    call $_ZN168_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h1058e2af10ee1e8bE
    local.get 4
    local.get 3
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hac68db40594b0179E
    local.get 4
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h16cfd791229fbe0bE
    local.get 4
    local.get 2
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17haa2b23f9dbefd8eaE
    local.get 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h724c4fc1831356c2E
    call $managedWriteLog
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN81_$LT$C$u20$as$u20$promises_features..call_sync_bt..BackTransfersFeatureModule$GT$20back_transfers_event17h5439db2fc6bf7379E (;147;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 131570
    i32.const 13
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17he7fe000fec7371aeE
    local.tee 3
    local.get 0
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17haa2b23f9dbefd8eaE
    local.get 2
    local.get 1
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h30573c44611867b7E
    i32.store offset=28
    local.get 2
    i32.const 0
    i32.store offset=24
    local.get 2
    local.get 1
    i32.store offset=20
    block ;; label = @1
      loop ;; label = @2
        local.get 2
        i32.const 8
        i32.add
        local.get 2
        i32.const 20
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9d314697c24c36f1E
        local.get 2
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        local.get 2
        i32.load offset=12
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h16f643eae9631ceeE
        br 0 (;@2;)
      end
    end
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h724c4fc1831356c2E
    call $managedWriteLog
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $rust_begin_unwind (;148;) (type 12)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE (;149;) (type 12)
    i32.const 131652
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;150;) (type 12)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h4d89b3d1031d7b5bE
  )
  (func $callback_data (;151;) (type 12)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h4d89b3d1031d7b5bE
    local.get 0
    i32.const 8
    i32.add
    call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$13callback_data17h8f9850cb33ba35f7E
    local.get 0
    i32.const 68
    i32.add
    local.set 1
    local.get 0
    i32.const 16
    i32.add
    i32.const 8
    i32.add
    local.set 2
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$3len17h2bdf099d444d3352E
    local.set 4
    i32.const 1
    local.set 5
    block ;; label = @1
      loop ;; label = @2
        local.get 5
        local.get 4
        i32.gt_u
        br_if 1 (;@1;)
        local.get 2
        local.get 3
        local.get 5
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$13get_unchecked17h32e4c789402168f2E
        local.get 0
        i32.const 48
        i32.add
        i32.const 16
        i32.add
        local.tee 6
        local.get 2
        i32.const 16
        i32.add
        i64.load
        i64.store
        local.get 0
        i32.const 48
        i32.add
        i32.const 8
        i32.add
        local.tee 7
        local.get 2
        i32.const 8
        i32.add
        i64.load
        i64.store
        local.get 0
        local.get 2
        i64.load
        i64.store offset=48
        local.get 0
        call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$14new_from_slice17h6bf19af74e21bcf4E
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
        local.get 7
        i32.load
        local.get 0
        i32.const 72
        i32.add
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17ha73ab5f5fe88b99dE
        local.get 0
        i32.load offset=60
        local.get 0
        i32.const 72
        i32.add
        call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hef7937320a5cee76E
        local.get 0
        i64.load offset=48
        local.get 0
        i32.const 72
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17ha79b14948d2d8a75E
        local.get 6
        i32.load
        local.get 0
        i32.const 72
        i32.add
        call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h5567c787a25cbf5aE
        local.get 1
        local.get 0
        i32.const 72
        i32.add
        call $_ZN145_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h21646fde79906287E
        local.get 0
        i32.load offset=72
        local.get 0
        i32.load8_u offset=76
        call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$19into_managed_buffer17h82392f5c1bdbea97E
        call $mBufferFinish
        drop
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $callback_data_at_index (;152;) (type 12)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h4d89b3d1031d7b5bE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h67d51a902e7978f5E
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$13callback_data17h8f9850cb33ba35f7E
    block ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=8
      local.set 2
      local.get 0
      i32.load offset=12
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$3len17h2bdf099d444d3352E
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 40
      i32.add
      local.get 2
      local.get 1
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$13get_unchecked17h32e4c789402168f2E
      local.get 0
      local.get 0
      i32.load offset=60
      local.tee 2
      i32.store offset=36
      local.get 0
      local.get 0
      i32.load offset=56
      local.tee 3
      i32.store offset=32
      local.get 0
      local.get 0
      i32.load offset=52
      local.tee 1
      i32.store offset=28
      local.get 0
      local.get 0
      i32.load offset=48
      local.tee 4
      i32.store offset=24
      local.get 0
      local.get 0
      i64.load offset=40
      local.tee 5
      i64.store offset=16
      local.get 4
      call $mBufferFinish
      drop
      local.get 0
      i32.const 36
      i32.add
      local.set 4
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.const 2147483646
          i32.eq
          br_if 0 (;@3;)
          local.get 1
          call $mBufferFinish
          drop
          br 1 (;@2;)
        end
        i32.const 131322
        i32.const 4
        call $finish
      end
      local.get 5
      call $smallIntFinishUnsigned
      local.get 3
      call $bigIntFinishUnsigned
      local.get 0
      local.get 2
      call $mBufferGetLength
      i32.store offset=48
      local.get 0
      i32.const 0
      i32.store offset=44
      local.get 0
      local.get 4
      i32.store offset=40
      block ;; label = @2
        loop ;; label = @3
          local.get 0
          local.get 0
          i32.const 40
          i32.add
          call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9d314697c24c36f1E
          local.get 0
          i32.load
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.load offset=4
          call $mBufferFinish
          drop
          br 0 (;@3;)
        end
      end
      local.get 0
      i32.const 64
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131633
    i32.const 18
    call $signalError
    unreachable
  )
  (func $clear_callback_data (;153;) (type 12)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h4d89b3d1031d7b5bE
    local.get 0
    i32.const 8
    i32.add
    call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$13callback_data17h8f9850cb33ba35f7E
    local.get 0
    i32.load offset=8
    local.set 1
    local.get 0
    i32.load offset=12
    local.tee 2
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$3len17h2bdf099d444d3352E
    local.set 3
    i32.const 1
    local.set 4
    i32.const 0
    local.set 5
    block ;; label = @1
      loop ;; label = @2
        local.get 5
        i32.const 1
        i32.and
        br_if 1 (;@1;)
        local.get 4
        local.get 3
        i32.gt_u
        br_if 1 (;@1;)
        local.get 1
        local.get 4
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$8item_key17hc067f221a69d391aE
        local.set 5
        i32.const -20
        i32.const 131652
        i32.const 0
        call $mBufferSetBytes
        drop
        local.get 5
        i32.const -20
        call $mBufferStorageStore
        drop
        local.get 4
        local.get 3
        i32.ge_u
        local.set 5
        local.get 4
        local.get 4
        local.get 3
        i32.lt_u
        i32.add
        local.set 4
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 0
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17hea526656ac387473E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_promise_accept_funds (;154;) (type 12)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h4d89b3d1031d7b5bE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h3023a5a57cb3a72dE
    local.set 1
    local.get 0
    i32.const 48
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17he06449e1e966226bE
    call $getGasLeft
    local.set 2
    local.get 0
    local.get 1
    i32.store offset=92
    local.get 0
    local.get 0
    i32.const 92
    i32.add
    call $_ZN98_$LT$vault..Proxy$LT$A$GT$$u20$as$u20$dharitri_sc..contract_base..proxy_obj_base..ProxyObjBase$GT$15extract_address17h1f794566d87318cfE
    i32.const 131531
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction24contract_call_no_payment48ContractCallNoPayment$LT$SA$C$OriginalResult$GT$3new17h5413913aa8802c79E
    local.get 0
    local.get 2
    i64.const 1
    i64.shr_u
    i64.store offset=72
    local.get 0
    local.get 0
    i64.load offset=16
    i64.store offset=80
    local.get 0
    local.get 0
    i64.load
    i64.store offset=64
    local.get 0
    local.get 0
    i32.const 48
    i32.add
    call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall18async_call_promise17h3db7fad51935cabaE
    local.get 0
    call $_ZN11dharitri_sc5types11interaction19async_call_promises27AsyncCallPromises$LT$SA$GT$16register_promise17h6e0a1d335316de0bE
    local.get 0
    i32.const 96
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_promise_retrieve_funds (;155;) (type 12)
    (local i32 i32 i32 i64 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h4d89b3d1031d7b5bE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h3023a5a57cb3a72dE
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbe75643f439a58edE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7d2c71dea46e313dE
    local.set 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h662c6ab58b94a6c3E
    local.set 4
    call $getGasLeft
    local.set 5
    local.get 0
    local.get 1
    i32.store offset=60
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 60
    i32.add
    local.get 2
    local.get 3
    local.get 4
    call $_ZN5vault10ProxyTrait14retrieve_funds17hdcab6350a3822e6eE
    local.get 0
    i64.load offset=8
    local.set 3
    local.get 0
    i32.load offset=24
    local.set 1
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h068e23de55647c07E
    local.set 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h724c4fc1831356c2E
    i32.store offset=48
    local.get 0
    i32.const 23
    i32.store offset=44
    local.get 0
    i32.const 131413
    i32.store offset=40
    local.get 0
    local.get 2
    i32.store offset=36
    local.get 0
    local.get 1
    i32.store offset=32
    local.get 0
    i64.const 10000000
    i64.store offset=24
    local.get 0
    local.get 5
    i64.const -20000000
    i64.add
    i64.store offset=16
    local.get 0
    local.get 3
    i64.store offset=8
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types11interaction19async_call_promises27AsyncCallPromises$LT$SA$GT$16register_promise17h6e0a1d335316de0bE
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $promise_raw_single_token (;156;) (type 12)
    (local i32 i32 i32 i64 i64 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf8c6363c33fb2e81E
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h3439d7b164d96e32E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h3023a5a57cb3a72dE
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hecd04389ff222a83E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7d2c71dea46e313dE
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7d2c71dea46e313dE
    local.set 4
    local.get 0
    i32.const 4
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i32.const 131504
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17haadf6afe5ca3f48bE
    local.set 5
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17he3b4fa59ec88bae5E
    local.get 0
    i32.const 56
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17he06449e1e966226bE
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h724c4fc1831356c2E
    drop
    local.get 0
    local.get 1
    i32.store offset=88
    local.get 0
    local.get 3
    i64.store offset=80
    local.get 0
    local.get 5
    i32.store offset=76
    local.get 0
    local.get 2
    i32.store offset=72
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 56
    i32.add
    call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall18async_call_promise17h3db7fad51935cabaE
    local.get 0
    i64.load offset=32
    local.set 3
    local.get 0
    i64.load offset=8
    local.set 6
    local.get 0
    i64.load offset=16
    local.set 7
    local.get 0
    i32.const 40
    i32.add
    i32.const 1001
    i32.const 1002
    call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hea86474ddbd5a108E
    call $_ZN17promises_features19call_promise_direct13CallbackProxy16the_one_callback17h8b41a77ffa1d2442E
    local.get 0
    local.get 4
    i64.store offset=24
    local.get 0
    local.get 7
    i64.store offset=16
    local.get 0
    local.get 6
    i64.store offset=8
    local.get 0
    local.get 3
    i64.store offset=32
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types11interaction19async_call_promises27AsyncCallPromises$LT$SA$GT$16register_promise17h6e0a1d335316de0bE
    local.get 0
    i32.const 96
    i32.add
    global.set $__stack_pointer
  )
  (func $promise_raw_multi_transfer (;157;) (type 12)
    (local i32 i32 i32 i64 i32 i32 i64 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 144
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf8c6363c33fb2e81E
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h3439d7b164d96e32E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h3023a5a57cb3a72dE
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hecd04389ff222a83E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7d2c71dea46e313dE
    local.set 3
    local.get 0
    i32.const 3
    i32.store offset=40
    local.get 0
    i32.const 40
    i32.add
    i32.const 131508
    i32.const 18
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17haadf6afe5ca3f48bE
    local.set 4
    local.get 0
    i32.load offset=40
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17he3b4fa59ec88bae5E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h724c4fc1831356c2E
    local.set 5
    local.get 0
    i32.const 88
    i32.add
    local.get 4
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h670db54a3eb4f6f2E
    block ;; label = @1
      block ;; label = @2
        loop ;; label = @3
          block ;; label = @4
            local.get 0
            i32.load offset=96
            local.get 0
            i32.load offset=92
            i32.lt_u
            br_if 0 (;@4;)
            call $getGasLeft
            local.set 6
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h724c4fc1831356c2E
            local.set 7
            local.get 0
            local.get 1
            i32.store offset=56
            local.get 0
            local.get 6
            local.get 3
            i64.sub
            i64.const 9
            i64.mul
            i64.const 10
            i64.div_u
            local.tee 6
            i64.store offset=48
            local.get 0
            local.get 7
            i32.store offset=44
            local.get 0
            local.get 2
            i32.store offset=40
            local.get 0
            call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h068e23de55647c07E
            i32.store offset=64
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  local.get 5
                  call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17ha47c0742771a71eaE
                  br_table 1 (;@6;) 2 (;@5;) 0 (;@7;)
                end
                call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17h151e722c77c8bb03E
                local.set 8
                local.get 0
                local.get 5
                i32.store offset=140
                local.get 0
                i32.const 32
                i32.add
                i32.const 131206
                i32.const 20
                call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$3new17h95d828760d07cb6dE
                local.get 0
                i32.load offset=32
                local.set 9
                local.get 0
                i32.load offset=36
                local.set 4
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h724c4fc1831356c2E
                drop
                local.get 4
                local.get 1
                call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h86f965898d6dcae1E
                call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hac68db40594b0179E
                local.get 4
                local.get 5
                call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17ha47c0742771a71eaE
                call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h04bf6949baef18aeE
                local.get 0
                local.get 5
                call $mBufferGetLength
                i32.store offset=128
                local.get 0
                i32.const 0
                i32.store offset=124
                local.get 0
                local.get 0
                i32.const 140
                i32.add
                i32.store offset=120
                loop ;; label = @7
                  local.get 0
                  i32.const 88
                  i32.add
                  local.get 0
                  i32.const 120
                  i32.add
                  call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h36ad89fe3f95abffE
                  local.get 0
                  i64.load offset=88
                  i64.eqz
                  br_if 5 (;@2;)
                  local.get 0
                  i32.load offset=108
                  local.set 5
                  local.get 0
                  i32.const 24
                  i32.add
                  local.get 9
                  local.get 4
                  local.get 0
                  i32.load offset=104
                  call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17hd83311a2942fae0aE
                  local.get 0
                  i32.const 16
                  i32.add
                  local.get 0
                  i32.load offset=24
                  local.get 0
                  i32.load offset=28
                  local.get 0
                  i64.load offset=96
                  call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17ha2c530a2757a4125E
                  local.get 0
                  i32.const 8
                  i32.add
                  local.get 0
                  i32.load offset=16
                  local.get 0
                  i32.load offset=20
                  local.get 5
                  call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h5561fc79849cd2e7E
                  local.get 0
                  i32.load offset=12
                  local.set 4
                  local.get 0
                  i32.load offset=8
                  local.set 9
                  br 0 (;@7;)
                end
              end
              local.get 0
              i32.const 88
              i32.add
              i32.const 24
              i32.add
              local.get 0
              i32.const 40
              i32.add
              i32.const 24
              i32.add
              i64.load
              i64.store
              local.get 0
              i32.const 88
              i32.add
              i32.const 16
              i32.add
              local.get 0
              i32.const 40
              i32.add
              i32.const 16
              i32.add
              i64.load
              i64.store
              local.get 0
              i32.const 88
              i32.add
              i32.const 8
              i32.add
              local.get 0
              i32.const 40
              i32.add
              i32.const 8
              i32.add
              i64.load
              i64.store
              local.get 0
              local.get 0
              i64.load offset=40
              i64.store offset=88
              br 4 (;@1;)
            end
            local.get 0
            i32.const 120
            i32.add
            local.get 5
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17hd331702546275c50E
            local.get 0
            i32.const 88
            i32.add
            local.get 0
            i32.const 40
            i32.add
            local.get 0
            i32.const 120
            i32.add
            call $_ZN11dharitri_sc5types11interaction21contract_call_convert123_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_with_rewa..ContractCallWithRewa$LT$SA$C$OriginalResult$GT$$GT$36convert_to_single_transfer_dcdt_call17h8f671f5f584f8deeE
            br 3 (;@1;)
          end
          local.get 0
          i32.const 88
          i32.add
          i32.const 131373
          i32.const 8
          call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h1082ef63154bd6deE
          call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h86f965898d6dcae1E
          local.set 4
          local.get 0
          i32.const 88
          i32.add
          i32.const 131373
          i32.const 8
          call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h1082ef63154bd6deE
          i32.const 131373
          i32.const 8
          call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417h9f65477bfe3cda08E
          local.set 6
          local.get 0
          i32.const 88
          i32.add
          i32.const 131373
          i32.const 8
          call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h0b4d36df97fe6c6fE
          local.set 9
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
          i32.store offset=40
          local.get 0
          local.get 9
          i32.const 24
          i32.shl
          local.get 9
          i32.const 65280
          i32.and
          i32.const 8
          i32.shl
          i32.or
          local.get 9
          i32.const 8
          i32.shr_u
          i32.const 65280
          i32.and
          local.get 9
          i32.const 24
          i32.shr_u
          i32.or
          i32.or
          i32.store offset=52
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
          i64.store offset=44 align=4
          local.get 5
          local.get 0
          i32.const 40
          i32.add
          i32.const 16
          call $mBufferAppendBytes
          drop
          br 0 (;@3;)
        end
      end
      local.get 0
      local.get 9
      local.get 4
      local.get 2
      local.get 7
      call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h56c38f2c821c5073E
      local.get 0
      i64.load
      local.set 10
      local.get 0
      call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h068e23de55647c07E
      i32.store offset=112
      local.get 0
      local.get 8
      i32.store offset=104
      local.get 0
      local.get 6
      i64.store offset=96
      local.get 0
      local.get 10
      i64.store offset=88
    end
    local.get 0
    i64.load offset=88
    local.set 6
    local.get 0
    i64.load offset=96
    local.set 10
    local.get 0
    i32.load offset=104
    local.set 4
    local.get 0
    i32.load offset=112
    local.set 9
    local.get 0
    i32.const 72
    i32.add
    i32.const 2001
    i32.const 2002
    call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hea86474ddbd5a108E
    call $_ZN17promises_features19call_promise_direct13CallbackProxy16the_one_callback17h8b41a77ffa1d2442E
    local.get 0
    local.get 9
    i32.store offset=68
    local.get 0
    local.get 4
    i32.store offset=64
    local.get 0
    local.get 3
    i64.store offset=56
    local.get 0
    local.get 10
    i64.store offset=48
    local.get 0
    local.get 6
    i64.store offset=40
    local.get 0
    i32.const 40
    i32.add
    call $_ZN11dharitri_sc5types11interaction19async_call_promises27AsyncCallPromises$LT$SA$GT$16register_promise17h6e0a1d335316de0bE
    local.get 0
    i32.const 144
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_retrieve_funds_bt (;158;) (type 12)
    (local i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h4d89b3d1031d7b5bE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h3023a5a57cb3a72dE
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbe75643f439a58edE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7d2c71dea46e313dE
    local.set 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h662c6ab58b94a6c3E
    local.set 4
    local.get 0
    local.get 1
    i32.store offset=44
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.const 44
    i32.add
    local.get 2
    local.get 3
    local.get 4
    call $_ZN5vault10ProxyTrait14retrieve_funds17hdcab6350a3822e6eE
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall43execute_on_dest_context_with_back_transfers17h28871a8f103e9581E
    local.get 0
    i32.load offset=8
    local.set 1
    block ;; label = @1
      local.get 0
      i32.load offset=12
      local.tee 2
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17ha47c0742771a71eaE
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      call $_ZN4core3cmp9PartialEq2ne17h9f1fcbec5de156d2E
      br_if 0 (;@1;)
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hca6ebb440490d618E
      unreachable
    end
    local.get 0
    local.get 2
    call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..into_multi_value..IntoMultiValue$GT$16into_multi_value17h3235d04f98c8e8beE
    i32.store offset=16
    local.get 1
    local.get 0
    i32.const 16
    i32.add
    call $_ZN81_$LT$C$u20$as$u20$promises_features..call_sync_bt..BackTransfersFeatureModule$GT$20back_transfers_event17h5439db2fc6bf7379E
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_sync_retrieve_funds_bt_twice (;159;) (type 12)
    (local i32 i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h4d89b3d1031d7b5bE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h3023a5a57cb3a72dE
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbe75643f439a58edE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7d2c71dea46e313dE
    local.set 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h662c6ab58b94a6c3E
    local.set 4
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h86f965898d6dcae1E
    i32.store offset=44
    i32.const 2147483646
    local.set 5
    block ;; label = @1
      local.get 2
      i32.const 2147483646
      i32.eq
      br_if 0 (;@1;)
      local.get 2
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h86f965898d6dcae1E
      local.set 5
    end
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.const 44
    i32.add
    local.get 5
    local.get 3
    local.get 4
    call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2239f74d755cf426E
    call $_ZN5vault10ProxyTrait14retrieve_funds17hdcab6350a3822e6eE
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall43execute_on_dest_context_with_back_transfers17h28871a8f103e9581E
    local.get 0
    i32.load offset=8
    local.set 5
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load offset=12
          local.tee 6
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17ha47c0742771a71eaE
          i32.const 1
          i32.eq
          br_if 0 (;@3;)
          local.get 5
          call $_ZN4core3cmp9PartialEq2ne17h9f1fcbec5de156d2E
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 0
        local.get 6
        call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..into_multi_value..IntoMultiValue$GT$16into_multi_value17h3235d04f98c8e8beE
        i32.store offset=16
        local.get 5
        local.get 0
        i32.const 16
        i32.add
        call $_ZN81_$LT$C$u20$as$u20$promises_features..call_sync_bt..BackTransfersFeatureModule$GT$20back_transfers_event17h5439db2fc6bf7379E
        local.get 0
        local.get 1
        i32.store offset=44
        local.get 0
        i32.const 16
        i32.add
        local.get 0
        i32.const 44
        i32.add
        local.get 2
        local.get 3
        local.get 4
        call $_ZN5vault10ProxyTrait14retrieve_funds17hdcab6350a3822e6eE
        local.get 0
        local.get 0
        i32.const 16
        i32.add
        call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall43execute_on_dest_context_with_back_transfers17h28871a8f103e9581E
        local.get 0
        i32.load
        local.set 2
        local.get 0
        i32.load offset=4
        local.tee 1
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17ha47c0742771a71eaE
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        local.get 2
        call $_ZN4core3cmp9PartialEq2ne17h9f1fcbec5de156d2E
        br_if 1 (;@1;)
      end
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hca6ebb440490d618E
      unreachable
    end
    local.get 0
    local.get 1
    call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..into_multi_value..IntoMultiValue$GT$16into_multi_value17h3235d04f98c8e8beE
    i32.store offset=16
    local.get 2
    local.get 0
    i32.const 16
    i32.add
    call $_ZN81_$LT$C$u20$as$u20$promises_features..call_sync_bt..BackTransfersFeatureModule$GT$20back_transfers_event17h5439db2fc6bf7379E
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_promise_retrieve_funds_back_transfers (;160;) (type 12)
    (local i32 i32 i32 i64 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h4d89b3d1031d7b5bE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h3023a5a57cb3a72dE
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbe75643f439a58edE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7d2c71dea46e313dE
    local.set 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h662c6ab58b94a6c3E
    local.set 4
    call $getGasLeft
    local.set 5
    local.get 0
    local.get 1
    i32.store offset=60
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 60
    i32.add
    local.get 2
    local.get 3
    local.get 4
    call $_ZN5vault10ProxyTrait14retrieve_funds17hdcab6350a3822e6eE
    local.get 0
    i64.load offset=8
    local.set 3
    local.get 0
    i32.load offset=24
    local.set 1
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h068e23de55647c07E
    local.set 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h724c4fc1831356c2E
    i32.store offset=48
    local.get 0
    i32.const 38
    i32.store offset=44
    local.get 0
    i32.const 131436
    i32.store offset=40
    local.get 0
    local.get 2
    i32.store offset=36
    local.get 0
    local.get 1
    i32.store offset=32
    local.get 0
    i64.const 10000000
    i64.store offset=24
    local.get 0
    local.get 5
    i64.const -20000000
    i64.add
    i64.store offset=16
    local.get 0
    local.get 3
    i64.store offset=8
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types11interaction19async_call_promises27AsyncCallPromises$LT$SA$GT$16register_promise17h6e0a1d335316de0bE
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $retrieve_funds_callback (;161;) (type 12)
    (local i32 i32 i64 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple28callback_closure_args_loader17hb89e2404f4183e04E
    local.get 0
    i32.load offset=12
    local.get 0
    i32.load offset=16
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5664bc6d4dec1fbcE
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19rewa_or_single_dcdt17he06449e1e966226bE
    local.get 0
    i32.load offset=16
    local.tee 1
    local.get 0
    i64.load offset=8
    local.tee 2
    local.get 0
    i32.load offset=20
    local.tee 3
    call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$29retrieve_funds_callback_event17h37d1a2c0d90eade5E
    local.get 0
    call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$13callback_data17h8f9850cb33ba35f7E
    local.get 0
    i32.load offset=4
    local.set 4
    local.get 0
    i32.load
    local.set 5
    call $_ZN149_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u3b$$u20$N$u5d$$GT$$GT$4from17h7e4c2656c3f7cdfcE
    local.set 6
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h724c4fc1831356c2E
    local.set 7
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    local.get 6
    i32.store offset=16
    local.get 0
    local.get 7
    i32.store offset=28
    local.get 0
    local.get 3
    i32.store offset=24
    local.get 0
    local.get 2
    i64.store offset=8
    local.get 5
    local.get 4
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$4push17ha2ee4a2af8c5e7b5E
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $the_one_callback (;162;) (type 12)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 4
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple28callback_closure_args_loader17hb89e2404f4183e04E
    local.get 0
    i32.const 4
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17ha82a40114309f6f3E
    local.set 1
    local.get 0
    i32.const 16
    i32.add
    i32.const 8
    i32.add
    local.tee 2
    local.get 0
    i32.const 4
    i32.add
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 0
    local.get 0
    i64.load offset=4 align=4
    i64.store offset=16
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6a41ebce43078192E
    local.set 3
    local.get 0
    i32.load offset=20
    local.get 2
    i32.load
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5664bc6d4dec1fbcE
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17hf8c6363c33fb2e81E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h3439d7b164d96e32E
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    i32.const 16
    i32.add
    i32.const 131498
    i32.const 6
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17haadf6afe5ca3f48bE
    local.set 2
    local.get 0
    i32.load offset=16
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17he3b4fa59ec88bae5E
    local.get 0
    local.get 2
    i32.store offset=4
    i32.const 131583
    i32.const 25
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17he7fe000fec7371aeE
    local.tee 2
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h04bf6949baef18aeE
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17haa2b23f9dbefd8eaE
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h724c4fc1831356c2E
    i32.store offset=16
    local.get 0
    i32.const 4
    i32.add
    local.get 0
    i32.const 16
    i32.add
    call $_ZN139_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17ha9c3067cabb29ef8E
    local.get 2
    local.get 0
    i32.load offset=16
    call $managedWriteLog
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $retrieve_funds_back_transfers_callback (;163;) (type 12)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 72
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple28callback_closure_args_loader17hb89e2404f4183e04E
    local.get 0
    i32.load offset=76
    local.get 0
    i32.load offset=80
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5664bc6d4dec1fbcE
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$18get_back_transfers17hdabffa061c209ee1E
    local.get 0
    local.get 0
    i32.load offset=20
    local.tee 1
    i32.store offset=32
    local.get 0
    local.get 0
    i32.load offset=16
    local.tee 2
    i32.store offset=28
    local.get 0
    i32.const 32
    i32.add
    local.set 3
    block ;; label = @1
      local.get 2
      call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h068e23de55647c07E
      call $bigIntCmp
      i32.eqz
      br_if 0 (;@1;)
      i32.const 2147483646
      i64.const 0
      local.get 2
      call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$29retrieve_funds_callback_event17h37d1a2c0d90eade5E
      local.get 0
      i32.const 8
      i32.add
      call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$13callback_data17h8f9850cb33ba35f7E
      local.get 0
      i32.load offset=12
      local.set 4
      local.get 0
      i32.load offset=8
      local.set 5
      call $_ZN149_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u3b$$u20$N$u5d$$GT$$GT$4from17h7e4c2656c3f7cdfcE
      local.set 6
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h724c4fc1831356c2E
      local.set 7
      local.get 0
      i32.const 2147483646
      i32.store offset=84
      local.get 0
      local.get 6
      i32.store offset=80
      local.get 0
      local.get 7
      i32.store offset=92
      local.get 0
      local.get 2
      i32.store offset=88
      local.get 0
      i64.const 0
      i64.store offset=72
      local.get 5
      local.get 4
      local.get 0
      i32.const 72
      i32.add
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$4push17ha2ee4a2af8c5e7b5E
    end
    local.get 0
    local.get 1
    call $mBufferGetLength
    i32.store offset=44
    local.get 0
    i32.const 0
    i32.store offset=40
    local.get 0
    local.get 3
    i32.store offset=36
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 48
        i32.add
        local.get 0
        i32.const 36
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h36ad89fe3f95abffE
        local.get 0
        i64.load offset=48
        i64.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=64
        local.tee 2
        local.get 0
        i64.load offset=56
        local.tee 8
        local.get 0
        i32.load offset=68
        local.tee 1
        call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$29retrieve_funds_callback_event17h37d1a2c0d90eade5E
        local.get 0
        call $_ZN61_$LT$C$u20$as$u20$promises_features..common..CommonModule$GT$13callback_data17h8f9850cb33ba35f7E
        local.get 0
        i32.load offset=4
        local.set 3
        local.get 0
        i32.load
        local.set 4
        call $_ZN149_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u3b$$u20$N$u5d$$GT$$GT$4from17h7e4c2656c3f7cdfcE
        local.set 5
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h724c4fc1831356c2E
        local.set 6
        local.get 0
        local.get 2
        i32.store offset=84
        local.get 0
        local.get 5
        i32.store offset=80
        local.get 0
        local.get 6
        i32.store offset=92
        local.get 0
        local.get 1
        i32.store offset=88
        local.get 0
        local.get 8
        i64.store offset=72
        local.get 4
        local.get 3
        local.get 0
        i32.const 72
        i32.add
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$4push17ha2ee4a2af8c5e7b5E
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 96
    i32.add
    global.set $__stack_pointer
  )
  (func $callBack (;164;) (type 12))
  (func $memcpy (;165;) (type 6) (param i32 i32 i32) (result i32)
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
  (func $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E (;166;) (type 12)
    call $rust_begin_unwind
    unreachable
  )
  (func $_ZN4core9panicking18panic_bounds_check17hdbf723dd9cf95e6aE (;167;) (type 12)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (table (;0;) 1 1 funcref)
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 141689)
  (global (;2;) i32 i32.const 141696)
  (export "memory" (memory 0))
  (export "init" (func $init))
  (export "callback_data" (func $callback_data))
  (export "callback_data_at_index" (func $callback_data_at_index))
  (export "clear_callback_data" (func $clear_callback_data))
  (export "forward_promise_accept_funds" (func $forward_promise_accept_funds))
  (export "forward_promise_retrieve_funds" (func $forward_promise_retrieve_funds))
  (export "promise_raw_single_token" (func $promise_raw_single_token))
  (export "promise_raw_multi_transfer" (func $promise_raw_multi_transfer))
  (export "forward_sync_retrieve_funds_bt" (func $forward_sync_retrieve_funds_bt))
  (export "forward_sync_retrieve_funds_bt_twice" (func $forward_sync_retrieve_funds_bt_twice))
  (export "forward_promise_retrieve_funds_back_transfers" (func $forward_promise_retrieve_funds_back_transfers))
  (export "retrieve_funds_callback" (func $retrieve_funds_callback))
  (export "the_one_callback" (func $the_one_callback))
  (export "retrieve_funds_back_transfers_callback" (func $retrieve_funds_back_transfers_callback))
  (export "callBack" (func $callBack))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data $.rodata (;0;) (i32.const 131072) "input too longincorrect number of DCDT transfersargument decode error (): too few argumentstoo many argumentswrong number of argumentsMultiDCDTNFTTransferDCDTNFTTransferDCDTTransferserializer decode error: input too shortManagedVec index out of rangeREWA.itemstorage decode error: .lenbad array lengthvar argstoOnly one DCDT payment expectedretrieve_funds_callbackretrieve_funds_back_transfers_callbackthe_one_callbackarg2arg1resultargstoken_payment_argsindexaccept_fundsretrieve_fundscallback_databack_tranfersasync_call_event_callbackrecipient address not setindex out of range\00panic occurred")
  (data $.data (;1;) (i32.const 131668) "\9c\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.76.0-nightly (d86d65bbc 2023-12-10)")
  )
)