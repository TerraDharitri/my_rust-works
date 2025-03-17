(module $exchange_features_wasm.wasm
  (type (;0;) (func (param i32 i64)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32) (result i32)))
  (type (;7;) (func (param i32) (result i32)))
  (type (;8;) (func (param i32)))
  (type (;9;) (func))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;0;) (type 0)))
  (import "env" "bigIntAdd" (func $bigIntAdd (;1;) (type 1)))
  (import "env" "bigIntGetUnsignedArgument" (func $bigIntGetUnsignedArgument (;2;) (type 2)))
  (import "env" "getNumArguments" (func $getNumArguments (;3;) (type 3)))
  (import "env" "signalError" (func $signalError (;4;) (type 2)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;5;) (type 4)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;6;) (type 5)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;7;) (type 6)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;8;) (type 7)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;9;) (type 5)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;10;) (type 6)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;11;) (type 6)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;12;) (type 6)))
  (import "env" "mBufferNew" (func $mBufferNew (;13;) (type 3)))
  (import "env" "mBufferCopyByteSlice" (func $mBufferCopyByteSlice (;14;) (type 4)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;15;) (type 6)))
  (import "env" "managedSignalError" (func $managedSignalError (;16;) (type 8)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;17;) (type 9)))
  (import "env" "bigIntCmp" (func $bigIntCmp (;18;) (type 6)))
  (import "env" "bigIntMul" (func $bigIntMul (;19;) (type 1)))
  (import "env" "bigIntTDiv" (func $bigIntTDiv (;20;) (type 1)))
  (import "env" "bigIntSign" (func $bigIntSign (;21;) (type 7)))
  (import "env" "bigIntFinishUnsigned" (func $bigIntFinishUnsigned (;22;) (type 8)))
  (func $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h40b8ca5ca9e96826E (;23;) (type 7) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    i64.const 0
    call $bigIntSetInt64
    local.get 1
    local.get 1
    local.get 0
    call $bigIntAdd
    local.get 1
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E (;24;) (type 3) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=131176
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=131176
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1358a9a3a97eaef0E (;25;) (type 3) (result i32)
    (local i32)
    i32.const 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    call $bigIntGetUnsignedArgument
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h30884826c17d05e5E (;26;) (type 8) (param i32)
    block ;; label = @1
      call $getNumArguments
      local.get 0
      i32.ne
      br_if 0 (;@1;)
      return
    end
    i32.const 131089
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h93bc3839c6789b88E (;27;) (type 5) (param i32 i32 i32) (result i32)
    local.get 0
    i32.const 0
    local.get 2
    local.get 1
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h9575b9e5623a99a7E (;28;) (type 6) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h4d6bc28cda8577caE (;29;) (type 2) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h9575b9e5623a99a7E
    local.set 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 4
    local.get 1
    call $mBufferFromBigIntUnsigned
    drop
    local.get 2
    local.get 4
    call $mBufferGetLength
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
    i32.store offset=12
    local.get 3
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    call $mBufferAppendBytes
    drop
    local.get 3
    local.get 4
    call $mBufferAppend
    drop
    local.get 0
    local.get 3
    call $mBufferStorageStore
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h4b7644855483397bE (;30;) (type 7) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 2
    call $mBufferStorageLoad
    drop
    local.get 2
    call $mBufferGetLength
    local.set 3
    local.get 1
    i32.const 0
    i32.store offset=12
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 2
          call $mBufferGetLength
          local.tee 4
          i32.const 10000
          i32.gt_u
          i32.const 0
          i32.load8_u offset=141184
          i32.const 0
          i32.ne
          i32.or
          local.tee 5
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 1
          i32.const 12
          i32.add
          local.set 6
          local.get 2
          local.get 1
          i32.const 12
          i32.add
          i32.const 4
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h93bc3839c6789b88E
          i32.eqz
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        i32.const 0
        local.get 4
        i32.store offset=141180
        i32.const 0
        i32.const 1
        i32.store8 offset=141184
        i32.const 131180
        local.set 6
        local.get 2
        i32.const 131180
        local.get 4
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h93bc3839c6789b88E
        drop
        i32.const 0
        i32.load offset=141180
        i32.const 3
        i32.le_u
        br_if 1 (;@1;)
      end
      block ;; label = @2
        block ;; label = @3
          local.get 2
          i32.const 4
          local.get 6
          i32.load
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
          call $mBufferNew
          local.tee 6
          call $mBufferCopyByteSlice
          br_if 0 (;@3;)
          local.get 6
          call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
          local.tee 2
          call $mBufferToBigIntUnsigned
          drop
          local.get 3
          local.get 4
          i32.const 4
          i32.add
          i32.ne
          br_if 1 (;@2;)
          block ;; label = @4
            local.get 5
            br_if 0 (;@4;)
            i32.const 0
            i32.const 0
            i32.store offset=141180
            i32.const 0
            i32.const 0
            i32.store8 offset=141184
          end
          local.get 1
          i32.const 16
          i32.add
          global.set $__stack_pointer
          local.get 2
          return
        end
        local.get 0
        i32.const 131114
        i32.const 15
        call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h6e2ea19b44e9b678E
        unreachable
      end
      local.get 0
      i32.const 131072
      i32.const 14
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h6e2ea19b44e9b678E
      unreachable
    end
    local.get 0
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h489382aa27f7c547E
    unreachable
  )
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h6e2ea19b44e9b678E (;31;) (type 1) (param i32 i32 i32)
    (local i32)
    i32.const 131140
    i32.const 27
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h9575b9e5623a99a7E
    local.tee 3
    local.get 0
    call $mBufferAppend
    drop
    local.get 3
    i32.const 131086
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
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h489382aa27f7c547E (;32;) (type 8) (param i32)
    local.get 0
    i32.const 131114
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h6e2ea19b44e9b678E
    unreachable
  )
  (func $_ZN57_$LT$C$u20$as$u20$exchange_features..ExchangeFeatures$GT$6supply17heb6a49dd1f63f149E (;33;) (type 3) (result i32)
    i32.const 131167
    i32.const 6
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h9575b9e5623a99a7E
  )
  (func $init (;34;) (type 9)
    (local i32)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h30884826c17d05e5E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1358a9a3a97eaef0E
    local.set 0
    call $_ZN57_$LT$C$u20$as$u20$exchange_features..ExchangeFeatures$GT$6supply17heb6a49dd1f63f149E
    local.get 0
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h4d6bc28cda8577caE
  )
  (func $upgrade (;35;) (type 9)
    (local i32 i32 i32 i32 i32)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h30884826c17d05e5E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1358a9a3a97eaef0E
    local.set 0
    call $_ZN57_$LT$C$u20$as$u20$exchange_features..ExchangeFeatures$GT$6supply17heb6a49dd1f63f149E
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h4b7644855483397bE
    local.set 1
    call $_ZN57_$LT$C$u20$as$u20$exchange_features..ExchangeFeatures$GT$6supply17heb6a49dd1f63f149E
    local.set 2
    block ;; label = @1
      block ;; label = @2
        local.get 0
        local.get 1
        call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h40b8ca5ca9e96826E
        local.tee 3
        call $bigIntCmp
        i32.eqz
        br_if 0 (;@2;)
        call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
        local.tee 4
        local.get 1
        local.get 0
        call $bigIntMul
        local.get 4
        local.get 4
        local.get 3
        call $bigIntTDiv
        br 1 (;@1;)
      end
      local.get 1
      call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h40b8ca5ca9e96826E
      local.set 4
    end
    block ;; label = @1
      local.get 4
      call $bigIntSign
      br_if 0 (;@1;)
      i32.const 131129
      i32.const 11
      call $signalError
      unreachable
    end
    local.get 2
    local.get 4
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h4d6bc28cda8577caE
  )
  (func $merge (;36;) (type 9)
    (local i32 i32 i32)
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h30884826c17d05e5E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1358a9a3a97eaef0E
    local.set 0
    call $_ZN57_$LT$C$u20$as$u20$exchange_features..ExchangeFeatures$GT$6supply17heb6a49dd1f63f149E
    local.tee 1
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h4b7644855483397bE
    local.tee 2
    local.get 2
    local.get 0
    call $bigIntAdd
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h4d6bc28cda8577caE
  )
  (func $get_supply (;37;) (type 9)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h30884826c17d05e5E
    call $_ZN57_$LT$C$u20$as$u20$exchange_features..ExchangeFeatures$GT$6supply17heb6a49dd1f63f149E
    call $_ZN11dharitri_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h4b7644855483397bE
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h40b8ca5ca9e96826E
    call $bigIntFinishUnsigned
  )
  (func $callBack (;38;) (type 9))
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 141188)
  (global (;2;) i32 i32.const 141200)
  (export "memory" (memory 0))
  (export "init" (func $init))
  (export "upgrade" (func $upgrade))
  (export "merge" (func $merge))
  (export "get_supply" (func $get_supply))
  (export "callBack" (func $callBack))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data $.rodata (;0;) (i32.const 131072) "input too long): wrong number of argumentsinput too shortZero amountstorage decode error (key: supply")
  (data $.data (;1;) (i32.const 131176) "8\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.80.1 (3f5fd8dd4 2024-08-06)")
  )
  (@custom "target_features" (after data) "\02+\0fmutable-globals+\08sign-ext")
)
