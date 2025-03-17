(module $vec_repeat_wasm.wasm
  (type (;0;) (func (param i32 i64)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (result i32)))
  (type (;3;) (func (param i32 i32) (result i32)))
  (type (;4;) (func (param i32 i32 i32) (result i32)))
  (type (;5;) (func (param i32)))
  (type (;6;) (func (param i32) (result i32)))
  (type (;7;) (func (param i32) (result i64)))
  (type (;8;) (func (param i32 i32)))
  (type (;9;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;10;) (func))
  (type (;11;) (func (param i64)))
  (type (;12;) (func (param i32 i32 i32 i32)))
  (type (;13;) (func (param i32 i32) (result i64)))
  (type (;14;) (func (param i64 i32)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;0;) (type 0)))
  (import "env" "bigIntAdd" (func $bigIntAdd (;1;) (type 1)))
  (import "env" "mBufferNew" (func $mBufferNew (;2;) (type 2)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;3;) (type 3)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;4;) (type 3)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;5;) (type 4)))
  (import "env" "managedSignalError" (func $managedSignalError (;6;) (type 5)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;7;) (type 6)))
  (import "env" "smallIntGetUnsignedArgument" (func $smallIntGetUnsignedArgument (;8;) (type 7)))
  (import "env" "getNumArguments" (func $getNumArguments (;9;) (type 2)))
  (import "env" "signalError" (func $signalError (;10;) (type 8)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;11;) (type 4)))
  (import "env" "bigIntCmp" (func $bigIntCmp (;12;) (type 3)))
  (import "env" "mBufferCopyByteSlice" (func $mBufferCopyByteSlice (;13;) (type 9)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;14;) (type 3)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;15;) (type 3)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;16;) (type 3)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;17;) (type 3)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;18;) (type 10)))
  (import "env" "smallIntFinishUnsigned" (func $smallIntFinishUnsigned (;19;) (type 11)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;20;) (type 6)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;21;) (type 9)))
  (import "env" "mBufferEq" (func $mBufferEq (;22;) (type 3)))
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 141300)
  (global (;2;) i32 i32.const 141312)
  (export "memory" (memory 0))
  (export "init" (func $init))
  (export "add" (func $add))
  (export "count" (func $count))
  (export "remove" (func $remove))
  (export "bench" (func $bench))
  (export "add_struct" (func $add_struct))
  (export "count_struct" (func $count_struct))
  (export "remove_struct" (func $remove_struct))
  (export "bench_struct" (func $bench_struct))
  (export "callBack" (func $callBack))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (func $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hba91e4525847d892E (;23;) (type 6) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    i64.const 0
    call $bigIntSetInt64
    local.get 1
    local.get 1
    local.get 0
    call $bigIntAdd
    local.get 1
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE (;24;) (type 2) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=131288
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=131288
    local.get 0
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hfcbf85c9dbad0903E (;25;) (type 6) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h992fc8b674a25b3aE (;26;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h00ec339cb3020c69E
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h00ec339cb3020c69E (;27;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $mBufferEq
    i32.const 0
    i32.gt_s
  )
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h5b1ae94ad073c140E (;28;) (type 6) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h114de9def6b3c524E (;29;) (type 12) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131088
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h1c31cd4df2bec57cE
    local.tee 4
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 4
    i32.const 131111
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h1c31cd4df2bec57cE (;30;) (type 3) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h3b11968c5f9546cbE (;31;) (type 8) (param i32 i32)
    (local i32 i32 i64 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h5b1ae94ad073c140E
    local.tee 3
    call $mBufferGetLength
    local.set 1
    local.get 2
    i32.const 0
    i32.store8 offset=28
    local.get 2
    local.get 1
    i32.store offset=24
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
    call $_ZN151_$LT$dharitri_sc..types..managed..wrapped..token_identifier..TokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h6eae0225d8df625bE
    local.set 1
    local.get 2
    i32.const 12
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h03be0f944f4d8e4dE
    local.set 4
    local.get 2
    i32.const 12
    i32.add
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17hc604f2e5cd01be8fE
    local.set 3
    local.get 2
    i32.const 12
    i32.add
    call $_ZN151_$LT$dharitri_sc..types..managed..wrapped..token_identifier..TokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h6eae0225d8df625bE
    local.set 5
    local.get 2
    i32.const 12
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h03be0f944f4d8e4dE
    local.set 6
    local.get 2
    i32.const 12
    i32.add
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17hc604f2e5cd01be8fE
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
        i32.store offset=141292
        i32.const 0
        i32.const 0
        i32.store8 offset=141296
      end
      local.get 0
      local.get 7
      i32.store offset=28
      local.get 0
      local.get 5
      i32.store offset=24
      local.get 0
      local.get 3
      i32.store offset=20
      local.get 0
      local.get 1
      i32.store offset=16
      local.get 0
      local.get 6
      i64.store offset=8
      local.get 0
      local.get 4
      i64.store
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131072
    i32.const 5
    i32.const 131139
    i32.const 14
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h114de9def6b3c524E
    unreachable
  )
  (func $_ZN151_$LT$dharitri_sc..types..managed..wrapped..token_identifier..TokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h6eae0225d8df625bE (;32;) (type 6) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h05f6ccdc6b6ba519E
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h863e53b5e8eedd8aE
    call $_ZN11dharitri_sc5types7managed7wrapped16token_identifier24TokenIdentifier$LT$M$GT$7try_new17h778edb539611b511E
    block ;; label = @1
      local.get 1
      i32.load offset=8
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=12
      local.set 0
      local.get 1
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 0
      return
    end
    i32.const 131072
    i32.const 5
    i32.const 131219
    i32.const 13
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h114de9def6b3c524E
    unreachable
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17h03be0f944f4d8e4dE (;33;) (type 7) (param i32) (result i64)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hced81400a6f9d2acE
    local.get 1
    i64.load offset=8
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    i64.const 56
    i64.shl
    local.get 2
    i64.const 65280
    i64.and
    i64.const 40
    i64.shl
    i64.or
    local.get 2
    i64.const 16711680
    i64.and
    i64.const 24
    i64.shl
    local.get 2
    i64.const 4278190080
    i64.and
    i64.const 8
    i64.shl
    i64.or
    i64.or
    local.get 2
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 2
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 2
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 2
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
  )
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17hc604f2e5cd01be8fE (;34;) (type 6) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h05f6ccdc6b6ba519E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17hab1fb2a11491c30cE
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h541ab733274cdabcE (;35;) (type 6) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17h5b1ae94ad073c140E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h670ee3e2259a91a7E (;36;) (type 2) (result i32)
    (local i64)
    block ;; label = @1
      i32.const 0
      call $smallIntGetUnsignedArgument
      local.tee 0
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 131077
      i32.const 11
      i32.const 131139
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h114de9def6b3c524E
      unreachable
    end
    local.get 0
    i32.wrap_i64
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h080f3d6b295239f3E (;37;) (type 5) (param i32)
    block ;; label = @1
      call $getNumArguments
      local.get 0
      i32.ne
      br_if 0 (;@1;)
      return
    end
    i32.const 131114
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h05f6ccdc6b6ba519E (;38;) (type 6) (param i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hced81400a6f9d2acE
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
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h5602957973fbfca2E
    block ;; label = @1
      local.get 1
      i32.load
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      i32.const 131072
      i32.const 5
      i32.const 131153
      i32.const 15
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h114de9def6b3c524E
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
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17hced81400a6f9d2acE (;39;) (type 1) (param i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17hb51ae1e4e697f657E
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131072
      i32.const 5
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h7e78938a3295440eE
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h5602957973fbfca2E (;40;) (type 12) (param i32 i32 i32 i32)
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
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h62eb0dfc82aab4acE (;41;) (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h2396bdb133c4af8cE
    local.get 2
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load
    local.tee 3
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
    local.tee 4
    call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10copy_slice17h5602957973fbfca2E
    block ;; label = @1
      local.get 2
      i32.load
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      i32.const 131153
      i32.const 15
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4facf3efa23e87c3E
      unreachable
    end
    local.get 2
    i32.load offset=4
    local.set 1
    local.get 0
    local.get 3
    local.get 4
    i32.add
    i32.store
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h2396bdb133c4af8cE (;42;) (type 12) (param i32 i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17hb51ae1e4e697f657E
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h60221efb0c12b24dE
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4facf3efa23e87c3E (;43;) (type 1) (param i32 i32 i32)
    (local i32)
    i32.const 131188
    i32.const 27
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h1c31cd4df2bec57cE
    local.tee 3
    local.get 0
    call $mBufferAppend
    drop
    local.get 3
    i32.const 131111
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h6cf4a03294e8e676E (;44;) (type 9) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17he59cf7a5329a8f5dE
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17he59cf7a5329a8f5dE (;45;) (type 9) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h062a46e4062b4adaE (;46;) (type 6) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp115_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h573c132249350b97E (;47;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $bigIntCmp
    i32.eqz
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped16token_identifier24TokenIdentifier$LT$M$GT$7try_new17h778edb539611b511E (;48;) (type 8) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h1cf0ee5e0a6ade8eE
    local.set 2
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.const 1
    i32.xor
    i32.store
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h1cf0ee5e0a6ade8eE (;49;) (type 6) (param i32) (result i32)
    i32.const -40
    i32.const 131168
    i32.const 11
    call $mBufferSetBytes
    drop
    i32.const -40
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h00ec339cb3020c69E
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17hb51ae1e4e697f657E (;50;) (type 9) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              local.get 0
              i32.load8_u offset=8
              local.tee 4
              br_if 0 (;@5;)
              block ;; label = @6
                local.get 0
                i32.load
                local.tee 5
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h062a46e4062b4adaE
                local.tee 6
                i32.const 10000
                i32.gt_u
                i32.const 0
                i32.load8_u offset=141296
                i32.or
                local.tee 7
                i32.const 1
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 6
                i32.store offset=141292
                i32.const 0
                i32.const 1
                i32.store8 offset=141296
                local.get 5
                i32.const 0
                i32.const 131292
                local.get 6
                call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h6cf4a03294e8e676E
                drop
              end
              local.get 7
              i32.const 1
              i32.xor
              local.set 6
              block ;; label = @6
                local.get 4
                i32.eqz
                br_if 0 (;@6;)
                i32.const 0
                i32.const 0
                i32.store offset=141292
                i32.const 0
                i32.const 0
                i32.store8 offset=141296
              end
              local.get 0
              local.get 6
              i32.const 1
              i32.and
              i32.store8 offset=8
              local.get 7
              i32.const 1
              i32.and
              br_if 1 (;@4;)
            end
            i32.const 1
            local.set 0
            local.get 3
            local.get 1
            i32.add
            local.tee 4
            i32.const 0
            i32.load offset=141292
            i32.gt_u
            br_if 1 (;@3;)
            local.get 4
            local.get 1
            i32.lt_u
            br_if 2 (;@2;)
            local.get 4
            i32.const 10000
            i32.gt_u
            br_if 3 (;@1;)
            local.get 2
            local.get 1
            i32.const 131292
            i32.add
            local.get 3
            call $memcpy
            drop
            i32.const 0
            return
          end
          local.get 5
          local.get 1
          local.get 2
          local.get 3
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h6cf4a03294e8e676E
          local.set 0
        end
        local.get 0
        return
      end
      local.get 1
      local.get 4
      call $_ZN4core5slice5index22slice_index_order_fail17hce8d8012711d5a00E
      unreachable
    end
    local.get 4
    call $_ZN4core5slice5index24slice_end_index_len_fail17h07937a589bfe269aE
    unreachable
  )
  (func $_ZN4core5slice5index22slice_index_order_fail17hce8d8012711d5a00E (;51;) (type 8) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN4core5slice5index22slice_index_order_fail8do_panic7runtime17h3eb440503b756a77E
    unreachable
  )
  (func $_ZN4core5slice5index24slice_end_index_len_fail17h07937a589bfe269aE (;52;) (type 5) (param i32)
    local.get 0
    call $_ZN4core5slice5index24slice_end_index_len_fail8do_panic7runtime17h40abf6316be1d38dE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h863e53b5e8eedd8aE (;53;) (type 6) (param i32) (result i32)
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
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17he59cf7a5329a8f5dE
      drop
      local.get 1
      i32.load offset=12
      i32.const 1096238418
      i32.ne
      br_if 0 (;@1;)
      i32.const 131168
      i32.const 11
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h1c31cd4df2bec57cE
      local.set 0
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17hab1fb2a11491c30cE (;54;) (type 6) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    call $mBufferToBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h07cbe36351afe480E (;55;) (type 6) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_set11storage_set17hbc7e5a5ddab0414eE (;56;) (type 8) (param i32 i32)
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
    i64.store8 offset=12
    local.get 2
    local.get 3
    i64.const 16
    i64.shr_u
    i32.wrap_i64
    local.tee 4
    i32.store8 offset=13
    local.get 2
    local.get 3
    i64.const 8
    i64.shr_u
    i32.wrap_i64
    local.tee 5
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
    i32.const 16777216
    i32.lt_u
    local.tee 6
    select
    local.get 6
    local.get 4
    i32.const 255
    i32.and
    i32.eqz
    i32.and
    local.tee 4
    i32.add
    i32.const 0
    local.get 4
    local.get 5
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h1c31cd4df2bec57cE
    call $mBufferStorageStore
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage11storage_set13storage_clear17hf9a4c62b040a5b61E (;57;) (type 5) (param i32)
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
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$13get_unchecked17h8d09f425cb20f20eE (;58;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h6ceae64c295b9d8eE
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h07cbe36351afe480E
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h6ceae64c295b9d8eE (;59;) (type 3) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hfcbf85c9dbad0903E
    local.tee 0
    i32.const 131183
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
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$13get_unchecked17hb519f021dad476caE (;60;) (type 1) (param i32 i32 i32)
    (local i32 i32 i64 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h6ceae64c295b9d8eE
    local.tee 2
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h07cbe36351afe480E
    local.tee 4
    call $mBufferGetLength
    local.set 1
    local.get 3
    i32.const 0
    i32.store8 offset=28
    local.get 3
    local.get 1
    i32.store offset=24
    local.get 3
    local.get 4
    i32.store offset=20
    local.get 3
    local.get 1
    i32.store offset=16
    local.get 3
    i32.const 0
    i32.store offset=12
    local.get 3
    i32.const 12
    i32.add
    local.get 2
    call $_ZN151_$LT$dharitri_sc..types..managed..wrapped..token_identifier..TokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17hab16073d5424f940E
    local.set 1
    local.get 3
    i32.const 12
    i32.add
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17ha0a6c226110face0E
    local.set 5
    local.get 3
    i32.const 12
    i32.add
    local.get 2
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h7704fc44560e7365E
    local.set 4
    local.get 3
    i32.const 12
    i32.add
    local.get 2
    call $_ZN151_$LT$dharitri_sc..types..managed..wrapped..token_identifier..TokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17hab16073d5424f940E
    local.set 6
    local.get 3
    i32.const 12
    i32.add
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17ha0a6c226110face0E
    local.set 7
    local.get 3
    i32.const 12
    i32.add
    local.get 2
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h7704fc44560e7365E
    local.set 8
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
        i32.store offset=141292
        i32.const 0
        i32.const 0
        i32.store8 offset=141296
      end
      local.get 0
      local.get 8
      i32.store offset=28
      local.get 0
      local.get 6
      i32.store offset=24
      local.get 0
      local.get 4
      i32.store offset=20
      local.get 0
      local.get 1
      i32.store offset=16
      local.get 0
      local.get 7
      i64.store offset=8
      local.get 0
      local.get 5
      i64.store
      local.get 3
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 2
    i32.const 131139
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4facf3efa23e87c3E
    unreachable
  )
  (func $_ZN151_$LT$dharitri_sc..types..managed..wrapped..token_identifier..TokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17hab16073d5424f940E (;61;) (type 3) (param i32 i32) (result i32)
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
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h62eb0dfc82aab4acE
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$5parse17h863e53b5e8eedd8aE
    call $_ZN11dharitri_sc5types7managed7wrapped16token_identifier24TokenIdentifier$LT$M$GT$7try_new17h778edb539611b511E
    block ;; label = @1
      local.get 2
      i32.load offset=8
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 2
      i32.load offset=12
      local.set 1
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 1
      return
    end
    local.get 1
    i32.const 131219
    i32.const 13
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4facf3efa23e87c3E
    unreachable
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17ha0a6c226110face0E (;62;) (type 13) (param i32 i32) (result i64)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h2396bdb133c4af8cE
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
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h7704fc44560e7365E (;63;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h62eb0dfc82aab4acE
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17hab1fb2a11491c30cE
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h3b5446c9d9231e74E (;64;) (type 6) (param i32) (result i32)
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
        call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h07cbe36351afe480E
        local.tee 2
        call $mBufferGetLength
        local.tee 3
        i32.const 9
        i32.ge_u
        br_if 0 (;@2;)
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
        call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17he59cf7a5329a8f5dE
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
        br_if 1 (;@1;)
        local.get 1
        i32.const 16
        i32.add
        global.set $__stack_pointer
        local.get 4
        i32.wrap_i64
        return
      end
      local.get 0
      i32.const 131139
      i32.const 14
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4facf3efa23e87c3E
      unreachable
    end
    local.get 0
    i32.const 131139
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4facf3efa23e87c3E
    unreachable
  )
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h54a182ab5c92d623E (;65;) (type 8) (param i32 i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he94341b6d239354fE
    local.tee 2
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 2
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h0eefa15ff8c648b2E
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h0eefa15ff8c648b2E (;66;) (type 8) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h062a46e4062b4adaE
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
    call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h7e584ba16558d734E
    local.get 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h7e584ba16558d734E (;67;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferAppendBytes
    drop
  )
  (func $_ZN151_$LT$dharitri_sc..types..managed..wrapped..token_identifier..TokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h6ee11a2d0de22f77E (;68;) (type 8) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        local.get 0
        call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$7is_rewa17h1cf0ee5e0a6ade8eE
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h0eefa15ff8c648b2E
        br 1 (;@1;)
      end
      local.get 2
      i32.const 67108864
      i32.store offset=12
      local.get 1
      local.get 2
      i32.const 12
      i32.add
      i32.const 4
      call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h7e584ba16558d734E
      local.get 1
      i32.const 131179
      i32.const 4
      call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h7e584ba16558d734E
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h5fb721ef91b8b25cE (;69;) (type 14) (param i64 i32)
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
    call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h7e584ba16558d734E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h60221efb0c12b24dE (;70;) (type 5) (param i32)
    local.get 0
    i32.const 131153
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h4facf3efa23e87c3E
    unreachable
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h7e78938a3295440eE (;71;) (type 8) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 131153
    i32.const 15
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h114de9def6b3c524E
    unreachable
  )
  (func $_ZN43_$LT$C$u20$as$u20$vec_repeat..VecRepeat$GT$12bench_struct17he1f2fcbed3e6e2cdE (;72;) (type 5) (param i32)
    (local i32 i32)
    i32.const 131232
    i32.const 12
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h1c31cd4df2bec57cE
    local.tee 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hfcbf85c9dbad0903E
    local.tee 2
    i32.const 131215
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
  (func $_ZN43_$LT$C$u20$as$u20$vec_repeat..VecRepeat$GT$5bench17h9bab54ac9984e6e6E (;73;) (type 5) (param i32)
    (local i32 i32)
    i32.const 131244
    i32.const 9
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h1c31cd4df2bec57cE
    local.tee 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hfcbf85c9dbad0903E
    local.tee 2
    i32.const 131215
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
  (func $_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17haedcce226ce32fcdE (;74;) (type 9) (param i32 i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block ;; label = @1
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.add
      i32.load
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h3b5446c9d9231e74E
      local.get 3
      i32.lt_u
      br_if 0 (;@1;)
      local.get 4
      local.get 0
      i32.load
      local.get 3
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$13get_unchecked17hb519f021dad476caE
      i32.const 0
      local.set 3
      block ;; label = @2
        local.get 4
        i32.load offset=16
        local.get 1
        i32.load offset=16
        call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h992fc8b674a25b3aE
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i64.load
        local.get 1
        i64.load
        i64.ne
        br_if 0 (;@2;)
        local.get 4
        i32.load offset=20
        local.get 1
        i32.load offset=20
        call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp115_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h573c132249350b97E
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.load offset=24
        local.get 1
        i32.load offset=24
        call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h992fc8b674a25b3aE
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i64.load offset=8
        local.get 1
        i64.load offset=8
        i64.ne
        br_if 0 (;@2;)
        local.get 4
        i32.load offset=28
        local.get 1
        i32.load offset=28
        call $_ZN11dharitri_sc5types7managed7wrapped12big_uint_cmp115_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$2eq17h573c132249350b97E
        local.set 3
      end
      local.get 4
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 3
      local.get 2
      i32.add
      return
    end
    i32.const 131253
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17hcb90aad9e78f8d56E (;75;) (type 9) (param i32 i32 i32 i32) (result i32)
    block ;; label = @1
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.add
      i32.load
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h3b5446c9d9231e74E
      local.get 3
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.load
      local.get 3
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$13get_unchecked17h8d09f425cb20f20eE
      local.get 1
      i32.load
      call $_ZN115_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h992fc8b674a25b3aE
      local.get 2
      i32.add
      return
    end
    i32.const 131253
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h14ad8f6eb9226a3dE (;76;) (type 8) (param i32 i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 2
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load8_u offset=8
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      local.get 1
      i32.load
      local.tee 3
      local.get 1
      i32.load offset=4
      local.tee 4
      i32.gt_u
      br_if 0 (;@1;)
      block ;; label = @2
        local.get 3
        local.get 4
        i32.lt_u
        br_if 0 (;@2;)
        i32.const 1
        local.set 2
        local.get 1
        i32.const 1
        i32.store8 offset=8
        br 1 (;@1;)
      end
      i32.const 1
      local.set 2
      local.get 1
      local.get 3
      i32.const 1
      i32.add
      i32.store
    end
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $rust_begin_unwind (;77;) (type 10)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17hbce93cd107d2a5cdE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17hbce93cd107d2a5cdE (;78;) (type 10)
    i32.const 131271
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;79;) (type 10)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h080f3d6b295239f3E
  )
  (func $add (;80;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h080f3d6b295239f3E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h670ee3e2259a91a7E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h541ab733274cdabcE
    local.set 2
    local.get 0
    call $_ZN43_$LT$C$u20$as$u20$vec_repeat..VecRepeat$GT$5bench17h9bab54ac9984e6e6E
    i32.const 0
    local.set 3
    local.get 0
    i32.load offset=4
    local.set 4
    local.get 0
    i32.load
    local.set 5
    block ;; label = @1
      loop ;; label = @2
        local.get 1
        local.get 3
        i32.eq
        br_if 1 (;@1;)
        local.get 2
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hfcbf85c9dbad0903E
        local.set 6
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
        i32.store offset=12
        local.get 6
        local.get 0
        i32.const 12
        i32.add
        i32.const 4
        call $mBufferAppendBytes
        drop
        local.get 5
        local.get 4
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h3b5446c9d9231e74E
        i32.const 1
        i32.add
        local.tee 7
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h6ceae64c295b9d8eE
        local.get 6
        call $mBufferStorageStore
        drop
        local.get 4
        local.get 7
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17hbc7e5a5ddab0414eE
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $count (;81;) (type 10)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h080f3d6b295239f3E
    i32.const 0
    local.set 1
    local.get 0
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h541ab733274cdabcE
    i32.store offset=20
    local.get 0
    i32.const 8
    i32.add
    call $_ZN43_$LT$C$u20$as$u20$vec_repeat..VecRepeat$GT$5bench17h9bab54ac9984e6e6E
    local.get 0
    local.get 0
    i32.load offset=12
    local.tee 2
    i32.store offset=28
    local.get 0
    local.get 0
    i32.load offset=8
    i32.store offset=24
    block ;; label = @1
      block ;; label = @2
        local.get 2
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h3b5446c9d9231e74E
        local.tee 3
        br_if 0 (;@2;)
        i64.const 0
        local.set 4
        br 1 (;@1;)
      end
      i32.const 1
      local.set 2
      block ;; label = @2
        loop ;; label = @3
          local.get 3
          local.get 2
          i32.eq
          br_if 1 (;@2;)
          local.get 0
          i32.const 24
          i32.add
          local.get 0
          i32.const 20
          i32.add
          local.get 1
          local.get 2
          call $_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17hcb90aad9e78f8d56E
          local.set 1
          local.get 2
          i32.const 1
          i32.add
          local.set 2
          br 0 (;@3;)
        end
      end
      local.get 0
      i32.const 24
      i32.add
      local.get 0
      i32.const 20
      i32.add
      local.get 1
      local.get 3
      call $_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17hcb90aad9e78f8d56E
      i64.extend_i32_u
      local.set 4
    end
    local.get 4
    call $smallIntFinishUnsigned
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $remove (;82;) (type 10)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h080f3d6b295239f3E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h670ee3e2259a91a7E
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    call $_ZN43_$LT$C$u20$as$u20$vec_repeat..VecRepeat$GT$5bench17h9bab54ac9984e6e6E
    local.get 0
    i32.load offset=12
    local.set 2
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 0
    i32.const 0
    i32.store8 offset=28
    local.get 0
    local.get 1
    i32.store offset=24
    local.get 0
    i32.const 1
    i32.store offset=20
    block ;; label = @1
      block ;; label = @2
        loop ;; label = @3
          local.get 0
          local.get 0
          i32.const 20
          i32.add
          call $_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h14ad8f6eb9226a3dE
          local.get 0
          i32.load
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.load offset=4
          local.tee 1
          i32.eqz
          br_if 2 (;@1;)
          local.get 2
          call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h3b5446c9d9231e74E
          local.get 1
          i32.lt_u
          br_if 2 (;@1;)
          local.get 3
          local.get 1
          call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h6ceae64c295b9d8eE
          call $_ZN11dharitri_sc7storage11storage_set13storage_clear17hf9a4c62b040a5b61E
          br 0 (;@3;)
        end
      end
      local.get 0
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131253
    i32.const 18
    call $signalError
    unreachable
  )
  (func $bench (;83;) (type 10)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h080f3d6b295239f3E
    local.get 0
    i32.const 8
    i32.add
    call $_ZN43_$LT$C$u20$as$u20$vec_repeat..VecRepeat$GT$5bench17h9bab54ac9984e6e6E
    local.get 0
    i32.load offset=8
    local.set 1
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h3b5446c9d9231e74E
    local.set 2
    i32.const 1
    local.set 3
    block ;; label = @1
      loop ;; label = @2
        local.get 3
        local.get 2
        i32.gt_u
        br_if 1 (;@1;)
        local.get 1
        local.get 3
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$13get_unchecked17h8d09f425cb20f20eE
        call $mBufferFinish
        drop
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $add_struct (;84;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h080f3d6b295239f3E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h670ee3e2259a91a7E
    local.set 1
    local.get 0
    i32.const 16
    i32.add
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h3b11968c5f9546cbE
    local.get 0
    i32.load offset=44
    local.set 2
    local.get 0
    i32.load offset=40
    local.set 3
    local.get 0
    i32.load offset=36
    local.set 4
    local.get 0
    i32.load offset=32
    local.set 5
    local.get 0
    i32.const 8
    i32.add
    call $_ZN43_$LT$C$u20$as$u20$vec_repeat..VecRepeat$GT$12bench_struct17he1f2fcbed3e6e2cdE
    local.get 1
    i64.extend_i32_u
    local.set 6
    i64.const 0
    local.set 7
    local.get 0
    i32.load offset=12
    local.set 8
    local.get 0
    i32.load offset=8
    local.set 9
    block ;; label = @1
      loop ;; label = @2
        local.get 6
        local.get 7
        i64.eq
        br_if 1 (;@1;)
        local.get 5
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hfcbf85c9dbad0903E
        local.set 10
        local.get 4
        call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hba91e4525847d892E
        local.set 11
        local.get 3
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hfcbf85c9dbad0903E
        local.set 12
        local.get 2
        call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hba91e4525847d892E
        local.set 13
        local.get 9
        local.get 8
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h3b5446c9d9231e74E
        i32.const 1
        i32.add
        local.tee 14
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h6ceae64c295b9d8eE
        local.set 15
        local.get 10
        i32.const 1
        i32.const 0
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h1c31cd4df2bec57cE
        local.tee 1
        call $_ZN151_$LT$dharitri_sc..types..managed..wrapped..token_identifier..TokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h6ee11a2d0de22f77E
        local.get 7
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h5fb721ef91b8b25cE
        local.get 11
        local.get 1
        call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h54a182ab5c92d623E
        local.get 12
        local.get 1
        call $_ZN151_$LT$dharitri_sc..types..managed..wrapped..token_identifier..TokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h6ee11a2d0de22f77E
        local.get 7
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h5fb721ef91b8b25cE
        local.get 13
        local.get 1
        call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h54a182ab5c92d623E
        local.get 15
        local.get 1
        call $mBufferStorageStore
        drop
        local.get 8
        local.get 14
        call $_ZN11dharitri_sc7storage11storage_set11storage_set17hbc7e5a5ddab0414eE
        local.get 7
        i64.const 1
        i64.add
        local.set 7
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $count_struct (;85;) (type 10)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h080f3d6b295239f3E
    i32.const 0
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h3b11968c5f9546cbE
    local.get 0
    call $_ZN43_$LT$C$u20$as$u20$vec_repeat..VecRepeat$GT$12bench_struct17he1f2fcbed3e6e2cdE
    local.get 0
    local.get 0
    i32.load offset=4
    local.tee 2
    i32.store offset=44
    local.get 0
    local.get 0
    i32.load
    i32.store offset=40
    block ;; label = @1
      block ;; label = @2
        local.get 2
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h3b5446c9d9231e74E
        local.tee 3
        br_if 0 (;@2;)
        i64.const 0
        local.set 4
        br 1 (;@1;)
      end
      i32.const 1
      local.set 2
      block ;; label = @2
        loop ;; label = @3
          local.get 3
          local.get 2
          i32.eq
          br_if 1 (;@2;)
          local.get 0
          i32.const 40
          i32.add
          local.get 0
          i32.const 8
          i32.add
          local.get 1
          local.get 2
          call $_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17haedcce226ce32fcdE
          local.set 1
          local.get 2
          i32.const 1
          i32.add
          local.set 2
          br 0 (;@3;)
        end
      end
      local.get 0
      i32.const 40
      i32.add
      local.get 0
      i32.const 8
      i32.add
      local.get 1
      local.get 3
      call $_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17haedcce226ce32fcdE
      i64.extend_i32_u
      local.set 4
    end
    local.get 4
    call $smallIntFinishUnsigned
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $remove_struct (;86;) (type 10)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h080f3d6b295239f3E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h670ee3e2259a91a7E
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    call $_ZN43_$LT$C$u20$as$u20$vec_repeat..VecRepeat$GT$12bench_struct17he1f2fcbed3e6e2cdE
    local.get 0
    i32.load offset=12
    local.set 2
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 0
    i32.const 0
    i32.store8 offset=28
    local.get 0
    local.get 1
    i32.store offset=24
    local.get 0
    i32.const 1
    i32.store offset=20
    block ;; label = @1
      block ;; label = @2
        loop ;; label = @3
          local.get 0
          local.get 0
          i32.const 20
          i32.add
          call $_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h14ad8f6eb9226a3dE
          local.get 0
          i32.load
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.load offset=4
          local.tee 1
          i32.eqz
          br_if 2 (;@1;)
          local.get 2
          call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h3b5446c9d9231e74E
          local.get 1
          i32.lt_u
          br_if 2 (;@1;)
          local.get 3
          local.get 1
          call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h6ceae64c295b9d8eE
          call $_ZN11dharitri_sc7storage11storage_set13storage_clear17hf9a4c62b040a5b61E
          br 0 (;@3;)
        end
      end
      local.get 0
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131253
    i32.const 18
    call $signalError
    unreachable
  )
  (func $bench_struct (;87;) (type 10)
    (local i32 i32 i32 i32 i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h080f3d6b295239f3E
    local.get 0
    call $_ZN43_$LT$C$u20$as$u20$vec_repeat..VecRepeat$GT$12bench_struct17he1f2fcbed3e6e2cdE
    local.get 0
    i32.const 16
    i32.add
    local.set 1
    local.get 0
    i32.load
    local.set 2
    local.get 0
    i32.load offset=4
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h3b5446c9d9231e74E
    local.set 3
    i32.const 1
    local.set 4
    block ;; label = @1
      loop ;; label = @2
        local.get 4
        local.get 3
        i32.gt_u
        br_if 1 (;@1;)
        local.get 1
        local.get 2
        local.get 4
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$13get_unchecked17hb519f021dad476caE
        local.get 0
        i32.load offset=44
        local.set 5
        local.get 0
        i64.load offset=24
        local.set 6
        local.get 0
        i32.load offset=40
        local.set 7
        local.get 0
        i32.load offset=36
        local.set 8
        local.get 0
        i32.load offset=32
        i32.const 1
        i32.const 0
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h1c31cd4df2bec57cE
        local.tee 9
        call $_ZN151_$LT$dharitri_sc..types..managed..wrapped..token_identifier..TokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h6ee11a2d0de22f77E
        local.get 0
        i64.load offset=16
        local.get 9
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h5fb721ef91b8b25cE
        local.get 8
        local.get 9
        call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h54a182ab5c92d623E
        local.get 7
        local.get 9
        call $_ZN151_$LT$dharitri_sc..types..managed..wrapped..token_identifier..TokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h6ee11a2d0de22f77E
        local.get 6
        local.get 9
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h5fb721ef91b8b25cE
        local.get 5
        local.get 9
        call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h54a182ab5c92d623E
        local.get 9
        call $mBufferFinish
        drop
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $callBack (;88;) (type 10))
  (func $_ZN4core9panicking9panic_fmt17h931ec2537c26fa22E (;89;) (type 10)
    call $rust_begin_unwind
    unreachable
  )
  (func $_ZN4core5slice5index24slice_end_index_len_fail8do_panic7runtime17h40abf6316be1d38dE (;90;) (type 5) (param i32)
    call $_ZN4core9panicking9panic_fmt17h931ec2537c26fa22E
    unreachable
  )
  (func $_ZN4core5slice5index22slice_index_order_fail8do_panic7runtime17h3eb440503b756a77E (;91;) (type 8) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17h931ec2537c26fa22E
    unreachable
  )
  (func $memcpy (;92;) (type 4) (param i32 i32 i32) (result i32)
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
      block ;; label = @2
        local.get 0
        i32.const 0
        local.get 0
        i32.sub
        i32.const 3
        i32.and
        local.tee 4
        i32.add
        local.tee 5
        local.get 0
        i32.le_u
        br_if 0 (;@2;)
        local.get 4
        i32.const -1
        i32.add
        local.set 6
        local.get 0
        local.set 3
        local.get 1
        local.set 7
        block ;; label = @3
          local.get 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.set 8
          local.get 0
          local.set 3
          local.get 1
          local.set 7
          loop ;; label = @4
            local.get 3
            local.get 7
            i32.load8_u
            i32.store8
            local.get 7
            i32.const 1
            i32.add
            local.set 7
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            local.get 8
            i32.const -1
            i32.add
            local.tee 8
            br_if 0 (;@4;)
          end
        end
        local.get 6
        i32.const 7
        i32.lt_u
        br_if 0 (;@2;)
        loop ;; label = @3
          local.get 3
          local.get 7
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 1
          i32.add
          local.get 7
          i32.const 1
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 2
          i32.add
          local.get 7
          i32.const 2
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 3
          i32.add
          local.get 7
          i32.const 3
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 4
          i32.add
          local.get 7
          i32.const 4
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 5
          i32.add
          local.get 7
          i32.const 5
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 6
          i32.add
          local.get 7
          i32.const 6
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 7
          i32.add
          local.get 7
          i32.const 7
          i32.add
          i32.load8_u
          i32.store8
          local.get 7
          i32.const 8
          i32.add
          local.set 7
          local.get 3
          i32.const 8
          i32.add
          local.tee 3
          local.get 5
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 5
      local.get 2
      local.get 4
      i32.sub
      local.tee 8
      i32.const -4
      i32.and
      local.tee 6
      i32.add
      local.set 3
      block ;; label = @2
        block ;; label = @3
          local.get 1
          local.get 4
          i32.add
          local.tee 7
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          local.get 5
          local.get 3
          i32.ge_u
          br_if 1 (;@2;)
          local.get 7
          local.set 1
          loop ;; label = @4
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
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 5
        local.get 3
        i32.ge_u
        br_if 0 (;@2;)
        local.get 7
        i32.const 3
        i32.shl
        local.tee 2
        i32.const 24
        i32.and
        local.set 4
        local.get 7
        i32.const -4
        i32.and
        local.tee 9
        i32.const 4
        i32.add
        local.set 1
        i32.const 0
        local.get 2
        i32.sub
        i32.const 24
        i32.and
        local.set 10
        local.get 9
        i32.load
        local.set 2
        loop ;; label = @3
          local.get 5
          local.get 2
          local.get 4
          i32.shr_u
          local.get 1
          i32.load
          local.tee 2
          local.get 10
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
          br_if 0 (;@3;)
        end
      end
      local.get 8
      i32.const 3
      i32.and
      local.set 2
      local.get 7
      local.get 6
      i32.add
      local.set 1
    end
    block ;; label = @1
      local.get 3
      local.get 3
      local.get 2
      i32.add
      local.tee 5
      i32.ge_u
      br_if 0 (;@1;)
      local.get 2
      i32.const -1
      i32.add
      local.set 8
      block ;; label = @2
        local.get 2
        i32.const 7
        i32.and
        local.tee 7
        i32.eqz
        br_if 0 (;@2;)
        loop ;; label = @3
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
          local.set 3
          local.get 7
          i32.const -1
          i32.add
          local.tee 7
          br_if 0 (;@3;)
        end
      end
      local.get 8
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      loop ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 1
        i32.add
        local.get 1
        i32.const 1
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 2
        i32.add
        local.get 1
        i32.const 2
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 3
        i32.add
        local.get 1
        i32.const 3
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 4
        i32.add
        local.get 1
        i32.const 4
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 5
        i32.add
        local.get 1
        i32.const 5
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 6
        i32.add
        local.get 1
        i32.const 6
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 7
        i32.add
        local.get 1
        i32.const 7
        i32.add
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 8
        i32.add
        local.set 1
        local.get 3
        i32.const 8
        i32.add
        local.tee 3
        local.get 5
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 0
  )
  (data $.rodata (;0;) (i32.const 131072) "valuenum_repeatsargument decode error (): wrong number of argumentsinput too longinput too shortREWA-000000REWA.itemstorage decode error (key: .lenDCDT expectedbench_structbenchmarkindex out of rangepanic occurred")
  (data $.data (;1;) (i32.const 131288) "8\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.84.1 (e71f9a9a9 2025-01-27)")
  )
  (@custom "target_features" (after data) "\04+\0amultivalue+\0fmutable-globals+\0freference-types+\08sign-ext")
)
