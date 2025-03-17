(module $transfer_role_features_wasm.wasm
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (result i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func (param i32 i32 i32) (result i32)))
  (type (;4;) (func (param i32)))
  (type (;5;) (func (param i32) (result i32)))
  (type (;6;) (func (param i32) (result i64)))
  (type (;7;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32 i64)))
  (type (;9;) (func (result i64)))
  (type (;10;) (func (param i32 i32 i32)))
  (type (;11;) (func))
  (type (;12;) (func (param i32 i32 i64 i32 i32) (result i32)))
  (type (;13;) (func (param i32 i32 i32 i32)))
  (type (;14;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;15;) (func (param i32 i32 i32 i32 i32)))
  (type (;16;) (func (param i32 i32 i32 i64)))
  (type (;17;) (func (param i32 i32) (result i64)))
  (type (;18;) (func (param i32 i64 i32)))
  (import "env" "signalError" (func $signalError (;0;) (type 0)))
  (import "env" "mBufferNew" (func $mBufferNew (;1;) (type 1)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;2;) (type 2)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;3;) (type 3)))
  (import "env" "managedSignalError" (func $managedSignalError (;4;) (type 4)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;5;) (type 5)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;6;) (type 2)))
  (import "env" "smallIntGetUnsignedArgument" (func $smallIntGetUnsignedArgument (;7;) (type 6)))
  (import "env" "getNumArguments" (func $getNumArguments (;8;) (type 1)))
  (import "env" "managedGetOriginalTxHash" (func $managedGetOriginalTxHash (;9;) (type 4)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;10;) (type 7)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;11;) (type 3)))
  (import "env" "mBufferCopyByteSlice" (func $mBufferCopyByteSlice (;12;) (type 7)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;13;) (type 2)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;14;) (type 8)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;15;) (type 2)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;16;) (type 2)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;17;) (type 2)))
  (import "env" "getGasLeft" (func $getGasLeft (;18;) (type 9)))
  (import "env" "bigIntAdd" (func $bigIntAdd (;19;) (type 10)))
  (import "env" "managedSCAddress" (func $managedSCAddress (;20;) (type 4)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;21;) (type 11)))
  (import "env" "managedCaller" (func $managedCaller (;22;) (type 4)))
  (import "env" "managedGetMultiDCDTCallValue" (func $managedGetMultiDCDTCallValue (;23;) (type 4)))
  (import "env" "mBufferGetBytes" (func $mBufferGetBytes (;24;) (type 2)))
  (import "env" "isSmartContract" (func $isSmartContract (;25;) (type 5)))
  (import "env" "managedMultiTransferDCDTNFTExecute" (func $managedMultiTransferDCDTNFTExecute (;26;) (type 12)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;27;) (type 5)))
  (import "env" "managedAsyncCall" (func $managedAsyncCall (;28;) (type 13)))
  (func $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17h3148e8f4443fa30cE (;29;) (type 4) (param i32)
    local.get 0
    i32.const 35
    call $signalError
    unreachable
  )
  (func $_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1f9f2cdbea56a312E (;30;) (type 13) (param i32 i32 i32 i32)
    block ;; label = @1
      local.get 1
      local.get 3
      i32.le_u
      br_if 0 (;@1;)
      local.get 1
      local.get 3
      call $_ZN4core5slice5index22slice_index_order_fail17h203c6e1b4907093dE
      unreachable
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN4core5slice5index22slice_index_order_fail17h203c6e1b4907093dE (;31;) (type 0) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17hb859252f4b513814E
    unreachable
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb636348bb3ca9749E (;32;) (type 5) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h14227377bdac582bE (;33;) (type 4) (param i32)
    local.get 0
    call $_ZN104_$LT$$RF$str$u20$as$u20$dharitri_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17h3148e8f4443fa30cE
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17hd820f45a17c56f3aE (;34;) (type 13) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17h49538655f86aab68E
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17h49538655f86aab68E (;35;) (type 13) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $managedAsyncCall
    unreachable
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h7b6c75fd8ed519f2E (;36;) (type 13) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131097
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h4f191e248ec10e22E
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h4f191e248ec10e22E (;37;) (type 2) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h056430b258402e65E (;38;) (type 5) (param i32) (result i32)
    local.get 0
    i32.const 131463
    i32.const 4
    call $_ZN168_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h39e70f829757cdfcE
  )
  (func $_ZN168_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h39e70f829757cdfcE (;39;) (type 3) (param i32 i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he7a5372bbe9b41a8E
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
      call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h742acf5fb528ccecE
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17ha852c9c7a875f4ccE
      br 0 (;@1;)
    end
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h33d5dce0710c3826E (;40;) (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i32.const 131362
    i32.const 16
    call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h48712b4e34a47143E
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb636348bb3ca9749E
    local.set 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he7a5372bbe9b41a8E
    local.set 3
    i32.const 0
    local.set 4
    local.get 2
    call $mBufferGetLength
    local.set 0
    local.get 1
    i32.const 0
    i32.store8 offset=20
    local.get 1
    local.get 0
    i32.store offset=16
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
      call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hb3e0eaadbe09ad80E
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
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h2132c01d78087e10E
      local.get 1
      i64.load offset=40
      local.set 5
      local.get 1
      i32.const 4
      i32.add
      call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hb3e0eaadbe09ad80E
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
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
      i64.const 56
      i64.shl
      local.get 5
      i64.const 65280
      i64.and
      i64.const 40
      i64.shl
      i64.or
      local.get 5
      i64.const 16711680
      i64.and
      i64.const 24
      i64.shl
      local.get 5
      i64.const 4278190080
      i64.and
      i64.const 8
      i64.shl
      i64.or
      i64.or
      local.get 5
      i64.const 8
      i64.shr_u
      i64.const 4278190080
      i64.and
      local.get 5
      i64.const 24
      i64.shr_u
      i64.const 16711680
      i64.and
      i64.or
      local.get 5
      i64.const 40
      i64.shr_u
      i64.const 65280
      i64.and
      local.get 5
      i64.const 56
      i64.shr_u
      i64.or
      i64.or
      i64.or
      i64.store offset=24
      local.get 3
      local.get 1
      i32.const 24
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h79bf5ca2350d4b68E
      local.get 1
      i32.load offset=4
      local.set 4
      local.get 1
      i32.load offset=8
      local.set 0
      br 0 (;@1;)
    end
  )
  (func $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h48712b4e34a47143E (;41;) (type 3) (param i32 i32 i32) (result i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h89a4e64513d725f2E
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
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb636348bb3ca9749E
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
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h7b6c75fd8ed519f2E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he7a5372bbe9b41a8E (;42;) (type 1) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    i32.const 1
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17hb3e0eaadbe09ad80E (;43;) (type 5) (param i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h2132c01d78087e10E
    local.get 1
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load
    local.tee 2
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
    local.tee 3
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h876c2152b40fa767E
    block ;; label = @1
      local.get 1
      i32.load
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      i32.const 131362
      i32.const 16
      i32.const 131229
      i32.const 15
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h7b6c75fd8ed519f2E
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
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h2132c01d78087e10E (;44;) (type 10) (param i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h86e1e2f1d6d2b501E
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131362
      i32.const 16
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17he191236eab577fdfE
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E (;45;) (type 1) (result i32)
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h79bf5ca2350d4b68E (;46;) (type 0) (param i32 i32)
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h43f46130faa3a21cE (;47;) (type 5) (param i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he7a5372bbe9b41a8E
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
        i32.const 131525
        i32.const 9
        call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h742acf5fb528ccecE
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17ha852c9c7a875f4ccE
        br 0 (;@2;)
      end
    end
    local.get 1
  )
  (func $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h742acf5fb528ccecE (;48;) (type 3) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h78d9567387f1fcdeE
    call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h5b291972418268fcE
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17ha852c9c7a875f4ccE (;49;) (type 0) (param i32 i32)
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h7ab0afe52337d574E (;50;) (type 5) (param i32) (result i32)
    local.get 0
    i32.const 131378
    i32.const 15
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17hea8b01c47c42b2adE
  )
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17hea8b01c47c42b2adE (;51;) (type 3) (param i32 i32 i32) (result i32)
    block ;; label = @1
      local.get 0
      local.get 1
      local.get 2
      call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h48712b4e34a47143E
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb636348bb3ca9749E
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131315
      i32.const 16
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h7b6c75fd8ed519f2E
      unreachable
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hd61b4c3d92d98e53E (;52;) (type 0) (param i32 i32)
    (local i32 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      local.get 1
      i32.const 131356
      i32.const 6
      call $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h78d9567387f1fcdeE
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
          i32.const 131356
          i32.const 6
          call $_ZN168_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17h39e70f829757cdfcE
          local.set 1
          local.get 2
          i32.const 0
          i32.store offset=4
          i32.const 4
          local.set 4
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
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he7a5372bbe9b41a8E
            local.set 1
            br 1 (;@3;)
          end
          local.get 1
          i32.const 131356
          i32.const 6
          call $_ZN17dharitri_sc_codec5multi18top_de_multi_input19TopDecodeMultiInput10next_value17h742acf5fb528ccecE
          local.set 1
        end
        local.get 2
        local.get 4
        i32.store offset=8
        local.get 2
        i32.const 1
        i32.store offset=4
        i32.const 8
        local.set 4
      end
      local.get 2
      i32.const 4
      i32.add
      local.get 4
      i32.add
      local.get 1
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
    i32.const 131356
    i32.const 6
    i32.const 131215
    i32.const 14
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h7b6c75fd8ed519f2E
    unreachable
  )
  (func $_ZN151_$LT$dharitri_sc..io..arg_loader_multi..EndpointDynArgLoader$LT$AA$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h78d9567387f1fcdeE (;53;) (type 3) (param i32 i32 i32) (result i32)
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
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h7b6c75fd8ed519f2E
      unreachable
    end
    local.get 0
    local.get 3
    i32.const 1
    i32.add
    i32.store
    local.get 3
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h15aff673e23b76b2E (;54;) (type 1) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 0
      call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h5b291972418268fcE
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      i32.const 131467
      i32.const 4
      i32.const 131315
      i32.const 16
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h7b6c75fd8ed519f2E
      unreachable
    end
    local.get 0
  )
  (func $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h5b291972418268fcE (;55;) (type 5) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc37f3943b0cbbf59E (;56;) (type 1) (result i32)
    i32.const 1
    call $_ZN139_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h5b291972418268fcE
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h9c8c52e68470198dE (;57;) (type 0) (param i32 i32)
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17he95e6c1d0d57f7d9E (;58;) (type 4) (param i32)
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17ha3269fb559e7e982E (;59;) (type 4) (param i32)
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h647a36b92d44d82dE (;60;) (type 11)
    i32.const 0
    call $getNumArguments
    i32.store offset=141628
  )
  (func $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h265598d4989bcb14E (;61;) (type 0) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hd2386aac5a5db3a2E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hd2386aac5a5db3a2E (;62;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7da8416c9073c250E
    i32.const 2
    i32.shr_u
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17hb00a5ea2f3ec6d41E (;63;) (type 10) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h1fdfa7ff30e8673bE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h1fdfa7ff30e8673bE (;64;) (type 10) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h58b292abeb2403fdE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17hf676deb8b0fb6be4E (;65;) (type 10) (param i32 i32 i32)
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17hf5d7191bb2de8e60E
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h79966b4c2053be17E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17hf5d7191bb2de8e60E (;66;) (type 1) (result i32)
    i32.const -10
    i64.const 0
    call $bigIntSetInt64
    i32.const -10
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h79966b4c2053be17E (;67;) (type 13) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17hd820f45a17c56f3aE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized17h18be7f648a9186b6E (;68;) (type 14) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load
          local.tee 7
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h3e2eb0790e540d55E
          br_table 1 (;@2;) 2 (;@1;) 0 (;@3;)
        end
        local.get 6
        local.get 5
        i32.store offset=40
        local.get 6
        local.get 4
        i32.store offset=36
        local.get 6
        local.get 1
        i32.store offset=32
        local.get 6
        local.get 2
        i32.store offset=28
        local.get 6
        local.get 0
        i32.store offset=24
        local.get 3
        local.get 6
        i32.const 24
        i32.add
        call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17hc1d1abaad44e769aE
        unreachable
      end
      local.get 3
      local.get 4
      local.get 5
      call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17hb00a5ea2f3ec6d41E
      unreachable
    end
    local.get 6
    i32.const 24
    i32.add
    local.get 7
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h951e9ba5acd4cb50E
    local.get 6
    local.get 6
    i32.const 32
    i32.add
    i32.store offset=16
    local.get 6
    local.get 6
    i32.const 36
    i32.add
    i32.store offset=20
    local.get 6
    local.get 6
    i64.load offset=24
    i64.store offset=8
    local.get 6
    i32.const 8
    i32.add
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h0159678b79f2794cE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h3e2eb0790e540d55E (;69;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7da8416c9073c250E
    i32.const 4
    i32.shr_u
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17hc1d1abaad44e769aE (;70;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h2a870ac5d0740ad0E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h951e9ba5acd4cb50E (;71;) (type 0) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h89a4e64513d725f2E
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
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h81783c1a054b306cE
    local.set 3
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h565e6164d708b1f5E
    local.set 4
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h81783c1a054b306cE
    local.set 5
    block ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131244
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
  (func $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h0159678b79f2794cE (;72;) (type 14) (param i32 i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    local.get 6
    i32.const 16
    i32.add
    local.get 0
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 6
    local.get 1
    i32.store offset=28
    local.get 6
    local.get 2
    i32.store offset=24
    local.get 6
    local.get 5
    i32.store offset=4
    local.get 6
    local.get 4
    i32.store
    local.get 6
    local.get 0
    i64.load
    i64.store offset=8
    local.get 3
    local.get 6
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h722008571db8b7d3E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h2477c15d698e7e20E (;73;) (type 0) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    local.get 0
    i32.load offset=12
    local.get 0
    i32.load offset=16
    local.get 1
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17hf5bde748206ac391E
    local.get 2
    i32.load offset=12
    local.set 0
    local.get 2
    i32.load offset=8
    local.set 2
    call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h3d9053b2c5d65b18E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17hf5d7191bb2de8e60E
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h79966b4c2053be17E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17hf5bde748206ac391E (;74;) (type 15) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 16
    i32.add
    i32.const 131168
    i32.const 20
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h16a96c0712453098E
    local.get 5
    i32.load offset=16
    local.set 6
    local.get 5
    i32.load offset=20
    local.set 7
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he7a5372bbe9b41a8E
    drop
    local.get 7
    local.get 3
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb636348bb3ca9749E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17ha852c9c7a875f4ccE
    local.get 4
    i32.load
    local.tee 3
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h3e2eb0790e540d55E
    local.set 8
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he7a5372bbe9b41a8E
    local.tee 9
    local.get 8
    i64.extend_i32_u
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417hb80d4a4ab9582509E
    local.get 7
    local.get 9
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17ha852c9c7a875f4ccE
    local.get 5
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7da8416c9073c250E
    i32.store offset=36
    local.get 5
    i32.const 0
    i32.store offset=32
    local.get 5
    local.get 4
    i32.store offset=28
    loop ;; label = @1
      local.get 5
      i32.const 40
      i32.add
      local.get 5
      i32.const 28
      i32.add
      call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd7f78164b9eab64E
      block ;; label = @2
        local.get 5
        i64.load offset=40
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 5
        local.get 6
        local.get 7
        local.get 1
        local.get 2
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17he694ee2ff270fb72E
        local.get 5
        i32.load offset=4
        local.set 7
        local.get 0
        local.get 5
        i32.load
        i32.store
        local.get 0
        local.get 7
        i32.store offset=4
        local.get 5
        i32.const 64
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 5
      i32.load offset=60
      local.set 4
      local.get 5
      i32.load offset=56
      local.set 3
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he7a5372bbe9b41a8E
      drop
      local.get 7
      local.get 3
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb636348bb3ca9749E
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17ha852c9c7a875f4ccE
      local.get 5
      i32.const 8
      i32.add
      local.get 6
      local.get 7
      local.get 5
      i64.load offset=48
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h320fb3341b1345afE
      local.get 5
      i32.load offset=8
      local.set 6
      local.get 5
      i32.load offset=12
      local.set 7
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he7a5372bbe9b41a8E
      drop
      local.get 7
      local.get 4
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h2e1f446f9f2544b1E
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17ha852c9c7a875f4ccE
      br 0 (;@1;)
    end
  )
  (func $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h3d9053b2c5d65b18E (;75;) (type 1) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    call $managedSCAddress
    local.get 0
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h722008571db8b7d3E (;76;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h80824c07de194409E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17hd9d1ab847dab453dE (;77;) (type 0) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load offset=4
    local.set 3
    local.get 0
    i32.load
    local.set 4
    block ;; label = @1
      local.get 0
      i64.load offset=8
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
      local.get 2
      local.get 4
      local.get 3
      local.get 0
      i32.load offset=16
      local.get 0
      i32.load offset=20
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h30817fb244777517E
      local.get 2
      i32.load offset=4
      local.set 0
      local.get 2
      i32.load
      local.set 2
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17hf5d7191bb2de8e60E
      local.get 2
      local.get 0
      call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h79966b4c2053be17E
      unreachable
    end
    local.get 2
    i32.const 8
    i32.add
    local.get 4
    local.get 3
    local.get 1
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h5b5918dafc85af5aE
    local.get 2
    i32.load offset=12
    local.set 0
    local.get 2
    i32.load offset=8
    local.set 2
    call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h3d9053b2c5d65b18E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17hf5d7191bb2de8e60E
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h79966b4c2053be17E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h30817fb244777517E (;78;) (type 15) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 24
    i32.add
    i32.const 131203
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h16a96c0712453098E
    local.get 5
    i32.const 16
    i32.add
    local.get 5
    i32.load offset=24
    local.get 5
    i32.load offset=28
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h649197fc91b1a9f6E
    local.get 5
    i32.const 8
    i32.add
    local.get 5
    i32.load offset=16
    local.get 5
    i32.load offset=20
    local.get 4
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h67cefaf74fa86520E
    local.get 5
    local.get 5
    i32.load offset=8
    local.get 5
    i32.load offset=12
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17he694ee2ff270fb72E
    local.get 5
    i32.load offset=4
    local.set 3
    local.get 0
    local.get 5
    i32.load
    i32.store
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 5
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17h5b5918dafc85af5aE (;79;) (type 15) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 40
    i32.add
    i32.const 131188
    i32.const 15
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h16a96c0712453098E
    local.get 5
    i32.const 32
    i32.add
    local.get 5
    i32.load offset=40
    local.get 5
    i32.load offset=44
    local.get 4
    i32.load offset=8
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h649197fc91b1a9f6E
    local.get 5
    i32.const 24
    i32.add
    local.get 5
    i32.load offset=32
    local.get 5
    i32.load offset=36
    local.get 4
    i64.load
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h320fb3341b1345afE
    local.get 5
    i32.const 16
    i32.add
    local.get 5
    i32.load offset=24
    local.get 5
    i32.load offset=28
    local.get 4
    i32.load offset=12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h67cefaf74fa86520E
    local.get 5
    i32.load offset=16
    local.set 4
    local.get 3
    local.get 5
    i32.load offset=20
    local.tee 6
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17h23127e471a77ccebE
    local.get 5
    i32.const 8
    i32.add
    local.get 4
    local.get 6
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17he694ee2ff270fb72E
    local.get 5
    i32.load offset=12
    local.set 4
    local.get 0
    local.get 5
    i32.load offset=8
    i32.store
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 5
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction16callback_closure22cb_closure_storage_key17h8f8cb9d8604ec431E (;80;) (type 1) (result i32)
    (local i32 i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    call $managedGetOriginalTxHash
    i32.const 131158
    i32.const 10
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h4f191e248ec10e22E
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17heff7430d5d237b30E (;81;) (type 0) (param i32 i32)
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
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7da8416c9073c250E
    local.tee 6
    local.get 2
    i32.const 16
    i32.add
    i32.const 32
    call $_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1f9f2cdbea56a312E
    local.get 1
    i32.const 0
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h89a4e64513d725f2E
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7da8416c9073c250E (;82;) (type 5) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h89a4e64513d725f2E (;83;) (type 7) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h58b292abeb2403fdE (;84;) (type 10) (param i32 i32 i32)
    local.get 1
    local.get 2
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17hf676deb8b0fb6be4E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h80824c07de194409E (;85;) (type 0) (param i32 i32)
    local.get 1
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17hd9d1ab847dab453dE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h2a870ac5d0740ad0E (;86;) (type 0) (param i32 i32)
    local.get 1
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h2477c15d698e7e20E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17h16a96c0712453098E (;87;) (type 10) (param i32 i32 i32)
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h4f191e248ec10e22E
    local.set 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he7a5372bbe9b41a8E
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417hb80d4a4ab9582509E (;88;) (type 8) (param i32 i64)
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
    call $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hefe4a2a354f0af59E
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
  (func $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd7f78164b9eab64E (;89;) (type 0) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h89a4e64513d725f2E
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
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h81783c1a054b306cE
      local.set 4
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h565e6164d708b1f5E
      local.set 3
      local.get 0
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h81783c1a054b306cE
      i32.store offset=20
      local.get 0
      local.get 4
      i32.store offset=16
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
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17he694ee2ff270fb72E (;90;) (type 15) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block ;; label = @1
      local.get 3
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17had4c2e1121ffaa63E
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h02b53b20bbd43509E
      local.get 4
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7da8416c9073c250E
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
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h89a4e64513d725f2E
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
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h02b53b20bbd43509E
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
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h320fb3341b1345afE (;91;) (type 16) (param i32 i32 i32 i64)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he7a5372bbe9b41a8E
    local.tee 4
    local.get 3
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417hb80d4a4ab9582509E
    local.get 2
    local.get 4
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17ha852c9c7a875f4ccE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h2e1f446f9f2544b1E (;92;) (type 5) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h649197fc91b1a9f6E (;93;) (type 13) (param i32 i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he7a5372bbe9b41a8E
    drop
    local.get 2
    local.get 3
    i32.load
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb636348bb3ca9749E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17ha852c9c7a875f4ccE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h67cefaf74fa86520E (;94;) (type 13) (param i32 i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he7a5372bbe9b41a8E
    drop
    local.get 2
    local.get 3
    i32.load
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h2e1f446f9f2544b1E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17ha852c9c7a875f4ccE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17h23127e471a77ccebE (;95;) (type 0) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he7a5372bbe9b41a8E
    drop
    local.get 1
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb636348bb3ca9749E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17ha852c9c7a875f4ccE
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he263c72465c3ceeaE (;96;) (type 0) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he7a5372bbe9b41a8E
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17had4c2e1121ffaa63E (;97;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7da8416c9073c250E
    i32.eqz
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h02b53b20bbd43509E (;98;) (type 0) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he7a5372bbe9b41a8E
    drop
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb636348bb3ca9749E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17ha852c9c7a875f4ccE
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hed638865badcff44E (;99;) (type 4) (param i32)
    (local i32)
    local.get 0
    i32.const 8
    i32.add
    call $_ZN185_$LT$dharitri_sc..types..interaction..callback_closure..CallbackClosure$LT$Api$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_exec..tx_exec_async..TxAsyncCallCallback$LT$Api$GT$$GT$32save_callback_closure_to_storage17hfa7afffc88e427fcE
    local.get 0
    i32.load offset=4
    local.get 0
    i32.const 28
    i32.add
    local.tee 1
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=20
    local.get 0
    i32.load offset=24
    call $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized17h18be7f648a9186b6E
    unreachable
  )
  (func $_ZN185_$LT$dharitri_sc..types..interaction..callback_closure..CallbackClosure$LT$Api$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_exec..tx_exec_async..TxAsyncCallCallback$LT$Api$GT$$GT$32save_callback_closure_to_storage17hfa7afffc88e427fcE (;100;) (type 4) (param i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types11interaction16callback_closure22cb_closure_storage_key17h8f8cb9d8604ec431E
    local.set 2
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h4f191e248ec10e22E
    local.set 3
    local.get 0
    i32.load
    local.set 4
    local.get 0
    i32.load offset=4
    local.tee 5
    local.get 3
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h7db357c9b99b9744E
    local.get 3
    local.get 4
    local.get 5
    call $mBufferAppendBytes
    drop
    local.get 0
    i32.load offset=8
    local.tee 4
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hd2386aac5a5db3a2E
    local.get 3
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h7db357c9b99b9744E
    local.get 1
    local.get 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7da8416c9073c250E
    i32.store offset=24
    local.get 1
    i32.const 0
    i32.store offset=20
    local.get 1
    local.get 0
    i32.const 8
    i32.add
    i32.store offset=16
    block ;; label = @1
      loop ;; label = @2
        local.get 1
        i32.const 8
        i32.add
        local.get 1
        i32.const 16
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc38a75710d674307E
        local.get 1
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 1
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
        local.get 1
        i32.const 28
        i32.add
        i32.const 4
        call $mBufferAppendBytes
        drop
        local.get 3
        local.get 4
        call $mBufferAppend
        drop
        br 0 (;@2;)
      end
    end
    local.get 2
    local.get 3
    call $mBufferStorageStore
    drop
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h876c2152b40fa767E (;101;) (type 13) (param i32 i32 i32 i32)
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
  (func $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h7778b43a3ab2f752E (;102;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 4
    call $mBufferAppendBytes
    drop
  )
  (func $_ZN11dharitri_sc5types7managed11multi_value19multi_value_encoded30MultiValueEncoded$LT$M$C$T$GT$4push17h5829eba5a8e6d34eE (;103;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h02b53b20bbd43509E
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17hef7fe07a0584b505E (;104;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferAppend
    drop
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h81783c1a054b306cE (;105;) (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 1
    i32.load
    local.tee 2
    i32.const 4
    i32.add
    local.set 3
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i32.const -5
        i32.gt_u
        br_if 0 (;@2;)
        local.get 3
        i32.const 16
        i32.gt_u
        br_if 1 (;@1;)
        local.get 1
        local.get 3
        i32.store
        local.get 0
        local.get 2
        i32.add
        i32.load align=1
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
        return
      end
      local.get 2
      local.get 3
      call $_ZN4core5slice5index22slice_index_order_fail17h203c6e1b4907093dE
      unreachable
    end
    local.get 3
    i32.const 16
    call $_ZN4core5slice5index22slice_index_order_fail17h203c6e1b4907093dE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h565e6164d708b1f5E (;106;) (type 17) (param i32 i32) (result i64)
    (local i32 i32 i64)
    local.get 1
    i32.load
    local.tee 2
    i32.const 8
    i32.add
    local.set 3
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i32.const -9
        i32.gt_u
        br_if 0 (;@2;)
        local.get 3
        i32.const 16
        i32.gt_u
        br_if 1 (;@1;)
        local.get 1
        local.get 3
        i32.store
        local.get 0
        local.get 2
        i32.add
        i64.load align=1
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
        return
      end
      local.get 2
      local.get 3
      call $_ZN4core5slice5index22slice_index_order_fail17h203c6e1b4907093dE
      unreachable
    end
    local.get 3
    i32.const 16
    call $_ZN4core5slice5index22slice_index_order_fail17h203c6e1b4907093dE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h86e1e2f1d6d2b501E (;107;) (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              local.get 0
              i32.load8_u offset=8
              br_if 0 (;@5;)
              local.get 0
              i32.load
              local.tee 5
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7da8416c9073c250E
              local.tee 6
              i32.const 10000
              i32.gt_u
              br_if 1 (;@4;)
              i32.const 0
              i32.load8_u offset=141624
              i32.const 255
              i32.and
              br_if 1 (;@4;)
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
              i32.const 131620
              i32.const 10000
              call $_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1f9f2cdbea56a312E
              local.get 5
              i32.const 0
              local.get 4
              i32.load offset=8
              local.get 4
              i32.load offset=12
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h89a4e64513d725f2E
              drop
              block ;; label = @6
                local.get 0
                i32.load8_u offset=8
                i32.eqz
                br_if 0 (;@6;)
                i32.const 0
                i32.const 0
                i32.store offset=141620
                i32.const 0
                i32.const 0
                i32.store8 offset=141624
              end
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
            br_if 1 (;@3;)
            local.get 5
            local.get 1
            i32.lt_u
            br_if 2 (;@2;)
            local.get 5
            i32.const 10000
            i32.gt_u
            br_if 3 (;@1;)
            local.get 2
            local.get 1
            i32.const 131620
            i32.add
            local.get 3
            call $memcpy
            drop
            i32.const 0
            local.set 0
            br 1 (;@3;)
          end
          local.get 0
          i32.const 0
          i32.store8 offset=8
          local.get 5
          local.get 1
          local.get 2
          local.get 3
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h89a4e64513d725f2E
          local.set 0
        end
        local.get 4
        i32.const 16
        i32.add
        global.set $__stack_pointer
        local.get 0
        return
      end
      local.get 1
      local.get 5
      call $_ZN4core5slice5index22slice_index_order_fail17h203c6e1b4907093dE
      unreachable
    end
    local.get 5
    i32.const 10000
    call $_ZN4core5slice5index22slice_index_order_fail17h203c6e1b4907093dE
    unreachable
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h5bfb0faf8784f416E (;108;) (type 5) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_set11storage_set17h834988c3ae042880E (;109;) (type 0) (param i32 i32)
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
    call $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hefe4a2a354f0af59E
    local.get 0
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h4f191e248ec10e22E
    call $mBufferStorageStore
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hefe4a2a354f0af59E (;110;) (type 18) (param i32 i64 i32)
    (local i64 i64 i32 i32)
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
    local.tee 3
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
    local.get 0
    i32.const 8
    i32.const 0
    local.get 4
    i32.wrap_i64
    i32.eqz
    local.tee 5
    local.get 1
    i64.const 48
    i64.shr_u
    i32.wrap_i64
    i32.const 255
    i32.and
    select
    local.tee 6
    local.get 5
    i32.add
    i32.const 0
    local.get 6
    local.get 3
    i32.wrap_i64
    i32.const 255
    i32.and
    select
    local.tee 5
    i32.add
    i32.const 0
    local.get 5
    local.get 1
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    i32.const 255
    i32.and
    select
    local.tee 6
    i32.add
    i32.const 0
    local.get 6
    local.get 1
    i32.wrap_i64
    local.tee 5
    i32.const 24
    i32.shr_u
    select
    local.tee 6
    i32.add
    i32.const 0
    local.get 6
    local.get 5
    i32.const 16
    i32.shr_u
    i32.const 255
    i32.and
    select
    local.tee 6
    i32.add
    i32.const 0
    local.get 6
    local.get 5
    i32.const 8
    i32.shr_u
    i32.const 255
    i32.and
    select
    local.tee 5
    i32.add
    local.get 5
    i32.const 0
    local.get 1
    i64.eqz
    select
    i32.add
    local.tee 5
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 2
    local.get 5
    i32.add
    i32.store
  )
  (func $_ZN11dharitri_sc7storage7mappers20unordered_set_mapper36UnorderedSetMapper$LT$SA$C$T$C$A$GT$14item_index_key17h073c115eb944a1f6E (;111;) (type 2) (param i32 i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb636348bb3ca9749E
    local.tee 0
    i32.const 131278
    i32.const 6
    call $mBufferAppendBytes
    drop
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17hef7fe07a0584b505E
    local.get 0
  )
  (func $_ZN11dharitri_sc7storage7mappers20unordered_set_mapper36UnorderedSetMapper$LT$SA$C$T$C$A$GT$8contains17h90419ec790aa9814E (;112;) (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers20unordered_set_mapper36UnorderedSetMapper$LT$SA$C$T$C$A$GT$14item_index_key17h073c115eb944a1f6E
    call $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17hb73c5e300498c64cE
    i32.const 0
    i32.ne
  )
  (func $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17hb73c5e300498c64cE (;113;) (type 5) (param i32) (result i32)
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
      call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h5bfb0faf8784f416E
      local.tee 2
      call $mBufferGetLength
      local.tee 3
      i32.const 9
      i32.ge_u
      br_if 0 (;@1;)
      local.get 2
      i32.const 0
      local.get 1
      i32.const 8
      i32.add
      local.get 3
      i32.sub
      i32.const 8
      i32.add
      local.get 3
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h89a4e64513d725f2E
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
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h6c76bf3345451412E
    unreachable
  )
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h6c76bf3345451412E (;114;) (type 4) (param i32)
    (local i32)
    i32.const 131284
    i32.const 27
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h4f191e248ec10e22E
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
    i32.const 131120
    i32.const 3
    call $mBufferAppendBytes
    drop
    local.get 1
    i32.const 131215
    i32.const 14
    call $mBufferAppendBytes
    drop
    local.get 1
    call $managedSignalError
    unreachable
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h60e15f36149b5488E (;115;) (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17h5f9a4e63470e8432E
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
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h876c2152b40fa767E
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
      call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17heee834a3fe0ecb6dE
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
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17h5f9a4e63470e8432E (;116;) (type 5) (param i32) (result i32)
    (local i32)
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
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h86e1e2f1d6d2b501E
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131072
      i32.const 25
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h1133892346d75c47E
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    i32.const 4
    i32.add
    i32.store
    local.get 1
    i32.load offset=12
    local.set 0
    local.get 1
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
  )
  (func $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17heee834a3fe0ecb6dE (;117;) (type 13) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h4f191e248ec10e22E
    local.tee 1
    local.get 2
    local.get 3
    call $mBufferAppendBytes
    drop
    local.get 1
    call $managedSignalError
    unreachable
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h9614fdb6fde9a412E (;118;) (type 0) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7da8416c9073c250E
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
    call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h7778b43a3ab2f752E
    local.get 1
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17hef7fe07a0584b505E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc38a75710d674307E (;119;) (type 0) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h89a4e64513d725f2E
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
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h1133892346d75c47E (;120;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 131229
    i32.const 15
    call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17heee834a3fe0ecb6dE
    unreachable
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h7db357c9b99b9744E (;121;) (type 0) (param i32 i32)
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
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17he191236eab577fdfE (;122;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 131229
    i32.const 15
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h7b6c75fd8ed519f2E
    unreachable
  )
  (func $_ZN19dharitri_sc_modules19transfer_role_proxy23TransferRoleProxyModule16transfer_to_user17h3ddf5900e55d349bE (;123;) (type 13) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    local.get 1
    i32.store offset=16
    local.get 4
    i32.const 8
    i32.add
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he263c72465c3ceeaE
    local.get 4
    local.get 2
    i32.store offset=24
    local.get 4
    local.get 4
    i64.load offset=8
    i64.store offset=28 align=4
    local.get 4
    local.get 4
    i32.const 16
    i32.add
    i32.store offset=20
    local.get 4
    i32.const 0
    i32.store offset=36
    local.get 0
    local.get 2
    local.get 4
    i32.const 20
    i32.add
    local.get 4
    i32.const 36
    i32.add
    call $_ZN19dharitri_sc_modules19transfer_role_proxy23TransferRoleProxyModule18execute_async_call17h1fae21a04b05a243E
    unreachable
  )
  (func $_ZN19dharitri_sc_modules19transfer_role_proxy23TransferRoleProxyModule18execute_async_call17h1fae21a04b05a243E (;124;) (type 13) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 8
    i32.add
    call $_ZN87_$LT$C$u20$as$u20$dharitri_sc_modules..transfer_role_proxy..TransferRoleProxyModule$GT$21destination_whitelist17he88b3060f04ee140E
    block ;; label = @1
      block ;; label = @2
        local.get 4
        i32.load offset=16
        local.get 2
        i32.load
        local.tee 5
        i32.load
        call $_ZN11dharitri_sc7storage7mappers20unordered_set_mapper36UnorderedSetMapper$LT$SA$C$T$C$A$GT$8contains17h90419ec790aa9814E
        i32.eqz
        br_if 0 (;@2;)
        call $getGasLeft
        local.get 2
        i32.load offset=4
        local.tee 6
        i32.load
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h3e2eb0790e540d55E
        i64.extend_i32_u
        i64.const 1000000
        i64.mul
        i64.le_u
        br_if 1 (;@1;)
        block ;; label = @3
          block ;; label = @4
            local.get 3
            i32.load
            local.tee 7
            br_if 0 (;@4;)
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he7a5372bbe9b41a8E
            local.set 8
            local.get 4
            local.get 1
            i32.load
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h7da8416c9073c250E
            i32.store offset=48
            local.get 4
            i32.const 0
            i32.store offset=44
            local.get 4
            local.get 1
            i32.store offset=40
            block ;; label = @5
              loop ;; label = @6
                local.get 4
                i32.const 8
                i32.add
                local.get 4
                i32.const 40
                i32.add
                call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd7f78164b9eab64E
                local.get 4
                i64.load offset=8
                i64.eqz
                br_if 1 (;@5;)
                local.get 4
                i64.load offset=16
                local.set 9
                local.get 4
                i32.load offset=28
                local.set 1
                local.get 4
                i32.load offset=24
                call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb636348bb3ca9749E
                local.set 7
                call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
                local.tee 3
                i64.const 0
                call $bigIntSetInt64
                local.get 3
                local.get 3
                local.get 1
                call $bigIntAdd
                local.get 4
                local.get 3
                i32.store offset=68
                local.get 4
                local.get 9
                i64.store offset=56
                local.get 4
                local.get 7
                i32.store offset=64
                local.get 8
                local.get 4
                i32.const 56
                i32.add
                call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h79bf5ca2350d4b68E
                br 0 (;@6;)
              end
            end
            local.get 4
            local.get 8
            i32.store offset=76
            local.get 0
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he7a5372bbe9b41a8E
            local.tee 10
            call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17h23127e471a77ccebE
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he7a5372bbe9b41a8E
            call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb636348bb3ca9749E
            local.set 3
            local.get 4
            local.get 8
            call $mBufferGetLength
            i32.store offset=64
            local.get 4
            i32.const 0
            i32.store offset=60
            local.get 4
            local.get 4
            i32.const 76
            i32.add
            i32.store offset=56
            block ;; label = @5
              loop ;; label = @6
                local.get 4
                i32.const 8
                i32.add
                local.get 4
                i32.const 56
                i32.add
                call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd7f78164b9eab64E
                local.get 4
                i64.load offset=8
                i64.eqz
                br_if 1 (;@5;)
                local.get 4
                i32.load offset=28
                local.set 1
                local.get 4
                i64.load offset=16
                local.set 9
                local.get 4
                i32.load offset=24
                local.get 3
                call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h9614fdb6fde9a412E
                local.get 4
                local.get 9
                i64.const 56
                i64.shl
                local.get 9
                i64.const 65280
                i64.and
                i64.const 40
                i64.shl
                i64.or
                local.get 9
                i64.const 16711680
                i64.and
                i64.const 24
                i64.shl
                local.get 9
                i64.const 4278190080
                i64.and
                i64.const 8
                i64.shl
                i64.or
                i64.or
                local.get 9
                i64.const 8
                i64.shr_u
                i64.const 4278190080
                i64.and
                local.get 9
                i64.const 24
                i64.shr_u
                i64.const 16711680
                i64.and
                i64.or
                local.get 9
                i64.const 40
                i64.shr_u
                i64.const 65280
                i64.and
                local.get 9
                i64.const 56
                i64.shr_u
                i64.or
                i64.or
                i64.or
                i64.store offset=40
                local.get 3
                local.get 4
                i32.const 40
                i32.add
                i32.const 8
                call $mBufferAppendBytes
                drop
                local.get 1
                call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h2e1f446f9f2544b1E
                local.get 3
                call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h9614fdb6fde9a412E
                br 0 (;@6;)
              end
            end
            local.get 10
            local.get 3
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17ha852c9c7a875f4ccE
            i32.const 17
            local.set 3
            i32.const 131339
            local.set 7
            br 1 (;@3;)
          end
          local.get 3
          i32.load offset=8
          local.set 10
          local.get 3
          i32.load offset=4
          local.set 3
        end
        local.get 4
        local.get 6
        i32.store offset=12
        local.get 4
        local.get 5
        i32.store offset=8
        local.get 4
        local.get 10
        i32.store offset=24
        local.get 4
        local.get 3
        i32.store offset=20
        local.get 4
        local.get 7
        i32.store offset=16
        local.get 4
        local.get 2
        i64.load offset=8 align=4
        i64.store offset=28 align=4
        local.get 4
        i32.const 8
        i32.add
        call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hed638865badcff44E
        unreachable
      end
      i32.const 131393
      call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h14227377bdac582bE
      unreachable
    end
    i32.const 131428
    call $_ZN11dharitri_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h14227377bdac582bE
    unreachable
  )
  (func $_ZN87_$LT$C$u20$as$u20$dharitri_sc_modules..transfer_role_proxy..TransferRoleProxyModule$GT$21destination_whitelist17he88b3060f04ee140E (;125;) (type 4) (param i32)
    (local i32 i32 i32)
    i32.const 131534
    i32.const 41
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h4f191e248ec10e22E
    local.tee 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb636348bb3ca9749E
    local.set 2
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb636348bb3ca9749E
    local.tee 3
    i32.const 131311
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
  (func $_ZN19dharitri_sc_modules19transfer_role_proxy23TransferRoleProxyModule24transfer_to_contract_raw17ha37fafecba564290E (;126;) (type 14) (param i32 i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    local.get 6
    local.get 1
    i32.store offset=12
    local.get 6
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he263c72465c3ceeaE
    local.get 6
    local.get 4
    i32.store offset=28
    local.get 6
    local.get 2
    i32.store offset=20
    local.get 6
    local.get 6
    i32.load
    i32.store offset=24
    local.get 6
    local.get 6
    i32.const 12
    i32.add
    i32.store offset=16
    local.get 0
    local.get 2
    local.get 6
    i32.const 16
    i32.add
    local.get 5
    call $_ZN19dharitri_sc_modules19transfer_role_proxy23TransferRoleProxyModule18execute_async_call17h1fae21a04b05a243E
    unreachable
  )
  (func $rust_begin_unwind (;127;) (type 11)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h8945d78c95e86419E
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h8945d78c95e86419E (;128;) (type 11)
    i32.const 131602
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;129;) (type 11)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h647a36b92d44d82dE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17ha3269fb559e7e982E
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h43f46130faa3a21cE
    local.set 1
    local.get 0
    i32.load offset=16
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17he95e6c1d0d57f7d9E
    local.get 0
    i32.const 4
    i32.add
    call $_ZN87_$LT$C$u20$as$u20$dharitri_sc_modules..transfer_role_proxy..TransferRoleProxyModule$GT$21destination_whitelist17he88b3060f04ee140E
    local.get 0
    i32.const 16
    i32.add
    local.get 1
    call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h265598d4989bcb14E
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
        i32.const 131331
        i32.const 8
        call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_de_multi..TopDecodeMulti$GT$26multi_decode_or_handle_err17hea8b01c47c42b2adE
        local.tee 5
        call $_ZN11dharitri_sc7storage7mappers20unordered_set_mapper36UnorderedSetMapper$LT$SA$C$T$C$A$GT$8contains17h90419ec790aa9814E
        br_if 0 (;@2;)
        local.get 3
        call $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17hb73c5e300498c64cE
        local.set 1
        local.get 2
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb636348bb3ca9749E
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
        call $_ZN11dharitri_sc5types7managed10codec_util31managed_buffer_nested_en_output168_$LT$impl$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$u20$for$u20$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$5write17h7778b43a3ab2f752E
        local.get 6
        local.get 5
        call $mBufferStorageStore
        drop
        local.get 3
        local.get 1
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h834988c3ae042880E
        local.get 3
        call $_ZN145_$LT$dharitri_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$dharitri_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17hb73c5e300498c64cE
        local.set 1
        local.get 4
        local.get 5
        call $_ZN11dharitri_sc7storage7mappers20unordered_set_mapper36UnorderedSetMapper$LT$SA$C$T$C$A$GT$14item_index_key17h073c115eb944a1f6E
        local.get 1
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17h834988c3ae042880E
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $forwardPayments (;130;) (type 11)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h647a36b92d44d82dE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17ha3269fb559e7e982E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h15aff673e23b76b2E
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hc37f3943b0cbbf59E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=4
    local.get 0
    i32.const 4
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h056430b258402e65E
    local.set 3
    local.get 0
    i32.load offset=4
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17he95e6c1d0d57f7d9E
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
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
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17had4c2e1121ffaa63E
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
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he7a5372bbe9b41a8E
          local.set 6
          local.get 0
          i32.const 4
          i32.add
          local.get 3
          call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h265598d4989bcb14E
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
            i32.const 131331
            i32.const 8
            call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h48712b4e34a47143E
            call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb636348bb3ca9749E
            local.set 5
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he7a5372bbe9b41a8E
            drop
            local.get 6
            local.get 5
            call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb636348bb3ca9749E
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17ha852c9c7a875f4ccE
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
      local.get 2
      call $_ZN19dharitri_sc_modules19transfer_role_proxy23TransferRoleProxyModule16transfer_to_user17h3ddf5900e55d349bE
      unreachable
    end
    local.get 0
    i32.const 0
    i32.store offset=4
    local.get 4
    local.get 1
    local.get 0
    local.get 2
    local.get 6
    local.get 0
    i32.const 4
    i32.add
    call $_ZN19dharitri_sc_modules19transfer_role_proxy23TransferRoleProxyModule24transfer_to_contract_raw17ha37fafecba564290E
    unreachable
  )
  (func $callBack (;131;) (type 11)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        call $_ZN11dharitri_sc5types11interaction16callback_closure22cb_closure_storage_key17h8f8cb9d8604ec431E
        local.tee 1
        call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h5bfb0faf8784f416E
        local.tee 2
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17had4c2e1121ffaa63E
        br_if 0 (;@2;)
        local.get 2
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb636348bb3ca9749E
        local.tee 3
        call $mBufferGetLength
        local.set 2
        local.get 0
        i32.const 0
        i32.store8 offset=80
        local.get 0
        local.get 2
        i32.store offset=76
        local.get 0
        local.get 3
        i32.store offset=72
        local.get 0
        local.get 2
        i32.store offset=68
        local.get 0
        i32.const 0
        i32.store offset=64
        local.get 0
        i32.const 64
        i32.add
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h60e15f36149b5488E
        local.set 4
        local.get 0
        i32.const 64
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17h5f9a4e63470e8432E
        local.set 2
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he7a5372bbe9b41a8E
        local.set 3
        block ;; label = @3
          loop ;; label = @4
            local.get 2
            i32.eqz
            br_if 1 (;@3;)
            local.get 3
            local.get 0
            i32.const 64
            i32.add
            call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h60e15f36149b5488E
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17ha852c9c7a875f4ccE
            local.get 2
            i32.const -1
            i32.add
            local.set 2
            br 0 (;@4;)
          end
        end
        local.get 0
        i32.load offset=68
        local.get 0
        i32.load offset=64
        i32.ne
        br_if 1 (;@1;)
        block ;; label = @3
          local.get 0
          i32.load8_u offset=80
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
        i32.const 1
        i32.const 0
        call $mBufferSetBytes
        drop
        local.get 1
        i32.const -20
        call $mBufferStorageStore
        drop
        local.get 0
        i32.const 28
        i32.add
        local.get 4
        call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17heff7430d5d237b30E
        local.get 0
        i32.load offset=60
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 64
        i32.add
        local.get 4
        call $_ZN11dharitri_sc5types11interaction16callback_closure32CallbackClosureForDeser$LT$M$GT$7matcher17heff7430d5d237b30E
        local.get 0
        i32.load offset=96
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        block ;; label = @3
          local.get 2
          i32.const 17
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          i32.const 64
          i32.add
          i32.const 131339
          i32.const 17
          call $memcmp
          br_if 0 (;@3;)
          call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h647a36b92d44d82dE
          i32.const 0
          call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17ha3269fb559e7e982E
          local.get 0
          i32.const 0
          i32.store offset=112
          local.get 0
          i32.const 116
          i32.add
          local.get 0
          i32.const 112
          i32.add
          call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hd61b4c3d92d98e53E
          local.get 0
          i32.load offset=112
          call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17he95e6c1d0d57f7d9E
          local.get 0
          i32.load offset=124
          local.set 4
          local.get 0
          i32.load offset=120
          local.set 2
          local.get 0
          i32.load offset=116
          local.set 1
          local.get 0
          i32.const 100
          i32.add
          local.get 3
          call $_ZN11dharitri_sc2io25managed_result_arg_loader31ManagedResultArgLoader$LT$A$GT$3new17h265598d4989bcb14E
          call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17h647a36b92d44d82dE
          local.get 0
          i32.const 100
          i32.add
          call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h7ab0afe52337d574E
          local.set 5
          local.get 0
          i32.const 100
          i32.add
          call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h33d5dce0710c3826E
          local.set 3
          local.get 0
          i32.load offset=104
          local.get 0
          i32.load offset=108
          call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h9c8c52e68470198dE
          block ;; label = @4
            local.get 1
            i32.eqz
            br_if 0 (;@4;)
            block ;; label = @5
              local.get 3
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17had4c2e1121ffaa63E
              br_if 0 (;@5;)
              local.get 0
              i32.const 16
              i32.add
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he7a5372bbe9b41a8E
              call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17he263c72465c3ceeaE
              local.get 5
              local.get 3
              i64.const 0
              local.get 0
              i32.load offset=16
              local.get 0
              i32.load offset=20
              call $managedMultiTransferDCDTNFTExecute
              drop
            end
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he7a5372bbe9b41a8E
            local.tee 2
            i32.const 131575
            i32.const 27
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h4f191e248ec10e22E
            call $_ZN11dharitri_sc5types7managed11multi_value19multi_value_encoded30MultiValueEncoded$LT$M$C$T$GT$4push17h5829eba5a8e6d34eE
            local.get 2
            local.get 4
            call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb636348bb3ca9749E
            call $_ZN11dharitri_sc5types7managed11multi_value19multi_value_encoded30MultiValueEncoded$LT$M$C$T$GT$4push17h5829eba5a8e6d34eE
          end
          local.get 0
          local.get 2
          i32.store offset=112
          local.get 0
          local.get 2
          call $mBufferGetLength
          i32.store offset=124
          local.get 0
          i32.const 0
          i32.store offset=120
          local.get 0
          local.get 0
          i32.const 112
          i32.add
          i32.store offset=116
          loop ;; label = @4
            local.get 0
            i32.const 8
            i32.add
            local.get 0
            i32.const 116
            i32.add
            call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc38a75710d674307E
            local.get 0
            i32.load offset=8
            i32.eqz
            br_if 2 (;@2;)
            local.get 0
            i32.load offset=12
            call $mBufferFinish
            drop
            br 0 (;@4;)
          end
        end
        i32.const 131471
        i32.const 54
        call $signalError
        unreachable
      end
      local.get 0
      i32.const 128
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131072
    i32.const 25
    i32.const 131215
    i32.const 14
    call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17heee834a3fe0ecb6dE
    unreachable
  )
  (func $_ZN4core9panicking9panic_fmt17hb859252f4b513814E (;132;) (type 11)
    call $rust_begin_unwind
    unreachable
  )
  (func $_ZN17compiler_builtins3mem6memcpy17h6a01844efc49c0e5E (;133;) (type 3) (param i32 i32 i32) (result i32)
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
  (func $_ZN17compiler_builtins3mem6memcmp17h0161c33af60bef75E (;134;) (type 3) (param i32 i32 i32) (result i32)
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
  (func $memcpy (;135;) (type 3) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN17compiler_builtins3mem6memcpy17h6a01844efc49c0e5E
  )
  (func $memcmp (;136;) (type 3) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN17compiler_builtins3mem6memcmp17h0161c33af60bef75E
  )
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
  (data $.rodata (;0;) (i32.const 131072) "serializer decode error: argument decode error (): too few argumentstoo many argumentsCB_CLOSUREMultiDCDTNFTTransferDCDTNFTTransferDCDTTransferinput too longinput too shortManagedVec index out of range.item.indexstorage decode error (key: .lenbad array lengthvar argstransfer_callbackresultinitial_paymentsoriginal_callerDestination address not whitelistedNot enough gas to launch async callargsdestno callback function with that name exists in contractwhitelisttransfer_role_proxy:destination_whitelistError received in callback:panic occurred")
  (data $.data (;1;) (i32.const 131616) "8\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.80.1 (3f5fd8dd4 2024-08-06)")
  )
  (@custom "target_features" (after data) "\02+\0fmutable-globals+\08sign-ext")
)
