(module $vault_upgrade_wasm.wasm
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32)))
  (type (;2;) (func (param i32 i32 i32) (result i32)))
  (type (;3;) (func))
  (type (;4;) (func (result i32)))
  (type (;5;) (func (param i32) (result i32)))
  (type (;6;) (func (param i32)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;0;) (type 0)))
  (import "env" "signalError" (func $signalError (;1;) (type 1)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;2;) (type 2)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;3;) (type 3)))
  (import "env" "getNumArguments" (func $getNumArguments (;4;) (type 4)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;5;) (type 2)))
  (import "env" "managedWriteLog" (func $managedWriteLog (;6;) (type 1)))
  (import "env" "finish" (func $finish (;7;) (type 1)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;8;) (type 5)))
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h9dabc4b0f8eb3de7E (;9;) (type 1) (param i32 i32)
    (local i32 i32)
    i32.const 0
    local.set 2
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load
        local.tee 3
        i32.const 0
        i32.load offset=131120
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 1
        local.set 2
        br 1 (;@1;)
      end
      local.get 1
      local.get 3
      i32.const 1
      i32.add
      i32.store
      local.get 3
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
      local.tee 1
      call $mBufferGetArgument
      drop
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E (;10;) (type 4) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=131116
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=131116
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hadf907ea25fca7adE (;11;) (type 6) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=131120
      local.get 0
      i32.gt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131089
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc056a481405dfbefE (;12;) (type 3)
    block ;; label = @1
      i32.const 0
      i32.load offset=131120
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131072
    i32.const 17
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he6a48b16e650edcfE (;13;) (type 4) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    i32.const 1
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
  )
  (func $upgrade (;14;) (type 3)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $getNumArguments
    i32.store offset=131120
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hc056a481405dfbefE
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h9dabc4b0f8eb3de7E
    local.get 0
    i32.load offset=4
    local.set 1
    local.get 0
    i32.load
    local.set 2
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hadf907ea25fca7adE
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he6a48b16e650edcfE
    local.set 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 4
    i32.const 131107
    i32.const 8
    call $mBufferSetBytes
    drop
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
    i32.store offset=12
    local.get 3
    local.get 0
    i32.const 12
    i32.add
    i32.const 4
    call $mBufferAppendBytes
    drop
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17he6a48b16e650edcfE
    call $managedWriteLog
    i32.const 131107
    i32.const 8
    call $finish
    block ;; label = @1
      local.get 2
      br_if 0 (;@1;)
      local.get 1
      call $mBufferFinish
      drop
    end
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $callBack (;15;) (type 3))
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 131124)
  (global (;2;) i32 i32.const 131136)
  (export "memory" (memory 0))
  (export "upgrade" (func $upgrade))
  (export "callBack" (func $callBack))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data $.rodata (;0;) (i32.const 131072) "too few argumentstoo many argumentsupgraded")
  (data $.data (;1;) (i32.const 131116) "8\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.80.1 (3f5fd8dd4 2024-08-06)")
  )
  (@custom "target_features" (after data) "\02+\0fmutable-globals+\08sign-ext")
)
