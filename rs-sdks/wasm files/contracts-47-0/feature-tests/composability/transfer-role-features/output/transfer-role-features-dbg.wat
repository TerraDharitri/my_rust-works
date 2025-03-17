(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (result i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func (param i32 i64)))
  (type (;4;) (func (param i32 i32 i32)))
  (type (;5;) (func (param i32)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32) (result i64)))
  (type (;8;) (func (param i32) (result i32)))
  (type (;9;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;10;) (func (result i64)))
  (type (;11;) (func))
  (type (;12;) (func (param i32 i32 i64 i32 i32) (result i32)))
  (type (;13;) (func (param i32 i32 i32 i32)))
  (type (;14;) (func (param i32 i32 i32 i32 i32)))
  (type (;15;) (func (param i32 i32) (result i64)))
  (type (;16;) (func (param i32 i32 i32 i64)))
  (type (;17;) (func (param i32 i64 i32)))
  (type (;18;) (func (param i32 i32 i32 i32 i32 i32)))
  (import "env" "signalError" (func $signalError (;0;) (type 0)))
  (import "env" "mBufferNew" (func $mBufferNew (;1;) (type 1)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;2;) (type 2)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;3;) (type 3)))
  (import "env" "bigIntAdd" (func $bigIntAdd (;4;) (type 4)))
  (import "env" "managedSCAddress" (func $managedSCAddress (;5;) (type 5)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;6;) (type 6)))
  (import "env" "managedSignalError" (func $managedSignalError (;7;) (type 5)))
  (import "env" "smallIntGetUnsignedArgument" (func $smallIntGetUnsignedArgument (;8;) (type 7)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;9;) (type 8)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;10;) (type 2)))
  (import "env" "getNumArguments" (func $getNumArguments (;11;) (type 1)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;12;) (type 2)))
  (import "env" "managedGetOriginalTxHash" (func $managedGetOriginalTxHash (;13;) (type 5)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;14;) (type 9)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;15;) (type 6)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;16;) (type 2)))
  (import "env" "mBufferCopyByteSlice" (func $mBufferCopyByteSlice (;17;) (type 9)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;18;) (type 2)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;19;) (type 2)))
  (import "env" "getGasLeft" (func $getGasLeft (;20;) (type 10)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;21;) (type 11)))
  (import "env" "managedCaller" (func $managedCaller (;22;) (type 5)))
  (import "env" "managedGetMultiDCDTCallValue" (func $managedGetMultiDCDTCallValue (;23;) (type 5)))
  (import "env" "mBufferGetBytes" (func $mBufferGetBytes (;24;) (type 2)))
  (import "env" "isSmartContract" (func $isSmartContract (;25;) (type 8)))
  (import "env" "managedMultiTransferDCDTNFTExecute" (func $managedMultiTransferDCDTNFTExecute (;26;) (type 12)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;27;) (type 8)))
  (import "env" "managedAsyncCall" (func $managedAsyncCall (;28;) (type 13)))
  (func $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17h9027b85ba3e00d9cE (;29;) (type 5) (param i32)
    local.get 0
    i32.const 35
    call $signalError
    unreachable
  )
  (func $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h5e292569ea248a61E (;30;) (type 13) (param i32 i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        local.get 2
        local.get 1
        i32.lt_u
        br_if 0 (;@2;)
        local.get 2
        i32.const 16
        i32.le_u
        br_if 1 (;@1;)
        local.get 2
        i32.const 16
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
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE (;31;) (type 0) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (func $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h889ba697b48c00a0E (;32;) (type 14) (param i32 i32 i32 i32 i32)
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
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h471876b5f0fe7ff0E (;33;) (type 8) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4782b88b8fd66c48E (;34;) (type 8) (param i32) (result i32)
    (local i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hcba0bf5f702e700dE
    local.set 2
    local.get 1
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h3f53280f2df6f287E
    i32.store offset=20
    local.get 1
    i32.const 0
    i32.store offset=16
    local.get 1
    local.get 0
    i32.store offset=12
    loop (result i32) ;; label = @1
      local.get 1
      i32.const 24
      i32.add
      local.get 1
      i32.const 12
      i32.add
      call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83204514461a5b51E
      block ;; label = @2
        local.get 1
        i64.load offset=24
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 1
        i32.const 64
        i32.add
        global.set $__stack_pointer
        local.get 2
        return
      end
      local.get 1
      i64.load offset=32
      local.set 3
      local.get 1
      i32.load offset=44
      local.set 4
      local.get 1
      i32.load offset=40
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h471876b5f0fe7ff0E
      local.set 5
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
      local.tee 0
      i64.const 0
      call $bigIntSetInt64
      local.get 0
      local.get 0
      local.get 4
      call $bigIntAdd
      local.get 1
      local.get 0
      i32.store offset=60
      local.get 1
      local.get 3
      i64.store offset=48
      local.get 1
      local.get 5
      i32.store offset=56
      local.get 2
      local.get 1
      i32.const 48
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hce566fbf2f5bb7caE
      br 0 (;@1;)
    end
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hcba0bf5f702e700dE (;35;) (type 1) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    i32.const 131572
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h3f53280f2df6f287E (;36;) (type 8) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83204514461a5b51E (;37;) (type 0) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h92ddc4bf20940717E
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
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h4c7e88311f6adb3bE
      local.set 4
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17hce84a3b4b9855a84E
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
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h4c7e88311f6adb3bE
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E (;38;) (type 1) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=131616
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=131616
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hce566fbf2f5bb7caE (;39;) (type 0) (param i32 i32)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.load offset=8
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
    i32.store
    local.get 2
    local.get 1
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
    i32.store offset=12
    local.get 2
    local.get 1
    i64.load
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
    i64.store offset=4 align=4
    local.get 0
    local.get 2
    i32.const 16
    call $mBufferAppendBytes
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf61b3f41333d7e18E (;40;) (type 5) (param i32)
    local.get 0
    call $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17h9027b85ba3e00d9cE
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17h6d316135ed635a84E (;41;) (type 13) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17hcba505d2f5fa12cbE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17hcba505d2f5fa12cbE (;42;) (type 13) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $managedAsyncCall
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17h5027e5f2d8aacdefE (;43;) (type 1) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    call $managedSCAddress
    local.get 0
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h4bfc6bad30c5b867E (;44;) (type 13) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131097
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hd6d335f0a3022a8bE
    local.tee 4
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 4
    i32.const 131120
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hd6d335f0a3022a8bE (;45;) (type 2) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h0eb84c6ac77021d7E (;46;) (type 0) (param i32 i32)
    (local i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      local.get 1
      i32.const 131351
      i32.const 6
      call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h921ab0f6436359a9E
      call $smallIntGetUnsignedArgument
      local.tee 3
      i64.const 4294967296
      i64.ge_u
      br_if 0 (;@1;)
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 3
            i32.wrap_i64
            local.tee 4
            i32.const 28523
            i32.eq
            br_if 0 (;@4;)
            local.get 4
            br_if 1 (;@3;)
          end
          local.get 1
          i32.const 131351
          i32.const 6
          call $_ZN168_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17he923658da30f5c58E
          local.set 5
          local.get 2
          i32.const 0
          i32.store offset=4
          i32.const 4
          local.set 1
          br 1 (;@2;)
        end
        block ;; label = @3
          block ;; label = @4
            local.get 1
            i32.load
            i32.const 0
            i32.load offset=141628
            i32.lt_s
            br_if 0 (;@4;)
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hcba0bf5f702e700dE
            local.set 5
            br 1 (;@3;)
          end
          local.get 1
          i32.const 131351
          i32.const 6
          call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17hc4502f79b063754eE
          local.set 5
        end
        local.get 2
        local.get 4
        i32.store offset=8
        local.get 2
        i32.const 1
        i32.store offset=4
        i32.const 8
        local.set 1
      end
      local.get 2
      i32.const 4
      i32.add
      local.get 1
      i32.add
      local.get 5
      i32.store
      local.get 0
      local.get 2
      i64.load offset=4 align=4
      i64.store align=4
      local.get 0
      i32.const 8
      i32.add
      local.get 2
      i32.const 4
      i32.add
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131351
    i32.const 6
    i32.const 131215
    i32.const 14
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h4bfc6bad30c5b867E
    unreachable
  )
  (func $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h921ab0f6436359a9E (;47;) (type 6) (param i32 i32 i32) (result i32)
    (local i32)
    block ;; label = @1
      local.get 0
      i32.load
      local.tee 3
      i32.const 0
      i32.load offset=141628
      i32.lt_s
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131123
      i32.const 17
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h4bfc6bad30c5b867E
      unreachable
    end
    local.get 0
    local.get 3
    i32.const 1
    i32.add
    i32.store
    local.get 3
  )
  (func $_ZN168_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17he923658da30f5c58E (;48;) (type 6) (param i32 i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hcba0bf5f702e700dE
    local.set 3
    loop (result i32) ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load
        i32.const 0
        i32.load offset=141628
        i32.lt_s
        br_if 0 (;@2;)
        local.get 3
        return
      end
      local.get 3
      local.get 0
      local.get 1
      local.get 2
      call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17hc4502f79b063754eE
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h921887b1abc8b3d2E
      br 0 (;@1;)
    end
  )
  (func $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17hc4502f79b063754eE (;49;) (type 6) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h921ab0f6436359a9E
    call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h0b1f8c7a872e4edbE
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h2351e4bfde3fc4a4E (;50;) (type 8) (param i32) (result i32)
    local.get 0
    i32.const 131458
    i32.const 4
    call $_ZN168_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17he923658da30f5c58E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h383bdbb512b0551cE (;51;) (type 8) (param i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hcba0bf5f702e700dE
    local.set 1
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.load
        i32.const 0
        i32.load offset=141628
        i32.ge_s
        br_if 1 (;@1;)
        local.get 1
        local.get 0
        i32.const 131520
        i32.const 9
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17hc4502f79b063754eE
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h921887b1abc8b3d2E
        br 0 (;@2;)
      end
    end
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h921887b1abc8b3d2E (;52;) (type 0) (param i32 i32)
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h43a9db0509fa39c6E (;53;) (type 8) (param i32) (result i32)
    local.get 0
    i32.const 131373
    i32.const 15
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h1e17a9e8b87098abE
  )
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h1e17a9e8b87098abE (;54;) (type 6) (param i32 i32 i32) (result i32)
    block ;; label = @1
      local.get 0
      local.get 1
      local.get 2
      call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h4974a0ff769301d5E
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h471876b5f0fe7ff0E
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131310
      i32.const 16
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h4bfc6bad30c5b867E
      unreachable
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hf1e302041589c943E (;55;) (type 8) (param i32) (result i32)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i32.const 131357
    i32.const 16
    call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h4974a0ff769301d5E
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h471876b5f0fe7ff0E
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hcba0bf5f702e700dE
    local.set 3
    i32.const 0
    local.set 4
    local.get 2
    call $mBufferGetLength
    local.set 0
    local.get 1
    i32.const 4
    i32.add
    i32.const 16
    i32.add
    i32.const 0
    i32.store8
    local.get 1
    i32.const 16
    i32.add
    local.get 0
    i32.store
    local.get 1
    local.get 2
    i32.store offset=12
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 1
    i32.const 0
    i32.store offset=4
    loop (result i32) ;; label = @1
      block ;; label = @2
        local.get 0
        local.get 4
        i32.ne
        br_if 0 (;@2;)
        block ;; label = @3
          local.get 1
          i32.load8_u offset=20
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.const 0
          i32.store offset=141620
          i32.const 0
          i32.const 0
          i32.store8 offset=141624
        end
        local.get 1
        i32.const 48
        i32.add
        global.set $__stack_pointer
        local.get 3
        return
      end
      local.get 1
      i32.const 4
      i32.add
      call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17ha07fb896a2a03dc4E
      local.set 0
      local.get 1
      i64.const 0
      i64.store offset=40
      local.get 1
      i32.const 4
      i32.add
      local.get 1
      i32.const 40
      i32.add
      i32.const 8
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h5ce22395f0aefd7cE
      local.get 1
      i32.const 40
      i32.add
      i32.const 8
      call $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E
      local.set 5
      local.get 1
      i32.const 4
      i32.add
      call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17ha07fb896a2a03dc4E
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
      local.tee 4
      call $mBufferToBigIntUnsigned
      drop
      local.get 1
      local.get 4
      i32.store offset=36
      local.get 1
      local.get 0
      i32.store offset=32
      local.get 1
      local.get 5
      i64.store offset=24
      local.get 3
      local.get 1
      i32.const 24
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hce566fbf2f5bb7caE
      local.get 1
      i32.load offset=4
      local.set 4
      local.get 1
      i32.load offset=8
      local.set 0
      br 0 (;@1;)
    end
  )
  (func $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h4974a0ff769301d5E (;56;) (type 6) (param i32 i32 i32) (result i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h92ddc4bf20940717E
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
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h471876b5f0fe7ff0E
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
    i32.const 131123
    i32.const 17
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h4bfc6bad30c5b867E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17ha07fb896a2a03dc4E (;57;) (type 8) (param i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h5ce22395f0aefd7cE
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
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h1e0e9a0bf0aea311E
    block ;; label = @1
      local.get 1
      i32.load
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      i32.const 131357
      i32.const 16
      i32.const 131229
      i32.const 15
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h4bfc6bad30c5b867E
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
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h5ce22395f0aefd7cE (;58;) (type 4) (param i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h507d5bf352d71606E
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131357
      i32.const 16
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h4dc2e567c1cd5cc4E
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E (;59;) (type 15) (param i32 i32) (result i64)
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h634ffd44010c4bb8E (;60;) (type 1) (result i32)
    i32.const 1
    call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h0b1f8c7a872e4edbE
  )
  (func $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h0b1f8c7a872e4edbE (;61;) (type 8) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7dbbe098c426b65eE (;62;) (type 1) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 0
      call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h0b1f8c7a872e4edbE
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      i32.const 131462
      i32.const 4
      i32.const 131310
      i32.const 16
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h4bfc6bad30c5b867E
      unreachable
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h2c2e339e06defc37E (;63;) (type 0) (param i32 i32)
    block ;; label = @1
      local.get 1
      local.get 0
      i32.lt_u
      br_if 0 (;@1;)
      return
    end
    i32.const 131140
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h919350f219e31948E (;64;) (type 5) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=141628
      local.get 0
      i32.gt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131140
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h43db237ee6da889dE (;65;) (type 5) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=141628
      local.get 0
      i32.lt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131123
    i32.const 17
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h5bdee9835ff9f864E (;66;) (type 11)
    i32.const 0
    call $getNumArguments
    i32.store offset=141628
  )
  (func $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h9eb1b9bdb3d0bb57E (;67;) (type 0) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h3165ec33413f005cE
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h3165ec33413f005cE (;68;) (type 8) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h3f53280f2df6f287E
    i32.const 2
    i32.shr_u
  )
  (func $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17haedcb1220b3c586dE (;69;) (type 5) (param i32)
    (local i32 i32 i32 i32 i32)
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
      call $_ZN11dharitri_sc5types11interaction16callback_closure22cb_closure_storage_key17hfd6463085e0fcf3fE
      local.set 3
      block ;; label = @2
        block ;; label = @3
          i32.const 0
          i32.load8_u offset=141624
          local.tee 4
          br_if 0 (;@3;)
          i32.const 0
          i32.const 1
          i32.store8 offset=141624
          i32.const 0
          i32.const 0
          i32.store offset=141620
          local.get 1
          i32.const 16
          i32.add
          i32.const 0
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hbf7e101a6074f06cE
          local.get 1
          i32.load offset=16
          local.get 1
          i32.load offset=20
          i32.const 131572
          i32.const 0
          call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hcba0bf5f702e700dE
          local.set 5
          br 1 (;@2;)
        end
        i32.const 131572
        i32.const 0
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hd6d335f0a3022a8bE
        local.set 5
      end
      local.get 1
      local.get 5
      i32.store offset=24
      local.get 1
      local.get 4
      i32.const 1
      i32.xor
      i32.store8 offset=28
      local.get 0
      i32.const 20
      i32.add
      i32.load
      local.tee 4
      local.get 1
      i32.const 24
      i32.add
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h2b7626ad699a572aE
      local.get 1
      i32.const 24
      i32.add
      local.get 2
      local.get 4
      call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h04e806d05d1787b0E
      local.get 0
      i32.const 24
      i32.add
      local.tee 2
      i32.load
      local.tee 4
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h3165ec33413f005cE
      local.get 1
      i32.const 24
      i32.add
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h2b7626ad699a572aE
      local.get 1
      local.get 4
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h3f53280f2df6f287E
      i32.store offset=40
      local.get 1
      i32.const 0
      i32.store offset=36
      local.get 1
      local.get 2
      i32.store offset=32
      block ;; label = @2
        loop ;; label = @3
          local.get 1
          i32.const 8
          i32.add
          local.get 1
          i32.const 32
          i32.add
          call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h38e1b36b991b992aE
          local.get 1
          i32.load offset=8
          i32.eqz
          br_if 1 (;@2;)
          local.get 1
          local.get 1
          i32.load offset=12
          local.tee 4
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
          i32.store offset=44
          local.get 1
          i32.const 24
          i32.add
          local.get 1
          i32.const 44
          i32.add
          i32.const 4
          call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h04e806d05d1787b0E
          block ;; label = @4
            block ;; label = @5
              local.get 1
              i32.load8_u offset=28
              i32.eqz
              br_if 0 (;@5;)
              local.get 4
              call $mBufferGetLength
              local.set 2
              i32.const 10000
              i32.const 0
              i32.load offset=141620
              local.tee 5
              i32.sub
              local.get 2
              i32.lt_u
              br_if 1 (;@4;)
              local.get 1
              local.get 5
              local.get 5
              local.get 2
              i32.add
              local.tee 2
              call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h7ec27dd17810eeebE
              local.get 4
              i32.const 0
              local.get 1
              i32.load
              local.get 1
              i32.load offset=4
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h92ddc4bf20940717E
              drop
              i32.const 0
              local.get 2
              i32.store offset=141620
              br 2 (;@3;)
            end
            local.get 1
            i32.load offset=24
            local.get 4
            call $mBufferAppend
            drop
            br 1 (;@3;)
          end
          local.get 1
          i32.const 24
          i32.add
          call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h53b9a448e7ac06f1E
          local.get 1
          i32.load offset=24
          local.get 4
          call $mBufferAppend
          drop
          br 0 (;@3;)
        end
      end
      local.get 1
      i32.load offset=24
      local.set 2
      local.get 1
      local.get 1
      i32.load8_u offset=28
      i32.store8 offset=36
      local.get 1
      local.get 2
      i32.store offset=32
      local.get 1
      i32.const 32
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h53b9a448e7ac06f1E
      local.get 1
      i32.load offset=32
      local.set 2
      block ;; label = @2
        local.get 1
        i32.load8_u offset=36
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        i32.store offset=141620
        i32.const 0
        i32.const 0
        i32.store8 offset=141624
      end
      local.get 3
      local.get 2
      call $mBufferStorageStore
      drop
    end
    local.get 0
    call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$29call_and_exit_ignore_callback17haf9e97218cb557ebE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction16callback_closure22cb_closure_storage_key17hfd6463085e0fcf3fE (;70;) (type 1) (result i32)
    (local i32 i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    call $managedGetOriginalTxHash
    i32.const 131205
    i32.const 10
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hd6d335f0a3022a8bE
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hbf7e101a6074f06cE (;71;) (type 0) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    i32.const 131620
    i32.const 10000
    local.get 1
    call $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17he48058963355f3adE
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
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E (;72;) (type 13) (param i32 i32 i32 i32)
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h2b7626ad699a572aE (;73;) (type 0) (param i32 i32)
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
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h04e806d05d1787b0E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h04e806d05d1787b0E (;74;) (type 4) (param i32 i32 i32)
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
          i32.load offset=141620
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
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h7ec27dd17810eeebE
          local.get 3
          i32.load offset=8
          local.get 3
          i32.load offset=12
          local.get 1
          local.get 2
          call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
          i32.const 0
          local.get 0
          i32.store offset=141620
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
      call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h53b9a448e7ac06f1E
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
  (func $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h38e1b36b991b992aE (;75;) (type 0) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h92ddc4bf20940717E
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
  (func $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h7ec27dd17810eeebE (;76;) (type 4) (param i32 i32 i32)
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
    i32.const 131620
    i32.const 10000
    call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h889ba697b48c00a0E
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h92ddc4bf20940717E (;77;) (type 9) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h53b9a448e7ac06f1E (;78;) (type 5) (param i32)
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
      i32.load offset=141620
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
      i32.store offset=141620
      i32.const 0
      i32.const 0
      i32.store8 offset=141624
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$29call_and_exit_ignore_callback17haf9e97218cb557ebE (;79;) (type 5) (param i32)
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17h6d316135ed635a84E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$3new17hf2e60e7582ebbc32E (;80;) (type 4) (param i32 i32 i32)
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hd6d335f0a3022a8bE
    local.set 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hcba0bf5f702e700dE
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h0cc5be9aab72438fE (;81;) (type 14) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block ;; label = @1
      local.get 3
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h3d14c69c50f3a028E
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h28faa77ca23db505E
      local.get 4
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h3f53280f2df6f287E
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
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h92ddc4bf20940717E
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
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h28faa77ca23db505E
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h3d14c69c50f3a028E (;82;) (type 8) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h3f53280f2df6f287E
    i32.eqz
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h28faa77ca23db505E (;83;) (type 0) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hcba0bf5f702e700dE
    drop
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h471876b5f0fe7ff0E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h921887b1abc8b3d2E
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h0f1422914c70f1ceE (;84;) (type 16) (param i32 i32 i32 i64)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hcba0bf5f702e700dE
    local.tee 4
    local.get 3
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417hdc88fbaa6ea7b278E
    local.get 2
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h921887b1abc8b3d2E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417hdc88fbaa6ea7b278E (;85;) (type 3) (param i32 i64)
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
    call $mBufferSetBytes
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17hd1abdd09223eab02E (;86;) (type 13) (param i32 i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hcba0bf5f702e700dE
    drop
    local.get 2
    local.get 3
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h471876b5f0fe7ff0E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h921887b1abc8b3d2E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17hdb03adaf7961c77fE (;87;) (type 13) (param i32 i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hcba0bf5f702e700dE
    drop
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17hdf0cf8ba45c9969eE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h921887b1abc8b3d2E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17hdf0cf8ba45c9969eE (;88;) (type 8) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h0949a4f6f759f53aE (;89;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 16
    i32.add
    i32.const 24
    i32.add
    local.tee 3
    i64.const 0
    i64.store
    local.get 2
    i32.const 16
    i32.add
    i32.const 16
    i32.add
    local.tee 4
    i64.const 0
    i64.store
    local.get 2
    i32.const 16
    i32.add
    i32.const 8
    i32.add
    local.tee 5
    i64.const 0
    i64.store
    local.get 2
    i64.const 0
    i64.store offset=16
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 16
    i32.add
    i32.const 32
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h3f53280f2df6f287E
    local.tee 6
    call $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17he48058963355f3adE
    local.get 1
    i32.const 0
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h92ddc4bf20940717E
    drop
    local.get 0
    local.get 6
    i32.store offset=32
    local.get 0
    i32.const 24
    i32.add
    local.get 3
    i64.load
    i64.store align=1
    local.get 0
    i32.const 16
    i32.add
    local.get 4
    i64.load
    i64.store align=1
    local.get 0
    i32.const 8
    i32.add
    local.get 5
    i64.load
    i64.store align=1
    local.get 0
    local.get 2
    i64.load offset=16
    i64.store align=1
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17he48058963355f3adE (;90;) (type 13) (param i32 i32 i32 i32)
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
    call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h889ba697b48c00a0E
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
  (func $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall10async_call17h2417141ce1e253acE (;91;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 160
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.load offset=16
    local.set 3
    local.get 1
    i32.load offset=4
    local.set 4
    local.get 1
    i32.load
    local.set 5
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17ha811404945983ff2E
    local.set 6
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 1
            i32.load offset=24
            local.tee 7
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17ha8647330e0a7a181E
            br_table 2 (;@2;) 1 (;@3;) 0 (;@4;)
          end
          call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17h5027e5f2d8aacdefE
          local.set 8
          local.get 2
          local.get 7
          i32.store offset=120
          local.get 2
          i32.const 40
          i32.add
          i32.const 131158
          i32.const 20
          call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$3new17hf2e60e7582ebbc32E
          local.get 2
          i32.load offset=40
          local.set 6
          local.get 2
          i32.load offset=44
          local.set 1
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hcba0bf5f702e700dE
          drop
          local.get 1
          local.get 3
          call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h471876b5f0fe7ff0E
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h921887b1abc8b3d2E
          local.get 7
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17ha8647330e0a7a181E
          local.set 3
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hcba0bf5f702e700dE
          local.tee 9
          local.get 3
          i64.extend_i32_u
          call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417hdc88fbaa6ea7b278E
          local.get 1
          local.get 9
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h921887b1abc8b3d2E
          local.get 2
          local.get 7
          call $mBufferGetLength
          i32.store offset=132
          local.get 2
          i32.const 0
          i32.store offset=128
          local.get 2
          local.get 2
          i32.const 120
          i32.add
          i32.store offset=124
          block ;; label = @4
            loop ;; label = @5
              local.get 2
              i32.const 136
              i32.add
              local.get 2
              i32.const 124
              i32.add
              call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83204514461a5b51E
              local.get 2
              i64.load offset=136
              i64.eqz
              br_if 1 (;@4;)
              local.get 2
              i32.load offset=156
              local.set 3
              local.get 2
              i32.const 32
              i32.add
              local.get 6
              local.get 1
              local.get 2
              i32.load offset=152
              call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17hd1abdd09223eab02E
              local.get 2
              i32.const 24
              i32.add
              local.get 2
              i32.load offset=32
              local.get 2
              i32.load offset=36
              local.get 2
              i64.load offset=144
              call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h0f1422914c70f1ceE
              local.get 2
              i32.const 16
              i32.add
              local.get 2
              i32.load offset=24
              local.get 2
              i32.load offset=28
              local.get 3
              call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17hdb03adaf7961c77fE
              local.get 2
              i32.load offset=20
              local.set 1
              local.get 2
              i32.load offset=16
              local.set 6
              br 0 (;@5;)
            end
          end
          local.get 2
          i32.const 8
          i32.add
          local.get 6
          local.get 1
          local.get 5
          local.get 4
          call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h0cc5be9aab72438fE
          local.get 2
          i32.load offset=12
          local.set 4
          local.get 2
          i32.load offset=8
          local.set 5
          call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17ha811404945983ff2E
          local.set 6
          local.get 8
          local.set 3
          br 1 (;@2;)
        end
        local.get 2
        i32.const 144
        i32.add
        i64.const 0
        i64.store
        local.get 2
        i64.const 0
        i64.store offset=136
        local.get 7
        i32.const 0
        local.get 2
        i32.const 136
        i32.add
        i32.const 16
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h92ddc4bf20940717E
        local.set 1
        local.get 2
        i32.const 0
        i32.store offset=124
        local.get 2
        i32.const 136
        i32.add
        local.get 2
        i32.const 124
        i32.add
        call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h4c7e88311f6adb3bE
        local.set 6
        local.get 2
        i32.const 136
        i32.add
        local.get 2
        i32.const 124
        i32.add
        call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17hce84a3b4b9855a84E
        local.set 10
        local.get 2
        i32.const 136
        i32.add
        local.get 2
        i32.const 124
        i32.add
        call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h4c7e88311f6adb3bE
        local.set 7
        local.get 1
        br_if 1 (;@1;)
        block ;; label = @3
          block ;; label = @4
            local.get 10
            i64.const 0
            i64.ne
            br_if 0 (;@4;)
            local.get 2
            i32.const 72
            i32.add
            i32.const 131193
            i32.const 12
            call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$3new17hf2e60e7582ebbc32E
            local.get 2
            i32.const 64
            i32.add
            local.get 2
            i32.load offset=72
            local.get 2
            i32.load offset=76
            local.get 6
            call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17hd1abdd09223eab02E
            local.get 2
            i32.const 56
            i32.add
            local.get 2
            i32.load offset=64
            local.get 2
            i32.load offset=68
            local.get 7
            call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17hdb03adaf7961c77fE
            local.get 2
            i32.const 48
            i32.add
            local.get 2
            i32.load offset=56
            local.get 2
            i32.load offset=60
            local.get 5
            local.get 4
            call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h0cc5be9aab72438fE
            local.get 2
            i32.load offset=52
            local.set 4
            local.get 2
            i32.load offset=48
            local.set 5
            br 1 (;@3;)
          end
          call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17h5027e5f2d8aacdefE
          local.set 1
          local.get 2
          i32.const 112
          i32.add
          i32.const 131178
          i32.const 15
          call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$3new17hf2e60e7582ebbc32E
          local.get 2
          i32.const 104
          i32.add
          local.get 2
          i32.load offset=112
          local.get 2
          i32.load offset=116
          local.get 6
          call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17hd1abdd09223eab02E
          local.get 2
          i32.const 96
          i32.add
          local.get 2
          i32.load offset=104
          local.get 2
          i32.load offset=108
          local.get 10
          call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h0f1422914c70f1ceE
          local.get 2
          i32.const 88
          i32.add
          local.get 2
          i32.load offset=96
          local.get 2
          i32.load offset=100
          local.get 7
          call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17hdb03adaf7961c77fE
          local.get 2
          i32.load offset=88
          local.set 6
          local.get 3
          local.get 2
          i32.load offset=92
          local.tee 7
          call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17h93b5f567fc885e47E
          local.get 2
          i32.const 80
          i32.add
          local.get 6
          local.get 7
          local.get 5
          local.get 4
          call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h0cc5be9aab72438fE
          local.get 2
          i32.load offset=84
          local.set 4
          local.get 2
          i32.load offset=80
          local.set 5
          local.get 1
          local.set 3
        end
        call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17ha811404945983ff2E
        local.set 6
      end
      local.get 0
      local.get 6
      i32.store offset=12
      local.get 0
      local.get 3
      i32.store offset=8
      local.get 0
      i32.const 0
      i32.store offset=16
      local.get 0
      local.get 4
      i32.store offset=4
      local.get 0
      local.get 5
      i32.store
      local.get 2
      i32.const 160
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131244
    i32.const 29
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17ha811404945983ff2E (;92;) (type 1) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    i64.const 0
    call $bigIntSetInt64
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17ha8647330e0a7a181E (;93;) (type 8) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h3f53280f2df6f287E
    i32.const 4
    i32.shr_u
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h4c7e88311f6adb3bE (;94;) (type 2) (param i32 i32) (result i32)
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
    local.get 1
    i32.load
    local.tee 3
    local.get 3
    i32.const 4
    i32.add
    local.tee 3
    local.get 0
    call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h5e292569ea248a61E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17hce84a3b4b9855a84E (;95;) (type 15) (param i32 i32) (result i64)
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
    local.get 1
    i32.load
    local.tee 3
    local.get 3
    i32.const 8
    i32.add
    local.tee 3
    local.get 0
    call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h5e292569ea248a61E
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
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17h93b5f567fc885e47E (;96;) (type 0) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hcba0bf5f702e700dE
    drop
    local.get 1
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h471876b5f0fe7ff0E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h921887b1abc8b3d2E
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h1e0e9a0bf0aea311E (;97;) (type 13) (param i32 i32 i32 i32)
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
  (func $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17hc67d8092054dc13dE (;98;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 4
    call $mBufferAppendBytes
    drop
  )
  (func $_ZN11dharitri_sc5types7managed11multi_value19multi_value_encoded30MultiValueEncoded$LT$M$C$T$GT$4push17hd02628437091f740E (;99;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h28faa77ca23db505E
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h1310b9b53f72f3a5E (;100;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferAppend
    drop
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_ref23ManagedRef$LT$M$C$T$GT$11clone_value17h72619ec1835d5752E (;101;) (type 8) (param i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4782b88b8fd66c48E
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h507d5bf352d71606E (;102;) (type 9) (param i32 i32 i32 i32) (result i32)
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
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h3f53280f2df6f287E
          local.tee 6
          i32.const 10000
          i32.gt_u
          br_if 1 (;@2;)
          i32.const 0
          i32.load8_u offset=141624
          i32.const 255
          i32.and
          br_if 1 (;@2;)
          i32.const 0
          local.get 6
          i32.store offset=141620
          i32.const 0
          i32.const 1
          i32.store8 offset=141624
          local.get 4
          i32.const 8
          i32.add
          local.get 6
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hbf7e101a6074f06cE
          local.get 5
          i32.const 0
          local.get 4
          i32.load offset=8
          local.get 4
          i32.load offset=12
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h92ddc4bf20940717E
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
        i32.load offset=141620
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h92ddc4bf20940717E
      local.set 0
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h95dd1a03576b7dfcE (;103;) (type 4) (param i32 i32 i32)
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
    i32.const 131620
    i32.add
    i32.store
  )
  (func $_ZN11dharitri_sc7storage11storage_get11storage_get17hb9ec23d56fa9b3ddE (;104;) (type 8) (param i32) (result i32)
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
      call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17hf3e3149ad01a16e8E
      local.tee 0
      call $mBufferGetLength
      local.tee 2
      i32.const 9
      i32.ge_u
      br_if 0 (;@1;)
      local.get 1
      local.get 1
      i32.const 8
      i32.add
      i32.const 8
      local.get 2
      call $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17he48058963355f3adE
      local.get 0
      i32.const 0
      local.get 1
      i32.load
      local.tee 2
      local.get 1
      i32.load offset=4
      local.tee 3
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h92ddc4bf20940717E
      drop
      local.get 2
      local.get 3
      call $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E
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
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h9e9504181de40874E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17hf3e3149ad01a16e8E (;105;) (type 8) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h9e9504181de40874E (;106;) (type 11)
    (local i32)
    i32.const 131284
    i32.const 22
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hd6d335f0a3022a8bE
    local.tee 0
    i32.const 131215
    i32.const 14
    call $mBufferAppendBytes
    drop
    local.get 0
    call $managedSignalError
    unreachable
  )
  (func $_ZN11dharitri_sc7storage11storage_set11storage_set17h84596ee8a2999062E (;107;) (type 0) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hd6d335f0a3022a8bE
    call $mBufferStorageStore
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hfa66c899aa066fc8E (;108;) (type 17) (param i32 i64 i32)
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
        i32.const 131572
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
  (func $_ZN11dharitri_sc7storage7mappers20unordered_set_mapper32UnorderedSetMapper$LT$SA$C$T$GT$14item_index_key17hcd2e574adbac2e34E (;109;) (type 2) (param i32 i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h471876b5f0fe7ff0E
    local.tee 0
    i32.const 131278
    i32.const 6
    call $mBufferAppendBytes
    drop
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h1310b9b53f72f3a5E
    local.get 0
  )
  (func $_ZN11dharitri_sc7storage7mappers20unordered_set_mapper32UnorderedSetMapper$LT$SA$C$T$GT$8contains17hb9c48ddd82adb0aeE (;110;) (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers20unordered_set_mapper32UnorderedSetMapper$LT$SA$C$T$GT$14item_index_key17hcd2e574adbac2e34E
    call $_ZN11dharitri_sc7storage11storage_get11storage_get17hb9ec23d56fa9b3ddE
    i32.const 0
    i32.ne
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h7b58b860eaa89086E (;111;) (type 8) (param i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17h94c122d9c7ddd599E
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
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h1e0e9a0bf0aea311E
    block ;; label = @1
      local.get 1
      i32.load offset=8
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      i32.const 131072
      i32.const 25
      i32.const 131229
      i32.const 15
      call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hca3ea6bd301d564dE
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17h94c122d9c7ddd599E (;112;) (type 8) (param i32) (result i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 0
    i32.store offset=12
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      i32.const 12
      i32.add
      i32.const 4
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h507d5bf352d71606E
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131072
      i32.const 25
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17hcee497f5c6310171E
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    i32.const 4
    i32.add
    i32.store
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
  (func $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hca3ea6bd301d564dE (;113;) (type 13) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hd6d335f0a3022a8bE
    local.tee 1
    local.get 2
    local.get 3
    call $mBufferAppendBytes
    drop
    local.get 1
    call $managedSignalError
    unreachable
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he3df1b0901f6bcacE (;114;) (type 0) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h3f53280f2df6f287E
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17hc67d8092054dc13dE
    local.get 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h1310b9b53f72f3a5E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17hcee497f5c6310171E (;115;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 131229
    i32.const 15
    call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hca3ea6bd301d564dE
    unreachable
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h4dc2e567c1cd5cc4E (;116;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 131229
    i32.const 15
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h4bfc6bad30c5b867E
    unreachable
  )
  (func $_ZN19dharitri_sc_modules19transfer_role_proxy23TransferRoleProxyModule16transfer_to_user17h0a15111453e86fe1E (;117;) (type 13) (param i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    local.get 2
    i32.store offset=12
    local.get 4
    i32.const 12
    i32.add
    call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4782b88b8fd66c48E
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hcba0bf5f702e700dE
    local.set 5
    local.get 4
    local.get 2
    i32.store offset=40
    local.get 4
    local.get 1
    i32.store offset=32
    local.get 4
    i64.const -1
    i64.store offset=24
    local.get 4
    local.get 5
    i32.store offset=20
    local.get 4
    local.get 3
    i32.store offset=16
    local.get 4
    i32.load offset=12
    local.set 2
    local.get 4
    i32.const 0
    i32.store offset=52
    local.get 0
    local.get 2
    local.get 4
    i32.const 16
    i32.add
    local.get 4
    i32.const 52
    i32.add
    call $_ZN19dharitri_sc_modules19transfer_role_proxy23TransferRoleProxyModule18execute_async_call17h8649eb8745768b42E
    unreachable
  )
  (func $_ZN19dharitri_sc_modules19transfer_role_proxy23TransferRoleProxyModule18execute_async_call17h8649eb8745768b42E (;118;) (type 13) (param i32 i32 i32 i32)
    (local i32 i64 i64 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 56
    i32.add
    call $_ZN87_$LT$C$u20$as$u20$dharitri_sc_modules..transfer_role_proxy..TransferRoleProxyModule$GT$21destination_whitelist17h82684b594fc82fcaE
    block ;; label = @1
      block ;; label = @2
        local.get 4
        i32.load offset=64
        local.get 2
        i32.load offset=16
        call $_ZN11dharitri_sc7storage7mappers20unordered_set_mapper32UnorderedSetMapper$LT$SA$C$T$GT$8contains17hb9c48ddd82adb0aeE
        i32.eqz
        br_if 0 (;@2;)
        call $getGasLeft
        local.tee 5
        local.get 2
        i32.load offset=24
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17ha8647330e0a7a181E
        i64.extend_i32_u
        i64.const 1000000
        i64.mul
        local.tee 6
        i64.le_u
        br_if 1 (;@1;)
        local.get 2
        i32.const 16
        i32.add
        local.set 7
        block ;; label = @3
          block ;; label = @4
            local.get 3
            i32.load
            local.tee 8
            br_if 0 (;@4;)
            local.get 4
            local.get 1
            i32.store offset=92
            local.get 0
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hcba0bf5f702e700dE
            local.tee 9
            call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17h93b5f567fc885e47E
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hcba0bf5f702e700dE
            call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h471876b5f0fe7ff0E
            local.set 3
            local.get 4
            local.get 1
            call $mBufferGetLength
            i32.store offset=36
            local.get 4
            i32.const 0
            i32.store offset=32
            local.get 4
            local.get 4
            i32.const 92
            i32.add
            i32.store offset=28
            block ;; label = @5
              loop ;; label = @6
                local.get 4
                i32.const 56
                i32.add
                local.get 4
                i32.const 28
                i32.add
                call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83204514461a5b51E
                local.get 4
                i64.load offset=56
                i64.eqz
                br_if 1 (;@5;)
                local.get 4
                i32.load offset=76
                local.set 1
                local.get 4
                i64.load offset=64
                local.set 10
                local.get 4
                i32.load offset=72
                local.get 3
                call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he3df1b0901f6bcacE
                local.get 4
                local.get 10
                i64.const 56
                i64.shl
                local.get 10
                i64.const 65280
                i64.and
                i64.const 40
                i64.shl
                i64.or
                local.get 10
                i64.const 16711680
                i64.and
                i64.const 24
                i64.shl
                local.get 10
                i64.const 4278190080
                i64.and
                i64.const 8
                i64.shl
                i64.or
                i64.or
                local.get 10
                i64.const 8
                i64.shr_u
                i64.const 4278190080
                i64.and
                local.get 10
                i64.const 24
                i64.shr_u
                i64.const 16711680
                i64.and
                i64.or
                local.get 10
                i64.const 40
                i64.shr_u
                i64.const 65280
                i64.and
                local.get 10
                i64.const 56
                i64.shr_u
                i64.or
                i64.or
                i64.or
                i64.store
                local.get 3
                local.get 4
                i32.const 8
                call $mBufferAppendBytes
                drop
                local.get 1
                call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17hdf0cf8ba45c9969eE
                local.get 3
                call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he3df1b0901f6bcacE
                br 0 (;@6;)
              end
            end
            local.get 9
            local.get 3
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h921887b1abc8b3d2E
            i32.const 17
            local.set 3
            i32.const 131334
            local.set 8
            br 1 (;@3;)
          end
          local.get 3
          i32.load offset=8
          local.set 9
          local.get 3
          i32.load offset=4
          local.set 3
        end
        local.get 4
        i32.const 56
        i32.add
        i32.const 24
        i32.add
        local.get 7
        i32.const 8
        i32.add
        i64.load
        i64.store
        local.get 4
        local.get 5
        local.get 6
        i64.sub
        i64.store offset=64
        local.get 4
        local.get 7
        i64.load
        i64.store offset=72
        local.get 4
        local.get 2
        i64.load
        i64.store offset=56
        local.get 4
        i32.const 28
        i32.add
        local.get 4
        i32.const 56
        i32.add
        call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall10async_call17h2417141ce1e253acE
        local.get 4
        i32.const 24
        i32.add
        local.get 9
        i32.store
        local.get 4
        i32.const 20
        i32.add
        local.get 3
        i32.store
        local.get 4
        local.get 8
        i32.store offset=16
        local.get 4
        local.get 4
        i64.load offset=36 align=4
        i64.store offset=8 align=4
        local.get 4
        local.get 4
        i64.load offset=28 align=4
        i64.store align=4
        local.get 4
        call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17haedcb1220b3c586dE
        unreachable
      end
      i32.const 131388
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf61b3f41333d7e18E
      unreachable
    end
    i32.const 131423
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17hf61b3f41333d7e18E
    unreachable
  )
  (func $_ZN87_$LT$C$u20$as$u20$dharitri_sc_modules..transfer_role_proxy..TransferRoleProxyModule$GT$21destination_whitelist17h82684b594fc82fcaE (;119;) (type 5) (param i32)
    (local i32 i32 i32)
    i32.const 131529
    i32.const 41
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hd6d335f0a3022a8bE
    local.tee 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h471876b5f0fe7ff0E
    local.set 2
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h471876b5f0fe7ff0E
    local.tee 3
    i32.const 131306
    i32.const 4
    call $mBufferAppendBytes
    drop
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 0
    local.get 2
    i32.store offset=8
  )
  (func $_ZN19dharitri_sc_modules19transfer_role_proxy23TransferRoleProxyModule24transfer_to_contract_raw17h65d47a50e7bcbe43E (;120;) (type 18) (param i32 i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    local.get 6
    local.get 2
    i32.store offset=12
    local.get 6
    i32.const 12
    i32.add
    call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4782b88b8fd66c48E
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hcba0bf5f702e700dE
    drop
    local.get 6
    local.get 2
    i32.store offset=40
    local.get 6
    local.get 1
    i32.store offset=32
    local.get 6
    i64.const -1
    i64.store offset=24
    local.get 6
    local.get 4
    i32.store offset=20
    local.get 6
    local.get 3
    i32.store offset=16
    local.get 0
    local.get 6
    i32.load offset=12
    local.get 6
    i32.const 16
    i32.add
    local.get 5
    call $_ZN19dharitri_sc_modules19transfer_role_proxy23TransferRoleProxyModule18execute_async_call17h8649eb8745768b42E
    unreachable
  )
  (func $rust_begin_unwind (;121;) (type 11)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE (;122;) (type 11)
    i32.const 131599
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;123;) (type 11)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h5bdee9835ff9f864E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h43db237ee6da889dE
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h383bdbb512b0551cE
    local.set 1
    local.get 0
    i32.load offset=16
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h919350f219e31948E
    local.get 0
    i32.const 4
    i32.add
    call $_ZN87_$LT$C$u20$as$u20$dharitri_sc_modules..transfer_role_proxy..TransferRoleProxyModule$GT$21destination_whitelist17h82684b594fc82fcaE
    local.get 0
    i32.const 16
    i32.add
    local.get 1
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h9eb1b9bdb3d0bb57E
    local.get 0
    i32.load offset=4
    local.set 2
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 0
    i32.load offset=12
    local.set 4
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.load offset=24
        local.get 0
        i32.load offset=20
        i32.ge_u
        br_if 1 (;@1;)
        local.get 4
        local.get 0
        i32.const 16
        i32.add
        i32.const 131326
        i32.const 8
        call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h1e17a9e8b87098abE
        local.tee 5
        call $_ZN11dharitri_sc7storage7mappers20unordered_set_mapper32UnorderedSetMapper$LT$SA$C$T$GT$8contains17hb9c48ddd82adb0aeE
        br_if 0 (;@2;)
        local.get 3
        call $_ZN11dharitri_sc7storage11storage_get11storage_get17hb9ec23d56fa9b3ddE
        local.set 1
        local.get 2
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h471876b5f0fe7ff0E
        local.tee 6
        i32.const 131273
        i32.const 5
        call $mBufferAppendBytes
        drop
        local.get 0
        local.get 1
        i32.const 1
        i32.add
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
        i32.store offset=28
        local.get 6
        local.get 0
        i32.const 28
        i32.add
        call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17hc67d8092054dc13dE
        local.get 6
        local.get 5
        call $mBufferStorageStore
        drop
        local.get 3
        local.get 1
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h84596ee8a2999062E
        local.get 3
        call $_ZN11dharitri_sc7storage11storage_get11storage_get17hb9ec23d56fa9b3ddE
        local.set 1
        local.get 4
        local.get 5
        call $_ZN11dharitri_sc7storage7mappers20unordered_set_mapper32UnorderedSetMapper$LT$SA$C$T$GT$14item_index_key17hcd2e574adbac2e34E
        local.get 1
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h84596ee8a2999062E
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $forwardPayments (;124;) (type 11)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h5bdee9835ff9f864E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h43db237ee6da889dE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7dbbe098c426b65eE
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h634ffd44010c4bb8E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=4
    local.get 0
    i32.const 4
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h2351e4bfde3fc4a4E
    local.set 3
    local.get 0
    i32.load offset=4
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h919350f219e31948E
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 4
    call $managedCaller
    i32.const -21
    local.set 5
    block ;; label = @1
      block ;; label = @2
        i32.const 0
        i32.load8_u offset=141632
        local.tee 6
        i32.eqz
        br_if 0 (;@2;)
        i32.const -21
        i32.const 2147483647
        local.get 6
        select
        local.set 5
        br 1 (;@1;)
      end
      i32.const 0
      i32.const 1
      i32.store8 offset=141632
      i32.const -21
      call $managedGetMultiDCDTCallValue
    end
    local.get 0
    local.get 5
    i32.store
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 5
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h3d14c69c50f3a028E
          br_if 0 (;@3;)
          local.get 1
          i32.const 141633
          call $mBufferGetBytes
          drop
          i32.const 141633
          call $isSmartContract
          i32.const 0
          i32.le_s
          br_if 1 (;@2;)
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hcba0bf5f702e700dE
          local.set 6
          local.get 0
          i32.const 4
          i32.add
          local.get 3
          call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h9eb1b9bdb3d0bb57E
          loop ;; label = @4
            local.get 0
            i32.load offset=12
            local.get 0
            i32.load offset=8
            i32.ge_u
            br_if 3 (;@1;)
            local.get 0
            i32.const 4
            i32.add
            i32.const 131326
            i32.const 8
            call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h4974a0ff769301d5E
            call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h471876b5f0fe7ff0E
            local.set 5
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hcba0bf5f702e700dE
            drop
            local.get 6
            local.get 5
            call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h471876b5f0fe7ff0E
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h921887b1abc8b3d2E
            br 0 (;@4;)
          end
        end
        local.get 0
        i32.const 16
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 4
      local.get 1
      local.get 0
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_ref23ManagedRef$LT$M$C$T$GT$11clone_value17h72619ec1835d5752E
      local.get 2
      call $_ZN19dharitri_sc_modules19transfer_role_proxy23TransferRoleProxyModule16transfer_to_user17h0a15111453e86fe1E
      unreachable
    end
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_ref23ManagedRef$LT$M$C$T$GT$11clone_value17h72619ec1835d5752E
    local.set 5
    local.get 0
    i32.const 0
    i32.store offset=4
    local.get 4
    local.get 1
    local.get 5
    local.get 2
    local.get 6
    local.get 0
    i32.const 4
    i32.add
    call $_ZN19dharitri_sc_modules19transfer_role_proxy23TransferRoleProxyModule24transfer_to_contract_raw17h65d47a50e7bcbe43E
    unreachable
  )
  (func $callBack (;125;) (type 11)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        call $_ZN11dharitri_sc5types11interaction16callback_closure22cb_closure_storage_key17hfd6463085e0fcf3fE
        local.tee 1
        call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17hf3e3149ad01a16e8E
        local.tee 2
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h3d14c69c50f3a028E
        br_if 0 (;@2;)
        local.get 2
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h471876b5f0fe7ff0E
        local.tee 3
        call $mBufferGetLength
        local.set 2
        local.get 0
        i32.const 64
        i32.add
        i32.const 0
        i32.store8
        local.get 0
        i32.const 60
        i32.add
        local.get 2
        i32.store
        local.get 0
        local.get 3
        i32.store offset=56
        local.get 0
        local.get 2
        i32.store offset=52
        local.get 0
        i32.const 0
        i32.store offset=48
        local.get 0
        i32.const 48
        i32.add
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h7b58b860eaa89086E
        local.set 4
        local.get 0
        i32.const 48
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17h94c122d9c7ddd599E
        local.set 2
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hcba0bf5f702e700dE
        local.set 3
        block ;; label = @3
          loop ;; label = @4
            local.get 2
            i32.eqz
            br_if 1 (;@3;)
            local.get 3
            local.get 0
            i32.const 48
            i32.add
            call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h7b58b860eaa89086E
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h921887b1abc8b3d2E
            local.get 2
            i32.const -1
            i32.add
            local.set 2
            br 0 (;@4;)
          end
        end
        local.get 0
        i32.load offset=52
        local.get 0
        i32.load offset=48
        i32.ne
        br_if 1 (;@1;)
        block ;; label = @3
          local.get 0
          i32.load8_u offset=64
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.const 0
          i32.store offset=141620
          i32.const 0
          i32.const 0
          i32.store8 offset=141624
        end
        i32.const -20
        i32.const 131572
        i32.const 0
        call $mBufferSetBytes
        drop
        local.get 1
        i32.const -20
        call $mBufferStorageStore
        drop
        local.get 0
        i32.const 12
        i32.add
        local.get 4
        call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h0949a4f6f759f53aE
        local.get 0
        i32.load offset=44
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 48
        i32.add
        local.get 4
        call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17h0949a4f6f759f53aE
        local.get 0
        i32.load offset=80
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        block ;; label = @3
          local.get 2
          i32.const 17
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          i32.const 48
          i32.add
          i32.const 131334
          i32.const 17
          call $memcmp
          br_if 0 (;@3;)
          call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h5bdee9835ff9f864E
          i32.const 0
          call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h43db237ee6da889dE
          local.get 0
          i32.const 0
          i32.store offset=84
          local.get 0
          i32.const 96
          i32.add
          local.get 0
          i32.const 84
          i32.add
          call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h0eb84c6ac77021d7E
          local.get 0
          i32.load offset=84
          call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h919350f219e31948E
          local.get 0
          i32.load offset=96
          local.set 1
          local.get 0
          i32.load offset=100
          local.set 2
          local.get 0
          i32.load offset=104
          local.set 5
          local.get 0
          i32.const 84
          i32.add
          local.get 3
          call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h9eb1b9bdb3d0bb57E
          call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h5bdee9835ff9f864E
          local.get 0
          i32.const 84
          i32.add
          call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h43a9db0509fa39c6E
          local.set 6
          local.get 0
          i32.const 96
          i32.add
          i32.const 8
          i32.add
          local.tee 3
          local.get 0
          i32.const 84
          i32.add
          i32.const 8
          i32.add
          i32.load
          i32.store
          local.get 0
          local.get 0
          i64.load offset=84 align=4
          i64.store offset=96
          local.get 0
          i32.const 96
          i32.add
          call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hf1e302041589c943E
          local.set 4
          local.get 0
          i32.load offset=100
          local.get 3
          i32.load
          call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h2c2e339e06defc37E
          block ;; label = @4
            local.get 1
            i32.eqz
            br_if 0 (;@4;)
            block ;; label = @5
              local.get 4
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h3d14c69c50f3a028E
              br_if 0 (;@5;)
              local.get 6
              local.get 4
              i64.const 0
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hcba0bf5f702e700dE
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hcba0bf5f702e700dE
              call $managedMultiTransferDCDTNFTExecute
              drop
            end
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hcba0bf5f702e700dE
            local.tee 2
            i32.const 131572
            i32.const 27
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17hd6d335f0a3022a8bE
            call $_ZN11dharitri_sc5types7managed11multi_value19multi_value_encoded30MultiValueEncoded$LT$M$C$T$GT$4push17hd02628437091f740E
            local.get 2
            local.get 5
            call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h471876b5f0fe7ff0E
            call $_ZN11dharitri_sc5types7managed11multi_value19multi_value_encoded30MultiValueEncoded$LT$M$C$T$GT$4push17hd02628437091f740E
          end
          local.get 0
          local.get 2
          i32.store offset=84
          local.get 0
          local.get 2
          call $mBufferGetLength
          i32.store offset=104
          local.get 0
          i32.const 0
          i32.store offset=100
          local.get 0
          local.get 0
          i32.const 84
          i32.add
          i32.store offset=96
          loop ;; label = @4
            local.get 0
            local.get 0
            i32.const 96
            i32.add
            call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h38e1b36b991b992aE
            local.get 0
            i32.load
            i32.eqz
            br_if 2 (;@2;)
            local.get 0
            i32.load offset=4
            call $mBufferFinish
            drop
            br 0 (;@4;)
          end
        end
        i32.const 131466
        i32.const 54
        call $signalError
        unreachable
      end
      local.get 0
      i32.const 112
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131072
    i32.const 25
    i32.const 131215
    i32.const 14
    call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hca3ea6bd301d564dE
    unreachable
  )
  (func $memcmp (;126;) (type 6) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN17compiler_builtins3mem6memcmp17h7af645c26ac3e8dcE
  )
  (func $_ZN17compiler_builtins3mem6memcmp17h7af645c26ac3e8dcE (;127;) (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 3
    block ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      block ;; label = @2
        loop ;; label = @3
          local.get 0
          i32.load8_u
          local.tee 4
          local.get 1
          i32.load8_u
          local.tee 5
          i32.ne
          br_if 1 (;@2;)
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 2
          i32.const -1
          i32.add
          local.tee 2
          i32.eqz
          br_if 2 (;@1;)
          br 0 (;@3;)
        end
      end
      local.get 4
      local.get 5
      i32.sub
      local.set 3
    end
    local.get 3
  )
  (func $memcpy (;128;) (type 6) (param i32 i32 i32) (result i32)
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
  (func $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E (;129;) (type 11)
    call $rust_begin_unwind
    unreachable
  )
  (func $_ZN4core9panicking18panic_bounds_check17hdbf723dd9cf95e6aE (;130;) (type 11)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (table (;0;) 1 1 funcref)
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 141665)
  (global (;2;) i32 i32.const 141680)
  (export "memory" (memory 0))
  (export "init" (func $init))
  (export "forwardPayments" (func $forwardPayments))
  (export "callBack" (func $callBack))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data $.rodata (;0;) (i32.const 131072) "serializer decode error: argument decode error (): too few argumentstoo many argumentsMultiDCDTNFTTransferDCDTNFTTransferDCDTTransferCB_CLOSUREinput too longinput too shortManagedVec index out of range.item.indexstorage decode error: .lenbad array lengthvar argstransfer_callbackresultinitial_paymentsoriginal_callerDestination address not whitelistedNot enough gas to launch async callargsdestno callback function with that name exists in contractwhitelisttransfer_role_proxy:destination_whitelist\00\00Error received in callback:panic occurred")
  (data $.data (;1;) (i32.const 131616) "\9c\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.76.0-nightly (d86d65bbc 2023-12-10)")
  )
)