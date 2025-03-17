(module
  (type (;0;) (func (param i32 i64)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (result i32)))
  (type (;3;) (func (param i32 i32) (result i32)))
  (type (;4;) (func (param i32)))
  (type (;5;) (func (param i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32) (result i32)))
  (type (;7;) (func (param i32 i32)))
  (type (;8;) (func (param i32) (result i64)))
  (type (;9;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;10;) (func))
  (type (;11;) (func (param i32 i32 i32 i32)))
  (type (;12;) (func (param i32 i32 i32 i32 i32)))
  (type (;13;) (func (param i32 i32) (result i64)))
  (type (;14;) (func (param i32 i32 i32 i32 i32 i32)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;0;) (type 0)))
  (import "env" "bigIntAdd" (func $bigIntAdd (;1;) (type 1)))
  (import "env" "mBufferNew" (func $mBufferNew (;2;) (type 2)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;3;) (type 3)))
  (import "env" "managedSCAddress" (func $managedSCAddress (;4;) (type 4)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;5;) (type 3)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;6;) (type 5)))
  (import "env" "managedSignalError" (func $managedSignalError (;7;) (type 4)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;8;) (type 3)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;9;) (type 6)))
  (import "env" "bigIntGetUnsignedArgument" (func $bigIntGetUnsignedArgument (;10;) (type 7)))
  (import "env" "smallIntGetUnsignedArgument" (func $smallIntGetUnsignedArgument (;11;) (type 8)))
  (import "env" "signalError" (func $signalError (;12;) (type 7)))
  (import "env" "getNumArguments" (func $getNumArguments (;13;) (type 2)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;14;) (type 3)))
  (import "env" "managedGetOriginalTxHash" (func $managedGetOriginalTxHash (;15;) (type 4)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;16;) (type 5)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;17;) (type 3)))
  (import "env" "mBufferCopyByteSlice" (func $mBufferCopyByteSlice (;18;) (type 9)))
  (import "env" "managedWriteLog" (func $managedWriteLog (;19;) (type 7)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;20;) (type 10)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;21;) (type 3)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;22;) (type 9)))
  (import "env" "managedAsyncCall" (func $managedAsyncCall (;23;) (type 11)))
  (func $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hdf11712c9529cf87E (;24;) (type 6) (param i32) (result i32)
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E (;25;) (type 2) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=131456
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=131456
    local.get 0
  )
  (func $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h8945c713f6d249b1E (;26;) (type 12) (param i32 i32 i32 i32 i32)
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
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE (;27;) (type 7) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h961bed6a92190a3eE (;28;) (type 6) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN117_$LT$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb02df2f91758c966E (;29;) (type 6) (param i32) (result i32)
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h961bed6a92190a3eE
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17hbce7172e410d3cebE (;30;) (type 11) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17hcba505d2f5fa12cbE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17hcba505d2f5fa12cbE (;31;) (type 11) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $managedAsyncCall
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hfa9b90e0132e1725E (;32;) (type 2) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    call $managedSCAddress
    local.get 0
  )
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17haca6784977238015E (;33;) (type 6) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hacd1948477cd4cbbE (;34;) (type 11) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131122
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h9aa63fbb043b0787E
    local.tee 4
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 4
    i32.const 131145
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h9aa63fbb043b0787E (;35;) (type 3) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h7bbff0fc2f11c6c6E (;36;) (type 6) (param i32) (result i32)
    local.get 0
    i32.const 131350
    i32.const 6
    call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h555db7a6b4b79f17E
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    call $mBufferToBigIntUnsigned
    drop
    local.get 0
  )
  (func $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h555db7a6b4b79f17E (;37;) (type 5) (param i32 i32 i32) (result i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hd9dfc7a279174557E
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
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h961bed6a92190a3eE
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
    i32.const 131148
    i32.const 17
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hacd1948477cd4cbbE
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h9e16dbf4d7ed140aE (;38;) (type 6) (param i32) (result i32)
    (local i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i32.const 131343
    i32.const 7
    call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h555db7a6b4b79f17E
    local.set 0
    local.get 1
    i64.const 0
    i64.store offset=8
    block ;; label = @1
      block ;; label = @2
        local.get 0
        call $mBufferGetLength
        local.tee 2
        i32.const 9
        i32.ge_u
        br_if 0 (;@2;)
        local.get 1
        local.get 1
        i32.const 8
        i32.add
        i32.const 8
        local.get 2
        call $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h6209d31a37a942f8E
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
      i32.const 131343
      i32.const 7
      i32.const 131245
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hacd1948477cd4cbbE
      unreachable
    end
    i32.const 131343
    i32.const 7
    i32.const 131245
    i32.const 14
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hacd1948477cd4cbbE
    unreachable
  )
  (func $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h6209d31a37a942f8E (;39;) (type 11) (param i32 i32 i32 i32)
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
    call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h8945c713f6d249b1E
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E (;40;) (type 9) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E (;41;) (type 13) (param i32 i32) (result i64)
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17ha76b60b57a7f7424E (;42;) (type 6) (param i32) (result i32)
    block ;; label = @1
      local.get 0
      i32.const 131372
      i32.const 2
      call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h555db7a6b4b79f17E
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h961bed6a92190a3eE
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      i32.const 131372
      i32.const 2
      i32.const 131278
      i32.const 16
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hacd1948477cd4cbbE
      unreachable
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hf4f0cb3de92f89c4E (;43;) (type 6) (param i32) (result i32)
    local.get 0
    i32.const 131356
    i32.const 16
    call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h555db7a6b4b79f17E
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h961bed6a92190a3eE
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h5fff954abbd34b75E
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h5fff954abbd34b75E (;44;) (type 6) (param i32) (result i32)
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
      i32.const 12
      i32.add
      i32.const 4
      i32.const 131274
      i32.const 4
      call $_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h5c37f3e5caad143cE
      select
      local.set 0
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h278ac358f318f1f4E (;45;) (type 2) (result i32)
    i32.const 1
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17haca6784977238015E
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h5fff954abbd34b75E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8bd205b220078f42E (;46;) (type 2) (result i32)
    (local i32)
    i32.const 2
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    call $bigIntGetUnsignedArgument
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha11f892864e51bb1E (;47;) (type 2) (result i32)
    (local i64)
    block ;; label = @1
      i32.const 3
      call $smallIntGetUnsignedArgument
      local.tee 0
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 131343
      i32.const 7
      i32.const 131245
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hacd1948477cd4cbbE
      unreachable
    end
    local.get 0
    i32.wrap_i64
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd150d68e06466b70E (;48;) (type 2) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 0
      call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17haca6784977238015E
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      i32.const 131372
      i32.const 2
      i32.const 131278
      i32.const 16
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17hacd1948477cd4cbbE
      unreachable
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hfe254cb24722a836E (;49;) (type 7) (param i32 i32)
    block ;; label = @1
      local.get 1
      local.get 0
      i32.lt_u
      br_if 0 (;@1;)
      return
    end
    i32.const 131165
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc24e881b26579b9eE (;50;) (type 4) (param i32)
    block ;; label = @1
      call $getNumArguments
      local.get 0
      i32.ne
      br_if 0 (;@1;)
      return
    end
    i32.const 131183
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17hc863112127d37cd7E (;51;) (type 4) (param i32)
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
      call $_ZN11dharitri_sc5types11interaction16callback_closure22cb_closure_storage_key17ha88dc412f6e2859aE
      local.set 3
      block ;; label = @2
        block ;; label = @3
          i32.const 0
          i32.load8_u offset=141464
          local.tee 4
          br_if 0 (;@3;)
          i32.const 0
          i32.const 1
          i32.store8 offset=141464
          i32.const 0
          i32.const 0
          i32.store offset=141460
          local.get 1
          i32.const 8
          i32.add
          i32.const 0
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17he4fb5c03b53e8e97E
          local.get 1
          i32.load offset=8
          local.get 1
          i32.load offset=12
          i32.const 131440
          i32.const 0
          call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hf45bcc8501645efeE
          local.set 5
          br 1 (;@2;)
        end
        i32.const 131440
        i32.const 0
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h9aa63fbb043b0787E
        local.set 5
      end
      local.get 1
      local.get 5
      i32.store offset=16
      local.get 1
      local.get 4
      i32.const 1
      i32.xor
      i32.store8 offset=20
      local.get 0
      i32.const 20
      i32.add
      i32.load
      local.tee 4
      local.get 1
      i32.const 16
      i32.add
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17hbb89e0442f74e281E
      local.get 1
      i32.const 16
      i32.add
      local.get 2
      local.get 4
      call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h15f1baf1c37136b9E
      local.get 0
      i32.const 24
      i32.add
      i32.load
      local.tee 6
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h00c7b148483eba15E
      local.get 1
      i32.const 16
      i32.add
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17hbb89e0442f74e281E
      local.get 6
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17hd68bf5825dcdc6b1E
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
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hd9dfc7a279174557E
          drop
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
          i32.store offset=24
          local.get 1
          i32.const 16
          i32.add
          local.get 1
          i32.const 24
          i32.add
          i32.const 4
          call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h15f1baf1c37136b9E
          block ;; label = @4
            block ;; label = @5
              local.get 1
              i32.load8_u offset=20
              i32.eqz
              br_if 0 (;@5;)
              local.get 4
              call $mBufferGetLength
              local.set 2
              i32.const 10000
              i32.const 0
              i32.load offset=141460
              local.tee 8
              i32.sub
              local.get 2
              i32.lt_u
              br_if 1 (;@4;)
              local.get 1
              local.get 8
              local.get 8
              local.get 2
              i32.add
              local.tee 2
              call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hd67dc0f109b80b10E
              local.get 4
              i32.const 0
              local.get 1
              i32.load
              local.get 1
              i32.load offset=4
              call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E
              drop
              i32.const 0
              local.get 2
              i32.store offset=141460
              local.get 5
              local.set 2
              br 2 (;@3;)
            end
            local.get 1
            i32.load offset=16
            local.get 4
            call $mBufferAppend
            drop
            local.get 5
            local.set 2
            br 1 (;@3;)
          end
          local.get 1
          i32.const 16
          i32.add
          call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17hf5ce64e961cab781E
          local.get 1
          i32.load offset=16
          local.get 4
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
      call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17hf5ce64e961cab781E
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
        i32.store offset=141460
        i32.const 0
        i32.const 0
        i32.store8 offset=141464
      end
      local.get 3
      local.get 2
      call $mBufferStorageStore
      drop
    end
    local.get 0
    call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$29call_and_exit_ignore_callback17h3b46f7af78942340E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction16callback_closure22cb_closure_storage_key17ha88dc412f6e2859aE (;52;) (type 2) (result i32)
    (local i32 i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    call $managedGetOriginalTxHash
    i32.const 131235
    i32.const 10
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h9aa63fbb043b0787E
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17he4fb5c03b53e8e97E (;53;) (type 7) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    i32.const 131460
    i32.const 10000
    local.get 1
    call $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h6209d31a37a942f8E
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
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E (;54;) (type 11) (param i32 i32 i32 i32)
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hf45bcc8501645efeE (;55;) (type 2) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    i32.const 131440
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17hbb89e0442f74e281E (;56;) (type 7) (param i32 i32)
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
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h15f1baf1c37136b9E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h15f1baf1c37136b9E (;57;) (type 1) (param i32 i32 i32)
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
          i32.load offset=141460
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
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hd67dc0f109b80b10E
          local.get 3
          i32.load offset=8
          local.get 3
          i32.load offset=12
          local.get 1
          local.get 2
          call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
          i32.const 0
          local.get 0
          i32.store offset=141460
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
      call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17hf5ce64e961cab781E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h00c7b148483eba15E (;58;) (type 6) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17hd68bf5825dcdc6b1E
    i32.const 2
    i32.shr_u
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17hd68bf5825dcdc6b1E (;59;) (type 6) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hd9dfc7a279174557E (;60;) (type 9) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E
  )
  (func $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hd67dc0f109b80b10E (;61;) (type 1) (param i32 i32 i32)
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
    i32.const 131460
    i32.const 10000
    call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h8945c713f6d249b1E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17hf5ce64e961cab781E (;62;) (type 4) (param i32)
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
      i32.load offset=141460
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
      i32.store offset=141460
      i32.const 0
      i32.const 0
      i32.store8 offset=141464
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$29call_and_exit_ignore_callback17h3b46f7af78942340E (;63;) (type 4) (param i32)
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17hbce7172e410d3cebE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$3new17h998525ad42db2b81E (;64;) (type 1) (param i32 i32 i32)
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h9aa63fbb043b0787E
    local.set 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hf45bcc8501645efeE
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h368dddb8db1e1097E (;65;) (type 12) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block ;; label = @1
      local.get 3
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h2f2b50e28a0a1f71E
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      call $_ZN166_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hfd42d9b7221f0eb7E
      local.get 4
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17hd68bf5825dcdc6b1E
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
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hd9dfc7a279174557E
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
        call $_ZN166_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hfd42d9b7221f0eb7E
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h2f2b50e28a0a1f71E (;66;) (type 6) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17hd68bf5825dcdc6b1E
    i32.eqz
  )
  (func $_ZN166_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hfd42d9b7221f0eb7E (;67;) (type 7) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hf45bcc8501645efeE
    drop
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h961bed6a92190a3eE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h879837a08a976e9fE
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h97f6225a0dca03ebE (;68;) (type 11) (param i32 i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hf45bcc8501645efeE
    drop
    local.get 2
    local.get 3
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h961bed6a92190a3eE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h879837a08a976e9fE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h879837a08a976e9fE (;69;) (type 7) (param i32 i32)
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
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17hfef12e276036dc79E (;70;) (type 11) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hf45bcc8501645efeE
    i32.store offset=12
    local.get 3
    local.get 4
    i32.const 12
    i32.add
    call $_ZN127_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17hc4af446fbc599ef7E
    local.get 2
    local.get 4
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h879837a08a976e9fE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN127_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17hc4af446fbc599ef7E (;71;) (type 7) (param i32 i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 2
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 1
    local.get 2
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall10async_call17h11cc1c88a820b984E (;72;) (type 7) (param i32 i32)
    (local i32 i32 i64 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
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
        i32.load offset=32
        local.set 5
        local.get 1
        i32.load offset=20
        local.set 6
        local.get 1
        i32.load offset=16
        local.set 7
        local.get 1
        i32.load offset=12
        local.set 1
        call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h4b0a12ee22792254E
        drop
        block ;; label = @3
          block ;; label = @4
            local.get 4
            i64.const 0
            i64.ne
            br_if 0 (;@4;)
            local.get 2
            i32.const 24
            i32.add
            i32.const 131223
            i32.const 12
            call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$3new17h998525ad42db2b81E
            local.get 2
            i32.const 16
            i32.add
            local.get 2
            i32.load offset=24
            local.get 2
            i32.load offset=28
            local.get 3
            call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h97f6225a0dca03ebE
            local.get 2
            i32.const 8
            i32.add
            local.get 2
            i32.load offset=16
            local.get 2
            i32.load offset=20
            local.get 1
            call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17hfef12e276036dc79E
            local.get 2
            local.get 2
            i32.load offset=8
            local.get 2
            i32.load offset=12
            local.get 7
            local.get 6
            call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h368dddb8db1e1097E
            local.get 2
            i32.load offset=4
            local.set 3
            local.get 2
            i32.load
            local.set 6
            br 1 (;@3;)
          end
          call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hfa9b90e0132e1725E
          local.set 8
          local.get 2
          i32.const 56
          i32.add
          i32.const 131208
          i32.const 15
          call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$3new17h998525ad42db2b81E
          local.get 2
          i32.const 48
          i32.add
          local.get 2
          i32.load offset=56
          local.get 2
          i32.load offset=60
          local.get 3
          call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h97f6225a0dca03ebE
          local.get 2
          i32.load offset=48
          local.set 9
          local.get 2
          i32.load offset=52
          local.set 3
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hf45bcc8501645efeE
          local.tee 10
          local.get 4
          call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h55da0a99a0d58ff8E
          local.get 3
          local.get 10
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h879837a08a976e9fE
          local.get 2
          i32.const 40
          i32.add
          local.get 9
          local.get 3
          local.get 1
          call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17hfef12e276036dc79E
          local.get 2
          i32.load offset=40
          local.set 3
          local.get 2
          i32.load offset=44
          local.set 1
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hf45bcc8501645efeE
          drop
          local.get 1
          local.get 5
          call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h961bed6a92190a3eE
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h879837a08a976e9fE
          local.get 2
          i32.const 32
          i32.add
          local.get 3
          local.get 1
          local.get 7
          local.get 6
          call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h368dddb8db1e1097E
          local.get 2
          i32.load offset=36
          local.set 3
          local.get 2
          i32.load offset=32
          local.set 6
          local.get 8
          local.set 5
        end
        call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h4b0a12ee22792254E
        local.set 1
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=32
      local.set 5
      local.get 1
      i32.load offset=20
      local.set 3
      local.get 1
      i32.load offset=16
      local.set 6
      local.get 1
      i32.load offset=12
      local.set 1
    end
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    local.get 5
    i32.store offset=8
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 6
    i32.store
    local.get 2
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h4b0a12ee22792254E (;73;) (type 2) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    i64.const 0
    call $bigIntSetInt64
    local.get 0
  )
  (func $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h55da0a99a0d58ff8E (;74;) (type 0) (param i32 i64)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
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
    i64.store offset=8
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i64.eqz
        i32.eqz
        br_if 0 (;@2;)
        i32.const 131440
        local.set 3
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      i32.const 0
      local.set 4
      loop ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 4
            i32.const 8
            i32.eq
            br_if 0 (;@4;)
            local.get 2
            i32.const 8
            i32.add
            local.get 4
            i32.add
            local.tee 3
            i32.load8_u
            i32.eqz
            br_if 1 (;@3;)
            i32.const 8
            local.get 4
            i32.sub
            local.set 4
            br 3 (;@1;)
          end
          call $_ZN4core9panicking18panic_bounds_check17hdbf723dd9cf95e6aE
          unreachable
        end
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 3
    local.get 4
    call $mBufferSetBytes
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction24contract_call_no_payment48ContractCallNoPayment$LT$SA$C$OriginalResult$GT$3new17ha812c74973694e89E (;75;) (type 11) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h9aa63fbb043b0787E
    local.set 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hf45bcc8501645efeE
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
  (func $_ZN11dharitri_sc5types7managed7wrapped14managed_option26ManagedOption$LT$M$C$T$GT$18unwrap_or_sc_panic17h6c6708ff585583d8E (;76;) (type 6) (param i32) (result i32)
    block ;; label = @1
      local.get 0
      i32.const 2147483646
      i32.ne
      br_if 0 (;@1;)
      i32.const 131072
      i32.const 25
      call $signalError
      unreachable
    end
    local.get 0
  )
  (func $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h95dd1a03576b7dfcE (;77;) (type 1) (param i32 i32 i32)
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
    i32.const 131460
    i32.add
    i32.store
  )
  (func $_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h5c37f3e5caad143cE (;78;) (type 9) (param i32 i32 i32 i32) (result i32)
    (local i32)
    i32.const 0
    local.set 4
    block ;; label = @1
      local.get 1
      local.get 3
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 1
      call $memcmp
      i32.eqz
      local.set 4
    end
    local.get 4
  )
  (func $_ZN11dharitri_sc8log_util18serialize_log_data17heca55d9edc913647E (;79;) (type 6) (param i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hf45bcc8501645efeE
    local.tee 1
    local.get 0
    i64.extend_i32_u
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h55da0a99a0d58ff8E
    local.get 1
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17h422224f1e36dc6c7E (;80;) (type 7) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hbb806c094a7a502fE
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hbb806c094a7a502fE (;81;) (type 7) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hf45bcc8501645efeE
    i32.store offset=12
    local.get 1
    i32.load
    local.get 2
    i32.const 12
    i32.add
    call $_ZN127_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17hc4af446fbc599ef7E
    local.get 0
    local.get 2
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h879837a08a976e9fE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17h6c896b36700a0dfbE (;82;) (type 7) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h12558c683d21a3c1E
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h12558c683d21a3c1E (;83;) (type 7) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hf45bcc8501645efeE
    local.set 2
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load
        local.tee 1
        i32.const 2147483646
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h961bed6a92190a3eE
        local.set 2
        br 1 (;@1;)
      end
      local.get 2
      i32.const 131274
      i32.const 4
      call $mBufferSetBytes
      drop
    end
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h879837a08a976e9fE
  )
  (func $_ZN11dharitri_sc8log_util21serialize_event_topic17hee59d8bdcda8c4c8E (;84;) (type 7) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h8244042ca9bb25acE
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h8244042ca9bb25acE (;85;) (type 7) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hf45bcc8501645efeE
    drop
    local.get 0
    local.get 1
    i32.load
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h961bed6a92190a3eE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h879837a08a976e9fE
  )
  (func $_ZN11dharitri_sc8log_util23event_topic_accumulator17h2326a3f349b6b81dE (;86;) (type 3) (param i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hf45bcc8501645efeE
    local.tee 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h9aa63fbb043b0787E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h879837a08a976e9fE
    local.get 2
  )
  (func $_ZN142_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h298b0b36700f4639E (;87;) (type 6) (param i32) (result i32)
    (local i32)
    i32.const 2147483646
    local.set 1
    block ;; label = @1
      local.get 0
      i32.const 2147483646
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h961bed6a92190a3eE
      local.set 1
    end
    local.get 1
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h955e046e87d9b576E (;88;) (type 6) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17h6b49f9a5ed9cd5adE
    local.set 1
    local.get 0
    i32.load
    local.set 2
    call $mBufferNew
    local.set 3
    block ;; label = @1
      local.get 0
      i32.load offset=8
      local.get 2
      local.get 1
      local.get 3
      call $mBufferCopyByteSlice
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131097
      i32.const 25
      i32.const 131259
      i32.const 15
      call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h28ba8ab5025590d3E
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    i32.add
    i32.store
    local.get 3
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17h6b49f9a5ed9cd5adE (;89;) (type 6) (param i32) (result i32)
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
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17hd68bf5825dcdc6b1E
            local.tee 4
            i32.const 10000
            i32.gt_u
            br_if 1 (;@3;)
            i32.const 0
            i32.load8_u offset=141464
            i32.const 255
            i32.and
            br_if 1 (;@3;)
            i32.const 0
            local.get 4
            i32.store offset=141460
            i32.const 0
            i32.const 1
            i32.store8 offset=141464
            local.get 1
            i32.const 16
            i32.add
            local.get 4
            call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17he4fb5c03b53e8e97E
            local.get 3
            i32.const 0
            local.get 1
            i32.load offset=16
            local.get 1
            i32.load offset=20
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hd9dfc7a279174557E
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
          i32.load offset=141460
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
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hd9dfc7a279174557E
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
    i32.const 131097
    i32.const 25
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h45c9213cf428cb1dE
    unreachable
  )
  (func $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h28ba8ab5025590d3E (;90;) (type 11) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h9aa63fbb043b0787E
    local.tee 1
    local.get 2
    local.get 3
    call $mBufferAppendBytes
    drop
    local.get 1
    call $managedSignalError
    unreachable
  )
  (func $_ZN16recursive_caller10ProxyTrait20recursive_send_funds17h0578214a33dd595fE (;91;) (type 14) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    local.get 1
    i32.load
    local.set 7
    local.get 1
    i32.const 2147483646
    i32.store
    local.get 6
    i32.const 8
    i32.add
    local.get 7
    call $_ZN11dharitri_sc5types7managed7wrapped14managed_option26ManagedOption$LT$M$C$T$GT$18unwrap_or_sc_panic17h6c6708ff585583d8E
    i32.const 131294
    i32.const 20
    call $_ZN11dharitri_sc5types11interaction24contract_call_no_payment48ContractCallNoPayment$LT$SA$C$OriginalResult$GT$3new17ha812c74973694e89E
    local.get 6
    i32.load offset=12
    local.tee 1
    local.get 2
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h8244042ca9bb25acE
    local.get 1
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h12558c683d21a3c1E
    local.get 1
    local.get 4
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hbb806c094a7a502fE
    local.get 5
    local.get 1
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17hc255a743d2673946E
    local.get 0
    i32.const 16
    i32.add
    local.get 6
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 8
    i32.add
    local.get 6
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 0
    local.get 6
    i64.load offset=8
    i64.store
    local.get 6
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17hc255a743d2673946E (;92;) (type 7) (param i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hf45bcc8501645efeE
    local.tee 2
    local.get 0
    i64.extend_i32_u
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h55da0a99a0d58ff8E
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h879837a08a976e9fE
  )
  (func $_ZN16recursive_caller13CallbackProxy29recursive_send_funds_callback17hf3e692c5dd0c442dE (;93;) (type 12) (param i32 i32 i32 i32 i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hf45bcc8501645efeE
    local.tee 5
    local.get 1
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h8244042ca9bb25acE
    local.get 5
    local.get 2
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h12558c683d21a3c1E
    local.get 5
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hbb806c094a7a502fE
    local.get 4
    local.get 5
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17hc255a743d2673946E
    local.get 0
    local.get 5
    i32.store offset=8
    local.get 0
    i32.const 29
    i32.store offset=4
    local.get 0
    i32.const 131314
    i32.store
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h45c9213cf428cb1dE (;94;) (type 7) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 131259
    i32.const 15
    call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h28ba8ab5025590d3E
    unreachable
  )
  (func $_ZN4core9panicking18panic_bounds_check17hdbf723dd9cf95e6aE (;95;) (type 10)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (func $memcmp (;96;) (type 5) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN17compiler_builtins3mem6memcmp17h7af645c26ac3e8dcE
  )
  (func $_ZN55_$LT$C$u20$as$u20$recursive_caller..RecursiveCaller$GT$26recursive_send_funds_event17h18d61b3a5054ed61E (;97;) (type 11) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131294
    i32.const 20
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h2326a3f349b6b81dE
    local.tee 4
    local.get 0
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17hee59d8bdcda8c4c8E
    local.get 4
    local.get 1
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17h6c896b36700a0dfbE
    local.get 4
    local.get 2
    call $_ZN11dharitri_sc8log_util21serialize_event_topic17h422224f1e36dc6c7E
    local.get 4
    local.get 3
    call $_ZN11dharitri_sc8log_util18serialize_log_data17heca55d9edc913647E
    call $managedWriteLog
  )
  (func $_ZN5vault10ProxyTrait12accept_funds17h67f8982070cc95a2E (;98;) (type 7) (param i32 i32)
    (local i32)
    local.get 1
    i32.load
    local.set 2
    local.get 1
    i32.const 2147483646
    i32.store
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped14managed_option26ManagedOption$LT$M$C$T$GT$18unwrap_or_sc_panic17h6c6708ff585583d8E
    i32.const 131428
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction24contract_call_no_payment48ContractCallNoPayment$LT$SA$C$OriginalResult$GT$3new17ha812c74973694e89E
  )
  (func $rust_begin_unwind (;99;) (type 10)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE (;100;) (type 10)
    i32.const 131440
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;101;) (type 10)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc24e881b26579b9eE
  )
  (func $recursive_send_funds (;102;) (type 10)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17hc24e881b26579b9eE
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17hd150d68e06466b70E
    local.set 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h278ac358f318f1f4E
    local.set 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h8bd205b220078f42E
    local.set 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17ha11f892864e51bb1E
    local.set 4
    local.get 0
    local.get 3
    i32.store offset=16
    local.get 0
    local.get 2
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 12
    i32.add
    local.get 0
    i32.const 16
    i32.add
    local.get 4
    call $_ZN55_$LT$C$u20$as$u20$recursive_caller..RecursiveCaller$GT$26recursive_send_funds_event17h18d61b3a5054ed61E
    local.get 0
    local.get 0
    i32.load offset=8
    call $_ZN117_$LT$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb02df2f91758c966E
    i32.store offset=92
    local.get 0
    i32.const 64
    i32.add
    local.tee 1
    local.get 0
    i32.const 92
    i32.add
    call $_ZN5vault10ProxyTrait12accept_funds17h67f8982070cc95a2E
    local.get 0
    i32.load offset=12
    call $_ZN142_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h298b0b36700f4639E
    local.set 2
    local.get 0
    local.get 0
    i32.load offset=16
    call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hdf11712c9529cf87E
    i32.store offset=60
    local.get 0
    local.get 2
    i32.store offset=56
    local.get 0
    i64.const 0
    i64.store offset=48
    local.get 0
    i32.const 20
    i32.add
    local.get 0
    i32.const 48
    i32.add
    call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall10async_call17h11cc1c88a820b984E
    local.get 1
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 12
    i32.add
    local.get 0
    i32.const 16
    i32.add
    local.get 4
    call $_ZN16recursive_caller13CallbackProxy29recursive_send_funds_callback17hf3e692c5dd0c442dE
    local.get 0
    local.get 0
    i64.load offset=28 align=4
    i64.store offset=56 align=4
    local.get 0
    local.get 0
    i64.load offset=20 align=4
    i64.store offset=48 align=4
    local.get 0
    i32.const 48
    i32.add
    call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17hc863112127d37cd7E
    unreachable
  )
  (func $callBack (;103;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 144
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types11interaction16callback_closure22cb_closure_storage_key17ha88dc412f6e2859aE
    local.tee 1
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 2
    call $mBufferStorageLoad
    drop
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 2
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17h2f2b50e28a0a1f71E
            br_if 0 (;@4;)
            local.get 2
            call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h961bed6a92190a3eE
            local.tee 3
            call $mBufferGetLength
            local.set 2
            local.get 0
            i32.const 32
            i32.add
            i32.const 0
            i32.store8
            local.get 0
            i32.const 28
            i32.add
            local.get 2
            i32.store
            local.get 0
            local.get 3
            i32.store offset=24
            local.get 0
            local.get 2
            i32.store offset=20
            local.get 0
            i32.const 0
            i32.store offset=16
            local.get 0
            i32.const 16
            i32.add
            call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h955e046e87d9b576E
            local.set 4
            local.get 0
            i32.const 16
            i32.add
            call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$usize$GT$24dep_decode_or_handle_err17h6b49f9a5ed9cd5adE
            local.set 2
            call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17hf45bcc8501645efeE
            local.set 3
            block ;; label = @5
              loop ;; label = @6
                local.get 2
                i32.eqz
                br_if 1 (;@5;)
                local.get 3
                local.get 0
                i32.const 16
                i32.add
                call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h955e046e87d9b576E
                call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h879837a08a976e9fE
                local.get 2
                i32.const -1
                i32.add
                local.set 2
                br 0 (;@6;)
              end
            end
            local.get 0
            i32.load offset=20
            local.get 0
            i32.load offset=16
            i32.ne
            br_if 1 (;@3;)
            block ;; label = @5
              local.get 0
              i32.load8_u offset=32
              i32.eqz
              br_if 0 (;@5;)
              i32.const 0
              i32.const 0
              i32.store offset=141460
              i32.const 0
              i32.const 0
              i32.store8 offset=141464
            end
            i32.const -20
            i32.const 131440
            i32.const 0
            call $mBufferSetBytes
            drop
            local.get 1
            i32.const -20
            call $mBufferStorageStore
            drop
            local.get 0
            i32.const 88
            i32.add
            i32.const 24
            i32.add
            local.tee 1
            i64.const 0
            i64.store
            local.get 0
            i32.const 88
            i32.add
            i32.const 16
            i32.add
            local.tee 5
            i64.const 0
            i64.store
            local.get 0
            i32.const 88
            i32.add
            i32.const 8
            i32.add
            local.tee 6
            i64.const 0
            i64.store
            local.get 0
            i64.const 0
            i64.store offset=88
            local.get 0
            i32.const 8
            i32.add
            local.get 0
            i32.const 88
            i32.add
            i32.const 32
            local.get 4
            call $mBufferGetLength
            local.tee 2
            call $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h6209d31a37a942f8E
            local.get 4
            i32.const 0
            local.get 0
            i32.load offset=8
            local.get 0
            i32.load offset=12
            call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E
            drop
            local.get 0
            i32.const 16
            i32.add
            i32.const 24
            i32.add
            local.get 1
            i64.load
            i64.store
            local.get 0
            i32.const 16
            i32.add
            i32.const 16
            i32.add
            local.get 5
            i64.load
            i64.store
            local.get 0
            i32.const 16
            i32.add
            i32.const 8
            i32.add
            local.get 6
            i64.load
            i64.store
            local.get 0
            local.get 2
            i32.store offset=48
            local.get 0
            local.get 0
            i64.load offset=88
            i64.store offset=16
            local.get 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.const 29
            i32.ne
            br_if 3 (;@1;)
            local.get 0
            i32.const 16
            i32.add
            i32.const 29
            i32.const 131314
            i32.const 29
            call $_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h5c37f3e5caad143cE
            i32.eqz
            br_if 3 (;@1;)
            local.get 3
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h00c7b148483eba15E
            local.set 2
            local.get 0
            i32.const 60
            i32.add
            i32.const 8
            i32.add
            local.tee 1
            i32.const 0
            i32.store
            local.get 0
            local.get 2
            i32.store offset=64
            local.get 0
            local.get 3
            i32.store offset=60
            call $getNumArguments
            drop
            local.get 0
            i32.const 60
            i32.add
            call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17ha76b60b57a7f7424E
            local.set 2
            local.get 0
            i32.const 72
            i32.add
            i32.const 8
            i32.add
            local.tee 3
            local.get 1
            i32.load
            i32.store
            local.get 0
            local.get 0
            i64.load offset=60 align=4
            i64.store offset=72
            local.get 0
            i32.const 72
            i32.add
            call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17hf4f0cb3de92f89c4E
            local.set 1
            local.get 0
            i32.const 120
            i32.add
            i32.const 8
            i32.add
            local.tee 4
            local.get 3
            i32.load
            i32.store
            local.get 0
            local.get 0
            i64.load offset=72
            i64.store offset=120
            local.get 0
            i32.const 120
            i32.add
            call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h7bbff0fc2f11c6c6E
            local.set 5
            local.get 0
            i32.const 88
            i32.add
            i32.const 8
            i32.add
            local.tee 6
            local.get 4
            i32.load
            i32.store
            local.get 0
            local.get 0
            i64.load offset=120
            i64.store offset=88
            local.get 0
            i32.const 88
            i32.add
            call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h9e16dbf4d7ed140aE
            local.set 3
            local.get 0
            i32.load offset=92
            local.get 6
            i32.load
            call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hfe254cb24722a836E
            local.get 0
            local.get 5
            i32.store offset=60
            local.get 0
            local.get 1
            i32.store offset=56
            local.get 0
            local.get 2
            i32.store offset=52
            i32.const 131314
            i32.const 29
            call $_ZN11dharitri_sc8log_util23event_topic_accumulator17h2326a3f349b6b81dE
            local.tee 2
            local.get 0
            i32.const 52
            i32.add
            call $_ZN11dharitri_sc8log_util21serialize_event_topic17hee59d8bdcda8c4c8E
            local.get 2
            local.get 0
            i32.const 56
            i32.add
            call $_ZN11dharitri_sc8log_util21serialize_event_topic17h6c896b36700a0dfbE
            local.get 2
            local.get 0
            i32.const 60
            i32.add
            call $_ZN11dharitri_sc8log_util21serialize_event_topic17h422224f1e36dc6c7E
            local.get 2
            local.get 3
            call $_ZN11dharitri_sc8log_util18serialize_log_data17heca55d9edc913647E
            call $managedWriteLog
            local.get 3
            i32.const 2
            i32.ge_u
            br_if 2 (;@2;)
          end
          local.get 0
          i32.const 144
          i32.add
          global.set $__stack_pointer
          return
        end
        i32.const 131097
        i32.const 25
        i32.const 131245
        i32.const 14
        call $_ZN157_$LT$dharitri_sc..contract_base..wrappers..serializer..ExitCodecErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h28ba8ab5025590d3E
        unreachable
      end
      local.get 0
      call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hfa9b90e0132e1725E
      i32.store offset=72
      local.get 0
      i32.const 120
      i32.add
      local.get 0
      i32.const 72
      i32.add
      local.get 0
      i32.const 52
      i32.add
      local.get 0
      i32.const 56
      i32.add
      local.get 0
      i32.const 60
      i32.add
      local.get 3
      i32.const -1
      i32.add
      call $_ZN16recursive_caller10ProxyTrait20recursive_send_funds17h0578214a33dd595fE
      local.get 0
      call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h4b0a12ee22792254E
      i32.store offset=100
      local.get 0
      i32.const 0
      i32.store offset=104
      local.get 0
      local.get 0
      i32.load offset=136
      i32.store offset=96
      local.get 0
      local.get 0
      i64.load offset=120
      i64.store offset=88 align=4
      local.get 0
      i32.const 88
      i32.add
      call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17hc863112127d37cd7E
      unreachable
    end
    i32.const 131374
    i32.const 54
    call $signalError
    unreachable
  )
  (func $_ZN17compiler_builtins3mem6memcmp17h7af645c26ac3e8dcE (;104;) (type 5) (param i32 i32 i32) (result i32)
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
  (func $memcpy (;105;) (type 5) (param i32 i32 i32) (result i32)
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
  (func $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E (;106;) (type 10)
    call $rust_begin_unwind
    unreachable
  )
  (table (;0;) 1 1 funcref)
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 141468)
  (global (;2;) i32 i32.const 141472)
  (export "memory" (memory 0))
  (export "init" (func $init))
  (export "recursive_send_funds" (func $recursive_send_funds))
  (export "callBack" (func $callBack))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data $.rodata (;0;) (i32.const 131072) "recipient address not setserializer decode error: argument decode error (): too few argumentstoo many argumentswrong number of argumentsDCDTNFTTransferDCDTTransferCB_CLOSUREinput too longinput too shortREWAbad array lengthrecursive_send_fundsrecursive_send_funds_callbackcounteramounttoken_identifiertono callback function with that name exists in contractaccept_fundspanic occurred")
  (data $.data (;1;) (i32.const 131456) "\9c\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.76.0-nightly (d86d65bbc 2023-12-10)")
  )
)