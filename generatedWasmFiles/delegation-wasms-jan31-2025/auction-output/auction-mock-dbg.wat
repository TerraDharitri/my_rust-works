(module $auction_mock_wasm.wasm
  (type (;0;) (func (param i32 i64)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i32)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32) (result i32)))
  (type (;8;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;9;) (func (param i32) (result i64)))
  (type (;10;) (func (param i32 i32 i64 i32 i32) (result i32)))
  (type (;11;) (func))
  (type (;12;) (func (param i64)))
  (type (;13;) (func (param i32 i32 i32 i32)))
  (type (;14;) (func (param i32 i32) (result i64)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;0;) (type 0)))
  (import "env" "bigIntAdd" (func $bigIntAdd (;1;) (type 1)))
  (import "env" "signalError" (func $signalError (;2;) (type 2)))
  (import "env" "mBufferNew" (func $mBufferNew (;3;) (type 3)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;4;) (type 4)))
  (import "env" "bigIntGetCallValue" (func $bigIntGetCallValue (;5;) (type 5)))
  (import "env" "managedGetMultiDCDTCallValue" (func $managedGetMultiDCDTCallValue (;6;) (type 5)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;7;) (type 4)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;8;) (type 6)))
  (import "env" "managedSignalError" (func $managedSignalError (;9;) (type 5)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;10;) (type 6)))
  (import "env" "mBufferEq" (func $mBufferEq (;11;) (type 4)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;12;) (type 7)))
  (import "env" "mBufferCopyByteSlice" (func $mBufferCopyByteSlice (;13;) (type 8)))
  (import "env" "bigIntGetUnsignedArgument" (func $bigIntGetUnsignedArgument (;14;) (type 2)))
  (import "env" "getArgumentLength" (func $getArgumentLength (;15;) (type 7)))
  (import "env" "getArgument" (func $getArgument (;16;) (type 4)))
  (import "env" "smallIntGetUnsignedArgument" (func $smallIntGetUnsignedArgument (;17;) (type 9)))
  (import "env" "getNumArguments" (func $getNumArguments (;18;) (type 3)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;19;) (type 7)))
  (import "env" "managedCaller" (func $managedCaller (;20;) (type 5)))
  (import "env" "managedTransferValueExecute" (func $managedTransferValueExecute (;21;) (type 10)))
  (import "env" "mBufferGetBytes" (func $mBufferGetBytes (;22;) (type 4)))
  (import "env" "bigIntMul" (func $bigIntMul (;23;) (type 1)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;24;) (type 4)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;25;) (type 4)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;26;) (type 4)))
  (import "env" "bigIntCmp" (func $bigIntCmp (;27;) (type 4)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;28;) (type 11)))
  (import "env" "smallIntFinishUnsigned" (func $smallIntFinishUnsigned (;29;) (type 12)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;30;) (type 8)))
  (table (;0;) 1 1 funcref)
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 131693)
  (global (;2;) i32 i32.const 131696)
  (export "memory" (memory 0))
  (export "stake" (func $stake))
  (export "unStake" (func $unStake))
  (export "unBond" (func $unBond))
  (export "unStakeTokens" (func $unStakeTokens))
  (export "unBondTokens" (func $unBondTokens))
  (export "claim" (func $claim))
  (export "unJail" (func $unJail))
  (export "setBlsDeliberateError" (func $setBlsDeliberateError))
  (export "getBlsDeliberateError" (func $getBlsDeliberateError))
  (export "callBack" (func $callBack))
  (export "init" (func $claim))
  (export "unStakeNodes" (func $unStake))
  (export "unBondNodes" (func $unBond))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (func $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hebed04f5f16a00cfE (;31;) (type 7) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9761f2c91c0c3ad5E
    local.tee 1
    i64.const 0
    call $bigIntSetInt64
    local.get 1
    local.get 1
    local.get 0
    call $bigIntAdd
    local.get 1
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9761f2c91c0c3ad5E (;32;) (type 3) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=131680
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=131680
    local.get 0
  )
  (func $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17hb4fe983728573dffE (;33;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $signalError
    unreachable
  )
  (func $_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74e6be0d742dfb66E (;34;) (type 2) (param i32 i32)
    (local i32 i32)
    i32.const 0
    local.set 2
    block ;; label = @1
      local.get 1
      i32.load offset=4
      local.get 1
      i32.load offset=8
      i32.ge_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h2b3178e9ccff8ae9E
      i32.store offset=8
      local.get 0
      local.get 1
      i32.load offset=12
      local.tee 3
      i32.store offset=4
      i32.const 1
      local.set 2
      local.get 1
      local.get 3
      i32.const 1
      i32.add
      i32.store offset=12
    end
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h2b3178e9ccff8ae9E (;35;) (type 7) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 11
    i32.add
    local.get 0
    call $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd6a035843e170de3E
    block ;; label = @1
      local.get 1
      i32.load8_u offset=11
      br_if 0 (;@1;)
      i32.const 131499
      i32.const 8
      i32.const 131212
      i32.const 17
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h7cd4288013ed9fe1E
      unreachable
    end
    local.get 1
    i32.load offset=12 align=1
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
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9cfedb97aeb6c403E
    local.set 0
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9cfedb97aeb6c403E (;36;) (type 7) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hc4e576d95ccc0d83E (;37;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17hb4fe983728573dffE
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$22rewa_direct_non_strict17h72efa5f77218c570E (;38;) (type 3) (result i32)
    block ;; label = @1
      i32.const 1
      call $_ZN11dharitri_sc3api13managed_types14static_var_api16StaticVarApiImpl21flag_is_set_or_update17h4a2bb07fc6948e94E
      br_if 0 (;@1;)
      i32.const -35
      call $bigIntGetCallValue
    end
    i32.const -35
  )
  (func $_ZN11dharitri_sc3api13managed_types14static_var_api16StaticVarApiImpl21flag_is_set_or_update17h4a2bb07fc6948e94E (;39;) (type 7) (param i32) (result i32)
    (local i32 i32)
    block ;; label = @1
      i32.const 0
      i32.load8_u offset=131692
      local.tee 1
      local.get 0
      i32.and
      i32.const 255
      i32.and
      local.get 0
      i32.const 255
      i32.and
      i32.eq
      local.tee 2
      br_if 0 (;@1;)
      i32.const 0
      local.get 1
      local.get 0
      i32.or
      i32.store8 offset=131692
    end
    local.get 2
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28all_dcdt_transfers_unchecked17h9f462c5e3b67528aE (;40;) (type 3) (result i32)
    block ;; label = @1
      i32.const 2
      call $_ZN11dharitri_sc3api13managed_types14static_var_api16StaticVarApiImpl21flag_is_set_or_update17h4a2bb07fc6948e94E
      br_if 0 (;@1;)
      i32.const -38
      call $managedGetMultiDCDTCallValue
    end
    i32.const -38
  )
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hc4e4c02c36e7e3b6E (;41;) (type 7) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9761f2c91c0c3ad5E
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h7cd4288013ed9fe1E (;42;) (type 13) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131186
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h8ae65db73063d52dE
    local.tee 4
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 4
    i32.const 131209
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h8ae65db73063d52dE (;43;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9761f2c91c0c3ad5E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h795c319e5ce307ecE (;44;) (type 11)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28all_dcdt_transfers_unchecked17h9f462c5e3b67528aE
              local.tee 1
              call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17ha76ec395b522aacfE
              br_table 1 (;@4;) 2 (;@3;) 0 (;@5;)
            end
            i32.const 131157
            i32.const 29
            call $signalError
            unreachable
          end
          call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$22rewa_direct_non_strict17h72efa5f77218c570E
          drop
          br 1 (;@2;)
        end
        local.get 0
        local.get 1
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17ha55beeca1f7fb139E
        i32.const -40
        i32.const 131316
        i32.const 11
        call $mBufferSetBytes
        drop
        i32.const -40
        local.get 0
        i32.load offset=8
        call $mBufferEq
        i32.const 0
        i32.le_s
        br_if 1 (;@1;)
      end
      local.get 0
      i32.const 16
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131120
    i32.const 37
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17ha76ec395b522aacfE (;45;) (type 7) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h23c87a5f243946f7E
    i32.const 4
    i32.shr_u
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17ha55beeca1f7fb139E (;46;) (type 2) (param i32 i32)
    (local i32 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    i64.const 0
    i64.store
    local.get 2
    i64.const 0
    i64.store
    block ;; label = @1
      local.get 1
      local.get 2
      i32.const 16
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h352d7c838d90c5fbE
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131287
      i32.const 29
      call $signalError
      unreachable
    end
    local.get 2
    i64.load offset=4 align=4
    local.set 3
    local.get 2
    i32.load
    local.set 1
    local.get 0
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
    i32.store offset=12
    local.get 0
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
    i32.store offset=8
    local.get 0
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
    i64.store
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc2io15call_value_init18arg_payment_amount17he062504e0fdfbce4E (;47;) (type 3) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28all_dcdt_transfers_unchecked17h9f462c5e3b67528aE
            local.tee 1
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17ha76ec395b522aacfE
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          i32.const 131086
          i32.const 34
          call $signalError
          unreachable
        end
        i32.const 131316
        i32.const 11
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h8ae65db73063d52dE
        drop
        call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$22rewa_direct_non_strict17h72efa5f77218c570E
        call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hebed04f5f16a00cfE
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17ha55beeca1f7fb139E
      local.get 0
      i32.load offset=8
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9cfedb97aeb6c403E
      drop
      local.get 0
      i32.load offset=12
      call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hebed04f5f16a00cfE
      local.set 1
    end
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h2413e7a61aeecc73E (;48;) (type 7) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6cc985cf6a88b63eE
    local.set 2
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          loop ;; label = @4
            local.get 0
            i32.load
            i32.const 0
            i32.load offset=131688
            i32.ge_s
            br_if 1 (;@3;)
            local.get 0
            i32.const 131456
            i32.const 8
            call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h39274d2b35f654f0E
            call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hc4e4c02c36e7e3b6E
            local.tee 3
            call $mBufferGetLength
            local.set 4
            local.get 3
            i32.const 0
            i32.const 96
            call $mBufferNew
            local.tee 5
            call $mBufferCopyByteSlice
            br_if 2 (;@2;)
            local.get 4
            i32.const 96
            i32.ne
            br_if 3 (;@1;)
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
            br 0 (;@4;)
          end
        end
        local.get 1
        i32.const 16
        i32.add
        global.set $__stack_pointer
        local.get 2
        return
      end
      i32.const 131456
      i32.const 8
      i32.const 131272
      i32.const 15
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h7cd4288013ed9fe1E
      unreachable
    end
    i32.const 131456
    i32.const 8
    i32.const 131072
    i32.const 14
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h7cd4288013ed9fe1E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6cc985cf6a88b63eE (;49;) (type 3) (result i32)
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h8ae65db73063d52dE
  )
  (func $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h39274d2b35f654f0E (;50;) (type 6) (param i32 i32 i32) (result i32)
    (local i32)
    block ;; label = @1
      local.get 0
      i32.load
      local.tee 3
      i32.const 0
      i32.load offset=131688
      i32.lt_s
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131212
      i32.const 17
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h7cd4288013ed9fe1E
      unreachable
    end
    local.get 0
    local.get 3
    i32.const 1
    i32.add
    i32.store
    local.get 3
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hed26a91150016219E (;51;) (type 6) (param i32 i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6cc985cf6a88b63eE
    local.set 3
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.load
        i32.const 0
        i32.load offset=131688
        i32.ge_s
        br_if 1 (;@1;)
        local.get 3
        local.get 0
        local.get 1
        local.get 2
        call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h39274d2b35f654f0E
        call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hc4e4c02c36e7e3b6E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hda12b7eb32221c7eE
        br 0 (;@2;)
      end
    end
    local.get 3
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hda12b7eb32221c7eE (;52;) (type 2) (param i32 i32)
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h07322a469cb0a6c5E (;53;) (type 3) (result i32)
    (local i32)
    i32.const 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9761f2c91c0c3ad5E
    local.tee 0
    call $bigIntGetUnsignedArgument
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h695c053664121788E (;54;) (type 5) (param i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 8
    i32.add
    i32.const 0
    call $getArgumentLength
    local.tee 2
    call $_ZN19dharitri_chain_core5types11boxed_bytes10BoxedBytes5zeros17hbf5522775e057848E
    local.get 1
    i32.load offset=12
    local.set 3
    local.get 1
    i32.load offset=8
    local.set 4
    block ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.get 4
      call $getArgument
      drop
    end
    local.get 0
    local.get 4
    i32.store
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN19dharitri_chain_core5types11boxed_bytes10BoxedBytes5zeros17hbf5522775e057848E (;55;) (type 2) (param i32 i32)
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        i32.load8_u offset=131684
        drop
        call $_ZN120_$LT$dharitri_sc_wasm_adapter..wasm_alloc..fail_allocator..FailAllocator$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17hc763a891340489c9E
        unreachable
      end
      i32.const 0
      i32.const 1
      call $_ZN5alloc7raw_vec12handle_error17hcd6c5f33527353caE
      unreachable
    end
    local.get 0
    i64.const 1
    i64.store
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7aa27ad0ec35ba11E (;56;) (type 3) (result i32)
    (local i64)
    block ;; label = @1
      i32.const 1
      call $smallIntGetUnsignedArgument
      local.tee 0
      i64.const 256
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 131464
      i32.const 8
      i32.const 131072
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h7cd4288013ed9fe1E
      unreachable
    end
    local.get 0
    i32.wrap_i64
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hdf879ba650f6dce2E (;57;) (type 3) (result i32)
    (local i64)
    block ;; label = @1
      i32.const 0
      call $smallIntGetUnsignedArgument
      local.tee 0
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 131447
      i32.const 9
      i32.const 131072
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h7cd4288013ed9fe1E
      unreachable
    end
    local.get 0
    i32.wrap_i64
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5b280cc7ff78152dE (;58;) (type 5) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=131688
      local.get 0
      i32.gt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131229
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5458025f86c19ce5E (;59;) (type 5) (param i32)
    block ;; label = @1
      call $getNumArguments
      local.get 0
      i32.ne
      br_if 0 (;@1;)
      return
    end
    i32.const 131247
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc095d58cdc7d36deE (;60;) (type 5) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=131688
      local.get 0
      i32.lt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131212
    i32.const 17
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h7e305852ce13f21aE (;61;) (type 11)
    i32.const 0
    call $getNumArguments
    i32.store offset=131688
  )
  (func $_ZN11dharitri_sc2io6finish12finish_multi17h51248a4b9c651c1cE (;62;) (type 5) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    call $mBufferGetLength
    i32.store offset=20
    local.get 1
    i32.const 0
    i32.store offset=16
    local.get 1
    local.get 0
    i32.store offset=12
    block ;; label = @1
      loop ;; label = @2
        local.get 1
        i32.const 27
        i32.add
        local.get 1
        i32.const 12
        i32.add
        call $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd6a035843e170de3E
        local.get 1
        i32.load8_u offset=27
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 1
        i32.load offset=28 align=1
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
  (func $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd6a035843e170de3E (;63;) (type 2) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 0
    local.set 3
    block ;; label = @1
      local.get 1
      i32.load offset=4
      local.tee 4
      local.get 1
      i32.load offset=8
      i32.ge_u
      br_if 0 (;@1;)
      local.get 2
      i32.const 0
      i32.store offset=12
      local.get 1
      i32.load
      local.get 4
      local.get 2
      i32.const 12
      i32.add
      i32.const 4
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17h4a0ae5bcb8b143f5E
      drop
      local.get 1
      local.get 4
      i32.const 4
      i32.add
      i32.store offset=4
      local.get 0
      local.get 2
      i32.load offset=12
      i32.store offset=1 align=1
      i32.const 1
      local.set 3
    end
    local.get 0
    local.get 3
    i32.store8
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te191_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$$LP$$RP$$C$$LP$$RP$$C$$LP$$RP$$GT$$GT$8transfer17h7227b0bfebfd5f0fE (;64;) (type 5) (param i32)
    i32.const -30
    call $managedCaller
    i32.const -30
    local.get 0
    i64.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6cc985cf6a88b63eE
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6cc985cf6a88b63eE
    call $managedTransferValueExecute
    drop
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17hbbfee232108ec2b5E (;65;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferAppendBytes
    drop
  )
  (func $_ZN11dharitri_sc5types7managed11multi_value19multi_value_encoded30MultiValueEncoded$LT$M$C$T$GT$4push17h60f3ecd486526aa3E (;66;) (type 2) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6cc985cf6a88b63eE
    drop
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9cfedb97aeb6c403E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hda12b7eb32221c7eE
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h352d7c838d90c5fbE (;67;) (type 6) (param i32 i32 i32) (result i32)
    local.get 0
    i32.const 0
    local.get 1
    local.get 2
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17h4a0ae5bcb8b143f5E
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17h4a0ae5bcb8b143f5E (;68;) (type 8) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14to_boxed_bytes17hda6634fe83e94d60E (;69;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    local.get 1
    call $mBufferGetLength
    local.tee 3
    call $_ZN19dharitri_chain_core5types11boxed_bytes10BoxedBytes5zeros17hbf5522775e057848E
    local.get 2
    i32.load offset=12
    local.set 4
    local.get 2
    i32.load offset=8
    local.set 5
    block ;; label = @1
      local.get 3
      i32.const 1
      i32.lt_s
      br_if 0 (;@1;)
      local.get 1
      local.get 5
      call $mBufferGetBytes
      drop
    end
    local.get 0
    local.get 5
    i32.store
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h23c87a5f243946f7E (;70;) (type 7) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h7b55cbb45602792bE (;71;) (type 7) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h23c87a5f243946f7E
    i32.const 2
    i32.shr_u
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Mul$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3mul17h5dbcb1346697a038E (;72;) (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 0
    local.get 1
    call $bigIntMul
    local.get 0
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h6628da5c5fc48c2eE (;73;) (type 7) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9761f2c91c0c3ad5E
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17he16a4c7e56d0483bE (;74;) (type 1) (param i32 i32 i32)
    local.get 2
    local.get 0
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h44b86405648d73cdE
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17hbbfee232108ec2b5E
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h44b86405648d73cdE (;75;) (type 2) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17hbbfee232108ec2b5E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage11storage_set11storage_set17h1132c9e046ef794fE (;76;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h416dd1ab76d9d2ccE
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h416dd1ab76d9d2ccE (;77;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h8ae65db73063d52dE
    call $mBufferStorageStore
    drop
  )
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h07bd029e94587c0cE (;78;) (type 1) (param i32 i32 i32)
    (local i32)
    i32.const 131472
    i32.const 27
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h8ae65db73063d52dE
    local.tee 3
    local.get 0
    call $mBufferAppend
    drop
    local.get 3
    i32.const 131209
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
  (func $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hb39b75b49fb32d83E (;79;) (type 14) (param i32 i32) (result i64)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i64.const 0
    i64.store offset=8
    block ;; label = @1
      local.get 0
      call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h6628da5c5fc48c2eE
      local.tee 3
      call $mBufferGetLength
      local.tee 0
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 131072
      i32.const 14
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h07bd029e94587c0cE
      unreachable
    end
    local.get 3
    local.get 2
    i32.const 8
    i32.add
    local.get 0
    i32.sub
    i32.const 8
    i32.add
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h352d7c838d90c5fbE
    drop
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
  (func $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h18a62b8f81811698E (;80;) (type 0) (param i32 i64)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i64.store8 offset=15
    local.get 2
    local.get 1
    i64.const 24
    i64.shr_u
    i64.store8 offset=12
    local.get 2
    local.get 1
    i64.const 16
    i64.shr_u
    i32.wrap_i64
    local.tee 3
    i32.store8 offset=13
    local.get 2
    local.get 1
    i64.const 8
    i64.shr_u
    i32.wrap_i64
    local.tee 4
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
    i64.const 16777216
    i64.lt_u
    local.tee 5
    select
    local.get 5
    local.get 3
    i32.const 255
    i32.and
    i32.eqz
    i32.and
    local.tee 3
    i32.add
    i32.const 0
    local.get 3
    local.get 4
    i32.const 255
    i32.and
    select
    local.tee 3
    i32.add
    local.get 3
    i32.const 0
    local.get 1
    i64.eqz
    select
    i32.add
    local.tee 3
    i32.add
    i32.const 8
    local.get 3
    i32.sub
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h416dd1ab76d9d2ccE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17h596ac049108cc811E (;81;) (type 5) (param i32)
    block ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      call $__rust_dealloc
      unreachable
    end
  )
  (func $__rust_dealloc (;82;) (type 11)
    call $_ZN120_$LT$dharitri_sc_wasm_adapter..wasm_alloc..fail_allocator..FailAllocator$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17hc763a891340489c9E
    unreachable
  )
  (func $_ZN63_$LT$C$u20$as$u20$auction_mock..storage..AuctionMockStorage$GT$18get_stake_per_node17hde8f308b0032c974E (;83;) (type 3) (result i32)
    (local i32)
    i32.const 131546
    i32.const 14
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h8ae65db73063d52dE
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h6628da5c5fc48c2eE
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9761f2c91c0c3ad5E
    local.tee 0
    call $mBufferToBigIntUnsigned
    drop
    local.get 0
  )
  (func $_ZN63_$LT$C$u20$as$u20$auction_mock..storage..AuctionMockStorage$GT$18is_staking_failure17ha9382c6c934c896bE (;84;) (type 3) (result i32)
    (local i32 i64)
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          i32.const 131560
          i32.const 15
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h8ae65db73063d52dE
          local.tee 0
          local.get 0
          call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hb39b75b49fb32d83E
          local.tee 1
          i64.const 1
          i64.gt_u
          br_if 0 (;@3;)
          i32.const 0
          local.set 0
          local.get 1
          i32.wrap_i64
          br_table 2 (;@1;) 1 (;@2;) 2 (;@1;)
        end
        local.get 0
        i32.const 131507
        i32.const 18
        call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h07bd029e94587c0cE
        unreachable
      end
      i32.const 1
      local.set 0
    end
    local.get 0
  )
  (func $_ZN63_$LT$C$u20$as$u20$auction_mock..storage..AuctionMockStorage$GT$24get_bls_deliberate_error17h879d8796b516c1b9E (;85;) (type 4) (param i32 i32) (result i32)
    (local i32 i64)
    i32.const 131617
    i32.const 20
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h8ae65db73063d52dE
    local.tee 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17he16a4c7e56d0483bE
    block ;; label = @1
      local.get 2
      local.get 2
      call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hb39b75b49fb32d83E
      local.tee 3
      i64.const 256
      i64.lt_u
      br_if 0 (;@1;)
      local.get 2
      i32.const 131072
      i32.const 14
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h07bd029e94587c0cE
      unreachable
    end
    local.get 3
    i32.wrap_i64
  )
  (func $_ZN120_$LT$dharitri_sc_wasm_adapter..wasm_alloc..fail_allocator..FailAllocator$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17hc763a891340489c9E (;86;) (type 11)
    call $_ZN24dharitri_sc_wasm_adapter10wasm_alloc14fail_allocator29signal_allocation_not_allowed17h229efa45abdb4357E
    unreachable
  )
  (func $rust_begin_unwind (;87;) (type 11)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h170516313d909ac2E
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h170516313d909ac2E (;88;) (type 11)
    i32.const 131637
    i32.const 14
    call $signalError
    unreachable
  )
  (func $stake (;89;) (type 11)
    (local i32 i32 i32 i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h795c319e5ce307ecE
    call $_ZN11dharitri_sc2io15call_value_init18arg_payment_amount17he062504e0fdfbce4E
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h7e305852ce13f21aE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc095d58cdc7d36deE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hdf879ba650f6dce2E
    local.set 2
    local.get 0
    i32.const 1
    i32.store offset=32
    local.get 0
    i32.const 32
    i32.add
    i32.const 131428
    i32.const 19
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hed26a91150016219E
    local.set 3
    local.get 0
    i32.load offset=32
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5b280cc7ff78152dE
    block ;; label = @1
      local.get 2
      i32.const 1
      i32.shl
      local.get 3
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h7b55cbb45602792bE
      i32.ne
      br_if 0 (;@1;)
      block ;; label = @2
        block ;; label = @3
          call $_ZN63_$LT$C$u20$as$u20$auction_mock..storage..AuctionMockStorage$GT$18is_staking_failure17ha9382c6c934c896bE
          br_if 0 (;@3;)
          i32.const 131447
          i32.const 9
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h8ae65db73063d52dE
          local.tee 4
          local.get 4
          call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hb39b75b49fb32d83E
          local.tee 5
          i64.const 4294967296
          i64.ge_u
          br_if 1 (;@2;)
          call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9761f2c91c0c3ad5E
          local.tee 4
          local.get 2
          i64.extend_i32_u
          call $bigIntSetInt64
          block ;; label = @4
            local.get 1
            local.get 4
            call $_ZN63_$LT$C$u20$as$u20$auction_mock..storage..AuctionMockStorage$GT$18get_stake_per_node17hde8f308b0032c974E
            call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Mul$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3mul17h5dbcb1346697a038E
            call $bigIntCmp
            br_if 0 (;@4;)
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6cc985cf6a88b63eE
            local.set 6
            local.get 0
            local.get 3
            call $mBufferGetLength
            local.tee 2
            i32.store offset=40
            i32.const 0
            local.set 1
            local.get 0
            i32.const 0
            i32.store offset=36
            local.get 0
            local.get 3
            i32.store offset=32
            local.get 5
            i32.wrap_i64
            local.set 3
            loop ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  local.get 1
                  local.get 2
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 32
                  i32.add
                  call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h2b3178e9ccff8ae9E
                  local.set 2
                  local.get 0
                  i32.const 32
                  i32.add
                  call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h2b3178e9ccff8ae9E
                  local.set 4
                  local.get 0
                  i32.const 24
                  i32.add
                  local.get 2
                  call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14to_boxed_bytes17hda6634fe83e94d60E
                  local.get 0
                  i32.load offset=28
                  local.set 1
                  local.get 0
                  i32.load offset=24
                  local.set 7
                  local.get 3
                  i32.const 1
                  i32.add
                  local.tee 3
                  i32.const 131533
                  i32.const 13
                  call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h8ae65db73063d52dE
                  local.tee 8
                  call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h44b86405648d73cdE
                  local.get 8
                  local.get 7
                  local.get 1
                  call $_ZN11dharitri_sc7storage11storage_set11storage_set17h1132c9e046ef794fE
                  local.get 1
                  call $_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17h596ac049108cc811E
                  local.get 0
                  i32.const 16
                  i32.add
                  local.get 4
                  call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14to_boxed_bytes17hda6634fe83e94d60E
                  local.get 0
                  i32.load offset=20
                  local.set 1
                  local.get 0
                  i32.load offset=16
                  local.set 4
                  local.get 3
                  i32.const 131604
                  i32.const 13
                  call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h8ae65db73063d52dE
                  local.tee 7
                  call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h44b86405648d73cdE
                  local.get 7
                  local.get 4
                  local.get 1
                  call $_ZN11dharitri_sc7storage11storage_set11storage_set17h1132c9e046ef794fE
                  local.get 1
                  call $_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17h596ac049108cc811E
                  local.get 0
                  i32.const 8
                  i32.add
                  local.get 2
                  call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14to_boxed_bytes17hda6634fe83e94d60E
                  local.get 0
                  i32.load offset=8
                  local.get 0
                  i32.load offset=12
                  local.tee 4
                  call $_ZN63_$LT$C$u20$as$u20$auction_mock..storage..AuctionMockStorage$GT$24get_bls_deliberate_error17h879d8796b516c1b9E
                  local.set 1
                  local.get 4
                  call $_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17h596ac049108cc811E
                  local.get 1
                  i32.const 255
                  i32.and
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 6
                  local.get 2
                  call $_ZN11dharitri_sc5types7managed11multi_value19multi_value_encoded30MultiValueEncoded$LT$M$C$T$GT$4push17h60f3ecd486526aa3E
                  local.get 0
                  local.get 1
                  i32.store8 offset=47
                  local.get 6
                  local.get 0
                  i32.const 47
                  i32.add
                  i32.const 1
                  call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h8ae65db73063d52dE
                  call $_ZN11dharitri_sc5types7managed11multi_value19multi_value_encoded30MultiValueEncoded$LT$M$C$T$GT$4push17h60f3ecd486526aa3E
                  br 1 (;@6;)
                end
                i32.const 131447
                i32.const 9
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h8ae65db73063d52dE
                local.get 3
                i64.extend_i32_u
                call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h18a62b8f81811698E
                local.get 6
                call $_ZN11dharitri_sc2io6finish12finish_multi17h51248a4b9c651c1cE
                local.get 0
                i32.const 48
                i32.add
                global.set $__stack_pointer
                return
              end
              local.get 0
              i32.load offset=40
              local.set 2
              local.get 0
              i32.load offset=36
              local.set 1
              br 0 (;@5;)
            end
          end
          i32.const 131395
          i32.const 33
          call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hc4e576d95ccc0d83E
          unreachable
        end
        i32.const 131327
        i32.const 39
        call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hc4e576d95ccc0d83E
        unreachable
      end
      local.get 4
      i32.const 131072
      i32.const 14
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h07bd029e94587c0cE
      unreachable
    end
    i32.const 131366
    i32.const 29
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hc4e576d95ccc0d83E
    unreachable
  )
  (func $unStake (;90;) (type 11)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h7e305852ce13f21aE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc095d58cdc7d36deE
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    i32.const 16
    i32.add
    i32.const 131456
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hed26a91150016219E
    local.set 1
    local.get 0
    i32.load offset=16
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5b280cc7ff78152dE
    block ;; label = @1
      call $_ZN63_$LT$C$u20$as$u20$auction_mock..storage..AuctionMockStorage$GT$18is_staking_failure17ha9382c6c934c896bE
      br_if 0 (;@1;)
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6cc985cf6a88b63eE
      local.set 2
      local.get 1
      call $mBufferGetLength
      local.set 3
      local.get 0
      i32.const 0
      i32.store offset=28
      local.get 0
      local.get 3
      i32.store offset=24
      local.get 0
      i32.const 0
      i32.store offset=20
      local.get 0
      local.get 1
      i32.store offset=16
      block ;; label = @2
        loop ;; label = @3
          local.get 0
          i32.const 32
          i32.add
          local.get 0
          i32.const 16
          i32.add
          call $_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74e6be0d742dfb66E
          local.get 0
          i32.load offset=32
          i32.const 1
          i32.ne
          br_if 1 (;@2;)
          local.get 0
          i32.load offset=36
          local.set 4
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.load offset=40
          local.tee 3
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14to_boxed_bytes17hda6634fe83e94d60E
          local.get 0
          i32.load offset=12
          local.set 1
          local.get 0
          i32.load offset=8
          local.set 5
          local.get 4
          i32.const 131589
          i32.const 15
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h8ae65db73063d52dE
          local.tee 6
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h44b86405648d73cdE
          local.get 6
          local.get 5
          local.get 1
          call $_ZN11dharitri_sc7storage11storage_set11storage_set17h1132c9e046ef794fE
          local.get 1
          call $_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17h596ac049108cc811E
          local.get 0
          local.get 3
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14to_boxed_bytes17hda6634fe83e94d60E
          local.get 0
          i32.load
          local.get 0
          i32.load offset=4
          local.tee 4
          call $_ZN63_$LT$C$u20$as$u20$auction_mock..storage..AuctionMockStorage$GT$24get_bls_deliberate_error17h879d8796b516c1b9E
          local.set 1
          local.get 4
          call $_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17h596ac049108cc811E
          local.get 1
          i32.const 255
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9cfedb97aeb6c403E
          call $_ZN11dharitri_sc5types7managed11multi_value19multi_value_encoded30MultiValueEncoded$LT$M$C$T$GT$4push17h60f3ecd486526aa3E
          local.get 0
          local.get 1
          i32.store8 offset=47
          local.get 2
          local.get 0
          i32.const 47
          i32.add
          i32.const 1
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h8ae65db73063d52dE
          call $_ZN11dharitri_sc5types7managed11multi_value19multi_value_encoded30MultiValueEncoded$LT$M$C$T$GT$4push17h60f3ecd486526aa3E
          br 0 (;@3;)
        end
      end
      local.get 2
      call $_ZN11dharitri_sc2io6finish12finish_multi17h51248a4b9c651c1cE
      local.get 0
      i32.const 48
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131327
    i32.const 39
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hc4e576d95ccc0d83E
    unreachable
  )
  (func $unBond (;91;) (type 11)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h7e305852ce13f21aE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc095d58cdc7d36deE
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    i32.const 16
    i32.add
    i32.const 131456
    i32.const 8
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hed26a91150016219E
    local.set 1
    local.get 0
    i32.load offset=16
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5b280cc7ff78152dE
    block ;; label = @1
      call $_ZN63_$LT$C$u20$as$u20$auction_mock..storage..AuctionMockStorage$GT$18is_staking_failure17ha9382c6c934c896bE
      br_if 0 (;@1;)
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h6cc985cf6a88b63eE
      local.set 2
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h7b55cbb45602792bE
      local.set 3
      local.get 1
      call $mBufferGetLength
      local.set 4
      local.get 0
      i32.const 0
      i32.store offset=28
      local.get 0
      local.get 4
      i32.store offset=24
      local.get 0
      i32.const 0
      i32.store offset=20
      local.get 0
      local.get 1
      i32.store offset=16
      block ;; label = @2
        loop ;; label = @3
          local.get 0
          i32.const 32
          i32.add
          local.get 0
          i32.const 16
          i32.add
          call $_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74e6be0d742dfb66E
          local.get 0
          i32.load offset=32
          i32.const 1
          i32.ne
          br_if 1 (;@2;)
          local.get 0
          i32.load offset=36
          local.set 5
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.load offset=40
          local.tee 4
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14to_boxed_bytes17hda6634fe83e94d60E
          local.get 0
          i32.load offset=12
          local.set 1
          local.get 0
          i32.load offset=8
          local.set 6
          local.get 5
          i32.const 131575
          i32.const 14
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h8ae65db73063d52dE
          local.tee 7
          call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h44b86405648d73cdE
          local.get 7
          local.get 6
          local.get 1
          call $_ZN11dharitri_sc7storage11storage_set11storage_set17h1132c9e046ef794fE
          local.get 1
          call $_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17h596ac049108cc811E
          local.get 0
          local.get 4
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14to_boxed_bytes17hda6634fe83e94d60E
          local.get 0
          i32.load
          local.get 0
          i32.load offset=4
          local.tee 5
          call $_ZN63_$LT$C$u20$as$u20$auction_mock..storage..AuctionMockStorage$GT$24get_bls_deliberate_error17h879d8796b516c1b9E
          local.set 1
          local.get 5
          call $_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17h596ac049108cc811E
          local.get 1
          i32.const 255
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 4
          call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9cfedb97aeb6c403E
          call $_ZN11dharitri_sc5types7managed11multi_value19multi_value_encoded30MultiValueEncoded$LT$M$C$T$GT$4push17h60f3ecd486526aa3E
          local.get 0
          local.get 1
          i32.store8 offset=47
          local.get 2
          local.get 0
          i32.const 47
          i32.add
          i32.const 1
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h8ae65db73063d52dE
          call $_ZN11dharitri_sc5types7managed11multi_value19multi_value_encoded30MultiValueEncoded$LT$M$C$T$GT$4push17h60f3ecd486526aa3E
          br 0 (;@3;)
        end
      end
      call $_ZN63_$LT$C$u20$as$u20$auction_mock..storage..AuctionMockStorage$GT$18get_stake_per_node17hde8f308b0032c974E
      local.set 1
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9761f2c91c0c3ad5E
      local.tee 4
      local.get 3
      i64.extend_i32_u
      call $bigIntSetInt64
      local.get 1
      local.get 4
      call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators116_$LT$impl$u20$core..ops..arith..Mul$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3mul17h5dbcb1346697a038E
      call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te191_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$$LP$$RP$$C$$LP$$RP$$C$$LP$$RP$$GT$$GT$8transfer17h7227b0bfebfd5f0fE
      local.get 2
      call $_ZN11dharitri_sc2io6finish12finish_multi17h51248a4b9c651c1cE
      local.get 0
      i32.const 48
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131327
    i32.const 39
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hc4e576d95ccc0d83E
    unreachable
  )
  (func $unStakeTokens (;92;) (type 11)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5458025f86c19ce5E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h07322a469cb0a6c5E
    drop
  )
  (func $unBondTokens (;93;) (type 11)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5458025f86c19ce5E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h07322a469cb0a6c5E
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te191_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$$LP$$RP$$C$$LP$$RP$$C$$LP$$RP$$GT$$GT$8transfer17h7227b0bfebfd5f0fE
  )
  (func $claim (;94;) (type 11)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5458025f86c19ce5E
  )
  (func $unJail (;95;) (type 11)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h795c319e5ce307ecE
    call $_ZN11dharitri_sc2io15call_value_init18arg_payment_amount17he062504e0fdfbce4E
    drop
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h7e305852ce13f21aE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc095d58cdc7d36deE
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h2413e7a61aeecc73E
    local.set 1
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h5b280cc7ff78152dE
    i32.const 131525
    i32.const 8
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h8ae65db73063d52dE
    local.set 2
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h8ae65db73063d52dE
    local.set 3
    local.get 0
    local.get 1
    call $mBufferGetLength
    i32.store offset=20
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    local.get 1
    i32.store offset=12
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 27
        i32.add
        local.get 0
        i32.const 12
        i32.add
        call $_ZN161_$LT$dharitri_sc..types..managed..wrapped..managed_vec_iter_payload..ManagedVecPayloadIterator$LT$M$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd6a035843e170de3E
        local.get 0
        i32.load8_u offset=27
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 3
        local.get 0
        i32.load offset=28 align=1
        local.tee 1
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
        call $mBufferAppend
        drop
        br 0 (;@2;)
      end
    end
    local.get 2
    local.get 3
    call $mBufferStorageStore
    drop
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $setBlsDeliberateError (;96;) (type 11)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5458025f86c19ce5E
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h695c053664121788E
    local.get 0
    i32.load offset=12
    local.set 1
    local.get 0
    i32.load offset=8
    local.set 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7aa27ad0ec35ba11E
    local.set 3
    i32.const 131617
    i32.const 20
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h8ae65db73063d52dE
    local.tee 4
    local.get 2
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17he16a4c7e56d0483bE
    local.get 4
    local.get 3
    i64.extend_i32_u
    i64.const 255
    i64.and
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h18a62b8f81811698E
    local.get 1
    call $_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17h596ac049108cc811E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $getBlsDeliberateError (;97;) (type 11)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h5458025f86c19ce5E
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h695c053664121788E
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    local.tee 1
    call $_ZN63_$LT$C$u20$as$u20$auction_mock..storage..AuctionMockStorage$GT$24get_bls_deliberate_error17h879d8796b516c1b9E
    i64.extend_i32_u
    i64.const 255
    i64.and
    call $smallIntFinishUnsigned
    local.get 1
    call $_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17h596ac049108cc811E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $callBack (;98;) (type 11))
  (func $__rust_alloc_error_handler (;99;) (type 5) (param i32)
    local.get 0
    call $__rdl_oom
    unreachable
  )
  (func $__rdl_oom (;100;) (type 5) (param i32)
    call $_ZN4core9panicking18panic_nounwind_fmt17h7a87e102e925dda2E
    unreachable
  )
  (func $_ZN5alloc7raw_vec12handle_error17hcd6c5f33527353caE (;101;) (type 2) (param i32 i32)
    block ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $_ZN5alloc7raw_vec17capacity_overflow17hbc71c29d4abc75a0E
      unreachable
    end
    local.get 1
    call $_ZN5alloc5alloc18handle_alloc_error17haa33c1301de96704E
    unreachable
  )
  (func $_ZN5alloc7raw_vec17capacity_overflow17hbc71c29d4abc75a0E (;102;) (type 11)
    call $_ZN4core9panicking18panic_nounwind_fmt17h7a87e102e925dda2E
    unreachable
  )
  (func $_ZN5alloc5alloc18handle_alloc_error17haa33c1301de96704E (;103;) (type 5) (param i32)
    local.get 0
    call $__rust_alloc_error_handler
    unreachable
  )
  (func $_ZN4core9panicking18panic_nounwind_fmt17h7a87e102e925dda2E (;104;) (type 11)
    call $rust_begin_unwind
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter10wasm_alloc14fail_allocator29signal_allocation_not_allowed17h229efa45abdb4357E (;105;) (type 11)
    i32.const 131651
    i32.const 27
    call $signalError
    unreachable
  )
  (data $.rodata (;0;) (i32.const 131072) "input too longincorrect number of DCDT transfersfunction does not accept DCDT paymentincorrect number of transfersargument decode error (): too few argumentstoo many argumentswrong number of argumentsinput too shortManagedVec index out of rangeREWA-000000auction smart contract deliberate errorincorrect number of argumentsincorrect payment to auction mockbls_keys_signaturesnum_nodesbls_keyserr_codestorage decode error (key: var argsinput out of rangeunJailedstake_bls_keystake_per_nodestaking_failureunBond_bls_keyunStake_bls_keystake_bls_sigbls_deliberate_errorpanic occurredmemory allocation forbidden")
  (data $.data (;1;) (i32.const 131680) "8\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.85.0 (4d91de4e4 2025-02-17)")
  )
  (@custom "target_features" (after data) "\04+\0amultivalue+\0fmutable-globals+\0freference-types+\08sign-ext")
)
