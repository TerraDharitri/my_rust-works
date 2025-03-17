(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (result i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i32 i32 i32) (result i32)))
  (type (;5;) (func (param i32) (result i32)))
  (type (;6;) (func (param i32) (result i64)))
  (type (;7;) (func (param i32 i32 i32)))
  (type (;8;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;9;) (func (param i32 i64)))
  (type (;10;) (func (result i64)))
  (type (;11;) (func))
  (type (;12;) (func (param i64) (result i32)))
  (type (;13;) (func (param i64 i32 i32 i32 i32 i32) (result i32)))
  (type (;14;) (func (param i32 i32 i64 i32 i32) (result i32)))
  (type (;15;) (func (param i32 i32 i32 i32 i32)))
  (type (;16;) (func (param i32 i32 i32 i32)))
  (type (;17;) (func (param i32 i32) (result i64)))
  (type (;18;) (func (param i32 i64 i32 i32)))
  (import "env" "signalError" (func $signalError (;0;) (type 0)))
  (import "env" "mBufferNew" (func $mBufferNew (;1;) (type 1)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;2;) (type 2)))
  (import "env" "mBufferEq" (func $mBufferEq (;3;) (type 2)))
  (import "env" "managedCaller" (func $managedCaller (;4;) (type 3)))
  (import "env" "managedOwnerAddress" (func $managedOwnerAddress (;5;) (type 3)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;6;) (type 2)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;7;) (type 4)))
  (import "env" "managedSignalError" (func $managedSignalError (;8;) (type 3)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;9;) (type 5)))
  (import "env" "bigIntGetUnsignedArgument" (func $bigIntGetUnsignedArgument (;10;) (type 0)))
  (import "env" "smallIntGetUnsignedArgument" (func $smallIntGetUnsignedArgument (;11;) (type 6)))
  (import "env" "getNumArguments" (func $getNumArguments (;12;) (type 1)))
  (import "env" "bigIntSub" (func $bigIntSub (;13;) (type 7)))
  (import "env" "bigIntSign" (func $bigIntSign (;14;) (type 5)))
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
  (import "env" "validateTokenIdentifier" (func $validateTokenIdentifier (;29;) (type 5)))
  (import "env" "getGasLeft" (func $getGasLeft (;30;) (type 10)))
  (import "env" "managedSCAddress" (func $managedSCAddress (;31;) (type 3)))
  (import "env" "bigIntNew" (func $bigIntNew (;32;) (type 12)))
  (import "env" "managedExecuteOnDestContext" (func $managedExecuteOnDestContext (;33;) (type 13)))
  (import "env" "cleanReturnData" (func $cleanReturnData (;34;) (type 11)))
  (import "env" "managedMultiTransferDCDTNFTExecute" (func $managedMultiTransferDCDTNFTExecute (;35;) (type 14)))
  (import "env" "bigIntFinishUnsigned" (func $bigIntFinishUnsigned (;36;) (type 3)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;37;) (type 5)))
  (func $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17ha29bd6bf27eade7aE (;38;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $signalError
    unreachable
  )
  (func $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb3513aeb23597221E (;39;) (type 15) (param i32 i32 i32 i32 i32)
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
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE (;40;) (type 0) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..convert..From$LT$u64$GT$$GT$4from17hb7df0a58eea724b1E (;41;) (type 12) (param i64) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$9set_value17hc7ab04981b43daceE
    local.get 1
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E (;42;) (type 1) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=131960
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=131960
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$9set_value17hc7ab04981b43daceE (;43;) (type 9) (param i32 i64)
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
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4ffb2edeac6a080bE (;44;) (type 5) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h09e916c6294dadadE (;45;) (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $mBufferEq
    i32.const 0
    i32.gt_s
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hde1176bc3aa61a94E (;46;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17ha29bd6bf27eade7aE
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17hdb6f3d7e092f1997E (;47;) (type 1) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    call $managedCaller
    local.get 0
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17h6a75833365a71bbfE (;48;) (type 11)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    call $managedOwnerAddress
    block ;; label = @1
      local.get 0
      call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17hdb6f3d7e092f1997E
      call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h09e916c6294dadadE
      i32.eqz
      br_if 0 (;@1;)
      return
    end
    i32.const 131908
    i32.const 36
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h2579f53a5e9f9493E (;49;) (type 5) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hffc58b13bcf03ce1E (;50;) (type 16) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131099
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17ha18c2ec549899da6E
    local.tee 4
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 4
    i32.const 131122
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17ha18c2ec549899da6E (;51;) (type 2) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h27430f32b44bd249E (;52;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h2579f53a5e9f9493E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h35f5dc3bfb7e21d5E (;53;) (type 1) (result i32)
    i32.const 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h2579f53a5e9f9493E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4d807c24da816addE (;54;) (type 2) (param i32 i32) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 0
      call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h2579f53a5e9f9493E
      local.tee 2
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.const 131738
      i32.const 16
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hffc58b13bcf03ce1E
      unreachable
    end
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadd054c46cf66d30E (;55;) (type 5) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $bigIntGetUnsignedArgument
    local.get 1
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb25821510f9a928cE (;56;) (type 1) (result i32)
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
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hffc58b13bcf03ce1E
      unreachable
    end
    local.get 0
    i32.wrap_i64
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbb4df11dc07e4345E (;57;) (type 6) (param i32) (result i64)
    local.get 0
    call $smallIntGetUnsignedArgument
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha7d92920c2b2e1e3E (;58;) (type 3) (param i32)
    block ;; label = @1
      call $getNumArguments
      local.get 0
      i32.ne
      br_if 0 (;@1;)
      return
    end
    i32.const 131125
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc3api13managed_types11big_int_api13BigIntApiImpl15bi_sub_unsigned17h0b49275500ce7e86E (;59;) (type 7) (param i32 i32 i32)
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
    i32.const 131150
    i32.const 48
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$13read_big_uint17hc19c31bde263957aE (;60;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h25cc8e1f4007dc73E
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h65882265de625c46E
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h25cc8e1f4007dc73E (;61;) (type 5) (param i32) (result i32)
    (local i32 i64 i32 i32 i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h6a1f355f9ba31200E
    local.get 1
    i32.const 12
    i32.add
    i32.const 4
    call $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E
    local.set 2
    local.get 0
    i32.load
    local.set 3
    call $mBufferNew
    local.set 4
    block ;; label = @1
      local.get 0
      i32.load offset=8
      local.get 3
      local.get 2
      i32.wrap_i64
      local.tee 5
      local.get 4
      call $mBufferCopyByteSlice
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131198
      i32.const 15
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h14d8ca1b797c0b87E
      unreachable
    end
    local.get 0
    local.get 3
    local.get 5
    i32.add
    i32.store
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 4
  )
  (func $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h65882265de625c46E (;62;) (type 5) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferToBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h6a1f355f9ba31200E (;63;) (type 7) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 4
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
            local.tee 5
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17he04bd00c6c9ff464E
            local.tee 6
            i32.const 10000
            i32.gt_u
            br_if 1 (;@3;)
            i32.const 0
            i32.load8_u offset=141968
            i32.const 255
            i32.and
            br_if 1 (;@3;)
            i32.const 0
            local.get 6
            i32.store offset=141964
            i32.const 0
            i32.const 1
            i32.store8 offset=141968
            local.get 3
            i32.const 8
            i32.add
            local.get 6
            call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h762b99ababf753bcE
            local.get 5
            i32.const 0
            local.get 3
            i32.load offset=8
            local.get 3
            i32.load offset=12
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h3584de537bf7ac93E
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
          i32.load offset=141964
          i32.gt_u
          br_if 2 (;@1;)
          local.get 3
          local.get 4
          local.get 5
          call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h95dd1a03576b7dfcE
          local.get 1
          local.get 2
          local.get 3
          i32.load
          local.get 3
          i32.load offset=4
          call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
          br 1 (;@2;)
        end
        local.get 0
        i32.const 0
        i32.store8 offset=16
        local.get 5
        local.get 4
        local.get 1
        local.get 2
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h3584de537bf7ac93E
        br_if 1 (;@1;)
        local.get 4
        local.get 2
        i32.add
        local.set 5
      end
      local.get 0
      local.get 5
      i32.store
      local.get 3
      i32.const 16
      i32.add
      global.set $__stack_pointer
      return
    end
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17he53eb62219e21e22E
    unreachable
  )
  (func $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E (;64;) (type 17) (param i32 i32) (result i64)
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
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h14d8ca1b797c0b87E (;65;) (type 0) (param i32 i32)
    (local i32)
    i32.const 131716
    i32.const 22
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17ha18c2ec549899da6E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 2
    call $managedSignalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h3584de537bf7ac93E (;66;) (type 8) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17he04bd00c6c9ff464E (;67;) (type 5) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h5326bfec40b13b43E (;68;) (type 1) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    i32.const 131944
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h81d3a2a6789ab9a1E (;69;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferAppend
    drop
  )
  (func $_ZN11dharitri_sc5types7managed5basic18big_uint_operators194_$LT$impl$u20$core..ops..arith..AddAssign$LT$$RF$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$10add_assign17hf1cbdc402b394211E (;70;) (type 0) (param i32 i32)
    local.get 0
    local.get 0
    local.get 1
    call $bigIntAdd
  )
  (func $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h1e911ce4f5b47407E (;71;) (type 5) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h6791a6d873e5ba3fE (;72;) (type 1) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    i64.const 0
    call $bigIntSetInt64
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$9make_temp17h9664fb48e018adedE (;73;) (type 12) (param i64) (result i32)
    i32.const -14
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$9set_value17hc7ab04981b43daceE
    i32.const -14
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h1edc3a38fa118254E (;74;) (type 0) (param i32 i32)
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
  (func $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17hd117c0c3c650f086E (;75;) (type 3) (param i32)
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
      i32.load offset=141964
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
      i32.store offset=141964
      i32.const 0
      i32.const 0
      i32.store8 offset=141968
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h95dd1a03576b7dfcE (;76;) (type 7) (param i32 i32 i32)
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
    i32.const 131964
    i32.add
    i32.store
  )
  (func $_ZN11dharitri_sc7storage11storage_get15storage_get_len17h7e8b39a5d19075aaE (;77;) (type 5) (param i32) (result i32)
    local.get 0
    i32.const -25
    call $mBufferStorageLoad
    drop
    i32.const -25
    call $mBufferGetLength
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17hff107ff3b1c6c729E (;78;) (type 5) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h4b9297e3268b4da7E (;79;) (type 0) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17he04bd00c6c9ff464E
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h81d3a2a6789ab9a1E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage11storage_set11storage_set17h4b936981c3ee4782E (;80;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h48007177d0ec736cE
    local.get 2
    local.get 2
    i32.load8_u offset=12
    i32.store8 offset=24
    local.get 2
    local.get 2
    i32.load offset=8
    i32.store offset=20
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17he04bd00c6c9ff464E
    local.set 3
    i32.const 0
    local.set 4
    block ;; label = @1
      loop ;; label = @2
        local.get 4
        i32.const 4
        i32.add
        local.tee 5
        local.get 3
        i32.gt_u
        br_if 1 (;@1;)
        local.get 2
        i32.const 0
        i32.store offset=28
        local.get 1
        local.get 4
        local.get 2
        i32.const 28
        i32.add
        i32.const 4
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h3584de537bf7ac93E
        drop
        local.get 2
        i32.load offset=28
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
        local.get 2
        i32.const 20
        i32.add
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h76e38c6f6721c825E
        local.get 5
        local.set 4
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 2
    i32.load offset=20
    local.get 2
    i32.load8_u offset=24
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h515fdc09ca39d369E
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h48007177d0ec736cE (;81;) (type 3) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        i32.const 0
        i32.load8_u offset=141968
        local.tee 2
        br_if 0 (;@2;)
        i32.const 0
        i32.const 1
        i32.store8 offset=141968
        i32.const 0
        i32.const 0
        i32.store offset=141964
        local.get 1
        i32.const 8
        i32.add
        i32.const 0
        call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h762b99ababf753bcE
        local.get 1
        i32.load offset=8
        local.get 1
        i32.load offset=12
        i32.const 131944
        i32.const 0
        call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h5326bfec40b13b43E
        local.set 3
        br 1 (;@1;)
      end
      i32.const 131944
      i32.const 0
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17ha18c2ec549899da6E
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
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h76e38c6f6721c825E (;82;) (type 0) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17he04bd00c6c9ff464E
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
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h9493029c54edd885E
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.load8_u offset=4
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17he04bd00c6c9ff464E
          local.set 3
          i32.const 10000
          i32.const 0
          i32.load offset=141964
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
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h5648a2c18b70e1d8E
          local.get 0
          i32.const 0
          local.get 2
          i32.load
          local.get 2
          i32.load offset=4
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h3584de537bf7ac93E
          drop
          i32.const 0
          local.get 3
          i32.store offset=141964
          br 2 (;@1;)
        end
        local.get 1
        i32.load
        local.get 0
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h81d3a2a6789ab9a1E
        br 1 (;@1;)
      end
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17hd117c0c3c650f086E
      local.get 1
      i32.load
      local.get 0
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h81d3a2a6789ab9a1E
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h515fdc09ca39d369E (;83;) (type 7) (param i32 i32 i32)
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
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17hd117c0c3c650f086E
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
      i32.store offset=141964
      i32.const 0
      i32.const 0
      i32.store8 offset=141968
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
  (func $_ZN11dharitri_sc7storage11storage_set11storage_set17hea82bb78fadb4031E (;84;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h1e911ce4f5b47407E
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage11storage_set13storage_clear17h97b5f57ae793e7b6E (;85;) (type 3) (param i32)
    i32.const -20
    i32.const 131944
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
    i32.const -20
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17h0cdbedf515cd017eE (;86;) (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h859fc76ec611d0d3E
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h5326bfec40b13b43E
    local.set 3
    i32.const 0
    local.set 4
    local.get 2
    call $mBufferGetLength
    local.set 0
    local.get 1
    i32.const 28
    i32.add
    i32.const 0
    i32.store8
    local.get 1
    i32.const 24
    i32.add
    local.get 0
    i32.store
    local.get 1
    local.get 2
    i32.store offset=20
    local.get 1
    local.get 0
    i32.store offset=16
    local.get 1
    i32.const 0
    i32.store offset=12
    loop (result i32) ;; label = @1
      block ;; label = @2
        local.get 0
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
          i32.store offset=141964
          i32.const 0
          i32.const 0
          i32.store8 offset=141968
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
      call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h25cc8e1f4007dc73E
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h1edc3a38fa118254E
      local.get 1
      i32.load offset=12
      local.set 4
      local.get 1
      i32.load offset=16
      local.set 0
      br 0 (;@1;)
    end
  )
  (func $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h859fc76ec611d0d3E (;87;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17hff107ff3b1c6c729E
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17h3e311de837ca3c8eE (;88;) (type 5) (param i32) (result i32)
    block ;; label = @1
      local.get 0
      call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h859fc76ec611d0d3E
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      i32.const 131738
      i32.const 16
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h14d8ca1b797c0b87E
      unreachable
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17h54d39127e24da87bE (;89;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17hff107ff3b1c6c729E
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
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$13read_big_uint17hc19c31bde263957aE
    local.set 1
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 2
            i32.const 12
            i32.add
            call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h02e5b0b05a1cc814E
            local.tee 3
            i32.const 255
            i32.and
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          i32.const 131230
          i32.const 13
          call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h14d8ca1b797c0b87E
          unreachable
        end
        local.get 2
        i32.const 12
        i32.add
        call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$13read_big_uint17hc19c31bde263957aE
        local.set 4
        br 1 (;@1;)
      end
      local.get 2
      i32.const 12
      i32.add
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h02e5b0b05a1cc814E
      local.set 5
    end
    local.get 2
    i32.const 12
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h601c262c69f07c2aE
    local.set 6
    local.get 2
    i32.const 12
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h601c262c69f07c2aE
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
        i32.store offset=141964
        i32.const 0
        i32.const 0
        i32.store8 offset=141968
      end
      local.get 0
      local.get 1
      i32.store offset=24
      local.get 0
      local.get 7
      i64.store offset=16
      local.get 0
      local.get 6
      i64.store offset=8
      local.get 0
      local.get 4
      i32.store offset=4
      local.get 0
      local.get 5
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
    i32.const 131072
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h14d8ca1b797c0b87E
    unreachable
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u8$GT$24dep_decode_or_handle_err17h02e5b0b05a1cc814E (;90;) (type 5) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 0
    i32.store8 offset=15
    local.get 0
    local.get 1
    i32.const 15
    i32.add
    i32.const 1
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h6a1f355f9ba31200E
    local.get 1
    i32.load8_u offset=15
    local.set 0
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h601c262c69f07c2aE (;91;) (type 6) (param i32) (result i64)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h6a1f355f9ba31200E
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
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17h8a4cd3a842a5e3adE (;92;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17hff107ff3b1c6c729E
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h65882265de625c46E
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17hfcf0992fcd4a773cE (;93;) (type 5) (param i32) (result i32)
    (local i64)
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hce1c58601df775ebE
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
        i32.const 131754
        i32.const 18
        call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h14d8ca1b797c0b87E
        unreachable
      end
      i32.const 1
      local.set 0
    end
    local.get 0
  )
  (func $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hce1c58601df775ebE (;94;) (type 6) (param i32) (result i64)
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
      local.get 0
      call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17hff107ff3b1c6c729E
      local.tee 0
      call $mBufferGetLength
      local.tee 2
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 131072
      i32.const 14
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h14d8ca1b797c0b87E
      unreachable
    end
    local.get 1
    local.get 1
    i32.const 8
    i32.add
    i32.const 8
    local.get 2
    call $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h6229cb0998fa759fE
    local.get 0
    i32.const 0
    local.get 1
    i32.load
    local.tee 2
    local.get 1
    i32.load offset=4
    local.tee 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h3584de537bf7ac93E
    drop
    local.get 2
    local.get 3
    call $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E
    local.set 4
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 4
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h092505a89b03ec4dE (;95;) (type 0) (param i32 i32)
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
    call $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hfa66c899aa066fc8E
    local.get 0
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h5e29d3daa8ae1ca9E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hfa66c899aa066fc8E (;96;) (type 18) (param i32 i64 i32 i32)
    (local i64 i32 i32 i32 i32)
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
    i64.const 65280
    i64.and
    local.get 1
    i64.const 56
    i64.shr_u
    local.tee 4
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
        i32.const 131944
        local.set 3
        i32.const 0
        local.set 5
        br 1 (;@1;)
      end
      i32.const 0
      local.set 5
      i32.const 0
      local.set 6
      i32.const 0
      local.set 7
      block ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        block ;; label = @3
          local.get 1
          i64.const -1
          i64.ne
          br_if 0 (;@3;)
          local.get 3
          i32.const 7
          i32.add
          local.set 3
          i32.const 1
          local.set 5
          br 2 (;@1;)
        end
        local.get 4
        i32.wrap_i64
        i32.extend8_s
        local.tee 8
        i32.const 7
        i32.shr_s
        local.set 7
        local.get 8
        i32.const 0
        i32.lt_s
        local.set 6
      end
      local.get 7
      i32.const 255
      i32.and
      local.set 7
      loop ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              local.get 5
              i32.const 8
              i32.eq
              br_if 0 (;@5;)
              local.get 3
              local.get 5
              i32.add
              i32.load8_u
              local.tee 8
              local.get 7
              i32.eq
              br_if 2 (;@3;)
              block ;; label = @6
                local.get 2
                i32.eqz
                br_if 0 (;@6;)
                local.get 8
                i32.const 7
                i32.shr_u
                local.get 6
                i32.eq
                br_if 0 (;@6;)
                local.get 5
                i32.const -1
                i32.add
                local.tee 5
                i32.const 9
                i32.ge_u
                br_if 2 (;@4;)
              end
              local.get 3
              local.get 5
              i32.add
              local.set 3
              i32.const 8
              local.get 5
              i32.sub
              local.set 5
              br 4 (;@1;)
            end
            call $_ZN4core9panicking18panic_bounds_check17hdbf723dd9cf95e6aE
            unreachable
          end
          local.get 5
          call $_ZN4core5slice5index26slice_start_index_len_fail17hfd512babcd2fce3fE
          unreachable
        end
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 5
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h5e29d3daa8ae1ca9E (;97;) (type 7) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17ha18c2ec549899da6E
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h16ee859aa0631f09E (;98;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage11storage_set11storage_set17hea82bb78fadb4031E
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h464d0384e7a036f3E (;99;) (type 9) (param i32 i64)
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
    call $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hfa66c899aa066fc8E
    local.get 0
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$12set_slice_u817h5e29d3daa8ae1ca9E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17he6216ccf366290a9E (;100;) (type 0) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h48007177d0ec736cE
    local.get 2
    local.get 2
    i32.load8_u offset=4
    i32.store8 offset=12
    local.get 2
    local.get 2
    i32.load
    i32.store offset=8
    local.get 1
    i32.load offset=24
    local.get 2
    i32.const 8
    i32.add
    call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h13b8f8ae5f031e87E
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load8_u
        br_if 0 (;@2;)
        i32.const 0
        local.get 2
        i32.const 8
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17hb688c55192df692fE
        local.get 1
        i32.load offset=4
        local.get 2
        i32.const 8
        i32.add
        call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h13b8f8ae5f031e87E
        local.get 1
        i32.const 16
        i32.add
        local.set 3
        local.get 1
        i32.const 8
        i32.add
        local.set 1
        br 1 (;@1;)
      end
      i32.const 1
      local.get 2
      i32.const 8
      i32.add
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17hb688c55192df692fE
      local.get 1
      i32.load8_u offset=1
      local.get 2
      i32.const 8
      i32.add
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17hb688c55192df692fE
      local.get 1
      i32.const 16
      i32.add
      local.set 3
      local.get 1
      i32.const 8
      i32.add
      local.set 1
    end
    local.get 1
    local.get 2
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types8impl_ref86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$T$GT$24dep_encode_or_handle_err17h63e31f2bc8171eedE
    local.get 3
    local.get 2
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types8impl_ref86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$T$GT$24dep_encode_or_handle_err17h63e31f2bc8171eedE
    local.get 0
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load8_u offset=12
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h515fdc09ca39d369E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h13b8f8ae5f031e87E (;101;) (type 0) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h1e911ce4f5b47407E
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h76e38c6f6721c825E
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned83_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17hb688c55192df692fE (;102;) (type 0) (param i32 i32)
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
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h9493029c54edd885E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types8impl_ref86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$T$GT$24dep_encode_or_handle_err17h63e31f2bc8171eedE (;103;) (type 0) (param i32 i32)
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
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h9493029c54edd885E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$8is_empty17h7bd5958b46e53f73E (;104;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_get15storage_get_len17h7e8b39a5d19075aaE
    i32.eqz
  )
  (func $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h762b99ababf753bcE (;105;) (type 0) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    i32.const 131964
    i32.const 10000
    local.get 1
    call $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h6229cb0998fa759fE
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
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E (;106;) (type 16) (param i32 i32 i32 i32)
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
  (func $_ZN13token_release12TokenRelease20get_claimable_tokens17h83e9b4d3157c7557E (;107;) (type 5) (param i32) (result i32)
    (local i32 i64 i64 i32 i32 i64 i64 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$20activation_timestamp17hcc11a8d7e89d43cdE
    call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hce1c58601df775ebE
    local.set 2
    call $getBlockTimestamp
    local.set 3
    local.get 1
    local.get 0
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$11user_groups17h53c5f1bc648ff0b4E
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17h0cdbedf515cd017eE
    local.tee 4
    i32.store offset=12
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h6791a6d873e5ba3fE
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
      call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_ref_iter..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf2a89f6627bad9e4E
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
            call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14group_schedule17hdb6f004e9b8de669E
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17h54d39127e24da87bE
            local.get 1
            i32.const 28
            i32.add
            call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14users_in_group17hb961b10c2c583bbeE
            call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hce1c58601df775ebE
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
              call $_ZN113_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..convert..From$LT$u64$GT$$GT$4from17hb7df0a58eea724b1E
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
            call $_ZN113_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..convert..From$LT$u64$GT$$GT$4from17hb7df0a58eea724b1E
            local.tee 4
            local.get 4
            local.get 1
            i32.load offset=56
            call $bigIntMul
            local.get 4
            local.get 4
            local.get 9
            call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$9make_temp17h9664fb48e018adedE
            call $bigIntMul
            local.get 4
            local.get 4
            i64.const 100
            call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$9make_temp17h9664fb48e018adedE
            call $bigIntTDiv
            br 2 (;@2;)
          end
          block ;; label = @4
            block ;; label = @5
              local.get 5
              local.get 0
              call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$15claimed_balance17h53195a107d12f2fdE
              call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17h8a4cd3a842a5e3adE
              local.tee 4
              call $_ZN4core3cmp10PartialOrd2gt17hff5464b5f5bf2eceE
              br_if 0 (;@5;)
              call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h6791a6d873e5ba3fE
              local.set 5
              br 1 (;@4;)
            end
            local.get 5
            local.get 5
            local.get 4
            call $_ZN11dharitri_sc3api13managed_types11big_int_api13BigIntApiImpl15bi_sub_unsigned17h0b49275500ce7e86E
          end
          local.get 1
          i32.const 64
          i32.add
          global.set $__stack_pointer
          local.get 5
          return
        end
        call $_ZN4core9panicking18panic_bounds_check17hdbf723dd9cf95e6aE
        unreachable
      end
      local.get 4
      local.get 4
      local.get 7
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..convert..From$LT$u64$GT$$GT$4from17hb7df0a58eea724b1E
      call $bigIntTDiv
      local.get 5
      local.get 5
      local.get 4
      call $bigIntAdd
      br 0 (;@1;)
    end
  )
  (func $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$20activation_timestamp17hcc11a8d7e89d43cdE (;108;) (type 1) (result i32)
    i32.const 131869
    i32.const 19
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17ha18c2ec549899da6E
  )
  (func $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$11user_groups17h53c5f1bc648ff0b4E (;109;) (type 5) (param i32) (result i32)
    (local i32)
    i32.const 131772
    i32.const 10
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17ha18c2ec549899da6E
    local.tee 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h81d3a2a6789ab9a1E
    local.get 1
  )
  (func $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_ref_iter..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf2a89f6627bad9e4E (;110;) (type 0) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h3584de537bf7ac93E
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
  (func $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14group_schedule17hdb6f004e9b8de669E (;111;) (type 5) (param i32) (result i32)
    (local i32)
    i32.const 131782
    i32.const 13
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17ha18c2ec549899da6E
    local.tee 1
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h4b9297e3268b4da7E
    local.get 1
  )
  (func $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14users_in_group17hb961b10c2c583bbeE (;112;) (type 5) (param i32) (result i32)
    (local i32)
    i32.const 131795
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17ha18c2ec549899da6E
    local.tee 1
    local.get 0
    call $_ZN11dharitri_sc7storage11storage_key19StorageKey$LT$A$GT$11append_item17h4b9297e3268b4da7E
    local.get 1
  )
  (func $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$15claimed_balance17h53195a107d12f2fdE (;113;) (type 5) (param i32) (result i32)
    (local i32)
    i32.const 131807
    i32.const 14
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17ha18c2ec549899da6E
    local.tee 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h81d3a2a6789ab9a1E
    local.get 1
  )
  (func $_ZN4core3cmp10PartialOrd2gt17hff5464b5f5bf2eceE (;114;) (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$6bi_cmp17h68586133196f93cfE
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
  )
  (func $_ZN4core9panicking18panic_bounds_check17hdbf723dd9cf95e6aE (;115;) (type 11)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (func $_ZN13token_release12TokenRelease25require_setup_period_live17ha336f02f2433ff97E (;116;) (type 11)
    block ;; label = @1
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$19setup_period_status17h711e2d34e4b3f057E
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17hfcf0992fcd4a773cE
      br_if 0 (;@1;)
      i32.const 131559
      i32.const 22
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hde1176bc3aa61a94E
      unreachable
    end
  )
  (func $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$19setup_period_status17h711e2d34e4b3f057E (;117;) (type 1) (result i32)
    i32.const 131852
    i32.const 17
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17ha18c2ec549899da6E
  )
  (func $_ZN13token_release12TokenRelease26require_setup_period_ended17hf309b3a7596ecf83E (;118;) (type 11)
    block ;; label = @1
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$19setup_period_status17h711e2d34e4b3f057E
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17hfcf0992fcd4a773cE
      br_if 0 (;@1;)
      return
    end
    i32.const 131612
    i32.const 28
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hde1176bc3aa61a94E
    unreachable
  )
  (func $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h9493029c54edd885E (;119;) (type 7) (param i32 i32 i32)
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
          i32.load offset=141964
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
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h5648a2c18b70e1d8E
          local.get 3
          i32.load offset=8
          local.get 3
          i32.load offset=12
          local.get 1
          local.get 2
          call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
          i32.const 0
          local.get 0
          i32.store offset=141964
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
      call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17hd117c0c3c650f086E
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
  (func $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h5648a2c18b70e1d8E (;120;) (type 7) (param i32 i32 i32)
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
    i32.const 131964
    i32.const 10000
    call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb3513aeb23597221E
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
  (func $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h6229cb0998fa759fE (;121;) (type 16) (param i32 i32 i32 i32)
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
    call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb3513aeb23597221E
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
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17he53eb62219e21e22E (;122;) (type 11)
    i32.const 131198
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h14d8ca1b797c0b87E
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$6bi_cmp17h68586133196f93cfE (;123;) (type 2) (param i32 i32) (result i32)
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
  (func $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$16token_identifier17h84d7407905d66564E (;124;) (type 1) (result i32)
    i32.const 131821
    i32.const 15
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17ha18c2ec549899da6E
  )
  (func $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$18token_total_supply17he8cf3d6bb2f79749E (;125;) (type 1) (result i32)
    i32.const 131836
    i32.const 16
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17ha18c2ec549899da6E
  )
  (func $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$22address_change_request17hbde741c20f630fd9E (;126;) (type 5) (param i32) (result i32)
    (local i32)
    i32.const 131888
    i32.const 20
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17ha18c2ec549899da6E
    local.tee 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h81d3a2a6789ab9a1E
    local.get 1
  )
  (func $rust_begin_unwind (;127;) (type 11)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE (;128;) (type 11)
    i32.const 131944
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;129;) (type 11)
    (local i32)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha7d92920c2b2e1e3E
    block ;; label = @1
      call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h35f5dc3bfb7e21d5E
      local.tee 0
      call $validateTokenIdentifier
      br_if 0 (;@1;)
      i32.const 131640
      i32.const 22
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hde1176bc3aa61a94E
      unreachable
    end
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$16token_identifier17h84d7407905d66564E
    local.get 0
    call $mBufferStorageStore
    drop
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$19setup_period_status17h711e2d34e4b3f057E
    i32.const 1
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h092505a89b03ec4dE
  )
  (func $addFixedAmountGroup (;130;) (type 11)
    (local i32 i32 i32 i32 i64 i64 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17h6a75833365a71bbfE
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha7d92920c2b2e1e3E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h27430f32b44bd249E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadd054c46cf66d30E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadd054c46cf66d30E
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbb4df11dc07e4345E
    local.set 4
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbb4df11dc07e4345E
    local.set 5
    local.get 0
    local.get 1
    i32.store offset=12
    call $_ZN13token_release12TokenRelease25require_setup_period_live17ha336f02f2433ff97E
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 0
            i32.const 12
            i32.add
            call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14group_schedule17hdb6f004e9b8de669E
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$8is_empty17h7bd5958b46e53f73E
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            i64.const 0
            i64.eq
            br_if 1 (;@3;)
            local.get 2
            call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h6791a6d873e5ba3fE
            call $_ZN4core3cmp10PartialOrd2gt17hff5464b5f5bf2eceE
            i32.eqz
            br_if 2 (;@2;)
            local.get 5
            call $_ZN113_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..convert..From$LT$u64$GT$$GT$4from17hb7df0a58eea724b1E
            local.set 1
            call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
            local.tee 6
            local.get 3
            local.get 1
            call $bigIntMul
            local.get 6
            local.get 2
            call $_ZN24dharitri_sc_wasm_adapter3api13managed_types16big_int_api_node143_$LT$impl$u20$dharitri_sc..api..managed_types..big_int_api..BigIntApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$6bi_cmp17h68586133196f93cfE
            i32.const 255
            i32.and
            br_if 3 (;@1;)
            call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$18token_total_supply17he8cf3d6bb2f79749E
            local.tee 1
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17h8a4cd3a842a5e3adE
            local.tee 6
            local.get 2
            call $_ZN11dharitri_sc5types7managed5basic18big_uint_operators194_$LT$impl$u20$core..ops..arith..AddAssign$LT$$RF$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$10add_assign17hf1cbdc402b394211E
            local.get 1
            local.get 6
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h16ee859aa0631f09E
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
            call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14group_schedule17hdb6f004e9b8de669E
            local.get 0
            i32.const 16
            i32.add
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17he6216ccf366290a9E
            local.get 0
            i32.const 48
            i32.add
            global.set $__stack_pointer
            return
          end
          i32.const 131344
          i32.const 24
          call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hde1176bc3aa61a94E
          unreachable
        end
        i32.const 131368
        i32.const 47
        call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hde1176bc3aa61a94E
        unreachable
      end
      i32.const 131415
      i32.const 65
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hde1176bc3aa61a94E
      unreachable
    end
    i32.const 131480
    i32.const 37
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hde1176bc3aa61a94E
    unreachable
  )
  (func $addPercentageBasedGroup (;131;) (type 11)
    (local i32 i32 i32 i32 i64 i64 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17h6a75833365a71bbfE
    i32.const 5
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha7d92920c2b2e1e3E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h27430f32b44bd249E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hadd054c46cf66d30E
    local.set 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hb25821510f9a928cE
    local.set 3
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbb4df11dc07e4345E
    local.set 4
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hbb4df11dc07e4345E
    local.set 5
    local.get 0
    local.get 1
    i32.store offset=12
    call $_ZN13token_release12TokenRelease25require_setup_period_live17ha336f02f2433ff97E
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 0
            i32.const 12
            i32.add
            call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14group_schedule17hdb6f004e9b8de669E
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$8is_empty17h7bd5958b46e53f73E
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            i64.const 0
            i64.eq
            br_if 1 (;@3;)
            local.get 2
            call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h6791a6d873e5ba3fE
            call $_ZN4core3cmp10PartialOrd2gt17hff5464b5f5bf2eceE
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
            call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$18token_total_supply17he8cf3d6bb2f79749E
            local.tee 1
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17h8a4cd3a842a5e3adE
            local.tee 6
            local.get 2
            call $_ZN11dharitri_sc5types7managed5basic18big_uint_operators194_$LT$impl$u20$core..ops..arith..AddAssign$LT$$RF$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$10add_assign17hf1cbdc402b394211E
            local.get 1
            local.get 6
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h16ee859aa0631f09E
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
            call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14group_schedule17hdb6f004e9b8de669E
            local.get 0
            i32.const 16
            i32.add
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17he6216ccf366290a9E
            local.get 0
            i32.const 48
            i32.add
            global.set $__stack_pointer
            return
          end
          i32.const 131344
          i32.const 24
          call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hde1176bc3aa61a94E
          unreachable
        end
        i32.const 131368
        i32.const 47
        call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hde1176bc3aa61a94E
        unreachable
      end
      i32.const 131415
      i32.const 65
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hde1176bc3aa61a94E
      unreachable
    end
    i32.const 131581
    i32.const 31
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hde1176bc3aa61a94E
    unreachable
  )
  (func $removeGroup (;132;) (type 11)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17h6a75833365a71bbfE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha7d92920c2b2e1e3E
    local.get 0
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h27430f32b44bd249E
    i32.store offset=12
    call $_ZN13token_release12TokenRelease25require_setup_period_live17ha336f02f2433ff97E
    block ;; label = @1
      local.get 0
      i32.const 12
      i32.add
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14group_schedule17hdb6f004e9b8de669E
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$8is_empty17h7bd5958b46e53f73E
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131320
      i32.const 24
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hde1176bc3aa61a94E
      unreachable
    end
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.const 12
    i32.add
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14group_schedule17hdb6f004e9b8de669E
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17h54d39127e24da87bE
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$18token_total_supply17he8cf3d6bb2f79749E
    local.tee 1
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17h8a4cd3a842a5e3adE
    local.tee 2
    local.get 2
    local.get 0
    i32.load offset=40
    call $_ZN11dharitri_sc3api13managed_types11big_int_api13BigIntApiImpl15bi_sub_unsigned17h0b49275500ce7e86E
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h16ee859aa0631f09E
    local.get 0
    i32.const 12
    i32.add
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14group_schedule17hdb6f004e9b8de669E
    call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h97b5f57ae793e7b6E
    local.get 0
    i32.const 12
    i32.add
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14users_in_group17hb961b10c2c583bbeE
    call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h97b5f57ae793e7b6E
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $addUserGroup (;133;) (type 11)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17h6a75833365a71bbfE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha7d92920c2b2e1e3E
    i32.const 131662
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4d807c24da816addE
    local.set 1
    local.get 0
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h27430f32b44bd249E
    i32.store offset=16
    call $_ZN13token_release12TokenRelease25require_setup_period_live17ha336f02f2433ff97E
    block ;; label = @1
      local.get 0
      i32.const 16
      i32.add
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14group_schedule17hdb6f004e9b8de669E
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$8is_empty17h7bd5958b46e53f73E
      br_if 0 (;@1;)
      local.get 1
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$11user_groups17h53c5f1bc648ff0b4E
      local.set 2
      local.get 0
      i32.load offset=16
      local.set 1
      local.get 0
      local.get 2
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17h0cdbedf515cd017eE
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
          call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_ref_iter..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf2a89f6627bad9e4E
          block ;; label = @4
            local.get 0
            i32.load offset=8
            br_if 0 (;@4;)
            local.get 3
            call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14users_in_group17hb961b10c2c583bbeE
            local.set 1
            local.get 1
            local.get 1
            call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hce1c58601df775ebE
            i64.const 1
            i64.add
            call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h464d0384e7a036f3E
            local.get 0
            i32.load offset=20
            local.get 0
            i32.load offset=28
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h1edc3a38fa118254E
            br 2 (;@2;)
          end
          local.get 0
          i32.load offset=12
          local.get 1
          call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h09e916c6294dadadE
          i32.eqz
          br_if 0 (;@3;)
        end
      end
      local.get 2
      local.get 0
      i32.load offset=20
      call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4b936981c3ee4782E
      local.get 0
      i32.const 48
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131320
    i32.const 24
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hde1176bc3aa61a94E
    unreachable
  )
  (func $removeUser (;134;) (type 11)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17h6a75833365a71bbfE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha7d92920c2b2e1e3E
    i32.const 131662
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4d807c24da816addE
    local.set 1
    call $_ZN13token_release12TokenRelease25require_setup_period_live17ha336f02f2433ff97E
    block ;; label = @1
      local.get 1
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$11user_groups17h53c5f1bc648ff0b4E
      call $_ZN11dharitri_sc7storage11storage_get15storage_get_len17h7e8b39a5d19075aaE
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$11user_groups17h53c5f1bc648ff0b4E
      call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17h0cdbedf515cd017eE
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
          call $_ZN153_$LT$dharitri_sc..types..managed..wrapped..managed_vec_ref_iter..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf2a89f6627bad9e4E
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
          call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$14users_in_group17hb961b10c2c583bbeE
          local.set 2
          local.get 2
          local.get 2
          call $_ZN17dharitri_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hce1c58601df775ebE
          i64.const -1
          i64.add
          call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h464d0384e7a036f3E
          br 0 (;@3;)
        end
      end
      local.get 1
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$11user_groups17h53c5f1bc648ff0b4E
      call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h97b5f57ae793e7b6E
      local.get 1
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$15claimed_balance17h53195a107d12f2fdE
      call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h97b5f57ae793e7b6E
      local.get 0
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131243
    i32.const 26
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hde1176bc3aa61a94E
    unreachable
  )
  (func $requestAddressChange (;135;) (type 11)
    (local i32)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha7d92920c2b2e1e3E
    i32.const 131681
    i32.const 11
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4d807c24da816addE
    local.set 0
    call $_ZN13token_release12TokenRelease26require_setup_period_ended17hf309b3a7596ecf83E
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17hdb6f3d7e092f1997E
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$22address_change_request17hbde741c20f630fd9E
    local.get 0
    call $mBufferStorageStore
    drop
  )
  (func $approveAddressChange (;136;) (type 11)
    (local i32 i32 i32 i32)
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17h6a75833365a71bbfE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha7d92920c2b2e1e3E
    i32.const 131669
    i32.const 12
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4d807c24da816addE
    local.set 0
    call $_ZN13token_release12TokenRelease26require_setup_period_ended17hf309b3a7596ecf83E
    block ;; label = @1
      local.get 0
      call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$22address_change_request17hbde741c20f630fd9E
      call $_ZN11dharitri_sc7storage11storage_get15storage_get_len17h7e8b39a5d19075aaE
      br_if 0 (;@1;)
      i32.const 131517
      i32.const 42
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hde1176bc3aa61a94E
      unreachable
    end
    local.get 0
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$22address_change_request17hbde741c20f630fd9E
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17h3e311de837ca3c8eE
    local.set 1
    local.get 0
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$11user_groups17h53c5f1bc648ff0b4E
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17h0cdbedf515cd017eE
    local.set 2
    local.get 0
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$15claimed_balance17h53195a107d12f2fdE
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17h8a4cd3a842a5e3adE
    local.set 3
    local.get 1
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$11user_groups17h53c5f1bc648ff0b4E
    local.get 2
    call $_ZN11dharitri_sc7storage11storage_set11storage_set17h4b936981c3ee4782E
    local.get 1
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$15claimed_balance17h53195a107d12f2fdE
    local.get 3
    call $_ZN11dharitri_sc7storage11storage_set11storage_set17hea82bb78fadb4031E
    local.get 0
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$11user_groups17h53c5f1bc648ff0b4E
    call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h97b5f57ae793e7b6E
    local.get 0
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$15claimed_balance17h53195a107d12f2fdE
    call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h97b5f57ae793e7b6E
    local.get 0
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$22address_change_request17hbde741c20f630fd9E
    call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h97b5f57ae793e7b6E
  )
  (func $endSetupPeriod (;137;) (type 11)
    (local i32 i32 i32 i64)
    call $checkNoPayment
    call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$21check_caller_is_owner17h6a75833365a71bbfE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha7d92920c2b2e1e3E
    call $_ZN13token_release12TokenRelease25require_setup_period_live17ha336f02f2433ff97E
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$16token_identifier17h84d7407905d66564E
    call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h859fc76ec611d0d3E
    local.set 0
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$18token_total_supply17he8cf3d6bb2f79749E
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17h8a4cd3a842a5e3adE
    local.set 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h5326bfec40b13b43E
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h5326bfec40b13b43E
    drop
    local.get 2
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4ffb2edeac6a080bE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h1edc3a38fa118254E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h5326bfec40b13b43E
    drop
    local.get 2
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h1e911ce4f5b47407E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h1edc3a38fa118254E
    call $getGasLeft
    local.set 3
    i32.const 131086
    i32.const 13
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17ha18c2ec549899da6E
    local.set 0
    i32.const -25
    call $managedSCAddress
    local.get 3
    i32.const -25
    i64.const 0
    call $bigIntNew
    local.get 0
    local.get 2
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    call $managedExecuteOnDestContext
    drop
    call $cleanReturnData
    call $getBlockTimestamp
    local.set 3
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$20activation_timestamp17hcc11a8d7e89d43cdE
    local.get 3
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h464d0384e7a036f3E
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$19setup_period_status17h711e2d34e4b3f057E
    i32.const 0
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h092505a89b03ec4dE
  )
  (func $claimTokens (;138;) (type 11)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha7d92920c2b2e1e3E
    call $_ZN13token_release12TokenRelease26require_setup_period_ended17hf309b3a7596ecf83E
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$16token_identifier17h84d7407905d66564E
    call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h859fc76ec611d0d3E
    local.set 1
    block ;; label = @1
      call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17hdb6f3d7e092f1997E
      local.tee 2
      call $_ZN13token_release12TokenRelease20get_claimable_tokens17h83e9b4d3157c7557E
      local.tee 3
      call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h6791a6d873e5ba3fE
      call $_ZN4core3cmp10PartialOrd2gt17hff5464b5f5bf2eceE
      br_if 0 (;@1;)
      i32.const 131269
      i32.const 51
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hde1176bc3aa61a94E
      unreachable
    end
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h5326bfec40b13b43E
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h5326bfec40b13b43E
    local.set 5
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h5326bfec40b13b43E
    local.set 6
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4ffb2edeac6a080bE
    local.set 7
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
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
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$15claimed_balance17h53195a107d12f2fdE
    local.tee 1
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17h8a4cd3a842a5e3adE
    local.tee 7
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic18big_uint_operators194_$LT$impl$u20$core..ops..arith..AddAssign$LT$$RF$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$$u20$for$u20$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$10add_assign17hf1cbdc402b394211E
    local.get 1
    local.get 7
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h16ee859aa0631f09E
    local.get 3
    call $bigIntFinishUnsigned
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $verify_address_change (;139;) (type 11)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha7d92920c2b2e1e3E
    i32.const 131662
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4d807c24da816addE
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$22address_change_request17hbde741c20f630fd9E
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17h3e311de837ca3c8eE
    call $mBufferFinish
    drop
  )
  (func $get_claimable_tokens (;140;) (type 11)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha7d92920c2b2e1e3E
    i32.const 131662
    i32.const 7
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4d807c24da816addE
    call $_ZN13token_release12TokenRelease20get_claimable_tokens17h83e9b4d3157c7557E
    call $bigIntFinishUnsigned
  )
  (func $getTokenIdentifier (;141;) (type 11)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha7d92920c2b2e1e3E
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$16token_identifier17h84d7407905d66564E
    call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h859fc76ec611d0d3E
    call $mBufferFinish
    drop
  )
  (func $getTokenTotalSupply (;142;) (type 11)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha7d92920c2b2e1e3E
    call $_ZN49_$LT$C$u20$as$u20$token_release..TokenRelease$GT$18token_total_supply17he8cf3d6bb2f79749E
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3get17h8a4cd3a842a5e3adE
    call $bigIntFinishUnsigned
  )
  (func $callBack (;143;) (type 11))
  (func $memcpy (;144;) (type 4) (param i32 i32 i32) (result i32)
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
  (func $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E (;145;) (type 11)
    call $rust_begin_unwind
    unreachable
  )
  (func $_ZN4core5slice5index26slice_start_index_len_fail17hfd512babcd2fce3fE (;146;) (type 3) (param i32)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (table (;0;) 1 1 funcref)
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 141972)
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
  (data $.rodata (;0;) (i32.const 131072) "input too longDCDTLocalMintargument decode error (): wrong number of argumentscannot subtract because result would be negativeinput too shortcast to i64 errorinvalid valueThe address is not definedThis address cannot currently claim any more tokensThe group does not existThe group already existsThe schedule must have at least 1 unlock periodThe schedule must have a positive number of total tokens releasedThe total number of tokens is invalidThe address does not have a change requestSetup period has endedThe final percentage is invalidSetup period is still activeInvalid token providedaddressuser_addressnew_addressperiod_unlock_percentagestorage decode error: bad array lengthinput out of rangeuserGroupsgroupScheduleusersInGroupclaimedBalancetokenIdentifiertokenTotalSupplysetupPeriodStatusactivationTimestampaddressChangeRequestEndpoint can only be called by ownerpanic occurred")
  (data $.data (;1;) (i32.const 131960) "\9c\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.76.0-nightly (d86d65bbc 2023-12-10)")
  )
)