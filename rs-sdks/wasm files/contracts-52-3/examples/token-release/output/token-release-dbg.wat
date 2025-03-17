(module $token_release_wasm.wasm
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (result i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i32 i32 i32) (result i32)))
  (type (;5;) (func (param i32) (result i64)))
  (type (;6;) (func (param i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32)))
  (type (;8;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;9;) (func (param i32 i64)))
  (type (;10;) (func (result i64)))
  (type (;11;) (func))
  (type (;12;) (func (param i64 i32 i32 i32 i32 i32) (result i32)))
  (type (;13;) (func (param i32 i32 i64 i32 i32) (result i32)))
  (type (;14;) (func (param i64) (result i32)))
  (type (;15;) (func (param i32 i32 i32 i32)))
  (type (;16;) (func (param i32 i64 i32 i32)))
  (type (;17;) (func (param i32 i32) (result i64)))
  (import "env" "signalError" (func $signalError (;0;) (type 0)))
  (import "env" "mBufferNew" (func $mBufferNew (;1;) (type 1)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;2;) (type 2)))
  (import "env" "mBufferEq" (func $mBufferEq (;3;) (type 2)))
  (import "env" "managedCaller" (func $managedCaller (;4;) (type 3)))
  (import "env" "managedOwnerAddress" (func $managedOwnerAddress (;5;) (type 3)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;6;) (type 2)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;7;) (type 4)))
  (import "env" "managedSignalError" (func $managedSignalError (;8;) (type 3)))
  (import "env" "smallIntGetUnsignedArgument" (func $smallIntGetUnsignedArgument (;9;) (type 5)))
  (import "env" "bigIntGetUnsignedArgument" (func $bigIntGetUnsignedArgument (;10;) (type 0)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;11;) (type 6)))
  (import "env" "getNumArguments" (func $getNumArguments (;12;) (type 1)))
  (import "env" "bigIntSub" (func $bigIntSub (;13;) (type 7)))
  (import "env" "bigIntSign" (func $bigIntSign (;14;) (type 6)))
  (import "env" "mBufferCopyByteSlice" (func $mBufferCopyByteSlice (;15;) (type 8)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;16;) (type 8)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;17;) (type 4)))
  (import "env" "bigIntAdd" (func $bigIntAdd (;18;) (type 7)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;19;) (type 2)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;20;) (type 2)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;21;) (type 9)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;22;) (type 2)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;23;) (type 2)))
  (import "env" "getBlockTimestamp" (func $getBlockTimestamp (;24;) (type 10)))
  (import "env" "bigIntMul" (func $bigIntMul (;25;) (type 7)))
  (import "env" "bigIntTDiv" (func $bigIntTDiv (;26;) (type 7)))
  (import "env" "bigIntCmp" (func $bigIntCmp (;27;) (type 2)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;28;) (type 11)))
  (import "env" "validateTokenIdentifier" (func $validateTokenIdentifier (;29;) (type 6)))
  (import "env" "getGasLeft" (func $getGasLeft (;30;) (type 10)))
  (import "env" "managedSCAddress" (func $managedSCAddress (;31;) (type 3)))
  (import "env" "managedExecuteOnDestContext" (func $managedExecuteOnDestContext (;32;) (type 12)))
  (import "env" "cleanReturnData" (func $cleanReturnData (;33;) (type 11)))
  (import "env" "managedMultiTransferDCDTNFTExecute" (func $managedMultiTransferDCDTNFTExecute (;34;) (type 13)))
  (import "env" "bigIntFinishUnsigned" (func $bigIntFinishUnsigned (;35;) (type 3)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;36;) (type 6)))
  (func $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17hcdece97910862e07E (;37;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $signalError
    unreachable
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2b2910d7cf0927b1E (;38;) (type 6) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5b7cfd35b8f8a103E (;39;) (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $mBufferEq
    i32.const 0
    i32.gt_s
  )
  (func $_ZN115_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..convert..From$LT$u64$GT$$GT$4from17habb5f9297a0a9424E (;40;) (type 14) (param i64) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$9set_value17h65a5bb5a970e3278E
    local.get 1
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E (;41;) (type 1) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=131964
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=131964
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$9set_value17h65a5bb5a970e3278E (;42;) (type 9) (param i32 i64)
    block ;; label = @1
      local.get 1
      i64.const -1
      i64.gt_s
      br_if 0 (;@1;)
      i32.const 131213
      i32.const 17
      call $signalError
      unreachable
    end
    local.get 0
    local.get 1
    call $bigIntSetInt64
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h8000860129cdf8f4E (;43;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17hcdece97910862e07E
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h09ed5dfc655706e7E (;44;) (type 1) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    call $managedCaller
    local.get 0
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17heb11d1cf0b5fda06E (;45;) (type 11)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    call $managedOwnerAddress
    block ;; label = @1
      local.get 0
      call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h09ed5dfc655706e7E
      call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5b7cfd35b8f8a103E
      i32.eqz
      br_if 0 (;@1;)
      return
    end
    i32.const 131913
    i32.const 36
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h03e900ec2d3fba13E (;46;) (type 6) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h302f4504ea68a4faE (;47;) (type 15) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131086
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h903d9d97f19e6965E
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h903d9d97f19e6965E (;48;) (type 2) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h050897df7dbaa7b3E (;49;) (type 1) (result i32)
    (local i64)
    block ;; label = @1
      i32.const 2
      call $smallIntGetUnsignedArgument
      local.tee 0
      i64.const 256
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 131692
      i32.const 24
      i32.const 131072
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h302f4504ea68a4faE
      unreachable
    end
    local.get 0
    i32.wrap_i64
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1c1fbe157427d448E (;50;) (type 6) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h03e900ec2d3fba13E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h53e086df2920e8a4E (;51;) (type 6) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $bigIntGetUnsignedArgument
    local.get 1
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7c32a57cdbfbe527E (;52;) (type 2) (param i32 i32) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 0
      call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h03e900ec2d3fba13E
      local.tee 2
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.const 131743
      i32.const 16
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h302f4504ea68a4faE
      unreachable
    end
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17haeb49f08c387f027E (;53;) (type 5) (param i32) (result i64)
    local.get 0
    call $smallIntGetUnsignedArgument
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd8581afa9cf0d04cE (;54;) (type 1) (result i32)
    i32.const 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h03e900ec2d3fba13E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hf452e3bc4fdc5de9E (;55;) (type 3) (param i32)
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
  (func $_ZN11dharitri_sc3api13managed_types11big_int_api13BigIntApiImpl15bi_sub_unsigned17hb8592de867720c0cE (;56;) (type 7) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $bigIntSub
    block ;; label = @1
      local.get 0
      call $bigIntSign
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131137
    i32.const 48
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$13read_big_uint17had15a9cf97378418E (;57;) (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h5a6ff17491ebc082E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h788cb92c689626f0E
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h5a6ff17491ebc082E (;58;) (type 2) (param i32 i32) (result i32)
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
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    local.get 1
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h901e2a537e6283e9E
    local.get 2
    i32.load offset=12
    local.set 3
    local.get 0
    i32.load
    local.set 4
    call $mBufferNew
    local.set 5
    block ;; label = @1
      local.get 0
      i32.load offset=8
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
      local.tee 3
      local.get 5
      call $mBufferCopyByteSlice
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 131198
      i32.const 15
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17ha863a59ea30ade07E
      unreachable
    end
    local.get 0
    local.get 4
    local.get 3
    i32.add
    i32.store
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 5
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h788cb92c689626f0E (;59;) (type 6) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferToBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h901e2a537e6283e9E (;60;) (type 15) (param i32 i32 i32 i32)
    (local i32 i32 i32)
    local.get 0
    i32.load
    local.set 4
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
                  local.tee 5
                  call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h39885d357c43b357E
                  local.tee 6
                  i32.const 10000
                  i32.gt_u
                  br_if 1 (;@6;)
                  i32.const 0
                  i32.load8_u offset=141972
                  i32.const 255
                  i32.and
                  br_if 1 (;@6;)
                  i32.const 0
                  local.get 6
                  i32.store offset=141968
                  i32.const 0
                  i32.const 1
                  i32.store8 offset=141972
                  local.get 5
                  i32.const 0
                  i32.const 131968
                  local.get 6
                  call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h0331bc14583a79b4E
                  drop
                  local.get 0
                  i32.const 1
                  i32.store8 offset=16
                end
                local.get 4
                local.get 2
                i32.add
                local.tee 5
                i32.const 0
                i32.load offset=141968
                i32.le_u
                br_if 1 (;@5;)
                br 5 (;@1;)
              end
              local.get 0
              i32.const 0
              i32.store8 offset=16
              local.get 5
              local.get 4
              local.get 1
              local.get 2
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h0331bc14583a79b4E
              br_if 4 (;@1;)
              local.get 4
              local.get 2
              i32.add
              local.set 5
              br 1 (;@4;)
            end
            local.get 5
            local.get 4
            i32.lt_u
            br_if 1 (;@3;)
            local.get 5
            i32.const 10000
            i32.gt_u
            br_if 2 (;@2;)
            local.get 1
            local.get 2
            local.get 4
            i32.const 131968
            i32.add
            local.get 2
            call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17he3585b619b30c76fE
          end
          local.get 0
          local.get 5
          i32.store
          return
        end
        local.get 4
        local.get 5
        call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17h471e892540b809f6E
        unreachable
      end
      local.get 5
      call $_ZN4core5slice5index24slice_end_index_len_fail17h7917b91b59da861bE
      unreachable
    end
    local.get 3
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h46f4c5c386d027c2E
    unreachable
  )
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17ha863a59ea30ade07E (;61;) (type 7) (param i32 i32 i32)
    (local i32)
    i32.const 131716
    i32.const 27
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h903d9d97f19e6965E
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h0331bc14583a79b4E (;62;) (type 8) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h39885d357c43b357E (;63;) (type 6) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha11249fc650fcb7aE (;64;) (type 1) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    i32.const 1
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h58ead29858303e83E (;65;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferAppend
    drop
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h68d0d7ee0c065525E (;66;) (type 0) (param i32 i32)
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
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..AddAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17h22703d94e1d88abcE (;67;) (type 0) (param i32 i32)
    local.get 0
    local.get 0
    local.get 1
    call $bigIntAdd
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h0b97d6127f4ab1d5E (;68;) (type 6) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf7b12dc51dff5384E (;69;) (type 1) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    i64.const 0
    call $bigIntSetInt64
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$9make_temp17h67cb7aba17a8ec8fE (;70;) (type 14) (param i64) (result i32)
    i32.const -14
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$9set_value17h65a5bb5a970e3278E
    i32.const -14
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17hc60ebf94993c56adE (;71;) (type 6) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h6ccf7ce23f661178E (;72;) (type 0) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h39885d357c43b357E
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
    local.get 0
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    call $mBufferAppendBytes
    drop
    local.get 0
    local.get 1
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h58ead29858303e83E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage11storage_set11storage_set17hb415628f10721fd9E (;73;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hc2f480bb1b742757E
    local.set 3
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h39885d357c43b357E
    local.set 4
    i32.const 0
    local.set 5
    block ;; label = @1
      loop ;; label = @2
        local.get 5
        i32.const 4
        i32.add
        local.tee 6
        local.get 4
        i32.gt_u
        br_if 1 (;@1;)
        local.get 2
        i32.const 0
        i32.store offset=12
        local.get 1
        local.get 5
        local.get 2
        i32.const 12
        i32.add
        i32.const 4
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h0331bc14583a79b4E
        drop
        local.get 2
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
        local.get 3
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hc71670a954b48c5aE
        local.get 6
        local.set 5
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 3
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h02f6902c36fe9cd8E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hc2f480bb1b742757E (;74;) (type 1) (result i32)
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h903d9d97f19e6965E
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hc71670a954b48c5aE (;75;) (type 0) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h39885d357c43b357E
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
    call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h68447158045fd8d6E
    local.get 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h58ead29858303e83E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h02f6902c36fe9cd8E (;76;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage11storage_set11storage_set17hd0e6b4d859650be3E (;77;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h0b97d6127f4ab1d5E
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage11storage_set13storage_clear17h59ca47225192e14aE (;78;) (type 3) (param i32)
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
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h3c24c4de6e15bad1E (;79;) (type 0) (param i32 i32)
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
    i32.const 1
    local.get 2
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hefe4a2a354f0af59E
    local.get 0
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h5cc270bd6bed2f71E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hefe4a2a354f0af59E (;80;) (type 16) (param i32 i64 i32 i32)
    (local i64 i64 i32 i32 i32 i32)
    local.get 3
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
    local.tee 4
    i64.const 65280
    i64.and
    local.get 1
    i64.const 56
    i64.shr_u
    local.tee 5
    i64.or
    i64.or
    i64.or
    i64.store align=1
    local.get 0
    i32.const 8
    i32.const 0
    local.get 1
    i64.const 0
    i64.lt_s
    local.tee 6
    local.get 2
    i32.and
    i32.sub
    i32.const 255
    i32.and
    local.tee 7
    local.get 5
    i32.wrap_i64
    i32.eq
    local.tee 8
    i32.const 0
    local.get 7
    local.get 1
    i64.const 48
    i64.shr_u
    i32.wrap_i64
    i32.const 255
    i32.and
    i32.eq
    select
    local.tee 9
    local.get 8
    i32.add
    local.get 9
    i32.const 0
    local.get 7
    local.get 4
    i32.wrap_i64
    i32.const 255
    i32.and
    i32.eq
    select
    local.tee 8
    i32.add
    local.get 8
    i32.const 0
    local.get 7
    local.get 1
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    i32.const 255
    i32.and
    i32.eq
    select
    local.tee 9
    i32.add
    local.get 9
    i32.const 0
    local.get 7
    local.get 1
    i32.wrap_i64
    local.tee 8
    i32.const 24
    i32.shr_u
    i32.eq
    select
    local.tee 9
    i32.add
    local.get 9
    i32.const 0
    local.get 7
    local.get 8
    i32.const 16
    i32.shr_u
    i32.const 255
    i32.and
    i32.eq
    select
    local.tee 9
    i32.add
    local.get 9
    i32.const 0
    local.get 7
    local.get 8
    i32.const 8
    i32.shr_u
    i32.const 255
    i32.and
    i32.eq
    select
    local.tee 7
    i32.add
    local.get 7
    i32.const 0
    local.get 1
    i64.eqz
    select
    i32.add
    local.tee 7
    local.get 7
    i32.const 0
    i32.ne
    local.get 6
    local.get 3
    local.get 7
    i32.const 7
    i32.and
    i32.add
    i32.load8_s
    i32.const 0
    i32.lt_s
    i32.xor
    i32.and
    local.get 2
    i32.and
    i32.sub
    local.tee 7
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 3
    local.get 7
    i32.add
    i32.store
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h5cc270bd6bed2f71E (;81;) (type 7) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h903d9d97f19e6965E
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h75130557369f1710E (;82;) (type 0) (param i32 i32)
    (local i32)
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17hc2f480bb1b742757E
    local.set 2
    local.get 1
    i32.load offset=24
    local.get 2
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h003184209bec56d6E
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load8_u
        br_if 0 (;@2;)
        i32.const 0
        local.get 2
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17ha9e0e7dc06fd1e17E
        local.get 1
        i32.load offset=4
        local.get 2
        call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h003184209bec56d6E
        br 1 (;@1;)
      end
      i32.const 1
      local.get 2
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17ha9e0e7dc06fd1e17E
      local.get 1
      i32.load8_u offset=1
      local.get 2
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17ha9e0e7dc06fd1e17E
    end
    local.get 1
    i32.const 8
    i32.add
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types8impl_ref86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$T$GT$24dep_encode_or_handle_err17hbb596a96d8da8081E
    local.get 1
    i32.const 16
    i32.add
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types8impl_ref86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$T$GT$24dep_encode_or_handle_err17hbb596a96d8da8081E
    local.get 0
    local.get 2
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h02f6902c36fe9cd8E
  )
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h003184209bec56d6E (;83;) (type 0) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h0b97d6127f4ab1d5E
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hc71670a954b48c5aE
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17ha9e0e7dc06fd1e17E (;84;) (type 0) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store8 offset=15
    local.get 1
    local.get 2
    i32.const 15
    i32.add
    i32.const 1
    call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h68447158045fd8d6E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types8impl_ref86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$T$GT$24dep_encode_or_handle_err17hbb596a96d8da8081E (;85;) (type 0) (param i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i64.load
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
    i64.store offset=8
    local.get 1
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h68447158045fd8d6E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hca815809944899e2E (;86;) (type 9) (param i32 i64)
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
    i32.const 0
    local.get 2
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hefe4a2a354f0af59E
    local.get 0
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h5cc270bd6bed2f71E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17he2920ea3de93e588E (;87;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_set11storage_set17hd0e6b4d859650be3E
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h11c98ae012739249E (;88;) (type 6) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h8db094edde750117E
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha11249fc650fcb7aE
    local.set 3
    i32.const 0
    local.set 4
    local.get 2
    call $mBufferGetLength
    local.set 5
    local.get 1
    i32.const 0
    i32.store8 offset=28
    local.get 1
    local.get 5
    i32.store offset=24
    local.get 1
    local.get 2
    i32.store offset=20
    local.get 1
    local.get 5
    i32.store offset=16
    local.get 1
    i32.const 0
    i32.store offset=12
    loop (result i32) ;; label = @1
      block ;; label = @2
        local.get 5
        local.get 4
        i32.ne
        br_if 0 (;@2;)
        block ;; label = @3
          local.get 1
          i32.load8_u offset=28
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.const 0
          i32.store offset=141968
          i32.const 0
          i32.const 0
          i32.store8 offset=141972
        end
        local.get 1
        i32.const 32
        i32.add
        global.set $__stack_pointer
        local.get 3
        return
      end
      local.get 3
      local.get 1
      i32.const 12
      i32.add
      local.get 0
      call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h5a6ff17491ebc082E
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h68d0d7ee0c065525E
      local.get 1
      i32.load offset=12
      local.set 4
      local.get 1
      i32.load offset=16
      local.set 5
      br 0 (;@1;)
    end
  )
  (func $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h8db094edde750117E (;89;) (type 6) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17hc60ebf94993c56adE
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h6a0296bc63d8cbe5E (;90;) (type 6) (param i32) (result i32)
    (local i64)
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          local.get 0
          call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417h6d063002b56d9ce3E
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
        i32.const 131759
        i32.const 18
        call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17ha863a59ea30ade07E
        unreachable
      end
      i32.const 1
      local.set 0
    end
    local.get 0
  )
  (func $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417h6d063002b56d9ce3E (;91;) (type 17) (param i32 i32) (result i64)
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
      call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17hc60ebf94993c56adE
      local.tee 3
      call $mBufferGetLength
      local.tee 0
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 131072
      i32.const 14
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17ha863a59ea30ade07E
      unreachable
    end
    local.get 3
    i32.const 0
    local.get 2
    i32.const 8
    i32.add
    local.get 0
    i32.sub
    i32.const 8
    i32.add
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h0331bc14583a79b4E
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
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h85e38e0f0c0912ceE (;92;) (type 5) (param i32) (result i64)
    local.get 0
    local.get 0
    call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417h6d063002b56d9ce3E
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h99a6b76e66070dd9E (;93;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17hc60ebf94993c56adE
    local.tee 3
    call $mBufferGetLength
    local.set 4
    local.get 2
    i32.const 0
    i32.store8 offset=28
    local.get 2
    local.get 4
    i32.store offset=24
    local.get 2
    local.get 3
    i32.store offset=20
    local.get 2
    local.get 4
    i32.store offset=16
    local.get 2
    i32.const 0
    i32.store offset=12
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$13read_big_uint17had15a9cf97378418E
    local.set 4
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 2
            i32.const 12
            i32.add
            local.get 1
            call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h1701c3417347aef9E
            local.tee 3
            i32.const 255
            i32.and
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          local.get 1
          i32.const 131230
          i32.const 13
          call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17ha863a59ea30ade07E
          unreachable
        end
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$13read_big_uint17had15a9cf97378418E
        local.set 5
        br 1 (;@1;)
      end
      local.get 2
      i32.const 12
      i32.add
      local.get 1
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h1701c3417347aef9E
      local.set 6
    end
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h9378bbbb078d8903E
    local.set 7
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h9378bbbb078d8903E
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
        i32.store offset=141968
        i32.const 0
        i32.const 0
        i32.store8 offset=141972
      end
      local.get 0
      local.get 4
      i32.store offset=24
      local.get 0
      local.get 8
      i64.store offset=16
      local.get 0
      local.get 7
      i64.store offset=8
      local.get 0
      local.get 5
      i32.store offset=4
      local.get 0
      local.get 6
      i32.store8 offset=1
      local.get 0
      local.get 3
      i32.store8
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 1
    i32.const 131072
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17ha863a59ea30ade07E
    unreachable
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h1701c3417347aef9E (;94;) (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 0
    i32.store8 offset=15
    local.get 0
    local.get 2
    i32.const 15
    i32.add
    i32.const 1
    local.get 1
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h901e2a537e6283e9E
    local.get 2
    i32.load8_u offset=15
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h9378bbbb078d8903E (;95;) (type 17) (param i32 i32) (result i64)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h901e2a537e6283e9E
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
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17hb7315280f8ba2288E (;96;) (type 6) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17hc60ebf94993c56adE
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h788cb92c689626f0E
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17hced1ee1b92a1adcdE (;97;) (type 6) (param i32) (result i32)
    (local i32)
    block ;; label = @1
      local.get 0
      call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h8db094edde750117E
      local.tee 1
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.const 131743
      i32.const 16
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17ha863a59ea30ade07E
      unreachable
    end
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$8is_empty17h36d7e183a1460557E (;98;) (type 6) (param i32) (result i32)
    local.get 0
    call $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$23address_storage_get_len17hd22e39312875ed11E
    i32.eqz
  )
  (func $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$23address_storage_get_len17hd22e39312875ed11E (;99;) (type 6) (param i32) (result i32)
    local.get 0
    i32.const -25
    call $mBufferStorageLoad
    drop
    i32.const -25
    call $mBufferGetLength
  )
  (func $_ZN13token_release12TokenRelease20get_claimable_tokens17h609b66a16bf59308E (;100;) (type 6) (param i32) (result i32)
    (local i32 i64 i64 i32 i32 i64 i64 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$20activation_timestamp17h46441d4abe71195cE
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h85e38e0f0c0912ceE
    local.set 2
    call $getBlockTimestamp
    local.set 3
    local.get 1
    local.get 0
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$11user_groups17h2be83961a48d3d8bE
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h11c98ae012739249E
    local.tee 4
    i32.store offset=12
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf7b12dc51dff5384E
    local.set 5
    local.get 1
    local.get 4
    call $mBufferGetLength
    i32.store offset=24
    local.get 1
    i32.const 0
    i32.store offset=20
    local.get 3
    local.get 2
    i64.sub
    local.set 6
    local.get 1
    local.get 1
    i32.const 12
    i32.add
    i32.store offset=16
    loop (result i32) ;; label = @1
      local.get 1
      local.get 1
      i32.const 16
      i32.add
      call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_ref_iter..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf59aca185878d8f4E
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 1
            i32.load
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            local.get 1
            i32.load offset=4
            i32.store offset=28
            local.get 1
            i32.const 32
            i32.add
            local.get 1
            i32.const 28
            i32.add
            call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14group_schedule17hed424a1e05c29259E
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h99a6b76e66070dd9E
            local.get 1
            i32.const 28
            i32.add
            call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14users_in_group17h5a2cdc1a8ce5a62bE
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h85e38e0f0c0912ceE
            local.set 7
            local.get 1
            i64.load offset=48
            local.set 3
            local.get 1
            i64.load offset=40
            local.set 2
            block ;; label = @5
              local.get 1
              i32.load8_u offset=32
              br_if 0 (;@5;)
              local.get 2
              i64.eqz
              br_if 2 (;@3;)
              local.get 2
              local.get 6
              i64.gt_u
              br_if 4 (;@1;)
              local.get 1
              i32.load offset=36
              local.set 8
              local.get 6
              local.get 2
              i64.div_u
              local.tee 2
              local.get 3
              local.get 2
              local.get 3
              i64.lt_u
              select
              call $_ZN115_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..convert..From$LT$u64$GT$$GT$4from17habb5f9297a0a9424E
              local.tee 4
              local.get 4
              local.get 8
              call $bigIntMul
              br 3 (;@2;)
            end
            local.get 2
            i64.eqz
            br_if 1 (;@3;)
            local.get 2
            local.get 6
            i64.gt_u
            br_if 3 (;@1;)
            local.get 1
            i64.load8_u offset=33
            local.set 9
            local.get 6
            local.get 2
            i64.div_u
            local.tee 2
            local.get 3
            local.get 2
            local.get 3
            i64.lt_u
            select
            call $_ZN115_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..convert..From$LT$u64$GT$$GT$4from17habb5f9297a0a9424E
            local.tee 4
            local.get 4
            local.get 1
            i32.load offset=56
            call $bigIntMul
            local.get 4
            local.get 4
            local.get 9
            call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$9make_temp17h67cb7aba17a8ec8fE
            call $bigIntMul
            local.get 4
            local.get 4
            i64.const 100
            call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$9make_temp17h67cb7aba17a8ec8fE
            call $bigIntTDiv
            br 2 (;@2;)
          end
          block ;; label = @4
            block ;; label = @5
              local.get 5
              local.get 0
              call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$15claimed_balance17hdcec00cebf1c1be7E
              call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17hb7315280f8ba2288E
              local.tee 4
              call $_ZN4core3cmp10PartialOrd2gt17hbd3108189d395625E
              br_if 0 (;@5;)
              call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf7b12dc51dff5384E
              local.set 5
              br 1 (;@4;)
            end
            local.get 5
            local.get 5
            local.get 4
            call $_ZN11dharitri_sc3api13managed_types11big_int_api13BigIntApiImpl15bi_sub_unsigned17hb8592de867720c0cE
          end
          local.get 1
          i32.const 64
          i32.add
          global.set $__stack_pointer
          local.get 5
          return
        end
        call $_ZN4core9panicking11panic_const23panic_const_div_by_zero17he275f7f3c4ee93c1E
        unreachable
      end
      local.get 4
      local.get 4
      local.get 7
      call $_ZN115_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..convert..From$LT$u64$GT$$GT$4from17habb5f9297a0a9424E
      call $bigIntTDiv
      local.get 5
      local.get 5
      local.get 4
      call $bigIntAdd
      br 0 (;@1;)
    end
  )
  (func $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$20activation_timestamp17h46441d4abe71195cE (;101;) (type 1) (result i32)
    i32.const 131874
    i32.const 19
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h903d9d97f19e6965E
  )
  (func $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$11user_groups17h2be83961a48d3d8bE (;102;) (type 6) (param i32) (result i32)
    (local i32)
    i32.const 131777
    i32.const 10
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h903d9d97f19e6965E
    local.tee 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h58ead29858303e83E
    local.get 1
  )
  (func $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_ref_iter..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf59aca185878d8f4E (;103;) (type 0) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h0331bc14583a79b4E
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
  (func $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14group_schedule17hed424a1e05c29259E (;104;) (type 6) (param i32) (result i32)
    (local i32)
    i32.const 131787
    i32.const 13
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h903d9d97f19e6965E
    local.tee 1
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h6ccf7ce23f661178E
    local.get 1
  )
  (func $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14users_in_group17h5a2cdc1a8ce5a62bE (;105;) (type 6) (param i32) (result i32)
    (local i32)
    i32.const 131800
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h903d9d97f19e6965E
    local.tee 1
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h6ccf7ce23f661178E
    local.get 1
  )
  (func $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$15claimed_balance17hdcec00cebf1c1be7E (;106;) (type 6) (param i32) (result i32)
    (local i32)
    i32.const 131812
    i32.const 14
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h903d9d97f19e6965E
    local.tee 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h58ead29858303e83E
    local.get 1
  )
  (func $_ZN4core3cmp10PartialOrd2gt17hbd3108189d395625E (;107;) (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$6bi_cmp17hb4767ba65972b5ebE
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
  )
  (func $_ZN4core9panicking11panic_const23panic_const_div_by_zero17he275f7f3c4ee93c1E (;108;) (type 11)
    call $_ZN4core9panicking9panic_fmt17hb859252f4b513814E
    unreachable
  )
  (func $_ZN13token_release12TokenRelease25require_setup_period_live17he17cfe7fcde04ad2E (;109;) (type 11)
    block ;; label = @1
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$19setup_period_status17hd49f6d84c6de0ee4E
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h6a0296bc63d8cbe5E
      br_if 0 (;@1;)
      i32.const 131559
      i32.const 22
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h8000860129cdf8f4E
      unreachable
    end
  )
  (func $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$19setup_period_status17hd49f6d84c6de0ee4E (;110;) (type 1) (result i32)
    i32.const 131857
    i32.const 17
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h903d9d97f19e6965E
  )
  (func $_ZN13token_release12TokenRelease26require_setup_period_ended17hba1b360837183baeE (;111;) (type 11)
    block ;; label = @1
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$19setup_period_status17hd49f6d84c6de0ee4E
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h6a0296bc63d8cbe5E
      br_if 0 (;@1;)
      return
    end
    i32.const 131612
    i32.const 28
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h8000860129cdf8f4E
    unreachable
  )
  (func $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h68447158045fd8d6E (;112;) (type 7) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferAppendBytes
    drop
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h46f4c5c386d027c2E (;113;) (type 3) (param i32)
    local.get 0
    i32.const 131198
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17ha863a59ea30ade07E
    unreachable
  )
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17he3585b619b30c76fE (;114;) (type 15) (param i32 i32 i32 i32)
    block ;; label = @1
      local.get 1
      local.get 3
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 3
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17h471e892540b809f6E
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    call $memcpy
    drop
  )
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17h471e892540b809f6E (;115;) (type 0) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17hb859252f4b513814E
    unreachable
  )
  (func $_ZN4core5slice5index24slice_end_index_len_fail17h7917b91b59da861bE (;116;) (type 3) (param i32)
    call $_ZN4core9panicking9panic_fmt17hb859252f4b513814E
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$6bi_cmp17hb4767ba65972b5ebE (;117;) (type 2) (param i32 i32) (result i32)
    i32.const -1
    local.get 0
    local.get 1
    call $bigIntCmp
    local.tee 1
    i32.const 0
    i32.ne
    local.get 1
    i32.const 0
    i32.lt_s
    select
  )
  (func $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$16token_identifier17he7492dc1d8496f50E (;118;) (type 1) (result i32)
    i32.const 131826
    i32.const 15
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h903d9d97f19e6965E
  )
  (func $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$18token_total_supply17h4a05c0331ab39a7bE (;119;) (type 1) (result i32)
    i32.const 131841
    i32.const 16
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h903d9d97f19e6965E
  )
  (func $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$22address_change_request17h6ce9749aa68456c0E (;120;) (type 6) (param i32) (result i32)
    (local i32)
    i32.const 131893
    i32.const 20
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h903d9d97f19e6965E
    local.tee 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h58ead29858303e83E
    local.get 1
  )
  (func $rust_begin_unwind (;121;) (type 11)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h8945d78c95e86419E
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h8945d78c95e86419E (;122;) (type 11)
    i32.const 131949
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;123;) (type 11)
    (local i32)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hf452e3bc4fdc5de9E
    block ;; label = @1
      call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd8581afa9cf0d04cE
      local.tee 0
      call $validateTokenIdentifier
      br_if 0 (;@1;)
      i32.const 131640
      i32.const 22
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h8000860129cdf8f4E
      unreachable
    end
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$16token_identifier17he7492dc1d8496f50E
    local.get 0
    call $mBufferStorageStore
    drop
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$19setup_period_status17hd49f6d84c6de0ee4E
    i32.const 1
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h3c24c4de6e15bad1E
  )
  (func $addFixedAmountGroup (;124;) (type 11)
    (local i32 i32 i32 i32 i64 i64 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17heb11d1cf0b5fda06E
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hf452e3bc4fdc5de9E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1c1fbe157427d448E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h53e086df2920e8a4E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h53e086df2920e8a4E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17haeb49f08c387f027E
    local.set 4
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17haeb49f08c387f027E
    local.set 5
    local.get 0
    local.get 1
    i32.store offset=12
    call $_ZN13token_release12TokenRelease25require_setup_period_live17he17cfe7fcde04ad2E
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 0
            i32.const 12
            i32.add
            call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14group_schedule17hed424a1e05c29259E
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$8is_empty17h36d7e183a1460557E
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            i64.const 0
            i64.eq
            br_if 1 (;@3;)
            local.get 2
            call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf7b12dc51dff5384E
            call $_ZN4core3cmp10PartialOrd2gt17hbd3108189d395625E
            i32.eqz
            br_if 2 (;@2;)
            local.get 5
            call $_ZN115_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..convert..From$LT$u64$GT$$GT$4from17habb5f9297a0a9424E
            local.set 1
            call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
            local.tee 6
            local.get 3
            local.get 1
            call $bigIntMul
            local.get 6
            local.get 2
            call $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$6bi_cmp17hb4767ba65972b5ebE
            i32.const 255
            i32.and
            br_if 3 (;@1;)
            call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$18token_total_supply17h4a05c0331ab39a7bE
            local.tee 1
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17hb7315280f8ba2288E
            local.tee 6
            local.get 2
            call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..AddAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17h22703d94e1d88abcE
            local.get 1
            local.get 6
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17he2920ea3de93e588E
            local.get 0
            local.get 5
            i64.store offset=32
            local.get 0
            local.get 4
            i64.store offset=24
            local.get 0
            local.get 3
            i32.store offset=20
            local.get 0
            i32.const 0
            i32.store8 offset=16
            local.get 0
            local.get 2
            i32.store offset=40
            local.get 0
            i32.const 12
            i32.add
            call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14group_schedule17hed424a1e05c29259E
            local.get 0
            i32.const 16
            i32.add
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h75130557369f1710E
            local.get 0
            i32.const 48
            i32.add
            global.set $__stack_pointer
            return
          end
          i32.const 131344
          i32.const 24
          call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h8000860129cdf8f4E
          unreachable
        end
        i32.const 131368
        i32.const 47
        call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h8000860129cdf8f4E
        unreachable
      end
      i32.const 131415
      i32.const 65
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h8000860129cdf8f4E
      unreachable
    end
    i32.const 131480
    i32.const 37
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h8000860129cdf8f4E
    unreachable
  )
  (func $addPercentageBasedGroup (;125;) (type 11)
    (local i32 i32 i32 i32 i64 i64 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17heb11d1cf0b5fda06E
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hf452e3bc4fdc5de9E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1c1fbe157427d448E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h53e086df2920e8a4E
    local.set 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h050897df7dbaa7b3E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17haeb49f08c387f027E
    local.set 4
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17haeb49f08c387f027E
    local.set 5
    local.get 0
    local.get 1
    i32.store offset=12
    call $_ZN13token_release12TokenRelease25require_setup_period_live17he17cfe7fcde04ad2E
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 0
            i32.const 12
            i32.add
            call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14group_schedule17hed424a1e05c29259E
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$8is_empty17h36d7e183a1460557E
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            i64.const 0
            i64.eq
            br_if 1 (;@3;)
            local.get 2
            call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf7b12dc51dff5384E
            call $_ZN4core3cmp10PartialOrd2gt17hbd3108189d395625E
            i32.eqz
            br_if 2 (;@2;)
            local.get 5
            local.get 3
            i64.extend_i32_u
            i64.const 255
            i64.and
            i64.mul
            i64.const 100
            i64.ne
            br_if 3 (;@1;)
            call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$18token_total_supply17h4a05c0331ab39a7bE
            local.tee 1
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17hb7315280f8ba2288E
            local.tee 6
            local.get 2
            call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..AddAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17h22703d94e1d88abcE
            local.get 1
            local.get 6
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17he2920ea3de93e588E
            local.get 0
            local.get 5
            i64.store offset=32
            local.get 0
            local.get 4
            i64.store offset=24
            local.get 0
            local.get 3
            i32.store8 offset=17
            local.get 0
            i32.const 1
            i32.store8 offset=16
            local.get 0
            local.get 2
            i32.store offset=40
            local.get 0
            i32.const 12
            i32.add
            call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14group_schedule17hed424a1e05c29259E
            local.get 0
            i32.const 16
            i32.add
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h75130557369f1710E
            local.get 0
            i32.const 48
            i32.add
            global.set $__stack_pointer
            return
          end
          i32.const 131344
          i32.const 24
          call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h8000860129cdf8f4E
          unreachable
        end
        i32.const 131368
        i32.const 47
        call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h8000860129cdf8f4E
        unreachable
      end
      i32.const 131415
      i32.const 65
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h8000860129cdf8f4E
      unreachable
    end
    i32.const 131581
    i32.const 31
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h8000860129cdf8f4E
    unreachable
  )
  (func $removeGroup (;126;) (type 11)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17heb11d1cf0b5fda06E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hf452e3bc4fdc5de9E
    local.get 0
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1c1fbe157427d448E
    i32.store offset=12
    call $_ZN13token_release12TokenRelease25require_setup_period_live17he17cfe7fcde04ad2E
    block ;; label = @1
      local.get 0
      i32.const 12
      i32.add
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14group_schedule17hed424a1e05c29259E
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$8is_empty17h36d7e183a1460557E
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131320
      i32.const 24
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h8000860129cdf8f4E
      unreachable
    end
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.const 12
    i32.add
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14group_schedule17hed424a1e05c29259E
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h99a6b76e66070dd9E
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$18token_total_supply17h4a05c0331ab39a7bE
    local.tee 1
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17hb7315280f8ba2288E
    local.tee 2
    local.get 2
    local.get 0
    i32.load offset=40
    call $_ZN11dharitri_sc3api13managed_types11big_int_api13BigIntApiImpl15bi_sub_unsigned17hb8592de867720c0cE
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17he2920ea3de93e588E
    local.get 0
    i32.const 12
    i32.add
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14group_schedule17hed424a1e05c29259E
    call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h59ca47225192e14aE
    local.get 0
    i32.const 12
    i32.add
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14users_in_group17h5a2cdc1a8ce5a62bE
    call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h59ca47225192e14aE
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $addUserGroup (;127;) (type 11)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17heb11d1cf0b5fda06E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hf452e3bc4fdc5de9E
    i32.const 131662
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7c32a57cdbfbe527E
    local.set 1
    local.get 0
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1c1fbe157427d448E
    i32.store offset=16
    call $_ZN13token_release12TokenRelease25require_setup_period_live17he17cfe7fcde04ad2E
    block ;; label = @1
      local.get 0
      i32.const 16
      i32.add
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14group_schedule17hed424a1e05c29259E
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$8is_empty17h36d7e183a1460557E
      br_if 0 (;@1;)
      local.get 1
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$11user_groups17h2be83961a48d3d8bE
      local.set 2
      local.get 0
      i32.load offset=16
      local.set 1
      local.get 0
      local.get 2
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h11c98ae012739249E
      local.tee 3
      i32.store offset=20
      local.get 0
      local.get 1
      i32.store offset=28
      local.get 0
      local.get 0
      i32.const 47
      i32.add
      i32.store offset=24
      local.get 0
      local.get 3
      call $mBufferGetLength
      i32.store offset=40
      local.get 0
      i32.const 0
      i32.store offset=36
      local.get 0
      local.get 0
      i32.const 20
      i32.add
      i32.store offset=32
      local.get 0
      i32.const 28
      i32.add
      local.set 3
      block ;; label = @2
        loop ;; label = @3
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.const 32
          i32.add
          call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_ref_iter..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf59aca185878d8f4E
          block ;; label = @4
            local.get 0
            i32.load offset=8
            br_if 0 (;@4;)
            local.get 3
            call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14users_in_group17h5a2cdc1a8ce5a62bE
            local.set 1
            local.get 1
            local.get 1
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h85e38e0f0c0912ceE
            i64.const 1
            i64.add
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hca815809944899e2E
            local.get 0
            i32.load offset=20
            local.get 0
            i32.load offset=28
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h68d0d7ee0c065525E
            br 2 (;@2;)
          end
          local.get 0
          i32.load offset=12
          local.get 1
          call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5b7cfd35b8f8a103E
          i32.eqz
          br_if 0 (;@3;)
        end
      end
      local.get 2
      local.get 0
      i32.load offset=20
      call $_ZN11dharitri_sc7storage11storage_set11storage_set17hb415628f10721fd9E
      local.get 0
      i32.const 48
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131320
    i32.const 24
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h8000860129cdf8f4E
    unreachable
  )
  (func $removeUser (;128;) (type 11)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17heb11d1cf0b5fda06E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hf452e3bc4fdc5de9E
    i32.const 131662
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7c32a57cdbfbe527E
    local.set 1
    call $_ZN13token_release12TokenRelease25require_setup_period_live17he17cfe7fcde04ad2E
    block ;; label = @1
      local.get 1
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$11user_groups17h2be83961a48d3d8bE
      call $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$23address_storage_get_len17hd22e39312875ed11E
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$11user_groups17h2be83961a48d3d8bE
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h11c98ae012739249E
      local.tee 2
      i32.store offset=12
      local.get 0
      local.get 2
      call $mBufferGetLength
      i32.store offset=24
      local.get 0
      i32.const 0
      i32.store offset=20
      local.get 0
      local.get 0
      i32.const 12
      i32.add
      i32.store offset=16
      block ;; label = @2
        loop ;; label = @3
          local.get 0
          local.get 0
          i32.const 16
          i32.add
          call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_ref_iter..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf59aca185878d8f4E
          local.get 0
          i32.load
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          local.get 0
          i32.load offset=4
          i32.store offset=28
          local.get 0
          i32.const 28
          i32.add
          call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14users_in_group17h5a2cdc1a8ce5a62bE
          local.set 2
          local.get 2
          local.get 2
          call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h85e38e0f0c0912ceE
          i64.const -1
          i64.add
          call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hca815809944899e2E
          br 0 (;@3;)
        end
      end
      local.get 1
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$11user_groups17h2be83961a48d3d8bE
      call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h59ca47225192e14aE
      local.get 1
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$15claimed_balance17hdcec00cebf1c1be7E
      call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h59ca47225192e14aE
      local.get 0
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131243
    i32.const 26
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h8000860129cdf8f4E
    unreachable
  )
  (func $requestAddressChange (;129;) (type 11)
    (local i32)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hf452e3bc4fdc5de9E
    i32.const 131681
    i32.const 11
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7c32a57cdbfbe527E
    local.set 0
    call $_ZN13token_release12TokenRelease26require_setup_period_ended17hba1b360837183baeE
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h09ed5dfc655706e7E
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$22address_change_request17h6ce9749aa68456c0E
    local.get 0
    call $mBufferStorageStore
    drop
  )
  (func $approveAddressChange (;130;) (type 11)
    (local i32 i32 i32 i32)
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17heb11d1cf0b5fda06E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hf452e3bc4fdc5de9E
    i32.const 131669
    i32.const 12
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7c32a57cdbfbe527E
    local.set 0
    call $_ZN13token_release12TokenRelease26require_setup_period_ended17hba1b360837183baeE
    block ;; label = @1
      local.get 0
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$22address_change_request17h6ce9749aa68456c0E
      call $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$23address_storage_get_len17hd22e39312875ed11E
      br_if 0 (;@1;)
      i32.const 131517
      i32.const 42
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h8000860129cdf8f4E
      unreachable
    end
    local.get 0
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$22address_change_request17h6ce9749aa68456c0E
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17hced1ee1b92a1adcdE
    local.set 1
    local.get 0
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$11user_groups17h2be83961a48d3d8bE
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h11c98ae012739249E
    local.set 2
    local.get 0
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$15claimed_balance17hdcec00cebf1c1be7E
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17hb7315280f8ba2288E
    local.set 3
    local.get 1
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$11user_groups17h2be83961a48d3d8bE
    local.get 2
    call $_ZN11dharitri_sc7storage11storage_set11storage_set17hb415628f10721fd9E
    local.get 1
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$15claimed_balance17hdcec00cebf1c1be7E
    local.get 3
    call $_ZN11dharitri_sc7storage11storage_set11storage_set17hd0e6b4d859650be3E
    local.get 0
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$11user_groups17h2be83961a48d3d8bE
    call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h59ca47225192e14aE
    local.get 0
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$15claimed_balance17hdcec00cebf1c1be7E
    call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h59ca47225192e14aE
    local.get 0
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$22address_change_request17h6ce9749aa68456c0E
    call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h59ca47225192e14aE
  )
  (func $endSetupPeriod (;131;) (type 11)
    (local i32 i32 i32 i32 i64)
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17heb11d1cf0b5fda06E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hf452e3bc4fdc5de9E
    call $_ZN13token_release12TokenRelease25require_setup_period_live17he17cfe7fcde04ad2E
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$16token_identifier17he7492dc1d8496f50E
    call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h8db094edde750117E
    local.set 0
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$18token_total_supply17h4a05c0331ab39a7bE
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17hb7315280f8ba2288E
    local.set 1
    i32.const 131185
    i32.const 13
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h903d9d97f19e6965E
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha11249fc650fcb7aE
    local.set 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha11249fc650fcb7aE
    drop
    local.get 3
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2b2910d7cf0927b1E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h68d0d7ee0c065525E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha11249fc650fcb7aE
    drop
    local.get 3
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h0b97d6127f4ab1d5E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h68d0d7ee0c065525E
    call $getGasLeft
    local.set 4
    i32.const -30
    call $managedSCAddress
    i32.const -10
    i64.const 0
    call $bigIntSetInt64
    local.get 4
    i32.const -30
    i32.const -10
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    call $managedExecuteOnDestContext
    drop
    call $cleanReturnData
    call $getBlockTimestamp
    local.set 4
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$20activation_timestamp17h46441d4abe71195cE
    local.get 4
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17hca815809944899e2E
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$19setup_period_status17hd49f6d84c6de0ee4E
    i32.const 0
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h3c24c4de6e15bad1E
  )
  (func $claimTokens (;132;) (type 11)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hf452e3bc4fdc5de9E
    call $_ZN13token_release12TokenRelease26require_setup_period_ended17hba1b360837183baeE
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$16token_identifier17he7492dc1d8496f50E
    call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h8db094edde750117E
    local.set 1
    block ;; label = @1
      call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17h09ed5dfc655706e7E
      local.tee 2
      call $_ZN13token_release12TokenRelease20get_claimable_tokens17h609b66a16bf59308E
      local.tee 3
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$4zero17hf7b12dc51dff5384E
      call $_ZN4core3cmp10PartialOrd2gt17hbd3108189d395625E
      br_if 0 (;@1;)
      i32.const 131269
      i32.const 51
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h8000860129cdf8f4E
      unreachable
    end
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha11249fc650fcb7aE
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha11249fc650fcb7aE
    local.set 5
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17ha11249fc650fcb7aE
    local.set 6
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2b2910d7cf0927b1E
    local.set 7
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    i64.const 0
    call $bigIntSetInt64
    local.get 1
    local.get 1
    local.get 3
    call $bigIntAdd
    local.get 0
    i64.const 0
    i64.store offset=4 align=4
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
    i32.store
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
    i32.store offset=12
    local.get 6
    local.get 0
    i32.const 16
    call $mBufferAppendBytes
    drop
    local.get 2
    local.get 6
    i64.const 0
    local.get 4
    local.get 5
    call $managedMultiTransferDCDTNFTExecute
    drop
    local.get 2
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$15claimed_balance17hdcec00cebf1c1be7E
    local.tee 1
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17hb7315280f8ba2288E
    local.tee 7
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators198_$LT$impl$u20$core..ops..arith..AddAssign$LT$$RF$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$10add_assign17h22703d94e1d88abcE
    local.get 1
    local.get 7
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17he2920ea3de93e588E
    local.get 3
    call $bigIntFinishUnsigned
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $verify_address_change (;133;) (type 11)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hf452e3bc4fdc5de9E
    i32.const 131662
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7c32a57cdbfbe527E
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$22address_change_request17h6ce9749aa68456c0E
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17hced1ee1b92a1adcdE
    call $mBufferFinish
    drop
  )
  (func $get_claimable_tokens (;134;) (type 11)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hf452e3bc4fdc5de9E
    i32.const 131662
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7c32a57cdbfbe527E
    call $_ZN13token_release12TokenRelease20get_claimable_tokens17h609b66a16bf59308E
    call $bigIntFinishUnsigned
  )
  (func $getTokenIdentifier (;135;) (type 11)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hf452e3bc4fdc5de9E
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$16token_identifier17he7492dc1d8496f50E
    call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h8db094edde750117E
    call $mBufferFinish
    drop
  )
  (func $getTokenTotalSupply (;136;) (type 11)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hf452e3bc4fdc5de9E
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$18token_total_supply17h4a05c0331ab39a7bE
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17hb7315280f8ba2288E
    call $bigIntFinishUnsigned
  )
  (func $callBack (;137;) (type 11))
  (func $_ZN4core9panicking9panic_fmt17hb859252f4b513814E (;138;) (type 11)
    call $rust_begin_unwind
    unreachable
  )
  (func $_ZN17compiler_builtins3mem6memcpy17h6a01844efc49c0e5E (;139;) (type 4) (param i32 i32 i32) (result i32)
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
  (func $memcpy (;140;) (type 4) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN17compiler_builtins3mem6memcpy17h6a01844efc49c0e5E
  )
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 141976)
  (global (;2;) i32 i32.const 141984)
  (export "memory" (memory 0))
  (export "init" (func $init))
  (export "addFixedAmountGroup" (func $addFixedAmountGroup))
  (export "addPercentageBasedGroup" (func $addPercentageBasedGroup))
  (export "removeGroup" (func $removeGroup))
  (export "addUserGroup" (func $addUserGroup))
  (export "removeUser" (func $removeUser))
  (export "requestAddressChange" (func $requestAddressChange))
  (export "approveAddressChange" (func $approveAddressChange))
  (export "endSetupPeriod" (func $endSetupPeriod))
  (export "claimTokens" (func $claimTokens))
  (export "verify_address_change" (func $verify_address_change))
  (export "get_claimable_tokens" (func $get_claimable_tokens))
  (export "getTokenIdentifier" (func $getTokenIdentifier))
  (export "getTokenTotalSupply" (func $getTokenTotalSupply))
  (export "callBack" (func $callBack))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data $.rodata (;0;) (i32.const 131072) "input too longargument decode error (): wrong number of argumentscannot subtract because result would be negativeDCDTLocalMintinput too shortcast to i64 errorinvalid valueThe address is not definedThis address cannot currently claim any more tokensThe group does not existThe group already existsThe schedule must have at least 1 unlock periodThe schedule must have a positive number of total tokens releasedThe total number of tokens is invalidThe address does not have a change requestSetup period has endedThe final percentage is invalidSetup period is still activeInvalid token providedaddressuser_addressnew_addressperiod_unlock_percentagestorage decode error (key: bad array lengthinput out of rangeuserGroupsgroupScheduleusersInGroupclaimedBalancetokenIdentifiertokenTotalSupplysetupPeriodStatusactivationTimestampaddressChangeRequestEndpoint can only be called by ownerpanic occurred")
  (data $.data (;1;) (i32.const 131964) "8\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.80.1 (3f5fd8dd4 2024-08-06)")
  )
  (@custom "target_features" (after data) "\02+\0fmutable-globals+\08sign-ext")
)
