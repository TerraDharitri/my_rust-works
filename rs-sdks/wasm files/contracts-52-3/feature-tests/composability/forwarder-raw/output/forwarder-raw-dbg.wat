(module $forwarder_raw_wasm.wasm
  (type (;0;) (func (param i32 i64)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (result i32)))
  (type (;3;) (func (param i32 i32) (result i32)))
  (type (;4;) (func (param i32 i32 i32) (result i32)))
  (type (;5;) (func (param i64 i32 i32 i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i64 i32 i32) (result i32)))
  (type (;7;) (func (param i32)))
  (type (;8;) (func (param i32) (result i32)))
  (type (;9;) (func (param i32 i32)))
  (type (;10;) (func (param i32) (result i64)))
  (type (;11;) (func))
  (type (;12;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;13;) (func (param i64)))
  (type (;14;) (func (result i64)))
  (type (;15;) (func (param i64 i32 i32 i32 i32) (result i32)))
  (type (;16;) (func (param i64 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;17;) (func (param i32 i64 i32 i32 i32 i32 i32)))
  (type (;18;) (func (param i32 i32 i32 i32)))
  (type (;19;) (func (param i32 i32 i64 i32 i32)))
  (type (;20;) (func (param i32 i32) (result i64)))
  (type (;21;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;22;) (func (param i32 i32 i32 i32 i32)))
  (type (;23;) (func (param i32 i32 i32 i64)))
  (type (;24;) (func (param i32 i64 i32)))
  (type (;25;) (func (param i64 i32)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;0;) (type 0)))
  (import "env" "bigIntAdd" (func $bigIntAdd (;1;) (type 1)))
  (import "env" "mBufferNew" (func $mBufferNew (;2;) (type 2)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;3;) (type 3)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;4;) (type 4)))
  (import "env" "managedExecuteOnDestContext" (func $managedExecuteOnDestContext (;5;) (type 5)))
  (import "env" "managedMultiTransferDCDTNFTExecute" (func $managedMultiTransferDCDTNFTExecute (;6;) (type 6)))
  (import "env" "bigIntGetCallValue" (func $bigIntGetCallValue (;7;) (type 7)))
  (import "env" "managedGetMultiDCDTCallValue" (func $managedGetMultiDCDTCallValue (;8;) (type 7)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;9;) (type 8)))
  (import "env" "signalError" (func $signalError (;10;) (type 9)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;11;) (type 3)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;12;) (type 4)))
  (import "env" "managedSignalError" (func $managedSignalError (;13;) (type 7)))
  (import "env" "getNumDCDTTransfers" (func $getNumDCDTTransfers (;14;) (type 2)))
  (import "env" "smallIntGetUnsignedArgument" (func $smallIntGetUnsignedArgument (;15;) (type 10)))
  (import "env" "getNumArguments" (func $getNumArguments (;16;) (type 2)))
  (import "env" "cleanReturnData" (func $cleanReturnData (;17;) (type 11)))
  (import "env" "mBufferCopyByteSlice" (func $mBufferCopyByteSlice (;18;) (type 12)))
  (import "env" "bigIntSign" (func $bigIntSign (;19;) (type 8)))
  (import "env" "bigIntTDiv" (func $bigIntTDiv (;20;) (type 1)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;21;) (type 3)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;22;) (type 3)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;23;) (type 3)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;24;) (type 3)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;25;) (type 8)))
  (import "env" "managedTransferValueExecute" (func $managedTransferValueExecute (;26;) (type 6)))
  (import "env" "managedWriteLog" (func $managedWriteLog (;27;) (type 9)))
  (import "env" "managedSCAddress" (func $managedSCAddress (;28;) (type 7)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;29;) (type 11)))
  (import "env" "finish" (func $finish (;30;) (type 9)))
  (import "env" "smallIntFinishUnsigned" (func $smallIntFinishUnsigned (;31;) (type 13)))
  (import "env" "bigIntFinishUnsigned" (func $bigIntFinishUnsigned (;32;) (type 7)))
  (import "env" "getGasLeft" (func $getGasLeft (;33;) (type 14)))
  (import "env" "managedExecuteOnSameContext" (func $managedExecuteOnSameContext (;34;) (type 5)))
  (import "env" "managedExecuteReadOnly" (func $managedExecuteReadOnly (;35;) (type 15)))
  (import "env" "managedCreateContract" (func $managedCreateContract (;36;) (type 16)))
  (import "env" "managedDeployFromSourceContract" (func $managedDeployFromSourceContract (;37;) (type 16)))
  (import "env" "managedUpgradeContract" (func $managedUpgradeContract (;38;) (type 17)))
  (import "env" "managedUpgradeFromSourceContract" (func $managedUpgradeFromSourceContract (;39;) (type 17)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;40;) (type 12)))
  (import "env" "managedAsyncCall" (func $managedAsyncCall (;41;) (type 18)))
  (func $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4b90a01e9e9f6b5eE (;42;) (type 8) (param i32) (result i32)
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E (;43;) (type 2) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=131704
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=131704
    local.get 0
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9ee2487c1a03115cE (;44;) (type 8) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0eaf38e9fdcca0e4E (;45;) (type 8) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
    local.set 2
    local.get 1
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17ha6822f560cabb2c5E
    i32.store offset=28
    local.get 1
    i32.const 0
    i32.store offset=24
    local.get 1
    local.get 0
    i32.store offset=20
    loop (result i32) ;; label = @1
      local.get 1
      i32.const 8
      i32.add
      local.get 1
      i32.const 20
      i32.add
      call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbc1da9067629d7a5E
      block ;; label = @2
        local.get 1
        i32.load offset=8
        br_if 0 (;@2;)
        local.get 1
        i32.const 32
        i32.add
        global.set $__stack_pointer
        local.get 2
        return
      end
      local.get 2
      local.get 1
      i32.load offset=12
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9ee2487c1a03115cE
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h319cdd35806a1f96E
      br 0 (;@1;)
    end
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E (;46;) (type 2) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    i32.const 1
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17ha6822f560cabb2c5E (;47;) (type 8) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbc1da9067629d7a5E (;48;) (type 9) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hf2c80adbb0a79e23E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h319cdd35806a1f96E (;49;) (type 9) (param i32 i32)
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
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17h2d0e86e566d8062bE (;50;) (type 18) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17h49538655f86aab68E
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17h49538655f86aab68E (;51;) (type 18) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $managedAsyncCall
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17hac691272e0860501E (;52;) (type 7) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.const 8
    i32.shl
    local.get 0
    i32.const 65280
    i32.and
    i32.const 8
    i32.shr_u
    i32.or
    i32.store16 offset=14
    i32.const -25
    local.get 1
    i32.const 14
    i32.add
    i32.const 2
    call $mBufferSetBytes
    drop
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17h4790814e8371b31bE (;53;) (type 15) (param i64 i32 i32 i32 i32) (result i32)
    (local i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 5
    call $managedExecuteOnDestContext
    drop
    local.get 5
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27multi_dcdt_transfer_execute17h221e6a570d8f63dcE (;54;) (type 19) (param i32 i32 i64 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $managedMultiTransferDCDTNFTExecute
    drop
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17h51253539fdd6438fE (;55;) (type 2) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 0
      i32.load8_u offset=141720
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      i32.const -11
      i32.const 2147483647
      local.get 0
      select
      return
    end
    i32.const 0
    i32.const 1
    i32.store8 offset=141720
    i32.const -11
    call $bigIntGetCallValue
    i32.const -11
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h0c3d3fe0f34af55fE (;56;) (type 2) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 0
      i32.load8_u offset=141724
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      i32.const -21
      i32.const 2147483647
      local.get 0
      select
      return
    end
    i32.const 0
    i32.const 1
    i32.store8 offset=141724
    i32.const -21
    call $managedGetMultiDCDTCallValue
    i32.const -21
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$20single_fungible_dcdt17hdc859c89b588f28fE (;57;) (type 7) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 1
    local.set 2
    block ;; label = @1
      block ;; label = @2
        call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h0c3d3fe0f34af55fE
        local.tee 3
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h214fdd8ca2c8b5e8E
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        local.set 4
        local.get 3
        call $mBufferGetLength
        local.set 5
        local.get 1
        i32.const 16
        i32.add
        local.set 6
        i32.const 0
        local.set 7
        loop ;; label = @3
          local.get 7
          local.set 8
          local.get 4
          i32.const 16
          i32.add
          local.tee 9
          local.get 5
          i32.gt_u
          br_if 2 (;@1;)
          local.get 6
          i64.const 0
          i64.store
          local.get 1
          i64.const 0
          i64.store offset=8
          local.get 3
          local.get 4
          local.get 1
          i32.const 8
          i32.add
          i32.const 16
          call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hd40beec169d1bb3bE
          drop
          local.get 1
          i32.const 0
          i32.store offset=28
          i32.const 1
          local.set 7
          local.get 2
          i32.const 1
          i32.and
          local.set 10
          local.get 1
          i32.const 8
          i32.add
          local.get 1
          i32.const 28
          i32.add
          call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h475521443e4447e3E
          local.set 11
          local.get 1
          i32.const 8
          i32.add
          local.get 1
          i32.const 28
          i32.add
          call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h1698ca011fb389c1E
          local.set 12
          local.get 1
          i32.const 8
          i32.add
          local.get 1
          i32.const 28
          i32.add
          call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h475521443e4447e3E
          local.set 13
          local.get 9
          local.set 4
          i32.const 0
          local.set 2
          local.get 10
          br_if 0 (;@3;)
        end
        local.get 8
        call $_ZN4core9panicking18panic_bounds_check17h125c3a5dd588952fE
        unreachable
      end
      i32.const 131072
      i32.const 34
      call $signalError
      unreachable
    end
    block ;; label = @1
      local.get 12
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
      local.get 0
      local.get 13
      i32.store offset=4
      local.get 0
      local.get 11
      i32.store
      local.get 1
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131643
    i32.const 28
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h214fdd8ca2c8b5e8E (;58;) (type 8) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17ha6822f560cabb2c5E
    i32.const 4
    i32.shr_u
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hd40beec169d1bb3bE (;59;) (type 12) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h475521443e4447e3E (;60;) (type 3) (param i32 i32) (result i32)
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
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17h471e892540b809f6E
      unreachable
    end
    local.get 3
    i32.const 16
    call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17h471e892540b809f6E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h1698ca011fb389c1E (;61;) (type 20) (param i32 i32) (result i64)
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
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17h471e892540b809f6E
      unreachable
    end
    local.get 3
    i32.const 16
    call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17h471e892540b809f6E
    unreachable
  )
  (func $_ZN4core9panicking18panic_bounds_check17h125c3a5dd588952fE (;62;) (type 7) (param i32)
    call $_ZN4core9panicking9panic_fmt17hb859252f4b513814E
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17hf4f31a513a9b0559E (;63;) (type 7) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h0c3d3fe0f34af55fE
              local.tee 2
              call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h214fdd8ca2c8b5e8E
              br_table 1 (;@4;) 2 (;@3;) 0 (;@5;)
            end
            i32.const 131072
            i32.const 34
            call $signalError
            unreachable
          end
          i32.const 2147483646
          local.set 2
          call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17h51253539fdd6438fE
          call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4b90a01e9e9f6b5eE
          local.set 3
          br 1 (;@2;)
        end
        local.get 1
        local.get 2
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17hf9f850083cb143ccE
        local.get 1
        i64.load
        i64.const 0
        i64.ne
        br_if 1 (;@1;)
        local.get 1
        i32.load offset=12
        local.set 3
        local.get 1
        i32.load offset=8
        local.set 2
      end
      local.get 0
      local.get 3
      i32.store offset=4
      local.get 0
      local.get 2
      i32.store
      local.get 1
      i32.const 16
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131643
    i32.const 28
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17hf9f850083cb143ccE (;64;) (type 9) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hf2c80adbb0a79e23E
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
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h475521443e4447e3E
    local.set 3
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h1698ca011fb389c1E
    local.set 4
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h475521443e4447e3E
    local.set 5
    block ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131305
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
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hb5e639754d0ab5e9E (;65;) (type 8) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h8fbd8cba677e8b87E (;66;) (type 18) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131106
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h8d3452d0c30a2cdfE
    local.tee 4
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 4
    i32.const 131129
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h8d3452d0c30a2cdfE (;67;) (type 3) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h908ec9fcd2f9d37eE (;68;) (type 11)
    block ;; label = @1
      call $getNumDCDTTransfers
      br_if 0 (;@1;)
      return
    end
    i32.const 131132
    i32.const 37
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6cb331678a97882cE (;69;) (type 4) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
    local.set 3
    local.get 0
    i32.load
    local.set 4
    block ;; label = @1
      loop ;; label = @2
        local.get 4
        i32.const 0
        i32.load offset=141716
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
        call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hb5e639754d0ab5e9E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h319cdd35806a1f96E
        local.get 5
        local.set 4
        br 0 (;@2;)
      end
    end
    local.get 3
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1ffad5b3c16198c4E (;70;) (type 8) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hb5e639754d0ab5e9E
    local.tee 2
    call $mBufferGetLength
    local.set 0
    local.get 1
    i32.const 0
    i32.store8 offset=24
    local.get 1
    local.get 0
    i32.store offset=20
    local.get 1
    local.get 2
    i32.store offset=16
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.const 0
    i32.store offset=8
    local.get 1
    i32.const 0
    i32.store16 offset=30
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.const 16
        i32.add
        i32.const 0
        local.get 1
        i32.const 30
        i32.add
        i32.const 2
        call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h0832370e39791a3cE
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=12
        local.get 1
        i32.load offset=8
        i32.const 2
        i32.add
        i32.ne
        br_if 1 (;@1;)
        local.get 1
        i32.load16_u offset=30
        local.set 0
        block ;; label = @3
          local.get 1
          i32.load8_u offset=24
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.const 0
          i32.store offset=141708
          i32.const 0
          i32.const 0
          i32.store8 offset=141712
        end
        local.get 1
        i32.const 32
        i32.add
        global.set $__stack_pointer
        local.get 0
        i32.const 1541
        i32.and
        i32.const 8
        i32.shl
        local.get 0
        i32.const 1536
        i32.and
        i32.const 8
        i32.shr_u
        i32.or
        return
      end
      i32.const 131424
      i32.const 13
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h0a0dffff0e8531a0E
      unreachable
    end
    i32.const 131424
    i32.const 13
    i32.const 131276
    i32.const 14
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h8fbd8cba677e8b87E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h0832370e39791a3cE (;71;) (type 12) (param i32 i32 i32 i32) (result i32)
    (local i32 i32)
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
              local.tee 4
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17ha6822f560cabb2c5E
              local.tee 5
              i32.const 10000
              i32.gt_u
              br_if 1 (;@4;)
              i32.const 0
              i32.load8_u offset=141712
              i32.const 255
              i32.and
              br_if 1 (;@4;)
              i32.const 0
              local.get 5
              i32.store offset=141708
              i32.const 0
              i32.const 1
              i32.store8 offset=141712
              local.get 4
              i32.const 0
              i32.const 131708
              local.get 5
              call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hf2c80adbb0a79e23E
              drop
              local.get 0
              i32.const 1
              i32.store8 offset=8
            end
            i32.const 1
            local.set 4
            local.get 3
            local.get 1
            i32.add
            local.tee 0
            i32.const 0
            i32.load offset=141708
            i32.gt_u
            br_if 1 (;@3;)
            local.get 0
            local.get 1
            i32.lt_u
            br_if 2 (;@2;)
            local.get 0
            i32.const 10000
            i32.gt_u
            br_if 3 (;@1;)
            local.get 2
            local.get 3
            local.get 1
            i32.const 131708
            i32.add
            local.get 3
            call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17he3585b619b30c76fE
            i32.const 0
            return
          end
          local.get 0
          i32.const 0
          i32.store8 offset=8
          local.get 4
          local.get 1
          local.get 2
          local.get 3
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hf2c80adbb0a79e23E
          local.set 4
        end
        local.get 4
        return
      end
      local.get 1
      local.get 0
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17h471e892540b809f6E
      unreachable
    end
    local.get 0
    i32.const 10000
    call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17h471e892540b809f6E
    unreachable
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h0a0dffff0e8531a0E (;72;) (type 9) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 131290
    i32.const 15
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h8fbd8cba677e8b87E
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4f922e0585ae2cedE (;73;) (type 8) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hb5e639754d0ab5e9E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7dc1afa52b788a75E (;74;) (type 2) (result i32)
    (local i64)
    block ;; label = @1
      i32.const 0
      call $smallIntGetUnsignedArgument
      local.tee 0
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 131419
      i32.const 5
      i32.const 131276
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h8fbd8cba677e8b87E
      unreachable
    end
    local.get 0
    i32.wrap_i64
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h943b695e7decefe4E (;75;) (type 4) (param i32 i32 i32) (result i32)
    block ;; label = @1
      local.get 0
      call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hb5e639754d0ab5e9E
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131517
      i32.const 16
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h8fbd8cba677e8b87E
      unreachable
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hfbe5fd6b53caedd4E (;76;) (type 7) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=141716
      local.get 0
      i32.gt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131186
    i32.const 18
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha3ce7efb144f6c22E (;77;) (type 7) (param i32)
    block ;; label = @1
      call $getNumArguments
      local.get 0
      i32.ne
      br_if 0 (;@1;)
      return
    end
    i32.const 131204
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h8581c625ebe58d38E (;78;) (type 7) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=141716
      local.get 0
      i32.lt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 131169
    i32.const 17
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he33e0a259f99f7b6E (;79;) (type 11)
    i32.const 0
    call $getNumArguments
    i32.store offset=141716
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h0c77bf588e11d9e1E (;80;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h6325c6d6925ba61eE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h6325c6d6925ba61eE (;81;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h9fb06d8252a802e8E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h971b1338736c5a37E (;82;) (type 1) (param i32 i32 i32)
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h9fdc90db0adf3f36E
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h8d90bd2b20738a72E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h9fdc90db0adf3f36E (;83;) (type 2) (result i32)
    i32.const -10
    i64.const 0
    call $bigIntSetInt64
    i32.const -10
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h8d90bd2b20738a72E (;84;) (type 18) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17h2d0e86e566d8062bE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized17he1a461f5b46c92ebE (;85;) (type 21) (param i32 i32 i32 i32 i32 i32)
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
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h214fdd8ca2c8b5e8E
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
        call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h8e23b03498328600E
        unreachable
      end
      local.get 3
      local.get 4
      local.get 5
      call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h0c77bf588e11d9e1E
      unreachable
    end
    local.get 6
    i32.const 24
    i32.add
    local.get 7
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17hf9f850083cb143ccE
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
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h27f7e44dd36700a4E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h8e23b03498328600E (;86;) (type 9) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h5fa383b2566bdfb0E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h27f7e44dd36700a4E (;87;) (type 21) (param i32 i32 i32 i32 i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h8dea8ee68f05cb5eE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17hdf91efe493686d86E (;88;) (type 9) (param i32 i32)
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17hadb91e2e478f0103E
    local.get 2
    i32.load offset=12
    local.set 0
    local.get 2
    i32.load offset=8
    local.set 2
    call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h4eed3aa8812aac94E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h9fdc90db0adf3f36E
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h8d90bd2b20738a72E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_multi_transfer_dcdt_call17hadb91e2e478f0103E (;89;) (type 22) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 16
    i32.add
    i32.const 131229
    i32.const 20
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hd72f456aaa57e339E
    local.get 5
    i32.load offset=16
    local.set 6
    local.get 5
    i32.load offset=20
    local.set 7
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
    drop
    local.get 7
    local.get 3
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9ee2487c1a03115cE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h319cdd35806a1f96E
    local.get 4
    i32.load
    local.tee 3
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h214fdd8ca2c8b5e8E
    local.set 8
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
    local.tee 9
    local.get 8
    i64.extend_i32_u
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h93456919d12e966dE
    local.get 7
    local.get 9
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h319cdd35806a1f96E
    local.get 5
    local.get 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17ha6822f560cabb2c5E
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
      call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5c2fe455d65eec13E
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
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h56eea6515e34613aE
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
      drop
      local.get 7
      local.get 3
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9ee2487c1a03115cE
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h319cdd35806a1f96E
      local.get 5
      i32.const 8
      i32.add
      local.get 6
      local.get 7
      local.get 5
      i64.load offset=48
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h702a207438090417E
      local.get 5
      i32.load offset=8
      local.set 6
      local.get 5
      i32.load offset=12
      local.tee 7
      local.get 4
      call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h117aa54d2b91c22eE
      br 0 (;@1;)
    end
  )
  (func $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h4eed3aa8812aac94E (;90;) (type 2) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    call $managedSCAddress
    local.get 0
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment22tx_payment_single_dcdt252_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17hc49fffe0e48d0d9eE (;91;) (type 21) (param i32 i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    local.get 6
    local.get 0
    i32.const 8
    i32.add
    i32.store offset=8
    local.get 6
    local.get 0
    i32.const 12
    i32.add
    i32.store offset=12
    local.get 6
    local.get 0
    i64.load
    i64.store
    local.get 6
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h1d714d6d5f543a7dE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17h1d714d6d5f543a7dE (;92;) (type 21) (param i32 i32 i32 i32 i32 i32)
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
    local.get 6
    local.get 3
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h52ef406e8fbc0300E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17hf84df033e68860dfE (;93;) (type 21) (param i32 i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    local.get 6
    local.get 5
    i32.store offset=8
    local.get 6
    local.get 4
    i32.store offset=4
    local.get 6
    local.get 3
    i32.store offset=12
    local.get 0
    local.get 6
    i32.const 4
    i32.add
    local.get 1
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$16map_rewa_or_dcdt17hfe0d73819efb4b7cE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$16map_rewa_or_dcdt17hfe0d73819efb4b7cE (;94;) (type 22) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 0
    i32.load offset=8
    local.set 6
    local.get 5
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 5
    local.get 1
    i64.load align=4
    i64.store
    local.get 5
    local.get 0
    i32.load offset=12
    i32.store offset=12
    local.get 5
    local.get 0
    i32.store offset=28
    local.get 5
    local.get 4
    i32.store offset=24
    local.get 5
    local.get 3
    i32.store offset=20
    local.get 6
    local.get 5
    local.get 2
    local.get 5
    i32.const 20
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$11map_or_else17hcd061aafc637d3baE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h56a127b216c15f74E (;95;) (type 18) (param i32 i32 i32 i32)
    local.get 3
    local.get 0
    local.get 1
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call $_ZN11dharitri_sc5types11interaction10tx_payment22tx_payment_single_dcdt252_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17hc49fffe0e48d0d9eE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17he6720243a72c9eabE (;96;) (type 1) (param i32 i32 i32)
    local.get 2
    local.get 0
    local.get 1
    i32.load offset=8
    local.get 1
    i32.load
    local.get 1
    i32.load offset=4
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h6783cc12367e9739E
    unreachable
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized17h6783cc12367e9739E (;97;) (type 22) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 2
    i32.store offset=12
    local.get 5
    local.get 0
    i32.store offset=8
    local.get 5
    local.get 4
    i32.store offset=28
    local.get 5
    local.get 3
    i32.store offset=24
    local.get 5
    local.get 1
    i32.store offset=20
    local.get 5
    local.get 5
    i32.const 8
    i32.add
    i32.store offset=16
    local.get 5
    i32.const 16
    i32.add
    local.get 5
    i32.const 12
    i32.add
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h68e61d588aadcf3eE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h52ef406e8fbc0300E (;98;) (type 9) (param i32 i32)
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
      call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h8c3066faa6b86668E
      local.get 2
      i32.load offset=4
      local.set 0
      local.get 2
      i32.load
      local.set 2
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h9fdc90db0adf3f36E
      local.get 2
      local.get 0
      call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h8d90bd2b20738a72E
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
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17hef7a49db8cd8bd7fE
    local.get 2
    i32.load offset=12
    local.set 0
    local.get 2
    i32.load offset=8
    local.set 2
    call $_ZN88_$LT$$LP$$RP$$u20$as$u20$dharitri_sc..types..interaction..tx_from..TxFrom$LT$Env$GT$$GT$15resolve_address17h4eed3aa8812aac94E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$8zero_ref17h9fdc90db0adf3f36E
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h8d90bd2b20738a72E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction5tx_to13TxToSpecified16with_address_ref17h8dea8ee68f05cb5eE (;99;) (type 9) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h13f5e520263238d9E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$40convert_to_single_transfer_fungible_call17h8c3066faa6b86668E (;100;) (type 22) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 24
    i32.add
    i32.const 131264
    i32.const 12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hd72f456aaa57e339E
    local.get 5
    i32.const 16
    i32.add
    local.get 5
    i32.load offset=24
    local.get 5
    i32.load offset=28
    local.get 3
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h3b8a3c6b4e60de64E
    local.get 5
    i32.const 8
    i32.add
    local.get 5
    i32.load offset=16
    local.get 5
    i32.load offset=20
    local.get 4
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h34b25081609f0017E
    local.get 5
    local.get 5
    i32.load offset=8
    local.get 5
    i32.load offset=12
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h56eea6515e34613aE
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
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$35convert_to_single_transfer_nft_call17hef7a49db8cd8bd7fE (;101;) (type 22) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 40
    i32.add
    i32.const 131249
    i32.const 15
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hd72f456aaa57e339E
    local.get 5
    i32.const 32
    i32.add
    local.get 5
    i32.load offset=40
    local.get 5
    i32.load offset=44
    local.get 4
    i32.load offset=8
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h3b8a3c6b4e60de64E
    local.get 5
    i32.const 24
    i32.add
    local.get 5
    i32.load offset=32
    local.get 5
    i32.load offset=36
    local.get 4
    i64.load
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h702a207438090417E
    local.get 5
    i32.const 16
    i32.add
    local.get 5
    i32.load offset=24
    local.get 5
    i32.load offset=28
    local.get 4
    i32.load offset=12
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h34b25081609f0017E
    local.get 5
    i32.load offset=16
    local.set 6
    local.get 5
    i32.load offset=20
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
    drop
    local.get 4
    local.get 3
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9ee2487c1a03115cE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h319cdd35806a1f96E
    local.get 5
    i32.const 8
    i32.add
    local.get 6
    local.get 4
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h56eea6515e34613aE
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
  (func $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17hd892b53cb4fa2f2bE (;102;) (type 19) (param i32 i32 i64 i32 i32)
    (local i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 0
    i64.load
    local.set 6
    local.get 0
    i32.load offset=12
    local.set 7
    local.get 0
    i32.load offset=8
    local.set 8
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
    local.set 0
    local.get 8
    i32.load
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9ee2487c1a03115cE
    local.set 8
    local.get 5
    local.get 7
    i32.load
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4b90a01e9e9f6b5eE
    i32.store offset=12
    local.get 5
    local.get 6
    i64.store
    local.get 5
    local.get 8
    i32.store offset=8
    local.get 0
    local.get 5
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf206163d8a356cd8E
    local.get 1
    local.get 0
    local.get 2
    local.get 3
    local.get 4
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27multi_dcdt_transfer_execute17h221e6a570d8f63dcE
    local.get 5
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf206163d8a356cd8E (;103;) (type 9) (param i32 i32)
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
  (func $_ZN11dharitri_sc5types11interaction2tx57Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$$LP$$RP$$C$RH$GT$8raw_call17h00e7c0f2cd92f014E (;104;) (type 7) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 8
    i32.add
    i32.const 131389
    i32.const 30
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hd72f456aaa57e339E
    local.get 1
    i32.load offset=12
    local.set 2
    local.get 0
    local.get 1
    i32.load offset=8
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hd72f456aaa57e339E (;105;) (type 1) (param i32 i32 i32)
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h8d3452d0c30a2cdfE
    local.set 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h9fb06d8252a802e8E (;106;) (type 1) (param i32 i32 i32)
    local.get 1
    local.get 2
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h971b1338736c5a37E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h13f5e520263238d9E (;107;) (type 9) (param i32 i32)
    local.get 1
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h52ef406e8fbc0300E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated30annotated_impl_managed_address409_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$14with_value_ref17h5fa383b2566bdfb0E (;108;) (type 9) (param i32 i32)
    local.get 1
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17hdf91efe493686d86E
    unreachable
  )
  (func $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h93456919d12e966dE (;109;) (type 0) (param i32 i64)
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
  (func $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5c2fe455d65eec13E (;110;) (type 9) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hf2c80adbb0a79e23E
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
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h475521443e4447e3E
      local.set 4
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h1698ca011fb389c1E
      local.set 3
      local.get 0
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h475521443e4447e3E
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
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h56eea6515e34613aE (;111;) (type 22) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block ;; label = @1
      local.get 3
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17hbfd99df1a3556c5cE
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      call $_ZN166_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17ha6394bb66182705bE
      local.get 4
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17ha6822f560cabb2c5E
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
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hf2c80adbb0a79e23E
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
        call $_ZN166_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17ha6394bb66182705bE
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
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h702a207438090417E (;112;) (type 23) (param i32 i32 i32 i64)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h01e0ba27e7671925E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h117aa54d2b91c22eE (;113;) (type 9) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
    drop
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h884bb7b68156eec2E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h319cdd35806a1f96E
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h3b8a3c6b4e60de64E (;114;) (type 18) (param i32 i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
    drop
    local.get 2
    local.get 3
    i32.load
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9ee2487c1a03115cE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h319cdd35806a1f96E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$8argument17h34b25081609f0017E (;115;) (type 18) (param i32 i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
    drop
    local.get 2
    local.get 3
    i32.load
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h884bb7b68156eec2E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h319cdd35806a1f96E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17ha7ab04e8e29199ecE (;116;) (type 9) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h884bb7b68156eec2E (;117;) (type 8) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17hbfd99df1a3556c5cE (;118;) (type 8) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17ha6822f560cabb2c5E
    i32.eqz
  )
  (func $_ZN166_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17ha6394bb66182705bE (;119;) (type 9) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
    drop
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9ee2487c1a03115cE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h319cdd35806a1f96E
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hf2c80adbb0a79e23E (;120;) (type 12) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hd40beec169d1bb3bE
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h01e0ba27e7671925E (;121;) (type 0) (param i32 i64)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
    local.tee 2
    local.get 1
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h93456919d12e966dE
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h319cdd35806a1f96E
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17h0114f7eb8ae8afd7E (;122;) (type 7) (param i32)
    (local i32 i64 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load offset=24
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$8is_empty17hbfd99df1a3556c5cE
          br_if 0 (;@3;)
          local.get 0
          i64.load offset=16
          local.set 2
          br 1 (;@2;)
        end
        i64.const 0
        local.set 2
        local.get 0
        i32.load offset=12
        call $_ZN11dharitri_sc5types7managed5basic11big_num_cmp7cmp_i6417h52c0b48c74717946E
        i32.const 255
        i32.and
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 1
      local.get 0
      i32.const 40
      call $memcpy
      local.tee 3
      i32.const 40
      i32.add
      i32.const 8
      i32.add
      local.get 0
      i32.const 8
      i32.add
      i64.load
      local.tee 4
      i64.store
      local.get 3
      local.get 0
      i64.load
      i64.store offset=40
      local.get 3
      i32.load offset=28
      local.set 0
      local.get 3
      i32.load offset=24
      local.set 5
      block ;; label = @2
        local.get 4
        i32.wrap_i64
        local.tee 6
        i32.const 2147483646
        i32.ne
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=52
        local.get 3
        i32.load offset=32
        local.get 2
        local.get 5
        local.get 0
        call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$24perform_transfer_execute17h18b74af300f8f782E
        br 1 (;@1;)
      end
      local.get 3
      local.get 6
      i32.store offset=60
      local.get 3
      local.get 3
      i32.const 52
      i32.add
      i32.store offset=92
      local.get 3
      local.get 3
      i64.load offset=40
      i64.store offset=80
      local.get 3
      local.get 0
      i32.store offset=72
      local.get 3
      local.get 5
      i32.store offset=68
      local.get 3
      local.get 3
      i32.const 32
      i32.add
      i32.store offset=64
      local.get 3
      local.get 3
      i32.const 60
      i32.add
      i32.store offset=88
      local.get 3
      i32.const 80
      i32.add
      local.get 3
      i32.load offset=32
      local.get 2
      local.get 5
      local.get 0
      call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17hd892b53cb4fa2f2bE
    end
    local.get 1
    i32.const 96
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed5basic11big_num_cmp7cmp_i6417h52c0b48c74717946E (;123;) (type 8) (param i32) (result i32)
    i32.const -1
    local.get 0
    call $bigIntSign
    local.tee 0
    i32.const 0
    i32.ne
    local.get 0
    i32.const 0
    i32.lt_s
    select
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$24perform_transfer_execute17h18b74af300f8f782E (;124;) (type 19) (param i32 i32 i64 i32 i32)
    local.get 1
    local.get 0
    local.get 2
    local.get 3
    local.get 4
    call $managedTransferValueExecute
    drop
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17hfec4c074545caf90E (;125;) (type 8) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i64.load
    local.get 0
    i32.load offset=16
    i32.load
    local.get 0
    i32.load offset=20
    i32.load
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17h4790814e8371b31bE
    local.set 0
    call $cleanReturnData
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.const 12
    i32.add
    call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0eaf38e9fdcca0e4E
    local.set 0
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h39e0a11fa712c0feE (;126;) (type 7) (param i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc5types11interaction10tx_payment15tx_payment_none104_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$LP$$RP$$GT$15with_normalized17h0c77bf588e11d9e1E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h5d6727dc1c43e902E (;127;) (type 7) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 1
    local.get 0
    i64.load
    i64.store
    local.get 1
    local.get 0
    i32.const 28
    i32.add
    local.tee 2
    local.get 2
    local.get 0
    i32.load offset=24
    local.get 0
    i32.load offset=16
    local.get 0
    i32.load offset=20
    call $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized17hf84df033e68860dfE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hf6f3970055dc62cbE (;128;) (type 7) (param i32)
    (local i32)
    local.get 0
    i32.load offset=4
    local.get 0
    i32.const 16
    i32.add
    local.tee 1
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc5types11interaction10tx_payment21tx_payment_multi_dcdt402_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$$RF$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$C$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$GT$15with_normalized17he1a461f5b46c92ebE
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction9annotated23annotated_impl_big_uint248_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$LP$$RP$$GT$8to_value17h3ebdae4039619657E (;129;) (type 2) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 0
    i64.const 0
    call $bigIntSetInt64
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h8955636c15a72a92E (;130;) (type 3) (param i32 i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h35a1c47dba1561eaE
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
      i32.const 131290
      i32.const 15
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h392a4832057e40ddE
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
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h35a1c47dba1561eaE (;131;) (type 18) (param i32 i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h0832370e39791a3cE
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h9937994f4bb53cc0E
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h392a4832057e40ddE (;132;) (type 1) (param i32 i32 i32)
    (local i32)
    i32.const 131486
    i32.const 27
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h8d3452d0c30a2cdfE
    local.tee 3
    local.get 0
    call $mBufferAppend
    drop
    local.get 3
    i32.const 131129
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
  (func $_ZN11dharitri_sc5types7managed7wrapped14managed_option26ManagedOption$LT$M$C$T$GT$11map_or_else17h0634e2028af7d7b2E (;133;) (type 18) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block ;; label = @1
      local.get 0
      i32.const 2147483646
      i32.ne
      br_if 0 (;@1;)
      local.get 2
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$16map_rewa_or_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17h2dd0801d4edc1e68E
      unreachable
    end
    local.get 4
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 4
    local.get 0
    i32.store offset=24
    local.get 4
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 3
    local.get 4
    i32.const 8
    i32.add
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$16map_rewa_or_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17hde1acedb873b511bE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$16map_rewa_or_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17h2dd0801d4edc1e68E (;134;) (type 9) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.load offset=12
    local.set 3
    local.get 2
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 2
    local.get 3
    i32.store offset=12
    local.get 2
    local.get 1
    i64.load align=4
    i64.store
    local.get 0
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17he6720243a72c9eabE
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$16map_rewa_or_dcdt28_$u7b$$u7b$closure$u7d$$u7d$17hde1acedb873b511bE (;135;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    i32.load offset=4
    local.set 4
    local.get 0
    i32.load
    local.set 5
    local.get 1
    i32.load offset=12
    local.set 6
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 3
    local.get 6
    i32.store offset=28
    local.get 3
    local.get 2
    i32.store offset=24
    local.get 3
    local.get 1
    i64.load align=4
    i64.store
    local.get 3
    local.get 0
    i32.load offset=8
    i64.load
    i64.store offset=16
    local.get 5
    local.get 4
    local.get 3
    local.get 3
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction10tx_payment23tx_payment_rewa_or_dcdt266_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_payment..RewaOrDcdtTokenPayment$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h56a127b216c15f74E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h1f2c745b7eeae466E (;136;) (type 8) (param i32) (result i32)
    local.get 0
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$9make_temp17h1fbc23ffa281880aE
    call $bigIntTDiv
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$9make_temp17h1fbc23ffa281880aE (;137;) (type 2) (result i32)
    i32.const -14
    i64.const 2
    call $bigIntSetInt64
    i32.const -14
  )
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17h471e892540b809f6E (;138;) (type 9) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17hb859252f4b513814E
    unreachable
  )
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17he3585b619b30c76fE (;139;) (type 18) (param i32 i32 i32 i32)
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
  (func $_ZN11dharitri_sc5types7managed7wrapped29rewa_or_dcdt_token_identifier34RewaOrDcdtTokenIdentifier$LT$M$GT$11map_or_else17hcd061aafc637d3baE (;140;) (type 18) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc5types7managed7wrapped14managed_option26ManagedOption$LT$M$C$T$GT$11map_or_else17h0634e2028af7d7b2E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h1b6e6a876dce4c38E (;141;) (type 8) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferToBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17hce53a83299fcb1daE (;142;) (type 8) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_set13storage_clear17hdbefb54de577b973E (;143;) (type 7) (param i32)
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
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17h8797d08419f85fa0E (;144;) (type 9) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h8d3452d0c30a2cdfE
    call $mBufferStorageStore
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hefe4a2a354f0af59E (;145;) (type 24) (param i32 i64 i32)
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
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$4push17h67d95b1aeb4cef8eE (;146;) (type 1) (param i32 i32 i32)
    (local i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h2be1f76ca5d30fbbE
    i32.const 1
    i32.add
    local.tee 3
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h23fb2816e447ec22E
    local.set 4
    call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17ha457c88af1d7b299E
    local.set 0
    local.get 2
    i32.load offset=8
    local.get 0
    call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h26629344093f0500E
    local.get 2
    i64.load
    local.get 0
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h50d177831b1cdc74E
    local.get 2
    i32.load offset=12
    local.get 0
    call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h59e064bde553a330E
    local.get 4
    local.get 0
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h6392d74dc04ac91bE
    local.get 1
    local.get 3
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17h8797d08419f85fa0E
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h2be1f76ca5d30fbbE (;147;) (type 8) (param i32) (result i32)
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
        call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17hce53a83299fcb1daE
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
        call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hd40beec169d1bb3bE
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
      i32.const 131276
      i32.const 14
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h392a4832057e40ddE
      unreachable
    end
    local.get 0
    i32.const 131276
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h392a4832057e40ddE
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h23fb2816e447ec22E (;148;) (type 3) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9ee2487c1a03115cE
    local.tee 0
    i32.const 131338
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
  (func $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17ha457c88af1d7b299E (;149;) (type 2) (result i32)
    i32.const 1
    i32.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h8d3452d0c30a2cdfE
  )
  (func $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h26629344093f0500E (;150;) (type 9) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.const 2147483646
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he330f628792f7eb7E
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
      call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17hc9c81ca137f0e8ddE
      local.get 1
      i32.const 131334
      i32.const 4
      call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17hc9c81ca137f0e8ddE
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h50d177831b1cdc74E (;151;) (type 25) (param i64 i32)
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
    call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17hc9c81ca137f0e8ddE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h59e064bde553a330E (;152;) (type 9) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h884bb7b68156eec2E
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he330f628792f7eb7E
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h6392d74dc04ac91bE (;153;) (type 9) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$13get_unchecked17h4933102fde200e83E (;154;) (type 1) (param i32 i32 i32)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h23fb2816e447ec22E
    local.tee 2
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17hce53a83299fcb1daE
    local.tee 4
    call $mBufferGetLength
    local.set 1
    local.get 3
    i32.const 0
    i32.store8 offset=20
    local.get 3
    local.get 1
    i32.store offset=16
    local.get 3
    local.get 4
    i32.store offset=12
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    i32.const 0
    i32.store offset=4
    block ;; label = @1
      local.get 3
      i32.const 4
      i32.add
      local.get 2
      call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h8955636c15a72a92E
      local.tee 1
      call $mBufferGetLength
      i32.const 4
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i32.const 0
      i32.store offset=24
      local.get 1
      i32.const 0
      local.get 3
      i32.const 24
      i32.add
      i32.const 4
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hd40beec169d1bb3bE
      drop
      i32.const 2147483646
      local.get 1
      local.get 3
      i32.load offset=24
      i32.const 1096238418
      i32.eq
      select
      local.set 1
    end
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
    local.get 2
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h35a1c47dba1561eaE
    local.get 3
    i64.load offset=24
    local.set 5
    local.get 3
    i32.const 4
    i32.add
    local.get 2
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h8955636c15a72a92E
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h1b6e6a876dce4c38E
    local.set 4
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
        i32.store offset=141708
        i32.const 0
        i32.const 0
        i32.store8 offset=141712
      end
      local.get 0
      local.get 4
      i32.store offset=12
      local.get 0
      local.get 1
      i32.store offset=8
      local.get 0
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
      i64.store
      local.get 3
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 2
    i32.const 131276
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h392a4832057e40ddE
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$13get_unchecked17h76a7b2a1183b65fbE (;155;) (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h23fb2816e447ec22E
    local.tee 3
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17hce53a83299fcb1daE
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
    local.set 5
    i32.const 0
    local.set 0
    local.get 4
    call $mBufferGetLength
    local.set 1
    local.get 2
    i32.const 0
    i32.store8 offset=28
    local.get 2
    local.get 1
    i32.store offset=24
    local.get 2
    local.get 4
    i32.store offset=20
    local.get 2
    local.get 1
    i32.store offset=16
    local.get 2
    i32.const 0
    i32.store offset=12
    loop (result i32) ;; label = @1
      block ;; label = @2
        local.get 1
        local.get 0
        i32.ne
        br_if 0 (;@2;)
        block ;; label = @3
          local.get 2
          i32.load8_u offset=28
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.const 0
          i32.store offset=141708
          i32.const 0
          i32.const 0
          i32.store8 offset=141712
        end
        local.get 2
        i32.const 32
        i32.add
        global.set $__stack_pointer
        local.get 5
        return
      end
      local.get 5
      local.get 2
      i32.const 12
      i32.add
      local.get 3
      call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h8955636c15a72a92E
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h319cdd35806a1f96E
      local.get 2
      i32.load offset=12
      local.set 0
      local.get 2
      i32.load offset=16
      local.set 1
      br 0 (;@1;)
    end
  )
  (func $_ZN11dharitri_sc8log_util18serialize_log_data17hdc3e221d3c02d9d9E (;156;) (type 8) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
    i32.store offset=12
    local.get 1
    i32.const 8
    i32.add
    local.get 1
    i32.const 12
    i32.add
    call $_ZN139_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h5a163cea05539bc5E
    local.get 1
    i32.load offset=12
    local.set 0
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN139_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h5a163cea05539bc5E (;157;) (type 9) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.load
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9ee2487c1a03115cE
    local.set 3
    local.get 2
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17ha6822f560cabb2c5E
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
      call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbc1da9067629d7a5E
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
  (func $_ZN11dharitri_sc8log_util23event_topic_accumulator17hf6d929354448569cE (;158;) (type 3) (param i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
    local.tee 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h8d3452d0c30a2cdfE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h319cdd35806a1f96E
    local.get 2
  )
  (func $_ZN124_$LT$dharitri_sc..storage..mappers..vec_mapper..Iter$LT$SA$C$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c334fcae9cde534E (;159;) (type 9) (param i32 i32)
    (local i64 i32)
    i64.const 0
    local.set 2
    block ;; label = @1
      local.get 1
      i32.load offset=4
      local.tee 3
      local.get 1
      i32.load offset=8
      i32.gt_u
      br_if 0 (;@1;)
      local.get 1
      local.get 3
      i32.const 1
      i32.add
      i32.store offset=4
      local.get 0
      i32.const 8
      i32.add
      local.get 1
      i32.load
      i32.load
      local.get 3
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$13get_unchecked17h4933102fde200e83E
      i64.const 1
      local.set 2
    end
    local.get 0
    local.get 2
    i64.store
  )
  (func $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h01ee7d056f8f7125E (;160;) (type 7) (param i32)
    local.get 0
    call $mBufferFinish
    drop
  )
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he330f628792f7eb7E (;161;) (type 9) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17ha6822f560cabb2c5E
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
    call $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17hc9c81ca137f0e8ddE
    local.get 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN191_$LT$dharitri_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17hc9c81ca137f0e8ddE (;162;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferAppendBytes
    drop
  )
  (func $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h412572d0030539fbE (;163;) (type 8) (param i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i32.load offset=8
    local.set 2
    local.get 1
    i32.const 0
    i32.store offset=12
    block ;; label = @1
      local.get 0
      i32.load
      local.get 2
      i32.const 2
      i32.shl
      local.get 1
      i32.const 12
      i32.add
      i32.const 4
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hf2c80adbb0a79e23E
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=12
      local.set 3
      local.get 0
      local.get 2
      i32.const 1
      i32.add
      i32.store offset=8
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
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9ee2487c1a03115cE
      local.set 3
      local.get 1
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 3
      return
    end
    i32.const 131533
    i32.const 8
    i32.const 131169
    i32.const 17
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h8fbd8cba677e8b87E
    unreachable
  )
  (func $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74c80b095c98754dE (;164;) (type 9) (param i32 i32)
    (local i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i64.const 0
    local.set 3
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load offset=8
        local.get 1
        i32.load offset=4
        i32.ge_u
        br_if 0 (;@2;)
        local.get 1
        call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h412572d0030539fbE
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9ee2487c1a03115cE
        local.set 4
        local.get 1
        call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h412572d0030539fbE
        local.set 5
        local.get 2
        i64.const 0
        i64.store offset=8
        local.get 5
        call $mBufferGetLength
        local.tee 6
        i32.const 9
        i32.ge_u
        br_if 1 (;@1;)
        local.get 5
        i32.const 0
        local.get 2
        i32.const 8
        i32.add
        local.get 6
        i32.sub
        i32.const 8
        i32.add
        local.get 6
        call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hd40beec169d1bb3bE
        drop
        local.get 2
        i64.load offset=8
        local.set 3
        local.get 0
        local.get 1
        call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17h412572d0030539fbE
        call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h1b6e6a876dce4c38E
        i32.store offset=20
        local.get 0
        local.get 4
        i32.store offset=16
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
        i64.store offset=8
        i64.const 1
        local.set 3
      end
      local.get 0
      local.get 3
      i64.store
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131533
    i32.const 8
    i32.const 131276
    i32.const 14
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h8fbd8cba677e8b87E
    unreachable
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$17h68e61d588aadcf3eE (;165;) (type 9) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 3
    local.get 2
    local.get 1
    i32.store offset=4
    local.get 2
    local.get 0
    i64.load offset=8 align=4
    i64.store offset=8 align=4
    local.get 2
    i32.const 4
    i32.add
    local.get 3
    i32.load
    call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h654beb0881a109b1E
    unreachable
  )
  (func $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$15with_normalized28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h654beb0881a109b1E (;166;) (type 9) (param i32 i32)
    local.get 0
    i32.load
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit28_$u7b$$u7b$closure$u7d$$u7d$17h8d90bd2b20738a72E
    unreachable
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h9937994f4bb53cc0E (;167;) (type 7) (param i32)
    local.get 0
    i32.const 131290
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h392a4832057e40ddE
    unreachable
  )
  (func $_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9e30ff9a2fa9a556E (;168;) (type 9) (param i32 i32)
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
  (func $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17ha0db054b84880fedE (;169;) (type 7) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17ha7ab04e8e29199ecE
    local.get 1
    i32.load offset=12
    local.set 2
    local.get 0
    local.get 1
    i32.load offset=8
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17h390add7eebccdebcE (;170;) (type 7) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17ha457c88af1d7b299E
    local.set 2
    local.get 1
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17ha6822f560cabb2c5E
    i32.store offset=28
    local.get 1
    i32.const 0
    i32.store offset=24
    local.get 1
    local.get 0
    i32.store offset=20
    block ;; label = @1
      loop ;; label = @2
        local.get 1
        i32.const 8
        i32.add
        local.get 1
        i32.const 20
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbc1da9067629d7a5E
        local.get 1
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.load offset=12
        local.get 2
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he330f628792f7eb7E
        br 0 (;@2;)
      end
    end
    local.get 2
    call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h01ee7d056f8f7125E
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$13callback_args17h970be154d76845feE (;171;) (type 7) (param i32)
    (local i32 i32)
    i32.const 131553
    i32.const 13
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h8d3452d0c30a2cdfE
    local.tee 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9ee2487c1a03115cE
    local.tee 2
    i32.const 131513
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
  (func $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$17callback_payments17h920fefc1e660bb75E (;172;) (type 7) (param i32)
    (local i32 i32)
    i32.const 131566
    i32.const 17
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h8d3452d0c30a2cdfE
    local.tee 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9ee2487c1a03115cE
    local.tee 2
    i32.const 131513
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
  (func $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$30execute_on_dest_context_result17h5937a6eeb3f5359aE (;173;) (type 7) (param i32)
    i32.const 131583
    i32.const 30
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17hf6d929354448569cE
    local.get 0
    call $_ZN11dharitri_sc8log_util18serialize_log_data17hdc3e221d3c02d9d9E
    call $managedWriteLog
  )
  (func $rust_begin_unwind (;174;) (type 11)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h8945d78c95e86419E
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h8945d78c95e86419E (;175;) (type 11)
    i32.const 131689
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;176;) (type 11)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha3ce7efb144f6c22E
  )
  (func $callback_args (;177;) (type 11)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha3ce7efb144f6c22E
    local.get 0
    call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$13callback_args17h970be154d76845feE
    local.get 0
    i32.load
    local.set 1
    local.get 0
    i32.load offset=4
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h2be1f76ca5d30fbbE
    local.set 2
    i32.const 1
    local.set 3
    block ;; label = @1
      loop ;; label = @2
        local.get 3
        local.get 2
        i32.gt_u
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        local.get 3
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$13get_unchecked17h76a7b2a1183b65fbE
        i32.store offset=12
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 0
        i32.const 12
        i32.add
        call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17h390add7eebccdebcE
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $callback_payments (;178;) (type 11)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha3ce7efb144f6c22E
    local.get 0
    i32.const 8
    i32.add
    call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$17callback_payments17h920fefc1e660bb75E
    local.get 0
    local.get 0
    i32.load offset=12
    local.tee 1
    i32.store offset=24
    local.get 0
    local.get 0
    i32.load offset=8
    i32.store offset=20
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h2be1f76ca5d30fbbE
    i32.store offset=36
    local.get 0
    i32.const 1
    i32.store offset=32
    local.get 0
    local.get 0
    i32.const 20
    i32.add
    i32.store offset=28
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 40
        i32.add
        local.get 0
        i32.const 28
        i32.add
        call $_ZN124_$LT$dharitri_sc..storage..mappers..vec_mapper..Iter$LT$SA$C$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c334fcae9cde534E
        local.get 0
        i64.load offset=40
        i64.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=60
        local.set 2
        local.get 0
        i32.load offset=56
        call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17ha457c88af1d7b299E
        local.tee 1
        call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h26629344093f0500E
        local.get 0
        i64.load offset=48
        local.get 1
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h50d177831b1cdc74E
        local.get 2
        local.get 1
        call $_ZN135_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h59e064bde553a330E
        local.get 1
        call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h01ee7d056f8f7125E
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $callback_payments_triples (;179;) (type 11)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha3ce7efb144f6c22E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$17callback_payments17h920fefc1e660bb75E
    local.get 0
    local.get 0
    i32.load offset=12
    local.tee 2
    i32.store offset=24
    local.get 0
    local.get 0
    i32.load offset=8
    i32.store offset=20
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h2be1f76ca5d30fbbE
    i32.store offset=36
    local.get 0
    i32.const 1
    i32.store offset=32
    local.get 0
    local.get 0
    i32.const 20
    i32.add
    i32.store offset=28
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 40
        i32.add
        local.get 0
        i32.const 28
        i32.add
        call $_ZN124_$LT$dharitri_sc..storage..mappers..vec_mapper..Iter$LT$SA$C$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c334fcae9cde534E
        local.get 0
        i64.load offset=40
        i64.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=56
        local.set 3
        local.get 0
        i32.load offset=60
        local.set 4
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
        local.set 2
        block ;; label = @3
          block ;; label = @4
            local.get 3
            i32.const 2147483646
            i32.eq
            br_if 0 (;@4;)
            local.get 3
            call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9ee2487c1a03115cE
            local.set 2
            br 1 (;@3;)
          end
          local.get 2
          i32.const 131334
          i32.const 4
          call $mBufferSetBytes
          drop
        end
        local.get 1
        local.get 2
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h319cdd35806a1f96E
        local.get 1
        local.get 0
        i64.load offset=48
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h01e0ba27e7671925E
        local.get 1
        local.get 4
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h117aa54d2b91c22eE
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 1
    i32.store offset=16
    local.get 0
    local.get 1
    call $mBufferGetLength
    i32.store offset=48
    local.get 0
    i32.const 0
    i32.store offset=44
    local.get 0
    local.get 0
    i32.const 16
    i32.add
    i32.store offset=40
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        local.get 0
        i32.const 40
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbc1da9067629d7a5E
        local.get 0
        i32.load
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=4
        call $mBufferFinish
        drop
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $clear_callback_info (;180;) (type 11)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha3ce7efb144f6c22E
    local.get 0
    i32.const 24
    i32.add
    call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$13callback_args17h970be154d76845feE
    local.get 0
    i32.load offset=24
    local.set 1
    local.get 0
    i32.load offset=28
    local.tee 2
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h2be1f76ca5d30fbbE
    local.set 3
    local.get 0
    i32.const 0
    i32.store8 offset=44
    local.get 0
    local.get 3
    i32.store offset=40
    local.get 0
    i32.const 1
    i32.store offset=36
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 16
        i32.add
        local.get 0
        i32.const 36
        i32.add
        call $_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9e30ff9a2fa9a556E
        local.get 0
        i32.load offset=16
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 0
        i32.load offset=20
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h23fb2816e447ec22E
        call $_ZN11dharitri_sc7storage11storage_set13storage_clear17hdbefb54de577b973E
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 0
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17h8797d08419f85fa0E
    local.get 0
    i32.const 8
    i32.add
    call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$17callback_payments17h920fefc1e660bb75E
    local.get 0
    i32.load offset=8
    local.set 1
    local.get 0
    i32.load offset=12
    local.tee 2
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h2be1f76ca5d30fbbE
    local.set 3
    local.get 0
    i32.const 0
    i32.store8 offset=44
    local.get 0
    local.get 3
    i32.store offset=40
    local.get 0
    i32.const 1
    i32.store offset=36
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        local.get 0
        i32.const 36
        i32.add
        call $_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9e30ff9a2fa9a556E
        local.get 0
        i32.load
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 0
        i32.load offset=4
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h23fb2816e447ec22E
        call $_ZN11dharitri_sc7storage11storage_set13storage_clear17hdbefb54de577b973E
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 0
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17h8797d08419f85fa0E
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $callback_args_at_index (;181;) (type 11)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha3ce7efb144f6c22E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7dc1afa52b788a75E
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$13callback_args17h970be154d76845feE
    block ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=8
      local.set 2
      local.get 0
      i32.load offset=12
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h2be1f76ca5d30fbbE
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 1
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$13get_unchecked17h76a7b2a1183b65fbE
      local.tee 1
      i32.store offset=16
      local.get 0
      local.get 1
      call $mBufferGetLength
      i32.store offset=28
      local.get 0
      i32.const 0
      i32.store offset=24
      local.get 0
      local.get 0
      i32.const 16
      i32.add
      i32.store offset=20
      block ;; label = @2
        loop ;; label = @3
          local.get 0
          local.get 0
          i32.const 20
          i32.add
          call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbc1da9067629d7a5E
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
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131671
    i32.const 18
    call $signalError
    unreachable
  )
  (func $callback_payment_at_index (;182;) (type 11)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha3ce7efb144f6c22E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h7dc1afa52b788a75E
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$17callback_payments17h920fefc1e660bb75E
    block ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=8
      local.set 2
      local.get 0
      i32.load offset=12
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h2be1f76ca5d30fbbE
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 16
      i32.add
      local.get 2
      local.get 1
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$13get_unchecked17h4933102fde200e83E
      block ;; label = @2
        block ;; label = @3
          local.get 0
          i32.load offset=24
          local.tee 1
          i32.const 2147483646
          i32.eq
          br_if 0 (;@3;)
          local.get 1
          call $mBufferFinish
          drop
          br 1 (;@2;)
        end
        i32.const 131334
        i32.const 4
        call $finish
      end
      local.get 0
      i64.load offset=16
      call $smallIntFinishUnsigned
      local.get 0
      i32.load offset=28
      call $bigIntFinishUnsigned
      local.get 0
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131671
    i32.const 18
    call $signalError
    unreachable
  )
  (func $forward_payment (;183;) (type 11)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha3ce7efb144f6c22E
    i32.const 0
    i32.const 131347
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h943b695e7decefe4E
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17hf4f31a513a9b0559E
    local.get 0
    i32.load offset=8
    local.set 2
    local.get 0
    local.get 0
    i32.load offset=12
    local.tee 3
    i32.store offset=16
    local.get 0
    call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17ha0db054b84880fedE
    local.get 0
    i32.load offset=4
    local.set 4
    local.get 0
    i32.load
    local.set 5
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i32.const 2147483646
        i32.ne
        br_if 0 (;@2;)
        local.get 3
        local.get 1
        i64.const 0
        local.get 5
        local.get 4
        call $_ZN169_$LT$dharitri_sc..types..interaction..tx_payment..tx_payment_rewa..Rewa$LT$RewaValue$GT$$u20$as$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$GT$24perform_transfer_execute17h18b74af300f8f782E
        br 1 (;@1;)
      end
      local.get 0
      local.get 2
      i32.store offset=20
      local.get 0
      i64.const 0
      i64.store offset=32
      local.get 0
      local.get 4
      i32.store offset=28
      local.get 0
      local.get 5
      i32.store offset=24
      local.get 0
      local.get 0
      i32.const 16
      i32.add
      i32.store offset=44
      local.get 0
      local.get 0
      i32.const 20
      i32.add
      i32.store offset=40
      local.get 0
      i32.const 32
      i32.add
      local.get 1
      i64.const 0
      local.get 5
      local.get 4
      call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17hd892b53cb4fa2f2bE
    end
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_direct_dcdt_via_transf_exec (;184;) (type 11)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha3ce7efb144f6c22E
    local.get 0
    i32.const 0
    i32.const 131347
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h943b695e7decefe4E
    i32.store offset=28
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$20single_fungible_dcdt17hdc859c89b588f28fE
    local.get 0
    i32.load offset=20
    local.set 1
    local.get 0
    local.get 0
    i32.load offset=16
    i32.store offset=32
    local.get 0
    local.get 1
    i32.store offset=36
    local.get 0
    i64.const 0
    i64.store offset=40
    local.get 0
    local.get 0
    i32.const 36
    i32.add
    i32.store offset=52
    local.get 0
    local.get 0
    i32.const 28
    i32.add
    i32.store offset=56
    local.get 0
    i32.const 40
    i32.add
    i32.const 8
    i32.add
    local.tee 1
    local.get 0
    i32.const 32
    i32.add
    i32.store
    local.get 0
    i64.const 0
    i64.store offset=64
    local.get 0
    i32.const 72
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i64.load
    i64.store
    local.get 0
    local.get 0
    i32.const 60
    i32.add
    i32.store offset=88
    local.get 0
    i64.const 0
    i64.store offset=72
    local.get 0
    local.get 0
    i32.const 64
    i32.add
    i32.store offset=92
    local.get 0
    i32.const 8
    i32.add
    call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17ha0db054b84880fedE
    local.get 0
    i32.const 72
    i32.add
    local.get 0
    i32.load offset=28
    i64.const 0
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc5types11interaction10tx_payment26tx_payment_single_dcdt_ref256_$LT$impl$u20$dharitri_sc..types..interaction..tx_payment..TxPayment$LT$Env$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..dcdt_token_payment..DcdtTokenPaymentRefs$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$24perform_transfer_execute17hd892b53cb4fa2f2bE
    local.get 0
    i32.const 96
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_direct_dcdt_multi (;185;) (type 11)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17ha3ce7efb144f6c22E
    i32.const 0
    i32.const 131347
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h943b695e7decefe4E
    local.set 1
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h0c3d3fe0f34af55fE
    local.set 2
    local.get 0
    i32.const 8
    i32.add
    call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17ha0db054b84880fedE
    local.get 1
    local.get 2
    i64.const 0
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    call $managedMultiTransferDCDTNFTExecute
    drop
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_async_call (;186;) (type 11)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he33e0a259f99f7b6E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h8581c625ebe58d38E
    i32.const 0
    i32.const 131347
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h943b695e7decefe4E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4f922e0585ae2cedE
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=16
    local.get 0
    i32.const 16
    i32.add
    i32.const 131343
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6cb331678a97882cE
    local.set 3
    local.get 0
    i32.load offset=16
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hfbe5fd6b53caedd4E
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17hf4f31a513a9b0559E
    local.get 0
    i64.load offset=8
    local.set 4
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17ha7ab04e8e29199ecE
    local.get 0
    local.get 1
    i32.store offset=40
    local.get 0
    local.get 3
    i32.store offset=36
    local.get 0
    local.get 4
    i64.store offset=24
    local.get 0
    i64.const 0
    i64.store offset=16
    local.get 0
    local.get 0
    i32.load
    i32.store offset=32
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h5d6727dc1c43e902E
    unreachable
  )
  (func $forward_async_call_half_payment (;187;) (type 11)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he33e0a259f99f7b6E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h8581c625ebe58d38E
    i32.const 0
    i32.const 131347
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h943b695e7decefe4E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4f922e0585ae2cedE
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=16
    local.get 0
    i32.const 16
    i32.add
    i32.const 131343
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6cb331678a97882cE
    local.set 3
    local.get 0
    i32.load offset=16
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hfbe5fd6b53caedd4E
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17hf4f31a513a9b0559E
    local.get 0
    i32.load offset=8
    local.set 4
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h1f2c745b7eeae466E
    local.set 5
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17ha7ab04e8e29199ecE
    local.get 0
    local.get 1
    i32.store offset=40
    local.get 0
    local.get 3
    i32.store offset=36
    local.get 0
    local.get 5
    i32.store offset=28
    local.get 0
    local.get 4
    i32.store offset=24
    local.get 0
    i64.const 0
    i64.store offset=16
    local.get 0
    local.get 0
    i32.load
    i32.store offset=32
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h5d6727dc1c43e902E
    unreachable
  )
  (func $forward_transf_exec_rewa (;188;) (type 11)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h908ec9fcd2f9d37eE
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he33e0a259f99f7b6E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h8581c625ebe58d38E
    i32.const 0
    i32.const 131347
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h943b695e7decefe4E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4f922e0585ae2cedE
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i32.const 131343
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6cb331678a97882cE
    local.set 3
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hfbe5fd6b53caedd4E
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17h51253539fdd6438fE
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4b90a01e9e9f6b5eE
    local.set 4
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17ha7ab04e8e29199ecE
    local.get 0
    i32.load
    local.set 2
    call $getGasLeft
    local.set 5
    local.get 0
    local.get 3
    i32.store offset=36
    local.get 0
    local.get 2
    i32.store offset=32
    local.get 0
    local.get 4
    i32.store offset=20
    local.get 0
    i32.const 2147483646
    i32.store offset=16
    local.get 0
    i64.const 0
    i64.store offset=8
    local.get 0
    local.get 1
    i32.store offset=40
    local.get 0
    local.get 5
    i64.const 1
    i64.shr_u
    i64.store offset=24
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17h0114f7eb8ae8afd7E
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_exec_dcdt (;189;) (type 11)
    (local i32 i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he33e0a259f99f7b6E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h8581c625ebe58d38E
    i32.const 0
    i32.const 131347
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h943b695e7decefe4E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4f922e0585ae2cedE
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=24
    local.get 0
    i32.const 24
    i32.add
    i32.const 131343
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6cb331678a97882cE
    local.set 3
    local.get 0
    i32.load offset=24
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hfbe5fd6b53caedd4E
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$20single_fungible_dcdt17hdc859c89b588f28fE
    local.get 0
    i64.load offset=16
    local.set 4
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17ha7ab04e8e29199ecE
    local.get 0
    i32.load offset=8
    local.set 2
    call $getGasLeft
    local.set 5
    local.get 0
    local.get 3
    i32.store offset=52
    local.get 0
    local.get 2
    i32.store offset=48
    local.get 0
    local.get 4
    i64.store offset=32
    local.get 0
    i64.const 0
    i64.store offset=24
    local.get 0
    local.get 1
    i32.store offset=56
    local.get 0
    local.get 5
    i64.const 1
    i64.shr_u
    i64.store offset=40
    local.get 0
    i32.const 24
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17h0114f7eb8ae8afd7E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_exec (;190;) (type 11)
    (local i32 i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he33e0a259f99f7b6E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h8581c625ebe58d38E
    i32.const 0
    i32.const 131347
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h943b695e7decefe4E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4f922e0585ae2cedE
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=24
    local.get 0
    i32.const 24
    i32.add
    i32.const 131343
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6cb331678a97882cE
    local.set 3
    local.get 0
    i32.load offset=24
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hfbe5fd6b53caedd4E
    local.get 0
    i32.const 16
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17hf4f31a513a9b0559E
    local.get 0
    i64.load offset=16
    local.set 4
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17ha7ab04e8e29199ecE
    local.get 0
    i32.load offset=8
    local.set 2
    call $getGasLeft
    local.set 5
    local.get 0
    local.get 3
    i32.store offset=52
    local.get 0
    local.get 2
    i32.store offset=48
    local.get 0
    local.get 4
    i64.store offset=32
    local.get 0
    i64.const 0
    i64.store offset=24
    local.get 0
    local.get 1
    i32.store offset=56
    local.get 0
    local.get 5
    i64.const 1
    i64.shr_u
    i64.store offset=40
    local.get 0
    i32.const 24
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17h0114f7eb8ae8afd7E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_exec_twice (;191;) (type 11)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he33e0a259f99f7b6E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h8581c625ebe58d38E
    i32.const 0
    i32.const 131347
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h943b695e7decefe4E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4f922e0585ae2cedE
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=40
    local.get 0
    i32.const 40
    i32.add
    i32.const 131343
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6cb331678a97882cE
    local.set 3
    local.get 0
    i32.load offset=40
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hfbe5fd6b53caedd4E
    local.get 0
    local.get 3
    i32.store offset=36
    local.get 0
    i32.const 24
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17hf4f31a513a9b0559E
    i32.const 2147483646
    local.set 4
    local.get 0
    i32.load offset=24
    local.set 3
    local.get 0
    i32.load offset=28
    call $_ZN11dharitri_sc5types7managed7wrapped18big_uint_operators127_$LT$impl$u20$core..ops..arith..Div$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$GT$3div17h1f2c745b7eeae466E
    local.set 5
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9ee2487c1a03115cE
    local.set 6
    block ;; label = @1
      local.get 3
      i32.const 2147483646
      i32.eq
      br_if 0 (;@1;)
      local.get 3
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9ee2487c1a03115cE
      local.set 4
    end
    local.get 5
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4b90a01e9e9f6b5eE
    local.set 7
    local.get 2
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9ee2487c1a03115cE
    local.set 8
    local.get 0
    i32.const 36
    i32.add
    call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0eaf38e9fdcca0e4E
    local.set 9
    local.get 0
    i32.const 16
    i32.add
    local.get 8
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17ha7ab04e8e29199ecE
    local.get 0
    i32.load offset=16
    local.set 8
    call $getGasLeft
    local.set 10
    local.get 0
    local.get 9
    i32.store offset=68
    local.get 0
    local.get 8
    i32.store offset=64
    local.get 0
    local.get 7
    i32.store offset=52
    local.get 0
    local.get 4
    i32.store offset=48
    local.get 0
    i64.const 0
    i64.store offset=40
    local.get 0
    local.get 6
    i32.store offset=72
    local.get 0
    local.get 10
    i64.const 1
    i64.shr_u
    i64.store offset=56
    local.get 0
    i32.const 40
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17h0114f7eb8ae8afd7E
    local.get 0
    i32.load offset=36
    local.set 4
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17ha7ab04e8e29199ecE
    local.get 0
    i32.load offset=8
    local.set 2
    call $getGasLeft
    local.set 10
    local.get 0
    local.get 4
    i32.store offset=68
    local.get 0
    local.get 2
    i32.store offset=64
    local.get 0
    local.get 5
    i32.store offset=52
    local.get 0
    local.get 3
    i32.store offset=48
    local.get 0
    i64.const 0
    i64.store offset=40
    local.get 0
    local.get 1
    i32.store offset=72
    local.get 0
    local.get 10
    i64.const 1
    i64.shr_u
    i64.store offset=56
    local.get 0
    i32.const 40
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec10tx_exec_te174_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$From$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$16transfer_execute17h0114f7eb8ae8afd7E
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_async_retrieve_multi_transfer_funds (;192;) (type 11)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he33e0a259f99f7b6E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h8581c625ebe58d38E
    i32.const 0
    i32.const 131347
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h943b695e7decefe4E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=24
    local.get 0
    i32.const 24
    i32.add
    i32.const 131349
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6cb331678a97882cE
    local.set 2
    local.get 0
    i32.load offset=24
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hfbe5fd6b53caedd4E
    local.get 0
    local.get 1
    i32.store offset=8
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
    local.set 1
    local.get 2
    call $mBufferGetLength
    local.set 3
    local.get 0
    i32.const 0
    i32.store offset=20
    local.get 0
    local.get 3
    i32.const 2
    i32.shr_u
    i32.store offset=16
    local.get 0
    local.get 2
    i32.store offset=12
    loop ;; label = @1
      local.get 0
      i32.const 24
      i32.add
      local.get 0
      i32.const 12
      i32.add
      call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74c80b095c98754dE
      block ;; label = @2
        local.get 0
        i64.load offset=24
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 131363
        i32.const 26
        call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17hd72f456aaa57e339E
        local.get 0
        local.get 1
        i32.store offset=32
        local.get 0
        local.get 0
        i32.load
        i32.store offset=28
        local.get 0
        local.get 0
        i32.const 8
        i32.add
        i32.store offset=24
        local.get 0
        i32.const 24
        i32.add
        call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17h39e0a11fa712c0feE
        unreachable
      end
      local.get 0
      i32.load offset=44
      local.set 2
      local.get 0
      i64.load offset=32
      local.set 4
      local.get 0
      i32.load offset=40
      local.set 3
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
      drop
      local.get 1
      local.get 3
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9ee2487c1a03115cE
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h319cdd35806a1f96E
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
      local.tee 3
      local.get 4
      call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h93456919d12e966dE
      local.get 1
      local.get 3
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h319cdd35806a1f96E
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
      drop
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h884bb7b68156eec2E
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h319cdd35806a1f96E
      br 0 (;@1;)
    end
  )
  (func $forwarder_async_send_and_retrieve_multi_transfer_funds (;193;) (type 11)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he33e0a259f99f7b6E
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h8581c625ebe58d38E
    i32.const 0
    i32.const 131347
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h943b695e7decefe4E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=40
    local.get 0
    i32.const 40
    i32.add
    i32.const 131349
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6cb331678a97882cE
    local.set 2
    local.get 0
    i32.load offset=40
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hfbe5fd6b53caedd4E
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
    local.tee 1
    i32.store offset=24
    local.get 2
    call $mBufferGetLength
    local.set 3
    local.get 0
    i32.const 0
    i32.store offset=36
    local.get 0
    local.get 3
    i32.const 2
    i32.shr_u
    i32.store offset=32
    local.get 0
    local.get 2
    i32.store offset=28
    loop ;; label = @1
      local.get 0
      i32.const 40
      i32.add
      local.get 0
      i32.const 28
      i32.add
      call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74c80b095c98754dE
      block ;; label = @2
        local.get 0
        i64.load offset=40
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 8
        i32.add
        call $_ZN11dharitri_sc5types11interaction2tx57Tx$LT$Env$C$From$C$To$C$Payment$C$Gas$C$$LP$$RP$$C$RH$GT$8raw_call17h00e7c0f2cd92f014E
        local.get 0
        local.get 0
        i64.load offset=8
        i64.store offset=48 align=4
        local.get 0
        local.get 0
        i32.const 24
        i32.add
        i32.store offset=44
        local.get 0
        local.get 0
        i32.const 20
        i32.add
        i32.store offset=40
        local.get 0
        i32.const 40
        i32.add
        call $_ZN11dharitri_sc5types11interaction7tx_exec13tx_exec_async183_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$$LP$$RP$$C$FC$C$RH$GT$$GT$19async_call_and_exit17hf6f3970055dc62cbE
        unreachable
      end
      local.get 0
      i64.load offset=56
      local.set 4
      local.get 0
      local.get 0
      i64.load offset=48
      i64.store offset=64
      local.get 0
      local.get 4
      i64.store offset=72
      local.get 1
      local.get 0
      i32.const 64
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hf206163d8a356cd8E
      br 0 (;@1;)
    end
  )
  (func $call_execute_on_dest_context (;194;) (type 11)
    (local i32 i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h908ec9fcd2f9d37eE
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he33e0a259f99f7b6E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h8581c625ebe58d38E
    i32.const 0
    i32.const 131347
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h943b695e7decefe4E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4f922e0585ae2cedE
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=20
    local.get 0
    i32.const 20
    i32.add
    i32.const 131343
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6cb331678a97882cE
    local.set 3
    local.get 0
    i32.load offset=20
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hfbe5fd6b53caedd4E
    local.get 0
    local.get 3
    i32.store offset=16
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17h51253539fdd6438fE
    call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4b90a01e9e9f6b5eE
    local.set 4
    call $getGasLeft
    local.set 5
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17ha7ab04e8e29199ecE
    local.get 0
    i32.load offset=12
    local.set 2
    local.get 0
    i32.load offset=8
    local.set 6
    local.get 0
    local.get 3
    call $mBufferGetLength
    i32.store offset=28
    local.get 0
    i32.const 0
    i32.store offset=24
    local.get 0
    local.get 0
    i32.const 16
    i32.add
    i32.store offset=20
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        local.get 0
        i32.const 20
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbc1da9067629d7a5E
        local.get 0
        i32.load
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        local.get 0
        i32.load offset=4
        call $_ZN166_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17ha6394bb66182705bE
        br 0 (;@2;)
      end
    end
    local.get 5
    i64.const 1
    i64.shr_u
    local.get 1
    local.get 4
    local.get 6
    local.get 2
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17h4790814e8371b31bE
    local.set 2
    call $cleanReturnData
    local.get 0
    local.get 2
    i32.store offset=20
    local.get 0
    i32.const 20
    i32.add
    call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0eaf38e9fdcca0e4E
    call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$30execute_on_dest_context_result17h5937a6eeb3f5359aE
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
  )
  (func $call_execute_on_dest_context_twice (;195;) (type 11)
    (local i32 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h908ec9fcd2f9d37eE
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he33e0a259f99f7b6E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h8581c625ebe58d38E
    i32.const 0
    i32.const 131347
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h943b695e7decefe4E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4f922e0585ae2cedE
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=40
    local.get 0
    i32.const 40
    i32.add
    i32.const 131343
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6cb331678a97882cE
    local.set 3
    local.get 0
    i32.load offset=40
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hfbe5fd6b53caedd4E
    local.get 0
    local.get 1
    i32.store offset=28
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17h51253539fdd6438fE
    local.set 1
    call $getGasLeft
    local.set 4
    call $_ZN11dharitri_sc5types7managed7wrapped8big_uint16BigUint$LT$M$GT$9make_temp17h1fbc23ffa281880aE
    local.set 5
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 6
    local.get 1
    local.get 5
    call $bigIntTDiv
    local.get 0
    local.get 6
    i32.store offset=32
    local.get 0
    local.get 3
    i32.store offset=36
    local.get 0
    i32.const 16
    i32.add
    local.get 2
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9ee2487c1a03115cE
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17ha7ab04e8e29199ecE
    local.get 0
    i32.load offset=16
    local.set 1
    local.get 0
    local.get 0
    i32.const 36
    i32.add
    call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0eaf38e9fdcca0e4E
    i32.store offset=52
    local.get 0
    local.get 1
    i32.store offset=48
    local.get 0
    local.get 4
    i64.const 3
    i64.div_u
    local.tee 4
    i64.store offset=40
    local.get 0
    local.get 0
    i32.const 32
    i32.add
    i32.store offset=60
    local.get 0
    local.get 0
    i32.const 28
    i32.add
    i32.store offset=56
    local.get 0
    i32.const 40
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17hfec4c074545caf90E
    call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$30execute_on_dest_context_result17h5937a6eeb3f5359aE
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17ha7ab04e8e29199ecE
    local.get 0
    local.get 4
    i64.store offset=40
    local.get 0
    local.get 0
    i32.load offset=36
    i32.store offset=52
    local.get 0
    local.get 0
    i32.load offset=8
    i32.store offset=48
    local.get 0
    local.get 0
    i32.const 32
    i32.add
    i32.store offset=60
    local.get 0
    local.get 0
    i32.const 28
    i32.add
    i32.store offset=56
    local.get 0
    i32.const 40
    i32.add
    call $_ZN11dharitri_sc5types11interaction7tx_exec12tx_exec_sync178_$LT$impl$u20$dharitri_sc..types..interaction..tx..Tx$LT$dharitri_sc..types..interaction..tx_exec..tx_env_sc..TxScEnv$LT$Api$GT$$C$$LP$$RP$$C$To$C$Payment$C$Gas$C$FC$C$RH$GT$$GT$9sync_call17hfec4c074545caf90E
    call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$30execute_on_dest_context_result17h5937a6eeb3f5359aE
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $call_execute_on_same_context (;196;) (type 11)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h908ec9fcd2f9d37eE
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he33e0a259f99f7b6E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h8581c625ebe58d38E
    i32.const 0
    i32.const 131347
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h943b695e7decefe4E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4f922e0585ae2cedE
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 131343
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6cb331678a97882cE
    local.set 3
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hfbe5fd6b53caedd4E
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17h51253539fdd6438fE
    local.set 4
    call $getGasLeft
    local.set 5
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17ha7ab04e8e29199ecE
    local.get 5
    i64.const 1
    i64.shr_u
    local.get 1
    local.get 4
    local.get 0
    i32.load
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 2
    call $managedExecuteOnSameContext
    drop
    call $cleanReturnData
    local.get 0
    local.get 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0eaf38e9fdcca0e4E
    local.set 1
    i32.const 131613
    i32.const 30
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17hf6d929354448569cE
    local.get 1
    call $_ZN11dharitri_sc8log_util18serialize_log_data17hdc3e221d3c02d9d9E
    call $managedWriteLog
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $call_execute_on_dest_context_readonly (;197;) (type 11)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he33e0a259f99f7b6E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h8581c625ebe58d38E
    i32.const 0
    i32.const 131347
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h943b695e7decefe4E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4f922e0585ae2cedE
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 131343
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6cb331678a97882cE
    local.set 3
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hfbe5fd6b53caedd4E
    call $getGasLeft
    local.set 4
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types11interaction7tx_data13function_call23FunctionCall$LT$Api$GT$3new17ha7ab04e8e29199ecE
    local.get 4
    i64.const 1
    i64.shr_u
    local.get 1
    local.get 0
    i32.load
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 2
    call $managedExecuteReadOnly
    drop
    call $cleanReturnData
    local.get 0
    local.get 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0eaf38e9fdcca0e4E
    call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$30execute_on_dest_context_result17h5937a6eeb3f5359aE
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $deploy_contract (;198;) (type 11)
    (local i32 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he33e0a259f99f7b6E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h8581c625ebe58d38E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4f922e0585ae2cedE
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1ffad5b3c16198c4E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i32.const 131343
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6cb331678a97882cE
    local.set 3
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hfbe5fd6b53caedd4E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
    drop
    call $getGasLeft
    local.set 4
    call $_ZN11dharitri_sc5types11interaction9annotated23annotated_impl_big_uint248_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$LP$$RP$$GT$8to_value17h3ebdae4039619657E
    local.set 5
    local.get 2
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17hac691272e0860501E
    local.get 4
    local.get 5
    local.get 1
    i32.const -25
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 2
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 6
    call $managedCreateContract
    drop
    call $cleanReturnData
    local.get 0
    local.get 6
    i32.store offset=12
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 2
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9ee2487c1a03115cE
    local.set 2
    local.get 0
    local.get 0
    i32.const 8
    i32.add
    i32.const 4
    i32.add
    call $_ZN113_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0eaf38e9fdcca0e4E
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
    local.get 2
    call $mBufferFinish
    drop
    local.get 0
    i32.const 4
    i32.add
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17h390add7eebccdebcE
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $deploy_from_source (;199;) (type 11)
    (local i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he33e0a259f99f7b6E
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h8581c625ebe58d38E
    i32.const 0
    i32.const 131453
    i32.const 23
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h943b695e7decefe4E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1ffad5b3c16198c4E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 131343
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6cb331678a97882cE
    local.set 3
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hfbe5fd6b53caedd4E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
    drop
    call $getGasLeft
    local.set 4
    call $_ZN11dharitri_sc5types11interaction9annotated23annotated_impl_big_uint248_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$LP$$RP$$GT$8to_value17h3ebdae4039619657E
    local.set 5
    local.get 2
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17hac691272e0860501E
    local.get 4
    local.get 5
    local.get 1
    i32.const -25
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    local.tee 2
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h01f43ae6880fe975E
    call $managedDeployFromSourceContract
    drop
    call $cleanReturnData
    local.get 2
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9ee2487c1a03115cE
    call $mBufferFinish
    drop
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $call_upgrade (;200;) (type 11)
    (local i32 i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he33e0a259f99f7b6E
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h8581c625ebe58d38E
    i32.const 0
    i32.const 131437
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h943b695e7decefe4E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h4f922e0585ae2cedE
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1ffad5b3c16198c4E
    local.set 3
    local.get 0
    i32.const 3
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 131343
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6cb331678a97882cE
    local.set 4
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hfbe5fd6b53caedd4E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
    drop
    call $getGasLeft
    local.set 5
    call $_ZN11dharitri_sc5types11interaction9annotated23annotated_impl_big_uint248_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$LP$$RP$$GT$8to_value17h3ebdae4039619657E
    local.set 6
    local.get 3
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17hac691272e0860501E
    local.get 1
    local.get 5
    local.get 6
    local.get 2
    i32.const -25
    local.get 4
    i32.const -25
    call $managedUpgradeContract
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $call_upgrade_from_source (;201;) (type 11)
    (local i32 i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he33e0a259f99f7b6E
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h8581c625ebe58d38E
    i32.const 0
    i32.const 131476
    i32.const 10
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h943b695e7decefe4E
    local.set 1
    i32.const 1
    i32.const 131453
    i32.const 23
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h943b695e7decefe4E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1ffad5b3c16198c4E
    local.set 3
    local.get 0
    i32.const 3
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 131343
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6cb331678a97882cE
    local.set 4
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hfbe5fd6b53caedd4E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
    drop
    call $getGasLeft
    local.set 5
    call $_ZN11dharitri_sc5types11interaction9annotated23annotated_impl_big_uint248_$LT$impl$u20$dharitri_sc..types..interaction..annotated..AnnotatedValue$LT$Env$C$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$$LT$Env$u20$as$u20$dharitri_sc..types..interaction..tx_env..TxEnv$GT$..Api$GT$$GT$$u20$for$u20$$LP$$RP$$GT$8to_value17h3ebdae4039619657E
    local.set 6
    local.get 3
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17hac691272e0860501E
    local.get 1
    local.get 5
    local.get 6
    local.get 2
    i32.const -25
    local.get 4
    i32.const -25
    call $managedUpgradeFromSourceContract
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $callBack (;202;) (type 11)
    (local i32 i32 i32 i64 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
    drop
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
    drop
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he33e0a259f99f7b6E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17h8581c625ebe58d38E
    local.get 0
    i32.const 0
    i32.store offset=56
    local.get 0
    i32.const 56
    i32.add
    i32.const 131343
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6cb331678a97882cE
    local.set 1
    local.get 0
    i32.load offset=56
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17hfbe5fd6b53caedd4E
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h0c3d3fe0f34af55fE
    local.tee 2
    i32.store offset=40
    block ;; label = @1
      block ;; label = @2
        local.get 2
        call $mBufferGetLength
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 2
        call $mBufferGetLength
        i32.store offset=52
        local.get 0
        i32.const 0
        i32.store offset=48
        local.get 0
        local.get 0
        i32.const 40
        i32.add
        i32.store offset=44
        loop ;; label = @3
          local.get 0
          i32.const 56
          i32.add
          local.get 0
          i32.const 44
          i32.add
          call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5c2fe455d65eec13E
          local.get 0
          i64.load offset=56
          i64.const 0
          i64.eq
          br_if 2 (;@1;)
          local.get 0
          i64.load offset=72
          local.set 3
          local.get 0
          i64.load offset=64
          local.set 4
          local.get 0
          i32.const 32
          i32.add
          call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$17callback_payments17h920fefc1e660bb75E
          local.get 0
          i32.load offset=36
          local.set 2
          local.get 0
          i32.load offset=32
          local.set 5
          local.get 0
          local.get 4
          i64.store offset=80
          local.get 0
          local.get 3
          i64.store offset=88
          local.get 5
          local.get 2
          local.get 0
          i32.const 80
          i32.add
          call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$4push17h67d95b1aeb4cef8eE
          br 0 (;@3;)
        end
      end
      call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17h51253539fdd6438fE
      local.tee 2
      call $_ZN11dharitri_sc5types7managed5basic11big_num_cmp7cmp_i6417h52c0b48c74717946E
      i32.const 255
      i32.and
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.const 24
      i32.add
      call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$17callback_payments17h920fefc1e660bb75E
      local.get 0
      i32.load offset=28
      local.set 5
      local.get 0
      i32.load offset=24
      local.set 6
      local.get 0
      local.get 2
      call $_ZN103_$LT$dharitri_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4b90a01e9e9f6b5eE
      i32.store offset=68
      local.get 0
      i64.const 0
      i64.store offset=56
      local.get 0
      i32.const 2147483646
      i32.store offset=64
      local.get 6
      local.get 5
      local.get 0
      i32.const 56
      i32.add
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$4push17h67d95b1aeb4cef8eE
    end
    local.get 0
    local.get 1
    i32.store offset=80
    i32.const 131541
    i32.const 12
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17hf6d929354448569cE
    local.set 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h0bafa1d7688cdc98E
    i32.store offset=56
    local.get 0
    i32.const 80
    i32.add
    local.get 0
    i32.const 56
    i32.add
    call $_ZN139_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17h5a163cea05539bc5E
    local.get 2
    local.get 0
    i32.load offset=56
    call $managedWriteLog
    local.get 0
    i32.const 16
    i32.add
    call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$13callback_args17h970be154d76845feE
    local.get 0
    i32.load offset=16
    local.get 0
    i32.load offset=20
    local.tee 5
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$3len17h2be1f76ca5d30fbbE
    i32.const 1
    i32.add
    local.tee 1
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper27VecMapper$LT$SA$C$T$C$A$GT$8item_key17h23fb2816e447ec22E
    local.set 6
    call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17ha457c88af1d7b299E
    local.set 2
    local.get 0
    local.get 0
    i32.load offset=80
    call $mBufferGetLength
    i32.store offset=64
    local.get 0
    i32.const 0
    i32.store offset=60
    local.get 0
    local.get 0
    i32.const 80
    i32.add
    i32.store offset=56
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.get 0
        i32.const 56
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbc1da9067629d7a5E
        local.get 0
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=12
        local.get 2
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17he330f628792f7eb7E
        br 0 (;@2;)
      end
    end
    local.get 6
    local.get 2
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h6392d74dc04ac91bE
    local.get 5
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17h8797d08419f85fa0E
    local.get 0
    i32.const 96
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN4core9panicking9panic_fmt17hb859252f4b513814E (;203;) (type 11)
    call $rust_begin_unwind
    unreachable
  )
  (func $_ZN17compiler_builtins3mem6memcpy17h6a01844efc49c0e5E (;204;) (type 4) (param i32 i32 i32) (result i32)
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
  (func $memcpy (;205;) (type 4) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN17compiler_builtins3mem6memcpy17h6a01844efc49c0e5E
  )
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 141725)
  (global (;2;) i32 i32.const 141728)
  (export "memory" (memory 0))
  (export "init" (func $init))
  (export "callback_args" (func $callback_args))
  (export "callback_payments" (func $callback_payments))
  (export "callback_payments_triples" (func $callback_payments_triples))
  (export "clear_callback_info" (func $clear_callback_info))
  (export "callback_args_at_index" (func $callback_args_at_index))
  (export "callback_payment_at_index" (func $callback_payment_at_index))
  (export "forward_payment" (func $forward_payment))
  (export "forward_direct_dcdt_via_transf_exec" (func $forward_direct_dcdt_via_transf_exec))
  (export "forward_direct_dcdt_multi" (func $forward_direct_dcdt_multi))
  (export "forward_async_call" (func $forward_async_call))
  (export "forward_async_call_half_payment" (func $forward_async_call_half_payment))
  (export "forward_transf_exec_rewa" (func $forward_transf_exec_rewa))
  (export "forward_transf_exec_dcdt" (func $forward_transf_exec_dcdt))
  (export "forward_transf_exec" (func $forward_transf_exec))
  (export "forward_transf_exec_twice" (func $forward_transf_exec_twice))
  (export "forward_async_retrieve_multi_transfer_funds" (func $forward_async_retrieve_multi_transfer_funds))
  (export "forwarder_async_send_and_retrieve_multi_transfer_funds" (func $forwarder_async_send_and_retrieve_multi_transfer_funds))
  (export "call_execute_on_dest_context" (func $call_execute_on_dest_context))
  (export "call_execute_on_dest_context_twice" (func $call_execute_on_dest_context_twice))
  (export "call_execute_on_same_context" (func $call_execute_on_same_context))
  (export "call_execute_on_dest_context_readonly" (func $call_execute_on_dest_context_readonly))
  (export "deploy_contract" (func $deploy_contract))
  (export "deploy_from_source" (func $deploy_from_source))
  (export "call_upgrade" (func $call_upgrade))
  (export "call_upgrade_from_source" (func $call_upgrade_from_source))
  (export "callBack" (func $callBack))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data $.rodata (;0;) (i32.const 131072) "incorrect number of DCDT transfersargument decode error (): function does not accept DCDT paymenttoo few argumentstoo many argumentswrong number of argumentsMultiDCDTNFTTransferDCDTNFTTransferDCDTTransferinput too longinput too shortManagedVec index out of rangeREWA.itemargstotoken_paymentsretrieve_multi_funds_asyncburn_and_create_retrieve_asyncindexcode_metadatachild_sc_addresssource_contract_addresssc_addressstorage decode error (key: .lenbad array lengthvar argscallback_rawcallback_argscallback_paymentsexecute_on_dest_context_resultexecute_on_same_context_resultfungible DCDT token expectedindex out of rangepanic occurred")
  (data $.data (;1;) (i32.const 131704) "8\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.80.1 (3f5fd8dd4 2024-08-06)")
  )
  (@custom "target_features" (after data) "\02+\0fmutable-globals+\08sign-ext")
)
